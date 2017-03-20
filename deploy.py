import os, argparse

import tensorflow as tf
from tensorflow.python.framework import graph_util

import pickle
import reader
import numpy as np

dir = os.path.dirname(os.path.realpath(__file__))



def freeze_graph (model_dir):
    checkpoint = tf.train.get_checkpoint_state(model_dir)
    
    input_checkpoint_path = checkpoint.model_checkpoint_path
    #print input_checkpoint_path
    input_graph_path = os.path.join(model_dir, 'input.pb')
    input_saver_def_path = ""
    input_binary = False

    # Note that we this normally should be only "output_node"!!!
    output_node_names = "Test/Model/truediv" #"Dense2/output_node" 
    restore_op_name = "save/restore_all"
    filename_tensor_name = "save/Const:0"
    clear_devices = False

    output_graph_path = os.path.join(model_dir, 'frozen_model.pb')

    saver = tf.train.import_meta_graph(input_checkpoint_path + '.meta', clear_devices=True)

    with tf.Session() as sess:
        saver.restore(sess, input_checkpoint_path)


    import freeze_graph


    freeze_graph.freeze_graph(input_graph_path, input_saver_def_path,
                          input_binary, input_checkpoint_path,
                          output_node_names, restore_op_name,
                          filename_tensor_name, output_graph_path,
                          clear_devices, "")

def load_graph(frozen_graph_filename):
    # We load the protobuf file from the disk and parse it to retrieve the 
    # unserialized graph_def
    with tf.gfile.GFile(frozen_graph_filename, "rb") as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())

    # Then, we can use again a convenient built-in function to import a graph_def into the 
    # current default Graph
    with tf.Graph().as_default() as graph:
        tf.import_graph_def(
            graph_def, 
            input_map=None, 
            return_elements=None, 
            name="", 
            op_dict=None, 
            producer_op_list=None
        )
    return graph


def test (graph, word_to_id, line):

    idict = None
    d = line.decode("utf-8").replace("\n", " <eos> ").split()
    test_data = [word_to_id[word] for word in d if word in word_to_id]

    costs = 0.0
    iters = 0
    num_steps = 1
    # We can verify that we can access the list of operations in the graph
    #for op in graph.get_operations():
    #    print(op.name)


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

    with tf.Session(graph=graph) as sess:
        state = sess.run ([z0, z1, z2, z3])


        for step, (x, y) in enumerate(reader.iterator(test_data, 1, num_steps)):
            #print x, y
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

        return float("{:.2f}".format(np.exp(costs / iters)))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--model_dir", type=str, help="Model folder to export", required=True)
    args = parser.parse_args()

    #freeze_graph(args.model_dir)

    test(args.model_dir, "so you need also to make sure your defining the right roles for them\n")















