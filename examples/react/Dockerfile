# ================-- DEPENDENCIES installation layer --================ #
FROM pfaffk/node:20-ubi9 AS vendor
WORKDIR /build
COPY package*.json ./
RUN npm install


# ===================-- BUILD installation layer --==================== #
FROM vendor AS build
WORKDIR /build
COPY . .
RUN npm run build


# ====================-- APP installation layer --===================== #
FROM pfaffk/nginx:mainline-ubi9
COPY --from=build --chown=1000:0 /build/dist /www
