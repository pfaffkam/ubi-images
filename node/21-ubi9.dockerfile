FROM registry.access.redhat.com/ubi9/ubi-minimal

RUN curl -fsSL https://rpm.nodesource.com/setup_21.x | bash - \
 && microdnf install nodejs -y

