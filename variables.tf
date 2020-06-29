variable "rg" {
    default = "terraform-lab2"
}

variable "loc" {
    default = "westus"
}

variable "tags" {
    type = map
    default = {
        environment = "training"
        source      = "citadel"
    }
}