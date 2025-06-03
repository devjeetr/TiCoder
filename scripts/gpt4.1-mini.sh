# !/bin/bash

MODEL_NAME="gpt-4.1-mini-2025-04-14"
uv run src/main.py \
  --data_file_path ./datasets/mbpp/sanitized-mbpp.json \
  --single --use_dyn --use_opt \
  --codex_cache ./outputs/${MODEL_NAME}-cache.json \
  --update \
  --query_oracle \
  --output_tag ${MODEL_NAME}-mbpp-sanitized \
  --model ${MODEL_NAME} \
  --token_per_minute_limit 100000 \
  --fix_num_tests 100 \
  --max_code_suggestions 100 \
  --max_tokens 512 \
  --max_user_queries 5 
