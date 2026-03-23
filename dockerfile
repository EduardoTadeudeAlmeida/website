# 1. Usar uma imagem leve do Nginx como base
FROM nginx:alpine

# 2. Remover os arquivos padrão do Nginx (opcional, mas recomendado)
RUN rm -rf /usr/share/nginx/html/*

# 3. Copiar o seu arquivo HTML e CSS para a pasta do servidor
# O Nginx procura o arquivo index.html nesta pasta específica por padrão
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# 4. Expor a porta 80 para acesso HTTP
EXPOSE 80