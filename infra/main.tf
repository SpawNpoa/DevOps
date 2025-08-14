# Bucket S3 para armazenamento
resource "aws_s3_bucket" "bucket_devops" {
  bucket = var.bucket_name

  tags = {
    Name        = "Bucket DevOps"
    Environment = var.environment
    Project     = "DevOps"
  }
}

# Configuração de versionamento do bucket
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket_devops.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configuração de criptografia do bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  bucket = aws_s3_bucket.bucket_devops.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Configuração de bloqueio de acesso público
resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket_devops.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
} 