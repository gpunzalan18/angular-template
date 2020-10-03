FROM node:alpine AS build
WORKDIR /app
COPY . .
RUN npm ci && npm run build
# RUN mkdir -p /app/dist/ng-templates
# RUN touch /app/dist/ng-templates/index.html
# RUN echo 'hello world' > /app/dist/ng-templates/index.html
# RUN ls -a && cat /app/dist/ng-templates/index.html

FROM nginx:alpine
COPY --from=build /app/dist/ng-templates /usr/share/nginx/html
EXPOSE 80


# FROM cypress/included:3.2.0

# WORKDIR /app

# COPY ./cypress ./cypress
# COPY ./cypress.json ./cypress.json
# COPY ./package.json ./package.json 

# RUN npm run cypress:run


