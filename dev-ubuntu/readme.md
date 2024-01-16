# ubuntu dev setup
config for setting up a dev environment on ubuntu with distrobox and docker

## structure

basically the structure is as follows:

have a set of distroboxes which are created via the `build-devboxes.sh` script that are used for development which have there own home dir in the `~/distrobox` directory. Then have the repo code specific for the distrobox i.e python dev will contain all python repos in the home dir of the distrobox.  

To ensure that shell config i.e env vars, aliases that needs to be shared between distroboxes the .zshrc for the ditrobox sources the `.env-vars` and `.aliases` from the host home dir. Which includes global aliases and env vars.

![Diagram](diagram.excalidraw.png)

