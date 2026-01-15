import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os




load_dotenv("./key.env") # Load environment variables from key.env


# ---------------------------------------------------------
# 1. Load the Excel file and list all sheet names
# ---------------------------------------------------------
excel_path = "./Data/Data Tables_cleaned.xlsx"
xlsx = pd.ExcelFile(excel_path)
sheet_names = xlsx.sheet_names

print("Found sheets:", sheet_names)

# ---------------------------------------------------------
# 2. PostgreSQL connection details
# ---------------------------------------------------------

user = os.getenv("user")
password = os.getenv("DB_PASSWORD")
host = os.getenv("host")
port = os.getenv("port")
database = os.getenv("database")

engine = create_engine(f"postgresql://{user}:{password}@{host}:{port}/{database}")
with engine.connect() as conn:
    print("Connected!")

# ---------------------------------------------------------
# 3. Loop through each sheet and load into PostgreSQL
# ---------------------------------------------------------
for sheet in sheet_names:
    df = pd.read_excel(excel_path, sheet_name=sheet)

    # Clean table name (remove spaces, lowercase)
    table_name = sheet.lower().replace(" ", "_")

    df.to_sql(
        table_name,
        engine,
        if_exists="replace",   # or "append"
        index=False
    )

    print(f"Loaded sheet '{sheet}' into table '{table_name}'")

print("All sheets loaded successfully!")