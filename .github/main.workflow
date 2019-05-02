workflow "CI" {
  on = "pull_request"
  resolves = ["Check format"]
}

action "Install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
}

action "Check format" {
  uses = "nuxt/actions-yarn@master"
  needs = ["Install"]
  args = "format:check"
}
