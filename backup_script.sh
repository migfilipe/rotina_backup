#!/bin/bash 
# Diretórios e arquivos a serem backupados 
ORIGENS=(
 "/caminho/para/diretorio1" 
 "/caminho/para/arquivo1.txt" 
 ) 
 
 # Diretório de destino para os backups DESTINO="/caminho/para/backup" 
 
 # Data atual DATA=$(date +%Y%m%d%H%M%S) 
 
 # Função para criar o backup 
 fazer_backup() {
 for ORIGEM in "${ORIGENS[@]}"; do 
 if [ -e "$ORIGEM" ]; then 
 NOME_ARQUIVO=$(basename "$ORIGEM") 
 DESTINO_FINAL="$DESTINO/$NOME_ARQUIVO-$DATA.tar.gz" 
 tar -czf "$DESTINO_FINAL" "$ORIGEM" 
 echo "Backup de $ORIGEM feito em $DESTINO_FINAL" 
 else 
 echo "Origem $ORIGEM não encontrada!" 
 fi 
 done 
 } 
 
 # Verifique se o diretório de destino existe, caso contrário, crie-o 
 if [ ! -d "$DESTINO" ]; then 
 mkdir -p "$DESTINO" 
 fi 
 
 # Executa a função de backup
 fazer_backup
 