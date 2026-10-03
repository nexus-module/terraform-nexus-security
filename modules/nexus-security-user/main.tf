################################################################################
# Security User
################################################################################
resource "nexus_security_user" "main" {
  userid              = var.userid
  firstname           = var.firstname
  lastname            = var.lastname
  email               = var.email
  password            = var.password
  password_wo         = var.password_wo
  password_wo_version = var.password_wo_version
  roles               = var.roles
  status              = var.status
}
