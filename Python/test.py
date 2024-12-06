
import pyodbc

drivers = [driver for driver in pyodbc.drivers() if 'SQL Server' in driver]
print(drivers)

from sqlalchemy import create_engine

engine = create_engine('mssql+pyodbc://DESKTOP-1FRNGIF/Company_SD?driver=ODBC+Driver+17+for+SQL+Server')

connection = engine.connect()

print("connected to Company_SD")
from sqlalchemy import text
connection.close()
connection=engine.connect()
result=connection.execute(text('''
                             SELECT TOP (1000) [Dname]
      ,[Dnum]
      ,[MGRSSN]
      ,[MGRStart Date]
  FROM [Company_SD].[dbo].[Departments]
  '''))


import pandas as pd
connection.close()
connection=engine.connect()
result='''
                             SELECT TOP (1000) [Dname]
      ,[Dnum]
      ,[MGRSSN]
      ,[MGRStart Date]
  FROM [Company_SD].[dbo].[Departments]
  '''
df=pd.read_sql_query(result,connection)

print(df.describe())
print(df.info())

# import matplotlib.pyplot as plt
# import seaborn as sns

# # إعداد حجم الرسم
# plt.figure(figsize=(10, 6))

# # رسم البيانات (استخدم البيانات الخاصة بك هنا)
# sns.lineplot(data=df, x='Dname', y='Dnum')

# # إضافة عنوان ومحاور
# plt.title('Department Numbers by Department Names')
# plt.xlabel('Department Name')
# plt.ylabel('Department Number')

# # تدوير القيم في المحور X لجعل الأسماء واضحة
# plt.xticks(rotation=45)

# # عرض الرسم
# plt.show()  # يعرض الرسم البياني مباشرة
