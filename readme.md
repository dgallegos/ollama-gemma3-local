# build
docker build -t gemma3-1b-ollama .

# run
docker run -d -p 11434:11434  --name gemma3 gemma3-1b-ollama 