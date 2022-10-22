import random
import pandas as pd
from urllib.request import urlopen
import json
import time

def str_time_prop(start, end, time_format, prop):
    stime = time.mktime(time.strptime(start, time_format))
    etime = time.mktime(time.strptime(end, time_format))

    ptime = stime + prop * (etime - stime)

    return time.strftime(time_format, time.localtime(ptime))


def random_date(start, end, prop):
    return str_time_prop(start, end, '%d/%m/%Y', prop)

buah = [
  "tomat", "wortel", "selada", "cabai merah", "cabai hijau",
  "cabai rawit", "bawang merah", "bawang putih", "bayam", "kentang",
  "kubis", "brokoli", "kembang kol", "sawi", "singkong"
]

products = []

for i in range(len(buah)):
  temp = {
    "id": i+1,
    "nama": buah[i],
    "jumlah": random.randint(50,150),
    "harga": random.randint(15,30) * 1000
  }
  products.append(temp)

# print(products)
pd.DataFrame(products).to_csv('products.csv', index=False)

url = "https://dummyjson.com/users?limit=50"
response = urlopen(url)
data_json = json.loads(response.read())
customers = []
for i in range(50):
  temp = {
    "id": i+1,
    "nama": data_json['users'][i]['firstName'] + ' ' + data_json['users'][i]['lastName'],
    "email": data_json['users'][i]['firstName'] + data_json['users'][i]['lastName'] + '@gmail.com'
  }
  customers.append(temp)

# print(customers)
pd.DataFrame(customers).to_csv('customers.csv', index=False)

numOrder = random.randint(201, 299)
orders = []
order_details = []
for i in range(numOrder):
  temp = {
    "id": i+1,
    "customer_id": random.randint(1, 50),
    "tanggal": random_date("1/10/2022", "22/10/2022", random.random()),
    "alamat": random.choice(['Jakarta', 'Bogor', 'Depok', 'Tangerang', 'Bekasi', 'Bandung']),
    "telepon": "08" + str(random.randint(1000000000, 9999999999))
  }
  orders.append(temp)
  numOrderDetail = random.randint(1, 5)
  listProduct = []
  for j in range(numOrderDetail):
    pId = random.randint(1, 15)
    if len(listProduct) > 0:
      while pId in listProduct:
        pId = random.randint(1, 15)
    listProduct.append(pId)
    temp1 = {
      "order_id": i+1,
      "product_id": pId,
      "jumlah_order": random.randint(1, 10)
    }
    order_details.append(temp1)

pd.DataFrame(orders).to_csv('orders.csv', index=False)
pd.DataFrame(order_details).to_csv('order_details.csv', index=False)
