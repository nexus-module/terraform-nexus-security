################################################################################
# Security OIDC
################################################################################
variable "client_id" {
  description = "Unique identifier issued by the OpenID Provider."
  type        = string
}

variable "client_secret" {
  description = "Secret credential from the OpenID Provider."
  type        = string
  sensitive   = true
}

variable "authorization_url" {
  description = "Authorization endpoint URL."
  type        = string
}

variable "token_url" {
  description = "Token endpoint URL."
  type        = string
}

variable "jwks_url" {
  description = "JSON Web Key Set endpoint URL."
  type        = string
}

variable "jws_algorithm" {
  description = "JWT signature algorithm (e.g. RS256)."
  type        = string
}

variable "username_claim" {
  description = "ID token claim identifying the user."
  type        = string
}

variable "groups_claim" {
  description = "ID token claim carrying group memberships."
  type        = string
}

variable "authorization_custom_params" {
  description = "Extra query parameters for authorization requests."
  type        = map(string)
  default     = null
}

variable "token_request_custom_params" {
  description = "Extra parameters for token requests."
  type        = map(string)
  default     = null
}

variable "email_claim" {
  description = "ID token claim mapping the user's email address."
  type        = string
  default     = null
}

variable "first_name_claim" {
  description = "ID token claim mapping the user's given name."
  type        = string
  default     = null
}

variable "last_name_claim" {
  description = "ID token claim mapping the user's surname."
  type        = string
  default     = null
}

variable "logout_url" {
  description = "End-session endpoint URL."
  type        = string
  default     = null
}

variable "jwks" {
  description = "Inline JWKS JSON, as an alternative to jwks_url."
  type        = string
  default     = null
}

variable "exact_match_claims" {
  description = "Claims requiring exact validation."
  type        = map(string)
  default     = null
}

variable "use_trust_store" {
  description = "Validate the provider's certificate against the Nexus truststore."
  type        = bool
  default     = null
}
