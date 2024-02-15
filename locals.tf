locals {
  tags    = merge(var.tags, { tf-module-name = "alb" }, { env = var.env })
  sg_name = var.internal ? "${var.env}-alb-sg" : "${var.env}-alb-public-sg" # NO NEED OF THIS
}