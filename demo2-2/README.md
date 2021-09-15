# Check shifting motifs

For a convolutional neuron, if there are more than one shifting motif in the result generated by [code](https://github.com/wzthu/NeuronMotif/tree/master/nm/code) of NeuronMotif, we use the scripts in this folder to decoupling the sequence sample set twice.  


# How to use


The conolutonal neuron in layer 5 that may contains more than one shifting motif do following steps:


##  link the ppm files of layers

```
bash runlink.sh /code/layer5 layer5 1
```
The sequence samples will linked in folder layer5

The parameter of runlink.sh:

1st, NeuronMotif result ppm directory xxx/xxx/xxx/layer?
2nd, layer?
3st, the number of the kernel


## Run decoupling algorithm in NeuronMotif

Run NeuronMotif algorithm layer by layer with script 'run.layer.sh'.

The parameter of run.layer.sh:

* 1st, layer number, start from 1

* 2nd, kernels number in this layer

* 3rd, the max threads number to be used.

It depends on total CPU cores in this computer and is limited by memory size.
Be carefule to set large threads. The memory is easy to be stuffed.

For example:

Our server contains 28 cores server 128GB memory.

***Note***: only the last layer is done, the next layer can be started.

The script can be submited at the same directory at each node of the cluster.

```
bash run.layer.sh 5 1 28
```

##  Visualization

The parameter of run.layer.tt.sh:
1st, layer number, start from 1
2nd, kernels number in this layer
3rd, the max threads number to be used.
4th, is the model train by DeepSEA dataset, yes: 1, no: 0
It depends on total CPU cores in this computer and is limited by memory size.
Be carefule to set large threads. The memory is easy to be stuffed.

For example:

***28 cores server 128GB memory***

***Note: only the last layer is done, the next layer can be started.***
```
bash vis.layer.sh 5 1 28 0
```