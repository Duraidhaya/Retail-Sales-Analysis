import pandas as pd
df = pd.read_csv("../01_Dataset/SampleSuperstore.csv")
print(df.head())
print("\nDataset Information:")
print(df.info())
print("\nMissing Values:")
print(df.isnull().sum())
print("\nSummary Statistics:")
print(df.describe())
print("\nCategory Wise Sales:")
category_sales = df.groupby("Category")["Sales"].sum().sort_values(ascending=False)
print(category_sales)
print("\nRegion Wise Profit:")
region_profit = df.groupby("Region")["Profit"].sum().sort_values(ascending=False)
print(region_profit)
print("\nSub-Category Wise Profit:")
subcategory_profit = df.groupby("Sub-Category")["Profit"].sum().sort_values(ascending=False)
print(subcategory_profit)
print("\nSegment Wise Sales:")
segment_sales = df.groupby("Segment")["Sales"].sum().sort_values(ascending=False)
print(segment_sales)
print("\nShip Mode Wise Profit:")
shipmode_profit = df.groupby("Ship Mode")["Profit"].sum().sort_values(ascending=False)
print(shipmode_profit)

'''charts'''
import matplotlib.pyplot as plt

category_sales.plot(kind="bar")

plt.title("Category Wise Sales")
plt.xlabel("Category")
plt.ylabel("Sales")

plt.tight_layout()

plt.savefig("../06_Screenshots/category_sales_chart.png")

plt.show()
'''region wise profit chart'''
region_profit.plot(kind="bar")

plt.title("Region Wise Profit")
plt.xlabel("Region")
plt.ylabel("Profit")

plt.tight_layout()

plt.savefig("../06_Screenshots/region_profit_chart.png")

plt.show()
'''ship mode wise profit chart'''

shipmode_profit.plot(kind="bar")

plt.title("Ship Mode Wise Profit")
plt.xlabel("Ship Mode")
plt.ylabel("Profit")

plt.tight_layout()

plt.savefig("../06_Screenshots/shipmode_profit_chart.png")

plt.show()
'''sub category wise profit chart'''
subcategory_profit.head(10).plot(kind="bar")

plt.title("Top 10 Sub-Category Profit")
plt.xlabel("Sub-Category")
plt.ylabel("Profit")

plt.tight_layout()

plt.savefig("../06_Screenshots/top10_subcategory_profit.png")

plt.show()