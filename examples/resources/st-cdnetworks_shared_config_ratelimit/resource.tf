resource "st-cdnetworks_shared_config_ratelimit" "test" {
  rule_name          = "test"
  description        = "created by terraform"
  statistical_items {
    statistical_item = "IP"
  }
  statistical_period = 60
  trigger_threshold  = 5
  intercept_time     = 10
  effective_status   = "PERMANENT"
  action             = "BLOCK"

  rate_limit_rule_condition {
    ip_or_ips_conditions {
      match_type = "EQUAL"
      ip_or_ips  = ["1.1.1.1", "2.2.2.2"]
    }
    path_conditions {
      match_type = "CONTAIN"
      paths      = ["test", "aaa"]
    }
    header_conditions {
      match_type = "EQUAL"
      key        = "x-m"
      value_list = ["123"]
    }
  }
}