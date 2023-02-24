###################################################
## KopiCloud AD API - List of Distribution Group ##
###################################################

# Get the List of Distribution Groups
data "kopicloud_distribution_group_list" "test_distribution" {
}

# Returns the List of Distribution Groups
output "OUTPUT_kopicloud_distribution_groups_list" {
  description = "All Existing Distribution Groups"
  value       = data.kopicloud_distribution_group_list.test_distribution
}