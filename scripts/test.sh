# !/bin/bash
uv run src/main.py \
  --data_file_path ./datasets/mbpp/sanitized-mbpp.json \
  --single --use_dyn --use_opt \
  --codex_cache ./outputs/gpt4-32k-cache.json \
  --update \
  --query_oracle \
  --output_tag godspeed \
  --model "gpt-4.1-nano-2025-04-14" \
  --token_per_minute_limit 100000 \
  --fix_num_tests 10 \
  --max_tokens 256 \
  --max_code_suggestions 10 \
  --max_user_queries 2 \
  --max_num_examples 2
