FROM node:20-alpine

WORKDIR /app

COPY package.json .

RUN npm install -g bun

RUN bun install

COPY . .

CMD ["bun", "run", "./src/index.ts"]