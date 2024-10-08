# 1. Create and activate a new conda environment
conda create -n vllm_env python=3.9
conda activate vllm_env

# 2. Install vllm using pip
pip install vllm

# 3. Start the vllm server with Llama 3.1 8B Instruct
CUDA_VISIBLE_DEVICES=0 vllm serve \
  /shared_archive/common/models--meta-llama--Llama-3.1-8B-Instruct/snapshots/0e9e39f249a16976918f6564b8830bc894c89659/ \
  --dtype auto \
  --api-key token-abc123

# 4. Run SWE-agent on SWE-bench Lite and generate patches
python run.py --model_name gpt4 \
  --instance_filter marshmallow-code__marshmallow-1359
# python run.py --model_name llama-3.1-8b \
#   --per_instance_cost_limit 0.00 \
#   --config_file ./config/default.yaml