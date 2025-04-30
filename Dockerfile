# Use the official Ollama image
FROM ollama/ollama:rocm

# Start ollama
RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull gemma3:1b
RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull llama3.2:1b


# Expose the default Ollama port
EXPOSE 11434

# Start Ollama in serve mode
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]
