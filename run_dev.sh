# #################### Spider dev 【run】count=1034 #########
# Generate SQL on BIRD dev dataset
python ./run.py --dataset_name "testA_data" \
   --dataset_mode="dev" \
   --input_file "./data/testA_data/dev.json" \
   --db_path "./data/testA_data/database" \
   --tables_json_path "./data/testA_data/tables.json" \
   --output_file "./outputs/testA_data/output_spider.json" \
   --log_file "./outputs/testA_data/log.txt"

echo "Done!"