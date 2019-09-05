load("@io_bazel_rules_docker//container:container.bzl", "container_push")

def container_push_qinusty(name, image, component):
    container_push(
        name = name,
        format = "Docker",
        image = image,
        registry = "index.docker.io",
        repository = "qinusty/" + component,
        tag = "latest",
    )