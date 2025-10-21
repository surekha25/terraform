variable "instances" {
    default = [ "mangodb", "catalogue", "mysql", "redis" ]
    # default = {
    #     mongodb = "t3.micro"
    #     mysql = "t2.micro"
    #     redis = "t3.micro"
    # }

    # default = {
    #     mongodb = {
    #         instance_type = "t3.micro"   # we can access this value by using for_each loop : "each.value.instance_type"
    #         ami = "ami-id"
    #     }
    #     mysql = {
    #         instance_type = "t3.micro"
    #         ami = "ami-id"
    #     }
    #     redis = {
    #         instance_type = "t3.micro"
    #         ami = "ami-id"
    #     }
    # }
}

variable "zone_id"{
    default = "Z03322182ZV3F5YEDZYG5"
}

variable "domain_name"{
    default = "surekhadevops.biz"
}