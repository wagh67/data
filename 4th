import pandas as pd
data=pd.read_csv("book4.csv")
data['Date']=pd.to_datetime(data['Date'],dayfirst=True)

monthly_sales=data.groupby(data["Date"].dt.to_period('M'))['Sales'].sum()
print("Total sales by month: ")
print(monthly_sales)
