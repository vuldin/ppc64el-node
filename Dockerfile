#FROM image-registry.openshift-image-registry.svc:5000/test-node/node16
FROM node16:16
ENV https_proxy http://10.3.0.3:3128
ENV http_proxy http://10.3.0.3:3128
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
CMD ["npm", "start"]
