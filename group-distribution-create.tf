##################################################
## KopiCloud AD API - Create Distribution Group ##
##################################################

# Create a Global Distribution Group
resource "kopicloud_distribution_group" "test_distribution_global" {
  name        = "kopicloud-europe-distribution-group"
  scope       = "Global"
  description = "This is a very cool Global distribution group"
  email       = "europe.distribution@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Global Distribution Group
output "OUTPUT_global_distribution_group" {
  description = "Created Global Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_global
}

##############################################

# Create a Universal Distribution Group
resource "kopicloud_distribution_group" "test_distribution_universal" {
  name        = "kopicloud-america-distribution-group"
  scope       = "Universal"
  description = "This is a very cool Universal distribution group"
  email       = "america.distribution@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Universal Distribution Group
output "OUTPUT_universal_distribution_group" {
  description = "Created Universal Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_universal
}

##############################################

# Create a Domain Local Distribution Group
resource "kopicloud_distribution_group" "test_distribution_domain_local" {
  name        = "kopicloud-asia-distribution-group"
  scope       = "Domain_Local"
  description = "This is a very cool Domain Local distribution group"
  email       = "asia.distribution@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Domain Local Distribution Group
output "OUTPUT_domain_local_distribution_group" {
  description = "Created Domain Local Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_domain_local
}
