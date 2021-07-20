
# README

## Efficient Counting Shortest Cycles on Dynamic Graphs

This work is to evaluate the shortest cycle counting through a vertex with 2-hop labeling. The files provide the implementation of our Bipartite-Conversion hub labeling algorithm and edge insertion/deletion update algorithm. An example graph and its related files are provided, run "*sh run_script.sh*" to run the examples.

****
* Author: Qingshuai Feng
* Co-author: You Peng
****

## Folders:
### graph: graph files
|Index|File name|Description|
|--|---|----|
|a|n.txt|original graph with number n|
|b|n_bi.txt|bipartite conversion of original graph|
|c|n_bi_lack.txt|bipartite conversion of original graph without inserted edges|
|d|n_bi_inc.txt|inserted edges/deleted edges|
---
### label:	label files (for a,b,c above)
---
### query: query files
|Index|File name|Description|
|--|---|----|
|1|n_high.txt|query nodes with high degree|
|2|n_midhigh.txt|query nodes with mid-high degree|
|3|n_midlow.txt|query nodes with mid-low degree|
|4|n_low.txt|query nodes with low degree|
|5|n_bottom.txt|query nodes with very low degree|
---
###	info: information files
|Index|File name|Description|
|--|---|----|
|I|n.txt|index contruction time and # of label entries for a|
|II|n_bi.txt|index contruction time and # of label entries for b|
|III|n_bi_lack.txt|index contruction time and # of label entries for c|
|IV|n_incEdgeCnt.txt|average update time and avg # of label entries of updated/renewed/inserted for d (redundancy)|
|V|nm_incEdgeCnt.txt|average update time and avg # of label entries of updated/renewed/inserted for d (minimality)|
|VI|n_dec_time.txt|update time for each deleted edge and the average update time|
|VII|n_decEdgeCnt.txt|sizes of affected hubs set A and set B, number of label entries deleted/added for each deleted edge|
---
### answer: answers files (for 1,2,3,4,5)
---
---
## Files:
|File name|Description|
|---|----|
|macros.h|macros operations|
|u_label.h|define labels|
|u_io.cc & u_io.h|read graph|
|u_spc.h & u_spc.cc|all implementations|
|u_index.cc|building index|
|u_query.cc|query and edge insertion|
|run_script.sh|script for running (four experiments per graph)|
|Makefile|Makefile|
|make_bipartite.py|python script for bipartite conversion|

## Execution: (Examples see run_script.sh)
### ./u_index:
|Parameters|Type|Description|
|--|--|---|
|g|string|graph_file|
|l|string|label_file|
|b|n/y|bipartite_conversion|
|o|degree/bidegree|ordering|
|q|string|query file, if exist, run naive BFS|

### ./u_query:
|Parameters|Type|Description|
|--|--|---|
|l|string|label_file|
|q|string|query_folder|
|a|string|answer_folder|
|t|o/b/i/m/l/d|query and update mode type: o-original graph; b-bipartite graph; i:insert edge; m:insert edge with minimality; l:removed edge graph query; d:delete edge|
|i|string|inserted_edges_file|
|m|m/empty|enable minimality|
|d|string|deleted_edges_file|
