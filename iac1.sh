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

echo "Criando usuários..."

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_ADM
useradd elias -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_ADM

useradd laura -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_VEN
useradd alexandre -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_VEN
useradd luan -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_VEN

useradd iago -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_SEC
useradd jardel -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_SEC
useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt Senhaxyz) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

