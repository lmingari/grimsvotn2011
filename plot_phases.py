import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

fname = "extracted_data.csv"

df = pd.read_csv(fname)

ax = df.plot(x='time',y='height', legend=False)
ax.set(xlabel="Time since 21-05-2011 00:00 [h]",
       ylabel="Column top height [km asl]",
       title ="Data extracted from DOI:10.5194/essd-4-121-2012")
ax.xaxis.set_major_locator(ticker.MultipleLocator(base=6))
ax.xaxis.set_minor_locator(ticker.MultipleLocator(base=3))
ax.grid(linestyle='--')
plt.savefig('heights.png')
