# =============================================================================
# VARIÁVEIS DE ENTRADA - PROJETO DEVOPS
# =============================================================================

variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key ID para autenticação"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key para autenticação"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Nome único do bucket S3 (deve ser globalmente único)"
  type        = string
}

variable "environment" {
  description = "Ambiente de deploy (dev, staging, prod)"
  type        = string
  default     = "dev"
} 