#!/bin/bash

awk -F, '$6 != "Failed" {print $1, $2, $3, $4, $5, $6}' ~/data_pipeline/input/sales_data.csv > ~/data_pipeline/output/cleaned_sales_data.csv

echo "Data Cleaning and Preprocesses Done" > ~/data_pipeline/logs/preprocess.log

