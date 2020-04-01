FROM node:alpine as builder # Giving it the nam 'builder' for clarity

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html

