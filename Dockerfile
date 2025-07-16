# Etape 1: Build + Test
FROM node:20-alpine AS builder

WORKDIR /app

RUN corepack enable
COPY package.json pnpm-lock.yaml ./
RUN corepack prepare pnpm@latest --activate

COPY . .
RUN pnpm install

# Format, Lint, Test avant build
RUN pnpm format && pnpm lint && pnpm test

RUN pnpm run build

# Etape 2: Runtime
FROM node:20-alpine

WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY package.json .

CMD ["node", "dist/index.js"]