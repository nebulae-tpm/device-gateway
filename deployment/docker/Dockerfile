FROM node:10.12.0
USER node
COPY device-gateway /nebulae/tpm/device-gateway
WORKDIR /nebulae/tpm/device-gateway
RUN npm install --prod
CMD [ "npm","start" ]