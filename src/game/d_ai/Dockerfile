FROM registry.sovcombank.group/library/library/node:22.14.0-alpine3.20 AS package
WORKDIR /app
COPY package.json yarn.lock .
RUN yarn --frozen-lockfile

FROM registry.sovcombank.group/library/library/node:22.14.0-alpine3.20 AS build
WORKDIR /app
COPY --from=package /app/node_modules node_modules
COPY . .
