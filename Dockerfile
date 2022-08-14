FROM node:16

# Create app directory
WORKDIR /usr/src/app

# RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
ADD package.json package-lock.json ./

# FROM base as production

ENV NODE_PATH=./dist
ADD . .

# RUN pnpm add typescript
RUN yarn install

# If you are building your code for production
# RUN npm ci --only=production
ADD --chown=node:node .env .
# Bundle app source
# RUN pnpm run build

CMD [ "npm", "start" ]