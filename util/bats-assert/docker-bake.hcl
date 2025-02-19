variable "TARGET_REPO" {
    default = "lcr.loongnix.cn/tonistiigi/bats-assert"
}

target "default" {
    tags = ["1.3.0"]
}

target "all" {
    inherits = ["default"]
    tags = ["1.3.0"]
    platforms = [
        "linux/amd64",
        "linux/arm64",
        "linux/arm/v7",
        "linux/arm/v6",
        "linux/arm/v5",
        "linux/386",
        "linux/riscv64",
        "linux/s390x",
        "linux/ppc64le",
	"linux/loong64"
    ]
}

target "test" {
    target = "test"
}

target "generate-golden" {
    target = "golden"
    output = [
        "."
    ]
}
