workflow "New workflow" {
  resolves = ["new-task"]
  on = "push"
}

action "new-task" {
  uses = "tundra-boa/heroku@fb704ba"
}
