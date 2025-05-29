from openai import AzureOpenAI

client = AzureOpenAI(
    api_key="YOUR-KEY",
    api_version="2024-12-01-preview",
    azure_endpoint="https://myopenairesource.openai.azure.com"
)

while True:
    command = input("DevOpsBot> ")
    response = client.chat.completions.create(
        model="gpt-35-turbo",
        messages=[
            {"role": "system", "content": "You are a DevOps assistant."},
            {"role": "user", "content": command}
        ]
    )
    print(response.choices[0].message.content.strip())
