# Flow @ OpenROAD Template Design

This repo is a template for running a flow on the OpenROAD cloud platform. In order to be able to run the flow autonomously, follow these steps:

1. Fork this repo to your user account
2. Rename the repo to the name of your design
3. Go to `Settings` -> `Webhooks` -> `Add webhook`. In the **Payload URL**, enter: `https://flow.theopenroadproject.org/api/github/design` and in the **Content Type**, choose `application/json`. Then, click the green button **Add webhook**.
4. Upload your design files in the `design` folder.
5. Edit the `openroad-flow.yml`. Comments in the file will help you follow the steps.

### What are web hooks?
A web hook is a trigger that the repo sends to OpenROAD platform to inform it that there is a new version of the repo commited (and pushed). Once a trigger received, OpenROAD platform will pull the latest version of the repo and run the flow using the parameters in `openroad-flow.yml` file. 

### What is openroad-flow.yml file?
The `openroad-flow.yml` file tells OpenROAD cloud runners what configurations and parameters to use, given the input design. For example, what software packages to use and what libraries to build for.
