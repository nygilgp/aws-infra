#--- vpc/main.tf ---#

resource "aws_vpc" "tf_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "tf_subnet" {
  vpc_id            = aws_vpc.tf_vpc.id
  availability_zone = var.az
  cidr_block        = var.subnet_cidr_block
}

resource "aws_internet_gateway" "tf_igw" {
  vpc_id = aws_vpc.tf_vpc.id
}

resource "aws_route_table" "tf_rt" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_igw.id
  }
}

resource "aws_route_table_association" "tf_instace" {
  subnet_id      = aws_subnet.tf_subnet.id
  route_table_id = aws_route_table.tf_rt.id
}