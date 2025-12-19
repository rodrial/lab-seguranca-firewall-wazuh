# lab-seguranca-firewall-wazuh
Laboratório de cibersegurança com foco em monitoramento SIEM e acesso seguro via VPN."
# 🛡️ Laboratório de Defesa Cibernética: Firewall, VPN e SIEM

## 🎯 Objetivo
Este projeto documenta a criação de um ambiente de rede seguro e controlado para estudos de defesa cibernética. O foco é implementar o isolamento de rede, monitoramento de eventos em tempo real e acesso remoto criptografado utilizando ferramentas 100% Open Source.

## 🏗️ Arquitetura da Infraestrutura
O ambiente é virtualizado em um notebook pessoal utilizando **VirtualBox**, simulando uma estrutura de rede empresarial segmentada.

(https://github.com/rodrial/lab-seguranca-firewall-wazuh/blob/main/docs/Lab_firewall.drawio.png)

### Componentes e Especificações
| Ativo | Função | Sistema Operacional | RAM |
| :--- | :--- | :--- | :--- |
| **pfSense** | Firewall, Gateway e VPN Server | FreeBSD-based | 1 GB |
| **Wazuh Server** | Manager, Indexer e Dashboard | Ubuntu Server 22.04 | 4 GB |
| **EndPoint** | Cliente de teste e gerador de logs | Windows / Linux | 2 GB |

---

## 🌐 Configuração de Rede
Para garantir o isolamento e a segurança, a rede foi dividida em dois segmentos principais:

1.  **WAN (External):** Interface em modo **NAT** ou **Bridge** no VirtualBox, conectando o Firewall à internet.
2.  **LAN (Internal Network):** Rede virtual isolada chamada `intnet`. Apenas o Firewall tem acesso direto à WAN e à LAN, servindo como o único ponto de entrada e saída.

**Serviços Implementados:**
* **Roteamento & NAT:** pfSense gerindo o tráfego da rede interna.
* **VPN (OpenVPN):** Canal seguro para administração remota da rede.
* **SIEM (Wazuh):** Coleta de logs de sistema, integridade de arquivos e detecção de rootkits.

---

## 🚀 Como Replicar este Laboratório
1. Instale o **VirtualBox**.
2. Configure o **pfSense** com duas placas de rede (NAT e Internal).
3. Suba uma VM Ubuntu Server e execute o script de instalação do **Wazuh All-in-one**.
4. Instale o **Wazuh Agent** nas máquinas que deseja monitorar.
5. Configure as regras de firewall no pfSense para permitir o tráfego do agente (Porta 1514, 1515, 55000).

---

## 🛠️ Ferramentas Utilizadas
* [pfSense](https://www.pfsense.org/)
* [Wazuh](https://wazuh.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [Draw.io](https://app.diagrams.net/)
