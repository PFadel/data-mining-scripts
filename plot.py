import matplotlib.pyplot as plt
import pandas as pd

data = pd.read_csv('all_participants.csv', sep=',', index_col =0)

total_hours = data["facebook_hours"] + data["twitter_hours"] + data["instagram_hours"]

data["total_hours"] = total_hours

for k, v in data.items():
    if k != "total_hours":
        data.pop(k)

data.plot.hist(by='total_hours', bins=5)

plt.show()
