workflow "New workflow" {
  on = "push"
  resolves = ["ShellCheck"]
}

action "ShellCheck" {
  uses = "docker://koalaman/shellcheck"
  args = "-e SC1071 bin/**"
}
