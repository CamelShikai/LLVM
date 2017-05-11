import sys

prof = open(sys.argv[1], 'r')

perfmap = {}
for l in prof:
    l = l.strip()
    if l:
        p = l.split()
        perfmap[p[-1]] = float(p[0])
prof.close()

roster = open(sys.argv[2], 'r')
count = 0.0
for l in roster:
    print l.strip(), perfmap.get(l.strip(), 0.0)
    count += perfmap.get(l.strip(), 0.0)
roster.close()

print count
