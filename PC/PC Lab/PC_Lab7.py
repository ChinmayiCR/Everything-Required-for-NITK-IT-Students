import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns

plt.figure()
df = pd.read_csv("seqoutput3.csv")
sns.scatterplot(x=df.x, y=df.y, hue=df.c,palette=sns.color_palette("hls", n_colors=8))
plt.xlabel("x coordinate")
plt.ylabel("y coordinate")
plt.title("Clustering of 1000 sensors")

plt.savefig("seqgraph3.png")