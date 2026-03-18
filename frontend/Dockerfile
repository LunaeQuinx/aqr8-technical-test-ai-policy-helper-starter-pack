FROM node:20-alpine
WORKDIR /app

# Removed 'frontend/' prefix
COPY package.json package-lock.json* ./
RUN npm install --legacy-peer-deps || yarn || true

# Changed 'frontend' to '.'
COPY . .

RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]