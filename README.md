# ig_degree_betweenness_c

The C implementation of the "Smith-Pittman" algorithm. Also known as the node degree+edge betweenness community detection algorithm. Uses the igraph C library. 

Why use the C implementation? Because it executes *faster*.

R version of ig.degree.betweenness can be installed from [CRAN](https://cran.r-project.org/web/packages/ig.degree.betweenness/index.html) or [GitHub](https://github.com/benyamindsmith/ig.degree.betweenness).

Python version of ig.degree.betweenness can be installed from [PyPi](https://pypi.org/project/ig-degree-betweenness/) or [GitHub](https://github.com/benyamindsmith/ig_degree_betweenness_py).

## Installation

The instructions below have been presently tested to work on Windows operating systems with the [MingW64 Command Line Interface](https://www.mingw-w64.org/) and with [CMake](https://cmake.org/download/) installed.

1. Install igraph C following the instructions at [igraph Reference Manual for using the C library](https://igraph.org/c/html/0.10.16/igraph-Installation.html)

2. Compile the code by running: 

```sh
make clean
make
```

## Execution

To run the compiled graph clustering executable on an input edge list in [NCOL](https://igraph.org/c/html/0.9.7/igraph-Foreign.html) format that is tab separated (see simulated dataset of *therapies_edgelist.txt*) to obtain output of the node degree+edge betweenness community detection algorithm. 

The compiled code is meant to work with both directed and undirected graphs. 

## Undirected Graphs

```sh
./bin/cluster_degree_betweenness.exe  <path_to_edgelist>.txt
```
### Output

![](./utils/NDEB_undirected%20therapies_edgelist.png)


## Directed Graphs

```sh
./bin/cluster_degree_betweenness.exe -directed <path_to_edgelist>.txt
```
![](./utils/NDEB_directed%20therapies_edgelist.png)


