FROM hashicorp/terraform:0.12.29

# use ARGS
ENV CT_VERSION 0.21.1

RUN wget https://github.com/labd/terraform-provider-commercetools/releases/download/${CT_VERSION}/terraform-provider-commercetools-${CT_VERSION}-linux-amd64.tar.gz; \
    tar -xzvf terraform-provider-commercetools-${CT_VERSION}-linux-amd64.tar.gz; \
    mkdir -p /root/.terraform.d/plugins; \
    mv terraform-provider-commercetools_v${CT_VERSION} /root/.terraform.d/plugins

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /config