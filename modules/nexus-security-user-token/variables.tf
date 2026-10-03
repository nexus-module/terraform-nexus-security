################################################################################
# Security User Token
################################################################################
variable "enabled" {
  description = "Activate the feature of user tokens."
  type        = bool
}

variable "protect_content" {
  description = "Require user tokens for repository authentication. This does not effect UI access."
  type        = bool
  default     = null
}

variable "expiration_enabled" {
  description = "Whether user tokens expire."
  type        = bool
  default     = null
}

variable "expiration_days" {
  description = "Number of days user tokens remain valid when expiration is enabled."
  type        = number
  default     = null
}
