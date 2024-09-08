# cooee-taskweaver

# How to run locally

1. Build the docker image
```
docker build . -t cooee:latest
```

2. Now run the docker image
```
  docker run -it -e LLM_API_BASE=https://jeevesthebutler.openai.azure.com \
  -e LLM_API_KEY=<API_KEY> \
  -e LLM_API_TYPE=azure \
  -e LLM_MODEL=gpt4o_leap \
  -p 8000:8000 \
  cooee:latest 
```