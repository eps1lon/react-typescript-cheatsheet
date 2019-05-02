workflow "CI" {
  on = "push"
  resolves = ["install", "check-format"]
}

action "install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
}

action "check-format" {
  uses = "nuxt/actions-yarn@master"
  needs = ["install"]
  args = "format:check"
}
