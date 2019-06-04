# AIX-Action

## How to use

1. Place your extension source into `src` dir in the root of the git repository.
2. Create a new workflow by going into the "Actions" tab.

    ```hcl
    workflow "New workflow" {
      on = "push"
      resolves = ["App Inventor Extension"]
    }

    action "App Inventor Extension" {
      uses = "pavi2410/AIX-Action@master"
    }
    ```
    ![Example](example.png)
    
3. Now, whenever you push a commit, the extension will be built automatically and can be located at `$GITHUB_WORKSPACE/appinventor-sources/appinventor/components/build/extensions`
    
