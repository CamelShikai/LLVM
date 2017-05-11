import sys, os

lines = []

path = sys.argv[1]

print path

with open(path+'bb_output.txt') as f:
	lines = f.readlines()

#	we have to process three kinds of string exp
#		new bb:   402990 - 4029a8 [0]:
#					2b0177c - 2b01780 [0]:
#		preds:		PRED:  3->2
#		succs:		SUCC:  0->1
#

bb_c = 0
preds_c = 0
succs_c = 0
idenfity_bb = False

def help(l):
	global bb_c 
	global preds_c 
	global succs_c 
	global identify_bb 
	items = l.split()

	#if items[0].startswith('4') or items[0].startswith('2') or items[0].startswith('6'):
	if "[" in l:
		identify_bb = True
                #bb_c = bb_c + 1
	if "PRED:" in l:
		preds_c = preds_c + 1 
		if identify_bb == True:
			bb_c = bb_c + 1		
			identify_bb = False
	if "SUCC:" in l:
		succs_c = succs_c + 1 
		if identify_bb == True:
			bb_c = bb_c + 1		
			identify_bb = False

map(lambda l: help(l), lines)


node_num = bb_c
edge_num = (preds_c + succs_c) / 2

#print "node : " + str(node_num)
#print "edge : " + str(edge_num)
#
#print "c : ", (edge_num - node_num + 2)

print edge_num, "|", node_num, "|", (edge_num - node_num + 2) 
