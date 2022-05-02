import pandas as pd
import numpy as np

f1 = pd.read_csv("Google_Mobility_City_Daily.csv")
f2 = pd.read_csv("spain_excess_deaths.csv")
f3 = pd.read_csv("united_states_excess_deaths.csv")
datasets = [f1.columns.values.tolist()] + f1.values.tolist()
data = datasets[0]
data['grocery'] = data['gps_grocery_and_pharmacy'].apply(lambda x: x > 0)
grocery_Pharma = data[data['grocery'] == True]
grocery_Pharma['month'].value_counts()
