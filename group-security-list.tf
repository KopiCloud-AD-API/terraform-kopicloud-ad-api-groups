###############################################
## KopiCloud AD API - List of Security Group ##
###############################################

# Get the List of Security Groups
data "kopicloud_security_group_list" "test_security" {
}

# Returns the List of Security Groups
output "OUTPUT_kopicloud_security_groups_list" {
  description = "All Existing Security Groups"
  value       = data.kopicloud_security_group_list.test_security
}