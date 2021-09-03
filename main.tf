resource "aws_lb" "test" {
  name               = "Load_Balancer"
  internal           = false
  load_balancer_type = "application"

  enable_deletion_protection = true

  access_logs {
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
