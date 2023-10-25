FROM registry.access.redhat.com/ubi9/ubi

RUN update-crypto-policies --set DEFAULT:SHA1 \
 && dnf install https://rpm.nodesource.com/pub_18.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y \
 && dnf install nodejs -y --setopt=nodesource-nodejs.module_hotfixes=1 \
 && update-crypto-policies --set DEFAULT
