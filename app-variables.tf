#############################
## Application - Variables ##
#############################

# application name 
variable "app_name" {
  type        = string
  description = "This variable defines the application name used to build resources"
  default     = "kopicloud-ad-api-2022"
}

# domain name 
variable "app_domain" {
  type        = string
  description = "This variable defines the domain name used to build resources"
}

# environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
}

