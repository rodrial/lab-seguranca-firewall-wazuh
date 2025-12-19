#!/bin/bash

# Script para instalação simplificada do Wazuh (All-in-one)
# Recomendado: Ubuntu 22.04 LTS com no mínimo 4GB de RAM

echo "Iniciando a instalação do Wazuh Centralizado..."

# 1. Download do assistente de instalação
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh

# 2. Execução da instalação assistida (Modo All-in-one)
# O parâmetro -a instala todos os componentes em um único nó
sudo bash wazuh-install.sh -a

echo "Instalação concluída!"
echo "As credenciais de acesso (admin/senha) serão exibidas acima."
echo "Certifique-se de salvar o arquivo wazuh-passwords.txt gerado."
