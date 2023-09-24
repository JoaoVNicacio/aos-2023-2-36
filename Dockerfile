FROM node:16

# Create app directory
WORKDIR /app/express-01

COPY . /app/express-01

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

ENV PORT 8080
EXPOSE 8080
CMD [ "npm", "start" ]