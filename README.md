# Projeto DevOps - Infraestrutura como Código

Este projeto demonstra a implementação de infraestrutura como código usando Terraform para criar recursos na AWS.

## Pré-requisitos

Antes de executar este projeto, certifique-se de ter:

- **Terraform** instalado (versão 1.0 ou superior)
- **Conta AWS** ativa
- **Chaves de acesso AWS** criadas (Access Key ID e Secret Access Key)
- **Git** instalado

### Instalação do Terraform

Para instalar o Terraform, visite: https://www.terraform.io/downloads

## Como usar

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
cd DevOps
```

### 2. Configure as variáveis AWS

Crie um arquivo `terraform.tfvars` na pasta `infra/` com suas credenciais:

```hcl
aws_access_key = "sua_access_key_aqui"
aws_secret_key = "sua_secret_key_aqui"
```

### 3. Execute os comandos Terraform

Navegue para a pasta `infra/` e execute os seguintes comandos:

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

## Configuração do GitHub Actions

### Adicionar Secrets no GitHub

1. Vá para seu repositório no GitHub
2. Acesse **Settings** > **Secrets and variables** > **Actions**
3. Clique em **New repository secret**
4. Adicione os seguintes secrets:
   - `AWS_ACCESS_KEY_ID`: Sua AWS Access Key ID
   - `AWS_SECRET_ACCESS_KEY`: Sua AWS Secret Access Key

### Pipeline CI

O pipeline GitHub Actions está configurado para:
- Executar automaticamente em **push** na branch **main**
- Fazer checkout do código
- Exibir a mensagem "CI rodando com sucesso!"

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
├── .gitignore
└── README.md
```

## Recursos Criados

- **Bucket S3**: Criado com o nome especificado na variável `bucket_name`
- **Tags**: Name = "Bucket DevOps", Environment = "Dev"

## Segurança

⚠️ **Importante**: Nunca commite suas credenciais AWS diretamente no código. Sempre use variáveis de ambiente ou arquivos `.tfvars` que estejam no `.gitignore`.

## Suporte

Para dúvidas ou problemas, abra uma issue no repositório. 