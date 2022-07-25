#!/bin/bash

echo "INICIANDO DESAFIO DIO LINUX..."
echo "Iniciando a criação de diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Iniciando a criação dos grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Iniciando a criação dos usuários..."

useradd carlos -c "Carlos Santos" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Bento" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora Lima" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Braz" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Cabral" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Souza" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Costa" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Perez" -s /bin/bash -m -p $(openssl passwd -crypt Mudar123) -G GRP_SEC
passwd rogerio -e 

echo "Usuários criados com sucesso!"

echo "Inciando permissões de usuários..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões de usuários realizada com sucesso!"

echo "SCRIPT DESAFIO DIO FINALIZADO!"