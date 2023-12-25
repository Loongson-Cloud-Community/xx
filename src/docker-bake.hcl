variable "TAG" {
  default = "1.3.0"
}

group "default" {
  targets = ["default"]
}

target "default" {
  dockerfile = "Dockerfile"
  tags = ["cr.loongnix.cn/tonistiigi/xx:${TAG}"]
}

