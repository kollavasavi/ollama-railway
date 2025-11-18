FROM ollama/ollama:latest

# Pull TinyLlama during build
RUN ollama serve & sleep 10 && ollama pull tinyllama && pkill ollama

EXPOSE 11434

CMD ["ollama", "serve"]
