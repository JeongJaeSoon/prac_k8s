resource "aws_main_route_table_association" "tfer--vpc-0963d0caf73279688" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0b7a5c996930c6fe0_id}"
  vpc_id         = "vpc-0963d0caf73279688"
}
