FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . ./
RUN npm run build

EXPOSE 5000
CMD ["npx", "serve", "-s", "build"]
