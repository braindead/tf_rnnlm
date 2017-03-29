from flask import Flask
import tensorflow as tf
from deploy import load_graph
from deploy import test
from flask import request
from flask import Response
import pickle
import json
import os
import reader
import numpy as np

app = Flask(__name__)

graph = load_graph("models/latest/frozen_model.pb")

with open("models/latest/word_to_id", 'r') as f:
    word_to_id = pickle.load(f)

pl_x = graph.get_tensor_by_name('Test/Model/Placeholder:0')
pl_y = graph.get_tensor_by_name ('Test/Model/Placeholder_1:0')
cost = graph.get_tensor_by_name('Test/Model/truediv:0')

z0 = graph.get_tensor_by_name('Test/Model/zeros:0')
z1 = graph.get_tensor_by_name('Test/Model/zeros_1:0')
z2 = graph.get_tensor_by_name('Test/Model/zeros_2:0')
z3 = graph.get_tensor_by_name('Test/Model/zeros_3:0')

f0 = graph.get_tensor_by_name('Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_2:0')
f1 = graph.get_tensor_by_name('Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul_2:0')
f2 = graph.get_tensor_by_name('Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_2:0')
f3 = graph.get_tensor_by_name('Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul_2:0')

#init_state_tensors = (z0,z1, z2,z3)
final_state_tensors = (f0, f1, f2, f3)

feed_dict  = {}

sess = tf.Session(graph=graph)

@app.route("/perplexity", methods=['POST'])
def perplexity():
    f = request.files['file']
    f.save(f.filename)

    with open(f.filename) as fn:
        content = fn.readlines()

    p = []

    for line in content:
        line = line.strip()

        if len(line) is 0:
            continue

        idict = None
        d = line.decode("utf-8").replace("\n", " <eos> ").split()
        test_data = [word_to_id[word] for word in d if word in word_to_id]

        if len(test_data) is 0:
            p.append(999.00)
            continue

        costs = 0.0
        iters = 0
        num_steps = 1

        state = sess.run ([z0, z1, z2, z3])

        for step, (x, y) in enumerate(reader.iterator(test_data, 1, num_steps)):
            feed_dict[pl_x] = x
            feed_dict[pl_y] = y

            feed_dict[z0] = state[0]
            feed_dict[z1] = state[1]
            feed_dict[z2] = state[2]
            feed_dict[z3] = state[3]

            r, final_values = sess.run ([cost, final_state_tensors], feed_dict)
            state = final_values
            
            costs += r
            iters += num_steps

        p.append(float("{:.2f}".format(np.exp(costs / iters))))

    os.remove(f.filename)
    
    return Response(json.dumps(p), mimetype='application/json')

if __name__ == "__main__":
    app.run()
