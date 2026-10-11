data "aws_account_regions" "account_regions_lookup" {
  for_each = var.account_regions_lookup

  account_id                 = each.value.account_id
  region_opt_status_contains = each.value.region_opt_status_contains
}

