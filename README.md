# ubi-images
Project that create compatible ecosystem over RedHat's UBI images.

All containers inmage have unified naming convention:\
`pfaffk` `/` `container-name` `:` `container-version` `-` `system-version`\
or\
`pfaffk` `/` `container-name` `:` `container-version` `-` `system-version` `-` `build-date`

All images is automatically builded **every monday at 8PM**, from the latest UBI images.
Images are versioned by their build date. \
You can find all images builded and ready to use on [this dockerhub profile](https://hub.docker.com/u/pfaffk).

### List of supported images:
| Image & Tag                       | Software      | System           | Recommended usage                     | Maintained     | 
|-----------------------------------|---------------|------------------|---------------------------------------|----------------|
| `pfaffk/nginx:mainline-ubi9`      | NGINX         | RHEL 9           | Webserver, static file providing      | :green_circle: |
| `pfaffk/node:16-ubi9`             | NODE (**16**) | RHEL 9           | React, Vue or other web apps building | :green_circle: |
| `pfaffk/node:18-ubi9`             | NODE (**18**) | RHEL 9           | React, Vue or other web apps building | :green_circle: |
| `pfaffk/node:20-ubi9`             | NODE (**20**) | RHEL 9           | React, Vue or other web apps building | :green_circle: |
| `pfaffk/node:21-ubi9`             | NODE (**21**) | RHEL 9           | React, Vue or other web apps building | :green_circle: |
| `pfaffk/php:8.1fpm-ubi9`          | PHP-FPM (**8.1**) | RHEL 9       | PHP Applications                      | :green_circle: |
