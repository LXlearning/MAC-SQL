#!/bin/bash
data_path=data/CSpider
etype=exec # exec match
# output_file=outputs/Cspider_pred_chatgpt_dev/output.json
epoch=epoch-18
output_file=/Users/luoxin/Desktop/项目/github/DB-GPT-Hub/dbgpt_hub/output/pred/chatglm3_pred_sql_$epoch.json
log_file=/Users/luoxin/Desktop/项目/github/DB-GPT-Hub/dbgpt_hub/output/pred/chatglm3_pred_eval_$etype.log
# evaluation dbgpt_hub/output/pred/chatglm3_pred_sql_$epoch.json
echo $log_file
python evaluation/evaluation_spider.py \
    --gold $data_path/dev_gold.sql \
    --pred $output_file \
    --etype $etype \
    --db $data_path/database \
    --table $data_path/tables.json \
#    > $log_file     2>&1 &

echo finish!!!