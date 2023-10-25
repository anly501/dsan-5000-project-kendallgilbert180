#Importing Data into Python Environment
#%%
import pandas as pd
data3a = pd.read_csv("/Users/kendallgilbert/dsan-5000-project-kendallgilbert180/dsan-website/5000-website/data/00-raw-data/3a.csv")
data3a.head()
print(len(data3a)) #165 Rows
data3a.Year.value_counts() #Just year 2019

# %% Finding Nan Values in Each col
nan_count = data3a.isna().sum()
print(nan_count)
#Nan Values are all in Code and there are only five
# Nan just means the country code is unavailable, but we still have country so it shoudl not be an Issue

# %% Renaming Columns to help future Analysis
data3a.rename(columns = {'Entity':'Country'}, inplace = True)
data3a.rename(columns = {'Mismanaged plastic waste to ocean per capita (kg per year)':'Mismanaged Plastic'}, inplace = True)

print(data3a.head()) #Checking Switch

# %%Exporting as CSV
data3a.to_csv('cleandata3a.csv', index=False)

