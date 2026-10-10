FROM node:22-alpine

WORKDIR /app
COPY package.json server.mjs build.mjs ./
COPY public ./public
RUN npm run build

ENV NODE_ENV=production
ENV STATIC_DIR=dist
ENV PORT=3000
EXPOSE 3000

CMD ["node", "server.mjs"]
