
# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y gnupg software-properties-common curl unzip

# Add Terraform repo
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install Terraform
sudo apt update && sudo apt install -y terraform

# Verify installation
terraform -version

# Install AWS CLI
sudo apt install awscli -y

# Configure AWS CLI with your credentials
aws configure
