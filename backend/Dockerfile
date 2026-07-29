FROM node:20-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    protobuf-compiler \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Copy the lockfile before source so dependency installation is deterministic
# and remains cacheable when application code changes.
COPY package.json package-lock.json ./

# Install all dependencies (including dev dependencies for build)
# Use --include=dev to ensure devDependencies are installed even if NODE_ENV is set
RUN npm ci --include=dev

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

# Health check (dedicated /health endpoint for probes)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:8000/health', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

# Command to run the application
CMD ["node", "dist/index.js"]
