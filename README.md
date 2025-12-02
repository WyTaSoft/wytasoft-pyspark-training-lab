# WyTaSoft PySpark Training Lab

This repository (developed by **WyTaSoft**) contains a complete environment and set of materials for hands-on PySpark training, including Jupyter notebooks, example datasets, and environment setup scripts.

## 1. Overview
Website: https://wytasoft.com/

The goal of this project is to provide a reproducible PySpark lab environment for workshops and training sessions. It includes:
- Local Spark environment (standalone)
- Jupyter Notebook workflow
- pandas API on Spark demonstrations
- Data ingestion, ETL, and Spark SQL examples
- Spark UI exploration and monitoring

## 2. Project Structure
```
wytasoft-pyspark-training-lab/
│
├── notebooks/
│   ├── 01_spark_session_demo.ipynb
│   ├── 02_data_ingestion.ipynb
│   ├── 03_pandas_api_on_spark.ipynb
│   ├── 04_etl_pipeline.ipynb
│   └── 05_spark_sql_demo.ipynb
│
├── data/
│   └── bank_customers/
│        ├── bank_customers.csv
│        └── bank_customers.parquet
│
├── scripts/
│   └── setup-spark-lab.ps1
│
├── src/
│
├── requirements.txt
├── README.md
└── LICENSE
```

## 3. Requirements
- Python 3.10 or 3.11
- Java 8 or Java 11 (Spark compatible)
- `uv` package manager
- VS Code with Python & Jupyter extensions

## 4. Quick Start
### Clone the repository
```
git clone https://github.com/wytasoft/wytasoft-pyspark-training-lab
cd wytasoft-pyspark-training-lab
```
### Run the setup script
```
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
./scripts/setup-spark-lab.ps1
```
### Launch VS Code
```
code .
```
Select interpreter:
```
.venv/Scripts/python.exe
```

## 5. Using findspark
Add this at the top of notebooks:
```
import findspark
findspark.init()
```
Then create your Spark session.

## 6. Included Training Modules
- SparkSession creation and Spark UI
- Data ingestion (CSV/Parquet)
- pandas API on Spark
- ETL pipeline examples
- Spark SQL transformations

## 7. Version Compatibility Notes
- PySpark 3.5.0
- numpy 1.26.x
- pandas 2.1.x
- Java 8 or 11
- Python 3.10 or 3.11

## 8. Manual Installation (optional)
```
uv pip install pyspark==3.5.0 pandas==2.1.4 numpy==1.26.4 pyarrow==14.0.2 fsspec jupyter matplotlib findspark
```

## 9. Trainer
**Mehdi Tajmouati**
Lead Data Engineer specializing in Big Data, Spark, and scalable pipelines.

## 10. License
MIT License

