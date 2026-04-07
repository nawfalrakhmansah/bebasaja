# Gunakan base image Node
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json dulu (biar cache efisien)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file project
COPY . .

# Build app (kalau ada)
RUN npm run build || true

# Expose port (ubah sesuai app kamu)
EXPOSE 3000

# Jalankan app
CMD ["npm", "start"]
