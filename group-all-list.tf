################################################
## KopiCloud AD API - List All Security Group ##
################################################

# Get All Security Groups
data "kopicloud_security_group_list" "test_all" { }

# Returns All Security Groups
output "OUTPUT_security_kopicloud_all_groups" {
  description = "All Existing AD Groups"
  value       = data.kopicloud_security_group_list.test_all
}
