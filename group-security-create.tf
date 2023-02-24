##############################################
## KopiCloud AD API - Create Security Group ##
##############################################

# Create a Global Security Group
resource "kopicloud_security_group" "test_security_global" {
  name        = "kopicloud-europe-security-group"
  scope       = "Global"
  description = "This is a very cool Global security group"
  email       = "europe.security@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Global Security Group
output "OUTPUT_global_security_group" {
  description = "Created Global Security Group"
  value       = resource.kopicloud_security_group.test_security_global
}

##############################################

# Create a Universal Security Group
resource "kopicloud_security_group" "test_security_universal" {
  name        = "kopicloud-america-security-group"
  scope       = "Universal"
  description = "This is a very cool Universal security group"
  email       = "america.security@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Universal Security Group
output "OUTPUT_universal_security_group" {
  description = "Created Universal Security Group"
  value       = resource.kopicloud_security_group.test_security_universal
}

##############################################

# Create a Domain Local Security Group
resource "kopicloud_security_group" "test_security_domain_local" {
  name        = "kopicloud-asia-security-group"
  scope       = "Domain_Local"
  description = "This is a very cool Domain Local security group"
  email       = "asia.security@kopicloud.com"
  ou_path     = "CN=Users,DC=kopicloud,DC=local"
}

# Returns Created Domain Local Security Group
output "OUTPUT_domain_local_security_group" {
  description = "Created Domain Local Security Group"
  value       = resource.kopicloud_security_group.test_security_domain_local
}