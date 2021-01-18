
TERRAGRUNT_VERSION="v0.27.1"
TERRAGRUNT_OS="terragrunt_darwin_amd64"

https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/${TERRAGRUNT_OS}
cd /tmp
wget https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/${TERRAGRUNT_OS}
sudo chmod u+x /tmp/${TERRAGRUNT_OS}
sudo mv /tmp/${TERRAGRUNT_OS} /usr/local/bin/terragrunt

