variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "region" {
  description = "The region in which to provision resources."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone in which to provision resources."
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type to use for the VM instance."
  type        = string
  default     = "n1-standard-2"
}

variable "disk_image" {
  description = "The disk image to use for the VM instance."
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "network" {
  description = "The network to attach the VM instance to."
  type        = string
  default     = "default"
}

variable "ssh_key_path" {
  description = "The path to the SSH public key file."
  type        = string
}