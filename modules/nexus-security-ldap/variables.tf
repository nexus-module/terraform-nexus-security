################################################################################
# Security Ldap
################################################################################
variable "name" {
  description = "LDAP server name."
  type        = string
}

variable "auth_schema" {
  description = "Authentication scheme used for connecting to LDAP server."
  type        = string
}

variable "auth_username" {
  description = "This must be a fully qualified username if simple authentication is used. Required if authScheme other than none."
  type        = string
}

variable "connection_retry_delay_seconds" {
  description = "How long to wait before retrying."
  type        = number
}

variable "connection_timeout_seconds" {
  description = "How long to wait before timeout."
  type        = number
}

variable "group_type" {
  description = "Defines a type of groups used: static (a group contains a list of users) or dynamic (a user contains a list of groups). Required if ldapGroupsAsRoles is true."
  type        = string
}

variable "host" {
  description = "LDAP server connection hostname."
  type        = string
}

variable "max_incident_count" {
  description = "How many retry attempts."
  type        = number
}

variable "port" {
  description = "LDAP server connection port to use."
  type        = number
}

variable "protocol" {
  description = "LDAP server connection Protocol to use."
  type        = string
}

variable "search_base" {
  description = "LDAP location to be added to the connection URL."
  type        = string
}

variable "auth_password" {
  description = "The password to bind with. Required if authScheme other than none."
  type        = string
  sensitive   = true
  default     = ""
}

variable "auth_realm" {
  description = "The SASL realm to bind to. Required if authScheme is CRAM_MD5 or DIGEST_MD5."
  type        = string
  default     = ""
}

variable "group_base_dn" {
  description = "The relative DN where group objects are found (e.g. ou=Group). This value will have the Search base DN value appended to form the full Group search base DN."
  type        = string
  default     = ""
}

variable "group_id_attribute" {
  description = "This field specifies the attribute of the Object class that defines the Group ID. Required if groupType is static."
  type        = string
  default     = ""
}

variable "group_member_attribute" {
  description = "LDAP attribute containing the usernames for the group. Required if groupType is static."
  type        = string
  default     = ""
}

variable "group_member_format" {
  description = "The format of user ID stored in the group member attribute. Required if groupType is static."
  type        = string
  default     = ""
}

variable "group_object_class" {
  description = "LDAP class for group objects. Required if groupType is static."
  type        = string
  default     = ""
}

variable "group_subtree" {
  description = "Are groups located in structures below the group base DN."
  type        = bool
  default     = null
}

variable "ldap_groups_as_roles" {
  description = "Denotes whether LDAP assigned roles are used as Nexus Repository Manager roles."
  type        = bool
  default     = false
}

variable "use_trust_store" {
  description = "Whether to use certificates stored in Nexus Repository Manager's truststore."
  type        = bool
  default     = false
}

variable "user_base_dn" {
  description = "The relative DN where user objects are found (e.g. ou=people). This value will have the Search base DN value appended to form the full User search base DN."
  type        = string
  default     = ""
}

variable "user_email_address_attribute" {
  description = "This is used to find an email address given the user ID."
  type        = string
  default     = ""
}

variable "user_id_attribute" {
  description = "This is used to find a user given its user ID."
  type        = string
  default     = ""
}

variable "user_ldap_filter" {
  description = "LDAP search filter to limit user search."
  type        = string
  default     = ""
}

variable "user_member_of_attribute" {
  description = "Set this to the attribute used to store the attribute which holds groups DN in the user object. Required if groupType is dynamic."
  type        = string
  default     = ""
}

variable "user_object_class" {
  description = "LDAP class for user objects."
  type        = string
  default     = ""
}

variable "user_password_attribute" {
  description = "If this field is blank the user will be authenticated against a bind with the LDAP server."
  type        = string
  default     = ""
}

variable "user_real_name_attribute" {
  description = "This is used to find a real name given the user ID."
  type        = string
  default     = ""
}

variable "user_subtree" {
  description = "Are users located in structures below the user base DN?."
  type        = bool
  default     = null
}
