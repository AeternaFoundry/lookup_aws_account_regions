output "account_regions_lookup_account_id" {
  description = "Map of account_id values across all account_regions_lookup, keyed the same as var.account_regions_lookup"
  value       = { for k, v in data.aws_account_regions.account_regions_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_regions_lookup_region_opt_status_contains" {
  description = "Map of region_opt_status_contains values across all account_regions_lookup, keyed the same as var.account_regions_lookup"
  value       = { for k, v in data.aws_account_regions.account_regions_lookup : k => v.region_opt_status_contains if v.region_opt_status_contains != null && length(v.region_opt_status_contains) > 0 }
}
output "account_regions_lookup_regions" {
  description = "Map of regions values across all account_regions_lookup, keyed the same as var.account_regions_lookup"
  value       = { for k, v in data.aws_account_regions.account_regions_lookup : k => v.regions if v.regions != null && length(v.regions) > 0 }
}

