provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

resource "aws_vpc" "taylor-test" {
    tags { Name = "taylor-test" }
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "dedicated"
}
