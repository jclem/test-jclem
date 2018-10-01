workflow "Large workflow" {
  on = "push"
  resolves = [
    "new-task-5",
    "new-task-6",
    "new-task-16",
    "new-task-17",
    "new-task-18",
    "new-task-19",
  ]
}

action "new-task" {
  uses = "tundra-boa/azure/cli@master"
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

action "new-task-7" {
  uses = "bbq-beets/test-jclem@master"
}

action "new-task-8" {
  needs = ["new-task-7"]
  uses = "bbq-beets/test-jclem/a@master"
}

action "new-task-9" {
  needs = ["new-task-8"]
  uses = "bbq-beets/test-jclem/b@master"
}

action "new-task-10" {
  needs = ["new-task-9"]
  uses = "bbq-beets/test-jclem/c@master"
}

action "new-task-11" {
  needs = ["new-task-10"]
  uses = "bbq-beets/test-jclem/c@master"
}

action "new-task-12" {
  needs = ["new-task-11"]
  uses = "bbq-beets/test-jclem/d@master"
}

action "new-task-13" {
  needs = ["new-task-12"]
  uses = "bbq-beets/test-jclem/e@master"
}

action "new-task-14" {
  needs = ["new-task-13"]
  uses = "bbq-beets/test-jclem/f@master"
}

action "new-task-15" {
  needs = ["new-task-14"]
  uses = "bbq-beets/test-jclem/g@master"
}

action "new-task-16" {
  needs = ["new-task-15"]
  uses = "bbq-beets/test-jclem/h@master"
}

action "new-task-17" {
  needs = ["new-task-7"]
  uses = "docker://test"
}

action "new-task-18" {
  needs = ["new-task-7"]
  uses = "docker://test"
}

action "new-task-19" {
  needs = ["new-task-7"]
  uses = "docker://test"
}
