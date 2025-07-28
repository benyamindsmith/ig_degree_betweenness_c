# ig_degree_betweenness_c
C implementation of the "Smith-Pittman" algorithm. Also known as the node degree+edge betweenness community detection algorithm. Written with the igraph C library. 

Why use the C implentation? Because it exceutes *faster*.

## Installation
Install igraph C following instructions at [igraph Reference Manual for using the C library](https://igraph.org/c/html/0.10.16/igraph-Installation.html)

## Compile and execute
gcc -o graph_clustering ig_degree_betweenness.c -ligraph && ./graph_clustering therapies_edgelist.txt
