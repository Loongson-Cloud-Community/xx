variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["hello"]
}

target "hello" {
  dockerfile = "Dockerfile.bak"
  tags = ["lcr.loongnix.cn/library/xx:${TAG}"]
} 
