resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "my-exp-bk-0814"
  
  tags = {
    Name        = "my-exp-bk"
    Environment = "Trainning"
  }
}