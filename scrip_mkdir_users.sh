#!/bin/bash

echo "Criando diretórios"

mkdir /admin
mkdir /publico

echo "Criando os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_PBL

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PBL
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PBL
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PBL

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /admin
chown root:GRP_PBL /public

chmod 770 /admin
chmod 777 /publico

echo "Finalizado"
