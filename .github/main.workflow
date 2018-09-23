workflow "New workflow" {
  on = "push"
  resolves = ["new-task"]
}

action "new-task" {
  uses = "tundra-boa/docker@3ce84f8"
}
