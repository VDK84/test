FROM alpine:3.20

RUN apk add --no-libc-dev --no-cache \
    bash \
    curl \
    wget \
    jq \
    yq \
    grep \
    sed \
    python3 \
    py3-pip

# Instal·lar kubectl i helm des de repositoris oficials d'Alpine
RUN apk add --no-cache \
    kubectl \
    helm

# Punt d'entrada per defecte
CMD ["/bin/bash"]