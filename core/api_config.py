import os

import openai

# set your OPENAI_API_BASE, OPENAI_API_KEY here!
OPENAI_API_BASE = os.getenv("OPENAI_API_BASE", "your_own_api_base")
# OPENAI_API_KEY = os.getenv("OPENAI_API_KEY", "")

# openai.api_type = "azure"#"azure"
openai.api_base = "https://api.openai.com/v1/chat/completions" #gpt-3.5-turbo-1106
# set your own api_version
# openai.api_version = "2023-07-01-preview"
with open('../data/chatgpt_api.txt', 'r') as f:
    OPENAI_API_KEY = f.read()
openai.api_key = OPENAI_API_KEY

# MODEL_NAME = 'gpt-4-1106-preview' # 128k 版本
# MODEL_NAME = 'CodeLlama-7b-hf'
# MODEL_NAME = 'gpt-4-32k' # 0613版本
# MODEL_NAME = 'gpt-4' # 0613版本
MODEL_NAME = 'gpt-3.5-turbo-0125' #