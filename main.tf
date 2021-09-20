provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "test" {
  name               = "LoadBalancer"
  internal           = false
  load_balancer_type = "application"

  tags = {
    Environment = "production"
  }

  access_logs {
    bucket  = "<s3_bucket_name>"
    enabled = true
  }
  enable_deletion_protection       = true
  enable_cross_zone_load_balancing = true
}
