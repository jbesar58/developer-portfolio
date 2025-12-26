# Tahap 1: Build
FROM node:18-alpine AS build-stage
WORKDIR /app
COPY package*.json ./
# Menggunakan legacy-peer-deps karena ada warning dependensi di log Anda
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

# Tahap 2: Runner (Menggunakan Node.js untuk menjalankan Next.js)
FROM node:18-alpine AS runner
WORKDIR /app
COPY --from=build-stage /app/package*.json ./
COPY --from=build-stage /app/.next ./.next
COPY --from=build-stage /app/public ./public
COPY --from=build-stage /app/node_modules ./node_modules

EXPOSE 3000
CMD ["npm", "start"]