FROM node:alpine AS build
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build --prod
# RUN mkdir -p /app/dist/angular-template
# RUN touch /app/dist/angular-template/index.html
# RUN echo 'hello world' > /app/dist/angular-template/index.html
# RUN ls -a && cat /app/dist/angular-template/index.html

FROM nginx:alpine
COPY --from=build /app/dist/angular-template /usr/share/nginx/html
EXPOSE 80


