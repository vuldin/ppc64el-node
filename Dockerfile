FROM docker.io/ppc64le/node:16
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
CMD ["npm", "start"]
