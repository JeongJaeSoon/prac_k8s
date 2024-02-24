resource "aws_launch_template" "tfer--eks-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  disable_api_stop        = "false"
  disable_api_termination = "false"

  iam_instance_profile {
    name = "eks-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add"
  }

  image_id      = "ami-0ab84face2beaa17b"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "eks-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0ab9a8f14ad627075"]
  }

  tags = {
    "eks:cluster-name"   = "eks-cluster"
    "eks:nodegroup-name" = "eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "eks-cluster"
    "eks:nodegroup-name" = "eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVJDVkVORFFXVXlaMEYzU1VKQlowbEpZbVYxY210Q09YTmlaVlYzUkZGWlNrdHZXa2xvZG1OT1FWRkZURUpSUVhkR1ZFVlVUVUpGUjBFeFZVVUtRWGhOUzJFelZtbGFXRXAxV2xoU2JHTjZRV1ZHZHpCNVRrUkJlVTFxVVhoTlJFa3hUa1JhWVVaM01IcE9SRUY1VFdwRmVFMUVUWGRPUkZwaFRVSlZlQXBGZWtGU1FtZE9Wa0pCVFZSRGJYUXhXVzFXZVdKdFZqQmFXRTEzWjJkRmFVMUJNRWREVTNGSFUwbGlNMFJSUlVKQlVWVkJRVFJKUWtSM1FYZG5aMFZMQ2tGdlNVSkJVVU00ZDB4MU0xRXJlbGR1V1dNck9XbHNZMFppVFhOTE1rZExabVJ1YzJwb0x6SkhkVUkwUVdWSmRqUTBTalZLTlZCR1FtTjZVa1UxTTJJS1FpOWhXa3h5WTFaeGJFeFVaa0kyT1c5cFMzcHpOMnBLV0hSemNVVmxNbFp2UkUweU5USjJkbkY1YVhObE9YTnFOVU5pUTNKS1NIZDVPRlJKT1dWTVRBcFFObEpqYUdGUmMzbHpZakl6YTJOSlVXSldjWFZKWWtzelJUaEdibWd6TUVab00yTXhhbFkzVTBnek9VTkNSMXBTVTJveGEzaERkbmw1Vkdwb2FqaG5DazlSVldabVVIaFZVVFJQT0hWR1lYRm5iMXBUVG1aeU5ITkpOVkY2WlZCTmNWQkRVMkZRTlZKdEsyWnJjSE53ZURkSVVXTmhPVk5SY25jMlpFRTNUbFVLTVZKMWMxWTBVblpNUkRkTU9GbERORWRhYTBGSlN6RlVUSHBSSzBKU1EweFpTbEpPVUd0NVJuQjNaVUZzVW1zMk16aHlUVkZXUkZJemVYbDRaRE5QZFFwb2NYbFBSRUZqVWpKbFRYUXlTbVpoY1VoQlRXOXBRMkZ0VW1KMFFXZE5Ra0ZCUjJwWFZFSllUVUUwUjBFeFZXUkVkMFZDTDNkUlJVRjNTVU53UkVGUUNrSm5UbFpJVWsxQ1FXWTRSVUpVUVVSQlVVZ3ZUVUl3UjBFeFZXUkVaMUZYUWtKVFNUSkZLMmRMZUVSWFJsSjFNMFpHUzFSNU1sYzBibm8yTm10cVFWWUtRbWRPVmtoU1JVVkVha0ZOWjJkd2NtUlhTbXhqYlRWc1pFZFdlazFCTUVkRFUzRkhVMGxpTTBSUlJVSkRkMVZCUVRSSlFrRlJRazVXUVdONk1sZFhXQXBNTnpocFQwWXhTbEp2YUVkalJDOTBNbWRzZWxZM2JVVkpNbVU1VGtaalNIZFJURFpUUzNaeFJGcG9kbXRsYjNwQ1JVSlZXVGhKTjNCVGJUUXpXbXRuQ2pWRlVYbElRVXB3UkZaMmNHRnJWV2hUTUdoc1R6VlpLMU5tVFRGSFkzWTNSRE0zTHpJMU1XSnFlVE5YVVdoa01ESnZjSFZyS3pNMldrcEdWMVpNYUV3S05VbFJiM2RFYjBGclVqY3hkemxLVTJrclRHdENRV01yYjI5MkwyTlpXV2hEYkVONVJEY3dkbFpwV0hOR00xRlhZbFkxTldsTlNsZHdabWcwWVhOV2RBcHpWVE5yVGxJdk56WnZhbXh2VjFoVGNuQjBRblptYUdvMlJEUlFZMVI1YUZCc09WRmFOREpKUjNrNGRUSlhSemR6WjNnelZFUmxlRWhHVVVaNloxZG1Da1Y0UkhSTmJIVnNWblpDSzJGcFEzWkZOMllyWkRoaVIwOWtTSHBZUm5oSE5XZG9MM0ZxUzFWelkwSkdhVFExVDJSSGFUVjRVVzFvZUdwRmR6UkViVW9LTlROaGJtRk5XbWRxYmxOSUNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwpBUElfU0VSVkVSX1VSTD1odHRwczovLzhGNjMyRDVCRDFDMTdCNUJCOTI4REUwQjk2RTcxRjc3LmdyNy5hcC1ub3J0aGVhc3QtMS5la3MuYW1hem9uYXdzLmNvbQpLOFNfQ0xVU1RFUl9ETlNfSVA9MTAuMTAwLjAuMTAKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIGVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICctLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMGFiODRmYWNlMmJlYWExN2IsZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9ZWtzLW5vZGVncm91cCxyb2xlPWVrcy1ub2RlZ3JvdXAgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
}

