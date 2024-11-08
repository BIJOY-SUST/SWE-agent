# Run SWE-agent on SWE-bench Lite and generate patches
# conda create -n swe_agent_env_v2 python=3.9.7
# conda activate swe_agent_env_v2

# python -m pip install --upgrade pip && pip install --editable .

# docker pull sweagent/swe-agent:latest

# python run.py --model_name llama-3.1-8b \
#   --instance_filter marshmallow-code__marshmallow-1359
python run.py --model_name llama-3.1-8b \
  --per_instance_cost_limit 0.00 \
  --config_file ./config/default.yaml