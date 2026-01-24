FROM node:20-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    protobuf-compiler \
    && rm -rf /var/lib/apt/lists/*

# Copy package files
COPY package.json ./

# Install all dependencies (including dev dependencies for build)
# Use --include=dev to ensure devDependencies are installed even if NODE_ENV is set
# npm install works with or without package-lock.json
RUN npm install --include=dev

# Copy project files
COPY . .

# Build TypeScript
RUN npm run build

# Note: We don't prune dev dependencies here because staging needs them for `npm run dev`
# For production, you can prune manually or use a multi-stage build if image size is critical
# To prune for production: RUN npm prune --production
ENV NODE_ENV=production

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:8000/', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

# Command to run the application
CMD ["node", "dist/index.js"]