resource "aws_launch_template" "launch-template" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  disable_api_stop        = "false"
  disable_api_termination = "false"

  # iam_instance_profile {
  #   name = "eks-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add"
  # }

  image_id      = "ami-0ab84face2beaa17b"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "launch-template"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0ab9a8f14ad627075"]
  }

  tags = {
    "eks:cluster-name"   = "eks-cluster"
    "eks:nodegroup-name" = "eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "eks-cluster"
    "eks:nodegroup-name" = "eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVJDVkVORFFXVXlaMEYzU1VKQlowbEpZbVYxY210Q09YTmlaVlYzUkZGWlNrdHZXa2xvZG1OT1FWRkZURUpSUVhkR1ZFVlVUVUpGUjBFeFZVVUtRWGhOUzJFelZtbGFXRXAxV2xoU2JHTjZRV1ZHZHpCNVRrUkJlVTFxVVhoTlJFa3hUa1JhWVVaM01IcE9SRUY1VFdwRmVFMUVUWGRPUkZwaFRVSlZlQXBGZWtGU1FtZE9Wa0pCVFZSRGJYUXhXVzFXZVdKdFZqQmFXRTEzWjJkRmFVMUJNRWREVTNGSFUwbGlNMFJSUlVKQlVWVkJRVFJKUWtSM1FYZG5aMFZMQ2tGdlNVSkJVVU00ZDB4MU0xRXJlbGR1V1dNck9XbHNZMFppVFhOTE1rZExabVJ1YzJwb0x6SkhkVUkwUVdWSmRqUTBTalZLTlZCR1FtTjZVa1UxTTJJS1FpOWhXa3h5WTFaeGJFeFVaa0kyT1c5cFMzcHpOMnBLV0hSemNVVmxNbFp2UkUweU5USjJkbkY1YVhObE9YTnFOVU5pUTNKS1NIZDVPRlJKT1dWTVRBcFFObEpqYUdGUmMzbHpZakl6YTJOSlVXSldjWFZKWWtzelJUaEdibWd6TUVab00yTXhhbFkzVTBnek9VTkNSMXBTVTJveGEzaERkbmw1Vkdwb2FqaG5DazlSVldabVVIaFZVVFJQT0hWR1lYRm5iMXBUVG1aeU5ITkpOVkY2WlZCTmNWQkRVMkZRTlZKdEsyWnJjSE53ZURkSVVXTmhPVk5SY25jMlpFRTNUbFVLTVZKMWMxWTBVblpNUkRkTU9GbERORWRhYTBGSlN6RlVUSHBSSzBKU1EweFpTbEpPVUd0NVJuQjNaVUZzVW1zMk16aHlUVkZXUkZJemVYbDRaRE5QZFFwb2NYbFBSRUZqVWpKbFRYUXlTbVpoY1VoQlRXOXBRMkZ0VW1KMFFXZE5Ra0ZCUjJwWFZFSllUVUUwUjBFeFZXUkVkMFZDTDNkUlJVRjNTVU53UkVGUUNrSm5UbFpJVWsxQ1FXWTRSVUpVUVVSQlVVZ3ZUVUl3UjBFeFZXUkVaMUZYUWtKVFNUSkZLMmRMZUVSWFJsSjFNMFpHUzFSNU1sYzBibm8yTm10cVFWWUtRbWRPVmtoU1JVVkVha0ZOWjJkd2NtUlhTbXhqYlRWc1pFZFdlazFCTUVkRFUzRkhVMGxpTTBSUlJVSkRkMVZCUVRSSlFrRlJRazVXUVdONk1sZFhXQXBNTnpocFQwWXhTbEp2YUVkalJDOTBNbWRzZWxZM2JVVkpNbVU1VGtaalNIZFJURFpUUzNaeFJGcG9kbXRsYjNwQ1JVSlZXVGhKTjNCVGJUUXpXbXRuQ2pWRlVYbElRVXB3UkZaMmNHRnJWV2hUTUdoc1R6VlpLMU5tVFRGSFkzWTNSRE0zTHpJMU1XSnFlVE5YVVdoa01ESnZjSFZyS3pNMldrcEdWMVpNYUV3S05VbFJiM2RFYjBGclVqY3hkemxLVTJrclRHdENRV01yYjI5MkwyTlpXV2hEYkVONVJEY3dkbFpwV0hOR00xRlhZbFkxTldsTlNsZHdabWcwWVhOV2RBcHpWVE5yVGxJdk56WnZhbXh2VjFoVGNuQjBRblptYUdvMlJEUlFZMVI1YUZCc09WRmFOREpKUjNrNGRUSlhSemR6WjNnelZFUmxlRWhHVVVaNloxZG1Da1Y0UkhSTmJIVnNWblpDSzJGcFEzWkZOMllyWkRoaVIwOWtTSHBZUm5oSE5XZG9MM0ZxUzFWelkwSkdhVFExVDJSSGFUVjRVVzFvZUdwRmR6UkViVW9LTlROaGJtRk5XbWRxYmxOSUNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwpBUElfU0VSVkVSX1VSTD1odHRwczovLzhGNjMyRDVCRDFDMTdCNUJCOTI4REUwQjk2RTcxRjc3LmdyNy5hcC1ub3J0aGVhc3QtMS5la3MuYW1hem9uYXdzLmNvbQpLOFNfQ0xVU1RFUl9ETlNfSVA9MTAuMTAwLjAuMTAKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIGVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICctLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMGFiODRmYWNlMmJlYWExN2IsZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9ZWtzLW5vZGVncm91cCxyb2xlPWVrcy1ub2RlZ3JvdXAgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
}
