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