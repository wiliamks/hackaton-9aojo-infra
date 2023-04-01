variable "allocated_storage" {
    type = number
    default = 10
}

variable "storage_type" {
    type = string
    default = ""
}

variable "db_name" {
    type = string
    default = "videoTraining"
}

variable "engine" {
    type = string
    default = "mysql"
}

variable "engine_version" {
    type = string
    default = "8.0.23"
}

variable "instance_class" {
    type = string
    default = "db.t3.micro"
}

variable "username" {
    type = string
    default = "admin"
}

variable "password" {
    type = string
    default = "hackathon1234"
}

variable "port" {
    type = number
    default = 3306
}

variable "identifier" {
    type = string
    default = "video-training-db"
}

variable "parameter_group_name" {
    type = string
    default = "default.mysql8.0"
}

variable "skip_final_snapshot" {
    type = bool
    default = true
}

variable "private_subnets" {
    type = list(string)
    default = ["subnet-05e5e44d1f1dca991", "subnet-081b1819287923d4b"]
}

variable "publicly_accessible" {
    type = bool
    default = true
}