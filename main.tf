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
}
