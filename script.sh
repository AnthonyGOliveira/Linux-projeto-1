#!/bin/bash

echo "Iniciando script..."

cd /

echo "Criando diretórios: "

mkdir -v /publico
mkdir -v /adm
mkdir -v /ven
mkdir -v /sec

echo "Diretórios criados"

echo "Criando grupos"

groupadd GRP_ADM
echo "Grupo GRP_ADM criado com sucesso"

groupadd GRP_VEN
echo "Grupo GRP_VEN criado com sucesso"

groupadd GRP_SEC
echo "Grupo GRP_SEC criado com sucesso"


echo "Criando usuários"
echo "Administradores:"

useradd carlos -m -c "Administrador Carlos" -s /bin/bash -G GRP_ADM --password "$(openssl passwd -1 admin123)"
echo "Usuário administrador carlos criado com sucesso"

useradd maria -c "Administradora Maria" -s /bin/bash -G GRP_ADM --password "$(openssl passwd -1 admin123)"
echo "Usuário administrador maria criada com sucesso"

useradd joao -c "Administrador Joao" -s /bin/bash -G GRP_ADM --password "$(openssl passwd -1 admin123)"
echo "Usuário administrador joao criado com sucesso"

echo "Departamento de vendas:"

useradd debora -c "Vendedora Debora" -s /bin/bash -G GRP_VEN --password "$(openssl passwd -1 ven123)"
echo "Usuário vendedora debora criada com sucesso"

useradd sebastiana -c "Vendedora Sebastiana" -s /bin/bash -G GRP_VEN --password "$(openssl passwd -1 ven123)"
echo "Usuário vendedora sebastiana criada com sucesso"

useradd roberto -c "Vendedor Roberto" -s /bin/bash -G GRP_VEN --password "$(openssl passwd -1 ven123)"
echo "Usuário vendedor roberto criada com sucesso"

echo "Departamento de secretariado:"

useradd josefina -c "Secretaria Josefina" -s /bin/bash -G GRP_SEC --password "$(openssl passwd -1 sec123)"
echo "Usuário do secretariado josefina criada com sucesso"

useradd amanda -c "Secretaria amanda" -s /bin/bash -G GRP_SEC --password "$(openssl passwd -1 sec123)"
echo "Usuário do secretariado amanda criada com sucesso"

useradd rogerio -c "Secretario Rogerio" -s /bin/bash -G GRP_SEC --password "$(openssl passwd -1 sec123)"
echo "Usuário do secretariado rogerio criada com sucesso"

echo "Vinculando diretórios aos respectivos grupos"
chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

echo "Diretórios vinculados com sucesso"

echo "Adicionando permissões"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões adicionadas com sucesso"

echo "Script executado com sucesso!"
