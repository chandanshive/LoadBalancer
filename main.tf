resource "aws_lb" "test" {
  name               = "LoadBalancer"
  internal           = false
  load_balancer_type = "application"

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}
