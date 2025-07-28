# ig_degree_betweenness_c
C implementation of the "Smith-Pittman" algorithm. Also known as the node degree+edge betweenness community detection algorithm. Written with the igraph C library. 

Why use the C implentation? Because it executes *faster*.

## Installation
Install igraph C following instructions at [igraph Reference Manual for using the C library](https://igraph.org/c/html/0.10.16/igraph-Installation.html)

## Compile and execute
### POSIX
#### Undirected edge list
cd /your_directory && gcc -o graph_clustering cluster_degree_betweenness.c -DDIRECTED=false -ligraph && ./graph_clustering /your_directory/therapies_edgelist.txt

#### Directed edge list
cd /your_directory && gcc -o graph_clustering cluster_degree_betweenness.c -DDIRECTED=true -ligraph && ./graph_clustering /your_directory/therapies_edgelist.txt

### Windows (using MSYS2 MINGW64 Shell)
#### Undirected edge list
cd /your_directory && gcc -O2 -m64 -o graph_clustering cluster_degree_betweenness.c -DDIRECTED=false -I/c/igraph_c/include -L/c/igraph_c/lib -ligraph && ./graph_clustering /your_directory/therapies_edgelist.txt

#### Directed edge list
cd /your_directory && gcc -O2 -m64 -o graph_clustering cluster_degree_betweenness.c -DDIRECTED=true -I/c/igraph_c/include -L/c/igraph_c/lib -ligraph && ./graph_clustering /your_directory/therapies_edgelist.txt

## Windows 64-bit standalone executables
These can be executed with an input edge list in NCOL format on any Windows 64-bit system in *Command Prompt*. **Does not require igraph C package to be installed.**

==Will output a file (community_detection_OUTPUT.txt) of nodes, modularity values by iteration and community assignment in your_directory.==

### Undirected edge list
cd C:\your_directory && NDEB_undirected.exe C:\your_directory\therapies_edgelist.txt

### Directed edge list
cd C:\your_directory && NDEB_directed.exe C:\your_directory\therapies_edgelist.txt
