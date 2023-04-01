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
    default = "5.7"
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
    default = "default.mysql5.7"
}

variable "skip_final_snapshot" {
    type = bool
    default = true
}

variable "private_subnets" {
    type = list(string)
    default = ["subnet-0ad7b507a983fa70d", "subnet-02351bb153ef77807"]
}

variable "publicly_accessible" {
    type = bool
    default = true
}