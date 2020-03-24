import csv

headers = []
values = {}

with open('twitter.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')

    for row in csv_reader:
        if len(headers) == 0:
            headers = row
            for h in headers:
                values[h] = set()
            continue

        for v in range(0, len(row)):
            values[headers[v]].add(row[v].lower().strip())

# c = 1
# print(headers)

# for v in sorted(values['household_income']):
#     print('{},'.format((c, v)))
#     c += 1
