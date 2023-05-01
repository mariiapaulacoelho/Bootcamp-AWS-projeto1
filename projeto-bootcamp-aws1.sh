#!/bin/bash

echo "Criando diretórios"

mkdir /dados
mkdir /etl
mkdir /analise
mkdir /publico

echo "Criando grupos de usuários"

groupadd GRP_DATA
groupadd GRP_ETL
groupadd GRP_ANALYSIS

echo "Criando usuários"

useradd datauser1 -c "usuário de dados 1" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DATA
useradd datauser2 -c "usuário de dados 2" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DATA
useradd datauser3 -c "usuário de dados 3" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DATA

useradd etluser1 -c "usuário de etl 1" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ETL
useradd etluser2 -c "usuário de etl 2" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ETL
useradd etluser3 -c "usuário de etl 3" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ETL

useradd analiseuser1 -c "usuário de análise 1" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ANALYSIS
useradd analiseuser2 -c "usuário de análise 2" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ANALYSIS
useradd analiseuser3 -c "usuário de análise 3" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ANALYSIS

echo "Imputando permissões para os diretórios"

chown root:GRP_DATA /dados
chown root:GRP_ETL /etl
chown root:GRP_ANALYSIS /analise

chmod 770 /dados
chmod 770 /etl
chmod 770 /analise
chmod 777 /publico

echo "Finalizado o script do projeto 1 do bootcampo de cloud aws"
