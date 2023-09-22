FROM ghcr.io/runatlantis/atlantis:latest

RUN apk update && apk add jq

RUN curl -LO https://github.com/plumber-cd/terraform-backend-git/releases/download/v0.1.5/terraform-backend-git-linux-amd64

# Rename the downloaded binary to "terraform-backend-git"
RUN mv terraform-backend-git-linux-amd64 /usr/local/bin/terraform-backend-git

# Set executable permissions for the terraform-backend-git binary
RUN chmod +x /usr/local/bin/terraform-backend-git

RUN curl -LO https://releases.hashicorp.com/vault/1.14.3/vault_1.14.3_linux_amd64.zip && unzip vault_1.14.3_linux_amd64.zip

RUN mv vault /usr/local/bin/vault

RUN curl -LO https://releases.hashicorp.com/consul-template/0.33.0/consul-template_0.33.0_linux_amd64.zip && unzip consul-template_0.33.0_linux_amd64.zip

RUN mv consul-template /usr/local/bin/consul-template
