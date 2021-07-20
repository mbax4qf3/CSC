#! /bin/bash -e
make
echo "compile completed, u_index and u_query are generated.\n"

echo "data 1 BFS querying"
./u_index -g graph/1.txt -q query/ -a answer/
echo "-----------------------------------------------------"

echo "data 1 original index constructing"
./u_index -g graph/1.txt -l label/1.txt -b n -o degree
echo "data 1 original querying"
./u_query -l label/1.txt -q query/ -a answer/ -t o
echo "-----------------------------------------------------"

echo "data 1 bipartite index constructing"
./u_index -g graph/1_bi.txt -l label/1_bi.txt -b y -o bidegree
echo "data 1 bipartite querying"
./u_query -l label/1_bi.txt -q query/ -a answer/ -t b
echo "-----------------------------------------------------"

echo "data 1 bipartite (removed edges) index constructing"
./u_index -g graph/1_bi_lack.txt -l label/1_bi_lack.txt -b y -o bidegree
echo "data 1 bipartite edge adding and querying"
./u_query -l label/1_bi_lack.txt -i graph/1_bi_inc.txt -q query/ -a answer/ -t i
echo "-----------------------------------------------------"

echo "data 1 bipartite (removed edges) index constructing"
./u_index -g graph/1_bi_lack.txt -l label/1_bi_lack.txt -b y -o bidegree
echo "data 1 bipartite edge adding (with minimality) and querying"
./u_query -l label/1_bi_lack.txt -i graph/1_bi_inc.txt -q query/ -a answer/ -t i -m m
echo "-----------------------------------------------------"

echo "data 1 bipartite (removed edges) index constructing"
./u_index -g graph/1_bi_lack.txt -l label/1_bi_lack.txt -b y -o bidegree
echo "data 1 bipartite removed edge querying"
./u_query -l label/1_bi_lack.txt -q query/ -a answer/ -t l
echo "-----------------------------------------------------"

echo "data 1 bipartite index constructing"
./u_index -g graph/1_bi.txt -l label/1_bi.txt -b y -o bidegree
echo "data 1 bipartite edge deleting and querying"
./u_query -l label/1_bi.txt -d graph/1_bi_inc.txt -q query/ -a answer/ -t d
echo "-----------------------------------------------------"


echo "All done."

