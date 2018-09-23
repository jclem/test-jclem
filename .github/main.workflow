workflow "New workflow" {
  on = "push"
  resolves = [
    "new-task-5",
    "new-task-6",
  ]
}

action "new-task" {
  uses = "tundra-boa/azure-cli@master"
}

action "new-task-1" {
  uses = "tundra-boa/heroku@master"
}

action "new-task-2" {
  needs = ["new-task-1"]
  uses = "tundra-boa/now@master"
}

action "new-task-3" {
  needs = ["new-task"]
  uses = "tundra-boa/npm@master"
}

action "new-task-4" {
  needs = ["new-task-2"]
  uses = "tundra-boa/aws-cli@master"
}

action "new-task-5" {
  needs = ["new-task-3"]
  uses = "tundra-boa/docker@master"
}

action "new-task-6" {
  needs = ["new-task-4"]
  uses = "tundra-boa/sfdx@master"
}
