################################################################################
# Security User
################################################################################
variable "email" {
  description = "The email address associated with the user."
  type        = string
}

variable "firstname" {
  description = "The first name of the user."
  type        = string
}

variable "lastname" {
  description = "The last name of the user."
  type        = string
}

variable "password" {
  description = "The password for the user. Stored in Terraform state; prefer password_wo on Terraform >= 1.11."
  type        = string
  default     = null
  sensitive   = true
}

variable "password_wo" {
  description = "Write-only password for the user, never stored in state. Requires Terraform >= 1.11. Use with password_wo_version."
  type        = string
  default     = null
  sensitive   = true
}

variable "password_wo_version" {
  description = "Version tracker for password_wo. Increment it to push a new password_wo value."
  type        = number
  default     = null
}

variable "userid" {
  description = "The userid which is required for login. This value cannot be changed."
  type        = string
}

variable "roles" {
  description = "The roles which the user has been assigned within Nexus."
  type        = set(string)
  default     = []
}

variable "status" {
  description = "The user's status, e.g. active or disabled."
  type        = string
  default     = null
}
