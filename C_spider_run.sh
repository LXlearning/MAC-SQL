# #################### Spider dev 【run】count=1034 #########
# Generate SQL on BIRD dev dataset
python ./run.py --dataset_name "Cspider" \
   --dataset_mode="dev" \
   --input_file "./data/Cspider/dev.json" \
   --db_path "./data/Cspider/database" \
   --tables_json_path "./data/Cspider/tables.json" \
   --output_file "./outputs/Cspider_1/output_spider.json" \
   --log_file "./outputs/Cspider_1/log.txt"

echo "Done!"