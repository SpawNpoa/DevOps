resource "aws_s3_bucket" "bucket_devops" {
  bucket = var.bucket_name

  tags = {
    Name        = "Bucket DevOps"
    Environment = "Dev"
  }
} 