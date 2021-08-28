#Definir o plugin a ser Utilizado
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Maquina Virtual EC2
resource "aws_instance" "servidor-apache" {

    # Número de Máquinas Criadas
    count = 2
    ami           = var.ami["linux"]
    instance_type = var.ami["micro"]

    tags = {
        Name = "servidor-web-${count.index}" # Pegar Index da Máquina Criada
    }

    ## Associar Chave de Acesso
    key_name = "terraform-aws-kg"

    ## Assiciar Security Group Acesso SSH
    vpc_security_group_ids = [aws_security_group.acesso-ssh.id, aws_security_group.acesso-http.id]

    user_data = file("install-apache.sh")
    
  
}

## Configurando o Security Group
resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress = [
    {
      description      = "acesso-ssh"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks =  null
      prefix_list_ids   = null
      security_groups   = null
      self              = null
    }
  ]

  tags = {
    Name = "acesso-ssh"
  }
}

resource "aws_security_group" "acesso-http" {
  name        = "acesso-http"
  description = "acesso-http"

  ingress  = [
    {
      description      = "acesso-http"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks =  null
      prefix_list_ids   = null
      security_groups   = null
      self              = null
    }
  ]

   egress  = [
    {
      description      = "acesso-http-saida"
      from_port        = 0
      to_port          = 0
      protocol         = "ALL"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks =  null
      prefix_list_ids   = null
      security_groups   = null
      self              = null
    }
  ]
  
  tags = {
    Name = "acesso-http"
  }

}
