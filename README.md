# ubi-images
Project that create compatible ecosystem over RedHat's UBI images.

All containers inmage have unified naming convention:\
`pfaffk` `/` `container-name` `:` `container-version` `-` `system-version`\
or\
`pfaffk` `/` `container-name` `:` `container-version` `-` `system-version` `-` `build-date`

### List of supported images:
| Image & Tag                       | Software      | System           | Recommended usage                 | Maintained     | 
|-----------------------------------|---------------|------------------|-----------------------------------|----------------|
| `pfaffk/nginx:mainline-ubi9`      | NGINX         | RHEL 9           | Webserver, static file providing  | :green_circle: |
