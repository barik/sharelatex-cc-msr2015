import codecs, json, csv

output = {}
output["formulaCells"] = {}
output["inputCells"] = {}

with codecs.open('fuse.binary.with.poi','rU','utf-8') as f:
    for line in f:
       j = json.loads(line)
       inputCells = j[u'POI'][u'totalInputCells']
       formulaCells = j[u'POI'][u'totalFormulas']
       if j[u'POI'][u'stackTrace']:
           inputCells = -1;
           formulaCells = -1;
       prev = 0 
       if inputCells in output["inputCells"]:
           prev = output["inputCells"][inputCells]
       prev = prev + 1
       output["inputCells"][inputCells] = prev

       prev = 0
       if formulaCells in output["formulaCells"]:
           prev = output["formulaCells"][formulaCells]
       prev = prev + 1
       output["formulaCells"][formulaCells] = prev


with open('inputCells.csv', 'wb') as f:
    writer = csv.writer(f)
    for row in output["inputCells"].iteritems():
        writer.writerow(row)

with open('formulaCells.csv', 'wb') as f:
    writer = csv.writer(f)
    for row in output["formulaCells"].iteritems():
        writer.writerow(row)
