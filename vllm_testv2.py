from openai import OpenAI
import sys

try:
    client = OpenAI(
        base_url="http://localhost:8000/v1",
        api_key="token-abc123",
    )

    completion = client.chat.completions.create(
        model="/shared_archive/common/models--meta-llama--Llama-3.1-8B-Instruct/snapshots/0e9e39f249a16976918f6564b8830bc894c89659/",
        messages=[
            {"role": "user", "content": "Hello!"}
        ]
    )

    print(completion.choices[0].message)

except Exception as e:
    print(f"Error occurred: {e}", file=sys.stderr)
    print(f"Error type: {type(e).__name__}", file=sys.stderr)