import pandas as pd

df = pd.read_excel('Result.ods')

for i in df['data']:
    print(chr(int(i[2:4], 16)), end='')
