node {
  name: "Test/Model/Placeholder"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "Test/Model/Placeholder_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "Test/Model/pack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\310\000\000\000"
      }
    }
  }
}
node {
  name: "Test/Model/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/zeros"
  op: "Fill"
  input: "Test/Model/pack"
  input: "Test/Model/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/pack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\310\000\000\000"
      }
    }
  }
}
node {
  name: "Test/Model/zeros_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/zeros_1"
  op: "Fill"
  input: "Test/Model/pack_1"
  input: "Test/Model/zeros_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/pack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\310\000\000\000"
      }
    }
  }
}
node {
  name: "Test/Model/zeros_2/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/zeros_2"
  op: "Fill"
  input: "Test/Model/pack_2"
  input: "Test/Model/zeros_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/pack_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\310\000\000\000"
      }
    }
  }
}
node {
  name: "Test/Model/zeros_3/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/zeros_3"
  op: "Fill"
  input: "Test/Model/pack_3"
  input: "Test/Model/zeros_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Model/embedding"
  op: "Variable"
  device: "/device:CPU:0"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 224722
        }
        dim {
          size: 200
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/shape"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\322m\003\000\310\000\000\000"
      }
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/min"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.10000000149
      }
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/max"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149
      }
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Model/embedding/Initializer/random_uniform/shape"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Model/embedding/Initializer/random_uniform/max"
  input: "Model/embedding/Initializer/random_uniform/min"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Model/embedding/Initializer/random_uniform/RandomUniform"
  input: "Model/embedding/Initializer/random_uniform/sub"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
}
node {
  name: "Model/embedding/Initializer/random_uniform"
  op: "Add"
  input: "Model/embedding/Initializer/random_uniform/mul"
  input: "Model/embedding/Initializer/random_uniform/min"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
}
node {
  name: "Model/embedding/Assign"
  op: "Assign"
  input: "Model/embedding"
  input: "Model/embedding/Initializer/random_uniform"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/embedding/read"
  op: "Identity"
  input: "Model/embedding"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
}
node {
  name: "Test/Model/embedding_lookup"
  op: "Gather"
  input: "Model/embedding/read"
  input: "Test/Model/Placeholder"
  device: "/device:CPU:0"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tparams"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "validate_indices"
    value {
      b: true
    }
  }
}
node {
  name: "Test/Model/split/split_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/split"
  op: "Split"
  input: "Test/Model/split/split_dim"
  input: "Test/Model/embedding_lookup"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 1
    }
  }
}
node {
  name: "Test/Model/Squeeze"
  op: "Squeeze"
  input: "Test/Model/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "squeeze_dims"
    value {
      list {
        i: 1
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 400
        }
        dim {
          size: 800
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\220\001\000\000 \003\000\000"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.10000000149
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/max"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mul"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Assign"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/read"
  op: "Identity"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat"
  op: "Concat"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim"
  input: "Test/Model/Squeeze"
  input: "Test/Model/zeros_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul"
  op: "MatMul"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 800
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 800
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Assign"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/read"
  op: "Identity"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split"
  op: "Split"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 4
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_1"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split:2"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul"
  op: "Mul"
  input: "Test/Model/zeros"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Tanh"
  op: "Tanh"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul_1"
  op: "Mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_2"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1"
  op: "Tanh"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/add_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/split:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul_2"
  op: "Mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 400
        }
        dim {
          size: 800
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\220\001\000\000 \003\000\000"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.10000000149
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/max"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mul"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Assign"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/read"
  op: "Identity"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/concat/concat_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/concat"
  op: "Concat"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/concat/concat_dim"
  input: "Test/Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/mul_2"
  input: "Test/Model/zeros_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/MatMul"
  op: "MatMul"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/concat"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 800
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 800
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/Assign"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/read"
  op: "Identity"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/MatMul"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split/split_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split"
  op: "Split"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split/split_dim"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 4
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_1"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split:2"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul"
  op: "Mul"
  input: "Test/Model/zeros_2"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid_1"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Tanh"
  op: "Tanh"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul_1"
  op: "Mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid_1"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_2"
  op: "Add"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Tanh_1"
  op: "Tanh"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/add_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid_2"
  op: "Sigmoid"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/split:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul_2"
  op: "Mul"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Tanh_1"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Sigmoid_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/concat/concat_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/concat"
  op: "Identity"
  input: "Test/Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/mul_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\310\000\000\000"
      }
    }
  }
}
node {
  name: "Test/Model/Reshape"
  op: "Reshape"
  input: "Test/Model/concat"
  input: "Test/Model/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Test/Model/ones"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Model/w_t"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 200
        }
        dim {
          size: 224722
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\310\000\000\000\322m\003\000"
      }
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.10000000149
      }
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149
      }
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Model/w_t/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Model/w_t/Initializer/random_uniform/max"
  input: "Model/w_t/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Model/w_t/Initializer/random_uniform/RandomUniform"
  input: "Model/w_t/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
}
node {
  name: "Model/w_t/Initializer/random_uniform"
  op: "Add"
  input: "Model/w_t/Initializer/random_uniform/mul"
  input: "Model/w_t/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
}
node {
  name: "Model/w_t/Assign"
  op: "Assign"
  input: "Model/w_t"
  input: "Model/w_t/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/w_t/read"
  op: "Identity"
  input: "Model/w_t"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
}
node {
  name: "Model/b"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 224722
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 224722
      }
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.10000000149
      }
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149
      }
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Model/b/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Model/b/Initializer/random_uniform/max"
  input: "Model/b/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Model/b/Initializer/random_uniform/RandomUniform"
  input: "Model/b/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
}
node {
  name: "Model/b/Initializer/random_uniform"
  op: "Add"
  input: "Model/b/Initializer/random_uniform/mul"
  input: "Model/b/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
}
node {
  name: "Model/b/Assign"
  op: "Assign"
  input: "Model/b"
  input: "Model/b/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Model/b/read"
  op: "Identity"
  input: "Model/b"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
}
node {
  name: "Test/Model/MatMul"
  op: "MatMul"
  input: "Test/Model/Reshape"
  input: "Model/w_t/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Test/Model/add"
  op: "Add"
  input: "Test/Model/MatMul"
  input: "Model/b/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "Test/Model/Reshape_1"
  op: "Reshape"
  input: "Test/Model/Placeholder_1"
  input: "Test/Model/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/Reshape"
  op: "Reshape"
  input: "Test/Model/Reshape_1"
  input: "Test/Model/sequence_loss_by_example/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  op: "SparseSoftmaxCrossEntropyWithLogits"
  input: "Test/Model/add"
  input: "Test/Model/sequence_loss_by_example/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tlabels"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/mul"
  op: "Mul"
  input: "Test/Model/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  input: "Test/Model/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/add/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999996004e-13
      }
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/add"
  op: "Add"
  input: "Test/Model/ones"
  input: "Test/Model/sequence_loss_by_example/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/sequence_loss_by_example/truediv"
  op: "Div"
  input: "Test/Model/sequence_loss_by_example/mul"
  input: "Test/Model/sequence_loss_by_example/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Test/Model/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Test/Model/Sum"
  op: "Sum"
  input: "Test/Model/sequence_loss_by_example/truediv"
  input: "Test/Model/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Test/Model/truediv/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Test/Model/truediv"
  op: "Div"
  input: "Test/Model/Sum"
  input: "Test/Model/truediv/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 7
          }
        }
        string_val: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
        string_val: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
        string_val: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
        string_val: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
        string_val: "Model/b"
        string_val: "Model/embedding"
        string_val: "Model/w_t"
      }
    }
  }
}
node {
  name: "save/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 7
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/SaveV2"
  op: "SaveV2"
  input: "save/Const"
  input: "save/SaveV2/tensor_names"
  input: "save/SaveV2/shape_and_slices"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
  input: "Model/b"
  input: "Model/embedding"
  input: "Model/w_t"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/RestoreV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/RestoreV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2/tensor_names"
  input: "save/RestoreV2/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
  input: "save/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_1/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/RestoreV2_1/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_1"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_1/tensor_names"
  input: "save/RestoreV2_1/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_1"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
  input: "save/RestoreV2_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/RestoreV2_2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_2/tensor_names"
  input: "save/RestoreV2_2/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_2"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
  input: "save/RestoreV2_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_3/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/RestoreV2_3/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_3"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_3/tensor_names"
  input: "save/RestoreV2_3/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_3"
  op: "Assign"
  input: "Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
  input: "save/RestoreV2_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_4/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/b"
      }
    }
  }
}
node {
  name: "save/RestoreV2_4/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_4"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_4/tensor_names"
  input: "save/RestoreV2_4/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_4"
  op: "Assign"
  input: "Model/b"
  input: "save/RestoreV2_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/b"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_5/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/embedding"
      }
    }
  }
}
node {
  name: "save/RestoreV2_5/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_5"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_5/tensor_names"
  input: "save/RestoreV2_5/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_5"
  op: "Assign"
  input: "Model/embedding"
  input: "save/RestoreV2_5"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/embedding"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_6/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "Model/w_t"
      }
    }
  }
}
node {
  name: "save/RestoreV2_6/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_6"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_6/tensor_names"
  input: "save/RestoreV2_6/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_6"
  op: "Assign"
  input: "Model/w_t"
  input: "save/RestoreV2_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Model/w_t"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_all/NoOp"
  op: "NoOp"
  input: "^save/Assign"
  input: "^save/Assign_1"
  input: "^save/Assign_2"
  input: "^save/Assign_3"
  input: "^save/Assign_4"
  input: "^save/Assign_6"
}
node {
  name: "save/restore_all/NoOp_1"
  op: "NoOp"
  input: "^save/Assign_5"
  device: "/device:CPU:0"
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/restore_all/NoOp"
  input: "^save/restore_all/NoOp_1"
}
node {
  name: "init/NoOp"
  op: "NoOp"
  input: "^Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Assign"
  input: "^Model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Assign"
  input: "^Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Matrix/Assign"
  input: "^Model/RNN/MultiRNNCell/Cell1/BasicLSTMCell/Linear/Bias/Assign"
  input: "^Model/w_t/Assign"
  input: "^Model/b/Assign"
}
node {
  name: "init/NoOp_1"
  op: "NoOp"
  input: "^Model/embedding/Assign"
  device: "/device:CPU:0"
}
node {
  name: "init"
  op: "NoOp"
  input: "^init/NoOp"
  input: "^init/NoOp_1"
}
versions {
  producer: 17
}
