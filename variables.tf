variable "account_regions_lookup" {
  description = <<EOT
Map of account_regions_lookup, attributes below
Optional:
    - account_id
    - region_opt_status_contains
EOT

  type = map(object({
    account_id                 = optional(string)
    region_opt_status_contains = optional(list(string))
  }))
}

