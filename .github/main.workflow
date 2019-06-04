workflow "Build my extension" {
  on = "release"
  resolves = ["JasonEtco/upload-to-release@master"]
}

action "Build AIX" {
  uses = "./"
}

action "JasonEtco/upload-to-release@master" {
  uses = "JasonEtco/upload-to-release@master"
  needs = ["Build AIX"]
  secrets = ["GITHUB_TOKEN"]
  args = "appinventor-sources/appinventor/components/build/extensions/tk.pavi2410.aix"
}
