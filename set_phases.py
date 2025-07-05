import pandas as pd

fname = "extracted_data.csv"
zvent = 1719.0

df = pd.read_csv(fname)

data = {
    'start_time': df.iloc[:-1]['time'].to_numpy(), 
    'end_time':   df.iloc[1:]['time'].to_numpy(),
    'height':     1E3*df.iloc[:-1]['height'].to_numpy()-zvent,
    }

df = pd.DataFrame(data)
df.to_csv('phases.csv', 
          index=False, 
          header=False, 
          sep=' ')
