import matplotlib.pyplot as plt
import pandas as pd

data = pd.read_csv('all_participants.csv', sep=',', index_col =0)

for k, v in data.items():
    if k != "BDI":
        data.pop(k)

data.plot.hist(by='BDI', bins=2)

plt.show()
