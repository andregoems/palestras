import pandas as pd 
from connection_sql import mysql_demo_transformacao

conn = mysql_demo_transformacao()


tb_comprador = pd.read_sql_table(table_name ='comprador', con=conn)

print(tb_comprador)