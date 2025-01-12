FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx nest build
EXPOSE 3000
CMD ["npm", "run", "start:prod"]