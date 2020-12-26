# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the action will run. 
on:
  #the workflow on push or pull request events but only for the main branch
  push:
    branches: [play store]
  pull_request:
    branches: [google chrome  ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:github.cm (distribution center)

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:gmail
    # The type of runner that the job will run on
    runs-on:generator

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB.WORKSPACE. so your job can access it
      - uses: actions/checkout

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: apache 1.0+
          echo Add google mail
          echo test, and deploy your project.
