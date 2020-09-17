FROM node:14-alpine
RUN mkdir /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . ./
RUN npm build
EXPOSE 5000
CMD ["npx", "serve", "-s", "build"]
