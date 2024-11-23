# Script de Backup Automático

## Descrição
Este script realiza backups automáticos de arquivos e diretórios especificados para um local designado. Ele usa `tar` para comprimir os arquivos e adiciona um carimbo de data/hora ao nome do arquivo de backup.

## Uso
1. Edite o arquivo `backup_script.sh` e adicione os caminhos dos arquivos e diretórios que deseja fazer backup na variável `ORIGENS`.
2. Defina o diretório de destino onde os backups serão armazenados na variável `DESTINO`.
3. Execute o script manualmente ou configure um cron job para executá-lo periodicamente.

## Exemplo de Cron Job
Para executar o script todos os dias às 2 da manhã, adicione a seguinte linha ao seu crontab:
