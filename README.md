# keny-go

website keny company

#Generar llaves necesarias para la encriptación

## Privada

mkdir keys && openssl genrsa -out ./keys/private.key

## Pública

openssl rsa -in ./keys/private.key -pubout > ./keys/public.pub
