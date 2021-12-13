"""Dependency specific initialization."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

def deps(repo_mapping = {}):
    rules_foreign_cc_dependencies()

    maybe(
        http_archive,
        name = "com_github_tclap_tclap",
        url = "https://github.com/mirror/tclap/archive/refs/tags/1.4.0-rc1.tar.gz",
        sha256 = "54d9afd826edf05accd24b56b8a50c7da10e3eaeae0cff698599cd595f50dd6d",
        #sha256 = "0e76baf84c7942fa96534e997719090419574c210e47735aa3cd5addafc9e741",
        strip_prefix = "tclap-1.4.0-rc1",
        repo_mapping = repo_mapping,
        build_file = "@com_github_3rdparty_bazel_rules_tclap//:BUILD.bazel",
    )
