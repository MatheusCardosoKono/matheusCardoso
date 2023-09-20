# Use uma imagem base do Ubuntu 20.04
FROM ubuntu:20.04

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY . /app

# Instale um servidor web (por exemplo, o servidor web Nginx)
RUN apt-get update && apt-get install -y nginx

# Especifique o comando de inicialização para manter o servidor Nginx em execução em segundo plano
CMD ["nginx", "-g", "daemon off;"]
