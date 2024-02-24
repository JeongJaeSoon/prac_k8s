resource "aws_autoscaling_group" "tfer--eks-eks-nodegroup-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add" {
  # availability_zones        = ["ap-northeast-1a", "ap-northeast-1c"]
  capacity_rebalance        = "true"
  default_cooldown          = "300"
  default_instance_warmup   = "0"
  desired_capacity          = "2"
  force_delete              = "false"
  health_check_grace_period = "15"
  health_check_type         = "EC2"
  max_instance_lifetime     = "0"
  max_size                  = "3"
  metrics_granularity       = "1Minute"
  min_size                  = "1"

  mixed_instances_policy {
    instances_distribution {
      on_demand_allocation_strategy            = "prioritized"
      on_demand_base_capacity                  = "0"
      on_demand_percentage_above_base_capacity = "100"
      spot_allocation_strategy                 = "lowest-price"
      spot_instance_pools                      = "2"
    }

    launch_template {
      launch_template_specification {
        launch_template_id   = "lt-097403f255007d66f"
        launch_template_name = "eks-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add"
        version              = "1"
      }

      override {
        instance_type = "t3a.medium"
      }
    }
  }

  name                    = "eks-eks-nodegroup-f4c6ed57-17e4-86b6-ceb8-7a7b43df5add"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::032987744492:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "eks:cluster-name"
    propagate_at_launch = "true"
    value               = "eks-cluster"
  }

  tag {
    key                 = "eks:nodegroup-name"
    propagate_at_launch = "true"
    value               = "eks-nodegroup"
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/eks-cluster"
    propagate_at_launch = "true"
    value               = "owned"
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/enabled"
    propagate_at_launch = "true"
    value               = "true"
  }

  tag {
    key                 = "kubernetes.io/cluster/eks-cluster"
    propagate_at_launch = "true"
    value               = "owned"
  }

  termination_policies      = ["AllocationStrategy", "OldestInstance", "OldestLaunchTemplate"]
  # vpc_zone_identifier       = ["subnet-0535610889c7591e8", "subnet-0baccd1fe1e7bd92e"]
  wait_for_capacity_timeout = "10m"
}
