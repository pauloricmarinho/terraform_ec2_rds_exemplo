## Baixar o AWS Cli
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi


# Configurar Credenciais Geradas no AWS AMI
> aws configure

>AWS Access Key ID [None]:      $USER_KEY
>AWS Secret Access Key [None]:  $USER_SECRET_ACCESS
>Default region name [None]:    us-east-1
>Default output format [None]:  json


## Baixar e Extrair o Terraform

> terraform -version

## Iniciar o Diretório do Terraform
> terraform init

## Conferir o que será Executado
> terraform plan

## Executa do Script de Construção na AWS
> terraform apply


## Configurar um par de Chaves Privada e Publica para Acesso AWS

ssh-keygen.exe -f terraform-aws-kg -t rsa

## Importar o Par de Chaves Gerados no Console do AWS

PRINT IMAGENS

## Configurando o Security Group

## Conectando na Instância EC2

ssh -i "terraform-aws-kg" ec2-user@ec2-184-72-170-105.compute-1.amazonaws.com


## Matar Todas as Instâncias
terraform destroy

## Instalação do Apache
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemclt start apache2
sudo systemclt enable apache2