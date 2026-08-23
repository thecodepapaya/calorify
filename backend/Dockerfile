FROM node:20-slim AS build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --include=dev
COPY tsconfig.json ./
COPY src ./src
RUN npm run build

FROM node:20-slim AS production-dependencies

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev && npm cache clean --force

FROM node:20-slim AS production

WORKDIR /app

# The one-off USDA maintenance command extracts official FoodData Central archives.
RUN apt-get update && apt-get install -y --no-install-recommends \
    gosu \
    unzip \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=node:node --from=production-dependencies /app/node_modules ./node_modules
COPY --chown=node:node --from=build /app/dist ./dist
COPY --chown=node:node package.json package-lock.json ./
COPY --chown=node:node migrations ./migrations
COPY --chown=node:node data/meal_analysis_tips.json ./data/meal_analysis_tips.json
COPY --chown=root:root docker-entrypoint.sh /usr/local/bin/calorify-entrypoint

RUN chmod 0755 /usr/local/bin/calorify-entrypoint \
    && mkdir -p /app/data/usda \
    && chown -R node:node /app/data

ENV NODE_ENV=production

EXPOSE 8000

# Process liveness. The deployment script separately gates success on /ready.
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD gosu node node -e "require('http').get('http://localhost:8000/health', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

ENTRYPOINT ["/usr/local/bin/calorify-entrypoint"]
CMD ["node", "dist/index.js"]
