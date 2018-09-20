workflow "New workflow" {
  resolves = ["new-task"]
  on = "HI"
}

action "new-task" {
  uses = "tundra-boa/heroku@fb704ba"
}
