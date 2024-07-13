# sops-age-terraform-example

The following is an example of how to encrypt your terraform vars using sops and age
to make your secrets more readable then encrypting with ansible-vault

## Setup

You'll need to install the following tools using your systems chosen installer:
- [Sops](https://github.com/getsops/sops)
- [Age](https://github.com/FiloSottile/age)

Next up is to setup age / sops.

1. Firstly generate an age key
```bash
age-keygen -o age.agekey
```
2. Next up setup your `.sops` folder and move the key
```bash
mkdir ~/.sops
mv ./age.agekey ~/.sops
```
3. Then in your `bashrc` or your `zshrc` add the following line
```bash
export SOPS_AGE_KEY_FILE=$HOME/.sops/age.agekey
```
4. Finally source your file, this example is for zsh but only requires a minor change for bash
```bash
source ~/.zshrc
```
That's you then setup with the tooling! Now time to play

## Usage
In the justfile there are commands to encrypt and decrypt the `example.tfvars`
file and also a command to display the encrypted output for use in a pipeline
for example. If you want to run the commands directly you'll need to install
[just](https://github.com/casey/just) feel free to tweak scripts etc.. to your
liking. This is just a POC to show how easy it can be!

The file in the repo is encrypted to show an example of what it might look like
once encrypted. The just commands are setup to encrypt anything with secret as
the prefix, feel free to tweak this as needed.

To play around simply delete the input in `example.tfvars` and put your own
tfvars in there and provided you've set everything up you should be able to 
decrypt and encrypt at will!
