## Configurações Iniciais Terraform
** Baixar o Terraform**
https://releases.hashicorp.com/terraform/1.0.1/

** Baixar o AWS Cli **
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi


** Configurar Credenciais Geradas no AWS AMI**
` aws configure`

> AWS Access Key ID [None]:      $USER_KEY

> AWS Secret Access Key [None]:  $USER_SECRET_ACCESS

> Default region name [None]:    us-east-1

> Default output format [None]:  json


** Baixar e Extrair o Terraform **

> terraform -version

** Iniciar o Diretório do Terraform **

> terraform init

** Conferir o que será Executado na Cloud AWS**

> terraform plan

** Executa do Script de Construção na AWS**

> terraform apply


** Configurar um par de Chaves Privada e Publica para Acesso AWS **

ssh-keygen.exe -f terraform-aws-kg -t rsa

** Importar o Par de Chaves Gerados no Console do AWS **

![teste](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F019ded08-c584-4d1a-a950-3a02e404160c%2FUntitled.png?table=block&id=d200076c-0fd5-48bd-b799-7fec38952b2f&spaceId=6f496b12-bdb7-4c95-b1d3-0bbf6c970a29&width=2730&userId=e88f7040-79dd-499f-b00e-971c126fd43f&cache=v2)

![teste](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F5d397a07-15f1-408c-b6c3-f5073dce6435%2FUntitled.png?table=block&id=86c6da07-b91b-467c-91f0-f390b4649caa&spaceId=6f496b12-bdb7-4c95-b1d3-0bbf6c970a29&width=2730&userId=e88f7040-79dd-499f-b00e-971c126fd43f&cache=v2)

** Configurando o Security Group **

** Conectando na Instância EC2 **

`ssh -i "terraform-aws-kg" ec2-user@ec2-184-72-170-105.compute-1.amazonaws.com`


** Matar Todas as Instâncias **

`terraform destroy`

** Exibir o que está sendo executado **

`terraform show`

** Instalação do Apache**

`
    #! /bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo systemclt start apache2
    sudo systemclt enable apache2
`