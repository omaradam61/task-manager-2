# DevOps 101 - Task Manager API (production-style, non-root, small base)
FROM node:18-alpine
WORKDIR /app

# Install deps first for better layer caching
COPY app/package*.json ./
RUN npm install --production

# App code
COPY app/. .

EXPOSE 3000

# Run as non-root for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

CMD ["node", "server.js"]
