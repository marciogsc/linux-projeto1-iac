#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários...e já adicionando aos grupos..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana"  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos driretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando as permissões..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "<<< Fim do script!!! >>>"
