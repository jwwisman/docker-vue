# Production - Multi step build process!
# 1. Build phase
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
# the line above, npm run build, will create the following folder we are interested in: /app/dist

# 2. Run phase
FROM nginx
COPY --from=builder /app/dist /usr/share/nginx/html
# nginx will start from itself