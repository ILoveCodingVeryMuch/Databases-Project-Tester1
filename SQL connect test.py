import pymysql
import pymysql.cursors

conn= pymysql.connect(host='localhost', user='root', password='Rainbow.86',db='projecttestdb')

a = conn.cursor()

sql = ('SELECT * FROM BusName')
a.execute(sql)

countrow = a.execute(sql)
print('Number of rows :', countrow)
data = a.fetchall()
print(data)
