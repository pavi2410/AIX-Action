workflow "Build my extension" {
  on = "release"
  resolves = ["Publish AIX"]
}

action "Build AIX" {
  uses = "./"
}

action "Publish AIX" {
  uses = "JasonEtco/upload-to-release@master"
  needs = ["Build AIX"]
  secrets = ["GITHUB_TOKEN"]
  args = "/github/workspace/appinventor-sources/appinventor/components/build/extensions/tk.pavi2410.aix application/zip"
}
