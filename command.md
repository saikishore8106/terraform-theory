
# Update system
sudo apt update && sudo apt upgrade -y

# Install required packages
sudo apt install -y gnupg software-properties-common curl

# Add HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add HashiCorp repo
sudo apt-add-repository \
    "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update and install Terraform
sudo apt update
sudo apt install terraform -y

# Verify installation
terraform -version# Update system



# Update system
sudo apt update -y

# Install unzip (needed to extract the AWS CLI zip)
sudo apt install unzip -y

# Download the AWS CLI v2 installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the installer
unzip awscliv2.zip

# Run the installer
sudo ./aws/install

# Verify the installation
aws --version




