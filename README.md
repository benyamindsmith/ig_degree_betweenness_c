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


# Citation

To cite package ‘ig.degree.betweenness’ in publications use:

>  Smith B, Pittman T, Xu W (2024). “Centrality in
  Collaboration: community detection for oncology
  researchers.” _University of Toronto Journal of Public
  Health_, *5*(1). doi:10.33137/utjph.v5i1.44130
> Smith B, Pittman T, Xu W (2026). “Detecting
  communities when order and direction matter in social
  network analysis.” _Canadian Journal of Statistics_,
  *n/a*(n/a), e70060. doi:10.1002/cjs.70060

A BibTeX entry for LaTeX users is

```

  @Article{Smith_Pittman_Xu_2024,
    title = {Centrality in Collaboration: community detection for oncology researchers},
    author = {Benjamin Smith and Tyler Pittman and Wei Xu},
    journal = {University of Toronto Journal of Public Health},
    volume = {5},
    number = {1},
    year = {2024},
    month = {nov},
    doi = {10.33137/utjph.v5i1.44130},
    url = {https://utjph.com/index.php/utjph/article/view/44130},
  }
  
   @Article{Smith_Pittman_Xu_2026,
    title = {Detecting communities when order and direction matter in social network analysis},
    author = {Benjamin Smith and Tyler Pittman and Wei Xu},
    journal = {Canadian Journal of Statistics},
    volume = {n/a},
    number = {n/a},
    pages = {e70060},
    year = {2026},
    doi = {https://doi.org/10.1002/cjs.70060},
    url = {https://onlinelibrary.wiley.com/doi/abs/10.1002/cjs.70060},
    eprint = {https://onlinelibrary.wiley.com/doi/pdf/10.1002/cjs.70060},
    keywords = {Community detection, directed networks, edge betweenness, modularity, node degree},
  }


```
