# 1. Run SWE-agent on SWE-bench Lite and generate patches
python run.py --model_name llama-3.1-8b \
  --instance_filter marshmallow-code__marshmallow-1359
# python run.py --model_name llama-3.1-8b \
#   --per_instance_cost_limit 0.00 \
#   --config_file ./config/default.yaml