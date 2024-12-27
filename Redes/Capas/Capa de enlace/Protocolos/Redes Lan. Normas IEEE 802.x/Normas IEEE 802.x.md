El IEEE desarrolla normativa para el intercambio de información en una [[Redes LAN]] desarrollando una arquitectura de 3 niveles. 

![[Pasted image 20230629155734.png]]

La normativa del IEEE se denomina Modelo de Referencia IEEE 802 que es el conjunto de [[Normas IEEE 802.x]]


## Arquitectura IEEE 802

![[Pasted image 20230629155817.png]]

La capa LLC se encarga del control del enlace lógico
- Control de flujo 
- Control de errores

La capa MAC se encarga de acceso al medio
- Reparto del [[Medio Físico o Capa Física]]
- Direccionamiento físico
- etc. 

### Protocolos 
De esta arquitectura surgen varios protocolos:
- [[IEEE 802.2 Protocolo de Control del enlace Lógico(LLC)]]
- [[IEEE 802.3 Ethernet(CSMA_CD)]]
- IEEE 802.5: #token_ring (Anillo con testigo)
- [[IEEE 802.11x: LAN Inalámbrica]]
- [[IEEE 802.1Q: LAN Virtual(VLAN)]]

## Integración [[Modelo de capas de TCP_IP]] con IEEE 802
El documento #RFC 1024 describe cual es el procedimiento para la transmisión de paquetes IP en [[Redes LAN]] que soportan la [[Normas IEEE 802.x]]

![[Pasted image 20230629160334.png]]

Excepto el [[IEEE 802.3: Ethernet(CSMA/CD)]], la arquitectura TCP/IP emplea como capas inferiores LCC, MAC y física del IEEE