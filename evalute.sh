#!/bin/bash
data_path=data/CSpider
etype=exec # exec match
output_path=outputs/Cspider_pred_chatgpt_dev

# evaluation
python evaluation/evaluation_spider.py \
    --gold $data_path/dev_gold.sql \
    --pred $output_path/output.json \
    --etype $etype \
    --db $data_path/database \
    --table $data_path/tables.json \
   > $output_path/MAC_SQL_evaluation_$etype.log     2>&1 &

echo finish!!!