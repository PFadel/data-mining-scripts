import json
import csv


with open('parsed.json', 'r') as json_file:
    min_max = json.load(json_file)

headers = []

for k in min_max.keys():
    min_max[k]['name'] = k.split('_')[0]

with open('all_participants.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')

    for row in csv_reader:
        if len(headers) == 0:
            headers = row
            continue

        if row[8] == 'Graduação':
            for k, v in min_max.items():
                if row[9] == v['name']:
                    semester = int(row[10])
                    if semester > v['min']:
                        print(f'{row[1]} passou do tempo!')
                    else:
                        print(f'{row[1]} está dentro do tempo!')
                    break
