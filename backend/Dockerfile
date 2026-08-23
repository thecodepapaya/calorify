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

# USDA bootstrap extracts the official FoodData Central archive at runtime.
RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=node:node --from=production-dependencies /app/node_modules ./node_modules
COPY --chown=node:node --from=build /app/dist ./dist
COPY --chown=node:node package.json package-lock.json ./
COPY --chown=node:node migrations ./migrations
COPY --chown=node:node data/meal_analysis_tips.json ./data/meal_analysis_tips.json

RUN mkdir -p /app/data/usda && chown -R node:node /app/data

ENV NODE_ENV=production

USER node

EXPOSE 8000

# Readiness check (database + materialized USDA dataset)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:8000/ready', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

CMD ["node", "dist/index.js"]
