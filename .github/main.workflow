workflow "Build my extension" {
  on = "push"
  resolves = ["App Inventor Extension"]
}

action "App Inventor Extension" {
  uses = "./"
}
