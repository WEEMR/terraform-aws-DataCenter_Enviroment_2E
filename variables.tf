##############################################################################################################
#                                                                                                            #
#                                Data Center - Module 1 Terraform deployment                                 #
#                                                                                                            #
##############################################################################################################

# Access and secret keys to your environment

variable "access_key" {}
variable "secret_key" {}

# AWS Key Name to create Resources
variable "keyname" {}

# Devices Username and Password
variable "username" {
  description = "Provide the name of the user who will own the deployed resources"
}
variable "Password" {
    description = "Provide the password which will be used to login to all the deployed resources"
}

// -------------------------------------------------------------------------------- DNS

variable "Public_Hosted_Zone" {}
variable "SubHosted_Zone" {}

// -------------------------------------------------------------------------------- Region

variable "virginia_region" {
  description = "Provide the region to deploy the VPC in"
  default     = "us-east-1"
}


# ------------------------------------------------------------------------------------------------------------

#                                                  FSA 1

# ------------------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------- Hub 1 VPC CIDR Block

variable "fsa_1_vpc_cidr" {
  default = "10.250.0.0/16"
}


// Subnets 

variable "fsa_1_public_subnet_cidr" {
  description = "hub 1 WAN 1 Subnet CIDR Block"
  default     = "10.250.1.0/24"
}

variable "fsa_1_private_subnet_cidr" {
  description = "hub 1 WAN 2 Subnet CIDR Block"
  default     = "10.250.2.0/24"
}

variable "fsa_1_HA_subnet_cidr" {
  description = "hub 1 LAN Subnet CIDR Block"
  default     = "10.250.3.0/24"
}


// FSA IPs

variable "fsa_1_wan_pvt_ip" {
  description = "hub 1 WAN 1 Interface IP"
  default     = ["10.250.1.10"]
}

variable "fsa_1_lan_pvt_ip" {
  description = "hub 1 WAN 2 Interface IP"
  default     = ["10.250.2.10"]
}

variable "fsa_1_ha_pvt_IP" {
  description = "hub 1 LAN Interface IP"
  default     = ["10.250.3.10"]
}



# ------------------------------------------------------------------------------------------------------------

#                                                  Hub 1

# ------------------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------- Hub 1 VPC CIDR Block

variable "hub_1_vpc_cidr" {
  default = "10.100.0.0/16"
}


// Subnets 

variable "hub_1_wan1_subnet_cidr" {
  description = "hub 1 WAN 1 Subnet CIDR Block"
  default     = "10.100.1.0/24"
}

variable "hub_1_wan2_subnet_cidr" {
  description = "hub 1 WAN 2 Subnet CIDR Block"
  default     = "10.100.2.0/24"
}

variable "hub_1_private_subnet_cidr" {
  description = "hub 1 LAN Subnet CIDR Block"
  default     = "10.100.10.0/24"
}


// FGT IPs

variable "hub_1_wan1_pvt_ip" {
  description = "hub 1 WAN 1 Interface IP"
  default     = ["10.100.1.10"]
}

variable "hub_1_wan2_pvt_ip" {
  description = "hub 1 WAN 2 Interface IP"
  default     = ["10.100.2.10"]
}

variable "hub_1_lan_pvt_IP" {
  description = "hub 1 LAN Interface IP"
  default     = ["10.100.10.10"]
}

# Ubuntu

variable "hub_1_Ubuntu_LAN_IP" {
  description = "hub 1 Ubunutu IP"
  default     = ["10.100.10.20"]
}

# Windows

variable "hub_1_WinSrv_LAN_IP" {
  description = "hub 1 Windows Server 2019 IP"
  default     = ["10.100.10.25"]
}

# FortiManager

variable "hub_1_FMG_LAN_IP" {
  description = "hub 1 FortiManager IP"
  default     = ["10.100.10.30"]
}

# FortiAnalyzer

variable "hub_1_FAZ_LAN_IP" {
  description = "hub 1 FortiAnalyzer IP"
  default     = ["10.100.10.40"]
}

# FortiAuthenticator

variable "hub_1_FAC_LAN_IP" {
  description = "hub 1 FortiAuthenticator IP"
  default     = ["10.100.10.50"]
}

# ------------------------------------------------------------------------------------------------------------

#                                                  spoke 1

# ------------------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------- Spoke 1 VPC CIDR Block

variable "spoke_1_vpc_cidr" {
  default = "10.1.0.0/16"
}


// Subnets 

variable "spoke_1_wan1_subnet_cidr" {
  description = "spoke 1 WAN 1 Subnet CIDR Block"
  default     = "10.1.1.0/24"
}

variable "spoke_1_wan2_subnet_cidr" {
  description = "spoke 1 WAN 2 Subnet CIDR Block"
  default     = "10.1.2.0/24"
}

variable "spoke_1_private_subnet_cidr" {
  description = "spoke 1 LAN Subnet CIDR Block"
  default     = "10.1.10.0/24"
}


// FGT IPs

variable "spoke_1_wan1_pvt_ip" {
  description = "spoke 1 WAN 1 Interface IP"
  default     = ["10.1.1.10"]
}

variable "spoke_1_wan2_pvt_ip" {
  description = "spoke 1 WAN 2 Interface IP"
  default     = ["10.1.2.10"]
}

variable "spoke_1_lan_pvt_IP" {
  description = "spoke 1 LAN Interface IP"
  default     = ["10.1.10.10"]
}

# Ubuntu

variable "spoke_1_Ubuntu_LAN_IP" {
  description = "spoke 1 Ubunutu IP"
  default     = ["10.1.10.20"]
}

# Windows

variable "spoke_1_WinSrv_LAN_IP" {
  description = "spoke 1 Windows Server 2019 IP"
  default     = ["10.1.10.25"]
}