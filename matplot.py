import matplotlib.pyplot as plt
import pandas as pd

data = pd.read_csv('all_participants.csv', sep=',', index_col =0)

total_hours = data["facebook_hours"] + data["twitter_hours"]

data["total_hours"] = total_hours

data.plot.hist(by='total_hours')

plt.show()
