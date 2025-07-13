# AIX-Action

A GitHub Action that builds App Inventor Extensions using modern composite action syntax.

## Features

- 🚀 Fast execution (no Docker build time)
- ☁️ Uses latest Ubuntu runners
- 📦 Configurable source path and package name
- 🔄 Outputs extension path for further use
- 🏗️ Built with modern GitHub Actions best practices

## Usage

### Basic Usage

```yaml
- name: Build AIX Extension
  uses: pavi2410/AIX-Action@main
  with:
    package-name: 'com.yourname.extension'
```

### Advanced Usage with Outputs

```yaml
- name: Build AIX Extension
  id: build
  uses: pavi2410/AIX-Action@main
  with:
    source-dir: 'src'
    package-name: 'com.yourname.extension'

- name: Upload Extension
  uses: actions/upload-artifact@v4
  with:
    name: extension
    path: ${{ steps.build.outputs.extension-path }}
```

## Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| `source-dir` | Path to extension source files | No | `src` |
| `package-name` | Package name of the extension (e.g., com.yourname.extension) | Yes | - |

## Outputs

| Output | Description |
|--------|-------------|
| `extension-path` | Full path to the built .aix file |

## Directory Structure

Your repository should have the following structure:

```
your-repo/
├── src/
│   └── com/
│       └── yourname/
│           └── extension/
│               └── YourExtension.java
└── .github/
    └── workflows/
        └── build.yml
```

## Example Workflow

```yaml
name: Build Extension

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - name: Build Extension
        id: build
        uses: pavi2410/AIX-Action@main
        with:
          package-name: 'com.yourname.extension'
          
      - name: Check build result
        run: |
          echo "Extension built at: ${{ steps.build.outputs.extension-path }}"
          file "${{ steps.build.outputs.extension-path }}"
```
