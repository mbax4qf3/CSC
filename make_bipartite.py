infile = input("Infile (without suffix):")

outfile = infile + "_bi.txt"
infile += ".txt"

f = open(infile, 'r')
f_out = open(outfile, 'w')

line = f.readline()
node_num, edge_num = map(int,line.split())
nodes = set()
nn = 0
while True:
	line = f.readline()
	if not line:
		break
	a,b = map(int,line.split())
	if a not in nodes:
		nodes.add(a)
		str_out = str(a+node_num) + " " + str(a) + "\n"
		f_out.write(str_out)
		edge_num += 1
		nn += 1
	if b not in nodes:
		nodes.add(b)
		str_out = str(b+node_num) + " " + str(b) + "\n"
		f_out.write(str_out)
		edge_num += 1
		nn += 1
	# write lines
	str_out = str(a) + " " + str(b+node_num) + "\n"
	f_out.write(str_out)
f_out.close()
#print(len(nodes))

head = str(node_num*2) + " " + str(edge_num-1) + "\n"
with open(outfile, 'r+') as f_out2:
	content = f_out2.read()        
	f_out2.seek(0, 0)
	f_out2.write(head + content)
