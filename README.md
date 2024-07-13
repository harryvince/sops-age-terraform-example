# sops-age-terraform-example

The following is an example of how to encrypt your terraform vars using sops and age
to make your secrets more readable then encrypting with ansible-vault

## Setup

You'll need to install the following tools using your systems chosen installer:
- [Sops](https://github.com/getsops/sops)
- [Age](https://github.com/FiloSottile/age)

That's you then setup!

## Usage
In the justfile there are commands to encrypt and decrypt the `example.tfvars`
file and also a command to display the encrypted output for use in a pipeline
for example. If you want to run the commands directly you'll need to install
[just](https://github.com/casey/just) feel free to tweak scripts etc.. to your
liking. This is just a POC to show how easy it can be!
