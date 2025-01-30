provider aws {
    region = var.region
}

resource aws_vpc main {
    cidr_block = var.vpc_cidr
}
  
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "Main"
  }
}