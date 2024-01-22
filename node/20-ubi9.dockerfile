FROM registry.access.redhat.com/ubi9/ubi

RUN curl -fsSL https://rpm.nodesource.com/setup_20.x | bash - \
 && dnf install nodejs -y
