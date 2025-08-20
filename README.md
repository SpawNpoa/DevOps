# Projeto DevOps - Infraestrutura como Código

Este projeto demonstra a implementação de infraestrutura como código usando Terraform para criar recursos na AWS.

## 📋 Documentação de Planejamento

Para uma visão completa do projeto, incluindo objetivos, requisitos e especificações detalhadas, consulte:

**📄 [PLANEJAMENTO.md](PLANEJAMENTO.md)** - Documentação completa de planejamento do projeto

## Pré-requisitos

- **Terraform** instalado (versão 1.0 ou superior)
- **Conta AWS** ativa
- **Chaves de acesso AWS** criadas (Access Key ID e Secret Access Key)

## Como usar

### 1. Clone o repositório

```bash
git clone https://github.com/SpawNpoa/DevOps.git
cd DevOps
```

### 2. Configure as variáveis AWS

Crie um arquivo `terraform.tfvars` na pasta `infra/` com suas credenciais:

```hcl
aws_access_key = "sua_access_key_aqui"
aws_secret_key = "sua_secret_key_aqui"
bucket_name    = "meu-bucket-devops-unico"
environment    = "dev"
aws_region     = "us-east-1"
```

### 3. Execute os comandos Terraform

```bash
cd infra

# Inicializar o Terraform
terraform init

# Verificar o plano de execução
terraform plan

# Aplicar as mudanças
terraform apply
```

### 4. Para destruir a infraestrutura

```bash
terraform destroy
```

## Pipeline de CI

O pipeline GitHub Actions está configurado em `.github/workflows/ci.yml` e executa automaticamente:

- ✅ Validação de código Terraform
- ✅ Verificação de formatação
- ✅ Testes de documentação
- ✅ Verificação de segurança
- ✅ Testes de estrutura do projeto

## Estrutura do Projeto

```
DevOps/
├── .github/
│   └── workflows/
│       └── ci.yml
├── infra/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── outputs.tf
├── README.md
├── PLANEJAMENTO.md
└── .gitignore
```

## Recursos Criados

- **Amazon S3 Bucket** com criptografia AES256
- **Versionamento** habilitado
- **Bloqueio de acesso público**

## Segurança

⚠️ **Importante**: Nunca commite suas credenciais AWS diretamente no código. Sempre use arquivos `.tfvars` que estejam no `.gitignore`. 