workflow "Build my extension" {
  resolves = ["Publish AIX"]
  on = "release"
}

action "Build AIX" {
  uses = "pavi2410/AIX-Action@master"
}

action "Publish AIX" {
  uses = "JasonEtco/upload-to-release@master"
  needs = ["Build AIX"]
  secrets = ["GITHUB_TOKEN"]
  args = "/github/workspace/appinventor-sources/appinventor/components/build/extensions/tk.pavi2410.aix application/zip"
}
