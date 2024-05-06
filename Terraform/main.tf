provider "aws" {
  region = "eu-central-1"  # Ändere die Region nach Bedarf
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "react-chat"  
  acl    = "public-read"  # Zugriffssteuerung, kann nach Bedarf angepasst werden

  tags = {
    Name = "MyBucket"
  }

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::react-chat/*"
    }
  ]
}
POLICY
}

output "bucket_url" {
  value = aws_s3_bucket.my_bucket.website_endpoint
}
