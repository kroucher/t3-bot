FROM node:16

# Create app directory
WORKDIR /usr/src/app

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
ADD package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile --prod
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
ADD . .

CMD [ "node", "./dist/index.js" ]