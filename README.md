# OpenROAD Template Flow
This repo is a template for running a flow on the OpenROAD platform. In order to be able to run the flow autonomously, follow these steps:

1. Fork this repo to your user account
2. Rename the repo to the name of your design
3. Go to [http://flow.theopenroadproject.org](http://flow.theopenroadproject.org) and create an account (or sign in, if you already have an account)
4. Import a project and point to this repo. If you signed in using your GitHub account, you can select it from the list and a web hook will be automatically configured for you. If you preferred not to connect your GitHub account, you can still import it by puting the link of the repo in the *Project URL* field.


### What are web hooks?
A web hook is a trigger that the repo sends to OpenROAD platform to inform it that there is a new version of the repo commited (and pushed). Once a trigger received, OpenROAD platform will pull the latest version of the repo and run the flow using the parameters in `.openroad-ci.yml` file. 

If you imported a project manually, the OpenROAD platform won't be able to configure a web hook for your repo. However, you can still configure this web hook manually. Refer to our documentation for detailed steps.

### What is .openroad-ci.yml file?
The `openroad-ci.yml` file tells OpenROAD platform what configurations and parameters to use, given the input design. For example, what software packages to use and what libraries to build for.
