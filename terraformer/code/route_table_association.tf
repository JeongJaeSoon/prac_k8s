resource "aws_route_table_association" "tfer--subnet-0535610889c7591e8" {
  route_table_id = aws_route_table.tfer--rtb-01a5e4a3280db2b0e.id
  subnet_id      = "subnet-0535610889c7591e8"
}

resource "aws_route_table_association" "tfer--subnet-0baccd1fe1e7bd92e" {
  route_table_id = aws_route_table.tfer--rtb-06173a585f4e796c7.id
  subnet_id      = "subnet-0baccd1fe1e7bd92e"
}
