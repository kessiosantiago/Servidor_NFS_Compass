#!/bin/bash
# Diretório onde os relatórios serão salvos
relatorio_dir="/home/ec2-user/kessio"
# Nome do serviço
servico="Apache"
# Verifica se o Apache está ativo
if systemctl is-active --quiet httpd; then
    status="Online"
    arquivo_saida="$relatorio_dir/servico_online.txt"
else
    status="Offline"
    arquivo_saida="$relatorio_dir/servico_offline.txt"
fi
# Obtém a data e hora atual
data_hora=$(date '+%Y-%m-%d %H:%M:%S')
# Cria a mensagem completa
mensagem_completa="$data_hora - $servico - Status: $status"
# Escreve a mensagem no arquivo de saída
echo "$mensagem_completa" >> "$arquivo_saida"