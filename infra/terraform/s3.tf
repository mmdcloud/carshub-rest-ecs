# S3 Bucket for storing vehicle images
resource "aws_s3_bucket" "vehicle-images" {
  bucket        = "theplayer007-vehicle-images"
  force_destroy = true
  tags = {
    Name = "theplayer007-vehicle-images"
  }
}

resource "aws_s3_bucket" "vehicle-images-code" {
  bucket        = "theplayer007-vehicle-images-code"
  force_destroy = true
  tags = {
    Name = "theplayer007-vehicle-images-code"
  }
}

resource "aws_s3_bucket_versioning" "vehicle-images-code-versioning" {
  bucket = aws_s3_bucket.vehicle-images-code.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "vehicle-images-code-signed" {
  bucket        = "theplayer007-vehicle-images-code-signed"
  force_destroy = true
  tags = { Name = "theplayer007-vehicle-images-code-signed"
  }
}

resource "aws_s3_object" "vehicle-images-code-object" {
  bucket = aws_s3_bucket.vehicle-images-code.id
  key    = "lambda.zip"
  source = "./files/lambda.zip"
}
