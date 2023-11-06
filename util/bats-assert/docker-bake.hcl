target "default" {
    args={
        HTTPS_PROXY= "http://10.130.0.20:7890" ,
    }
    dockerfile="Dockerfile.bak"
    tags = ["lcr.loongnix.cn/library/tonistiigi/bats-assert"]
    cache-to = ["type=inline"]
}

target "all" {
    inherits = ["default"]
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
