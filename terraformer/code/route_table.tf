resource "aws_route_table" "tfer--rtb-01a5e4a3280db2b0e" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0022f56829cb55457"
  }

  tags = {
    Name = "public-subnet1-routing"
  }

  tags_all = {
    Name = "public-subnet1-routing"
  }

  vpc_id = "vpc-0963d0caf73279688"
}

resource "aws_route_table" "tfer--rtb-06173a585f4e796c7" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0022f56829cb55457"
  }

  tags = {
    Name = "public-subnet3-routing"
  }

  tags_all = {
    Name = "public-subnet3-routing"
  }

  vpc_id = "vpc-0963d0caf73279688"
}

resource "aws_route_table" "tfer--rtb-0b7a5c996930c6fe0" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0022f56829cb55457"
  }

  vpc_id = "vpc-0963d0caf73279688"
}
