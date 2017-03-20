from flask import Flask
import tensorflow as tf
from deploy import load_graph
from deploy import test
from flask import request
from flask import Response
import pickle
import json
import os

app = Flask(__name__)

graph = load_graph("models/latest/frozen_model.pb")

with open("models/latest/word_to_id", 'r') as f:
    word_to_id = pickle.load(f)

@app.route("/perplexity", methods=['POST'])
def perplexity():
    f = request.files['file']
    f.save(f.filename)

    with open(f.filename) as fn:
        content = fn.readlines()

    p = [test(graph, word_to_id, line) for line in content]

    os.remove(f.filename)
    
    return Response(json.dumps(p), mimetype='application/json')

if __name__ == "__main__":
    app.run()
