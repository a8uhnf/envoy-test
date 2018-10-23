variable "region" {
  default = "us-central1-a"
}

variable "project" {
  default = "a8uhnf"
}

variable "cluster_name" {}

variable "node_number" {
  default = 3
}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
