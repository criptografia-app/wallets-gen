# filename: Dockerfile

# Usa uma imagem base do Alpine para um container leve
FROM python:3.9-alpine

# Instala dependências necessárias para Python e QR code
RUN apk add --no-cache bash git build-base libpng-dev

# Instala pacotes Python para geração de carteiras e QR code
RUN pip install eth-account qrcode[pil] pandas openpyxl

# Define o diretório de trabalho
WORKDIR /app

# Copia o script para o container
COPY gen_wallets.py /app/gen_wallets.py

# Entrada padrão do container
CMD ["python", "/app/gen_wallets.py"]