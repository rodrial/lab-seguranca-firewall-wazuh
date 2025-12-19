# Configurações de Firewall (pfSense)

Para que o laboratório funcione corretamente, as seguintes regras de entrada (Inbound) devem ser configuradas na interface **LAN** do pfSense para permitir a comunicação com o servidor Wazuh.

### Regras de Conetividade Wazuh
| Protocolo | Porta | Origem | Destino | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| TCP | 1515 | LAN Net | IP_WAZUH_SERVER | Registo de novos Agentes |
| UDP/TCP | 1514 | LAN Net | IP_WAZUH_SERVER | Recepção de Logs (Eventos) |
| TCP | 443 | LAN Net | IP_WAZUH_SERVER | Acesso ao Dashboard (HTTPS) |
| TCP | 55000 | LAN Net | IP_WAZUH_SERVER | API do Wazuh |

### Regras de VPN (Interface WAN)
| Protocolo | Porta | Origem | Destino | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| UDP | 1194 | Any | WAN Address | Acesso OpenVPN |
