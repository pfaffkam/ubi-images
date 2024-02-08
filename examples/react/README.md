# React App example
This react app example can be used also for build VUE docker images.

By default, this 

## Support
This image can uses `node:20-ubi9` image as a default for building, and `nginx:mainline-ubi9` for providing static files.
You choose image which you want by modyfing implementation scripts below.


## Implementation
1. Only Docker image
```bash
DL_BASE_URL="https://raw.githubusercontent.com/Reykez/ubi-images/main/examples/react" \
&& curl -Ss ${DL_BASE_URL}/Dockerfile -O
```

2. With docker compose
```bash
DL_BASE_URL="https://raw.githubusercontent.com/Reykez/ubi-images/main/examples/react" \
&& curl -Ss ${DL_BASE_URL}/{Dockerfile,docker-compose.yml} --remote-name-all
```


# Customization
After implementation you can customize your scripts. \
Here you can find most popular customizations.
