# filename: Makefile

# Default target
all: run

# Comando para construir a imagem Docker
build:
	docker-compose build

# Comando para rodar o container e gerar as carteiras
run: build
	@echo "cleaning wallets dir"
	rm -rf wallets/*
	docker-compose up

# Comando para limpar as carteiras geradas
clean:
	rm -rf wallets/*

# Comando para remover containers e imagens
down:
	docker-compose down --rmi all