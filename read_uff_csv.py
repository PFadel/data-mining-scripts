import csv
import re
import json

headers = []
values = {}

def unicode_csv_reader(utf8_data, dialect=csv.excel, **kwargs):
    csv_reader = csv.reader(utf8_data, dialect=dialect, **kwargs)
    for row in csv_reader:
        yield [str(cell) for cell in row]

first = True
reader = unicode_csv_reader(open('cursos-uff.csv'), delimiter='|')
for field1 in reader:
    if first:
        first = False
        continue

    initials = field1[1]
    title = field1[2]
    length = field1[3]
    values[title+'_'+initials] = length

output = {}
for k, v in values.items():
    match = re.findall("([1-9]*[0-9])", v)
    if len(match) != 2:
        continue

    f, s = int(match[0]), int(match[1])
    output[k] = {
        "max": s,
        "min": f
    }

with open("parsed.json", "w") as f:
    content = json.dumps(output, ensure_ascii=False).encode('utf-8')
    f.write(content.decode())
