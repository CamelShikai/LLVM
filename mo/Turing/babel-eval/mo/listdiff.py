import sys

list1 = sys.argv[1]
list2 = sys.argv[2]

set1 = set()
set2 = set()

with open(list1, 'r') as f:
    for line in f:
        set1.add(line.strip())

with open(list2, 'r') as f:
    for line in f:
        set2.add(line.strip())

for i in set1 - set2:
    print i
