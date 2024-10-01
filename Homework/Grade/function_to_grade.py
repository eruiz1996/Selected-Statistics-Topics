import os
import pandas as pd
import random

read_dir = r'C:\Users\ed_22\Documents\Selected-Statistics-Topics'
file_name = 'lista.xlsx'
read_path = os.path.join(read_dir, file_name)

lista = pd.read_excel(read_path)

def get_repository(lista):
    aleatorio = random.choice(list(range(lista.shape[0])))
    repository = lista.loc[aleatorio, 'github']
    return repository

if __name__ == "__main__":
	url = get_repository(lista)
	print(url)