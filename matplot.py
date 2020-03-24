import matplotlib.pyplot as plt
import pandas as pd

data = pd.read_csv('all_participants.csv', sep=',', index_col =0)


data.plot.hist(by='facebook_hours')

plt.show()
