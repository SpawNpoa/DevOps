# =============================================================================
# SAÍDAS - PROJETO DEVOPS
# =============================================================================

output "bucket_name" {
  description = "Nome do bucket S3 criado"
  value       = aws_s3_bucket.bucket_devops.bucket
}

output "bucket_arn" {
  description = "ARN do bucket S3"
  value       = aws_s3_bucket.bucket_devops.arn
}

output "bucket_region" {
  description = "Região onde o bucket S3 foi criado"
  value       = aws_s3_bucket.bucket_devops.region
} 