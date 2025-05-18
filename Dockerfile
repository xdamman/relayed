# Use the official Deno image
FROM denoland/deno:alpine-2.3.1

RUN mkdir -p /app

# Set working directory
WORKDIR /app

# Copy your project files
COPY . .

CMD ["deno", "run", "--allow-env=PORT,DENO_DEPLOYMENT_ID,DENO_DIR,DENO_SQLITE_PATH,DENO_SQLITE_LOCAL,HOME,relayed_pubkey", "--unstable-kv", "--allow-read=src/queries,data/test.sqlite,data/relayed.db,data/relayed.db-journal", "--allow-write=data/relayed.db,data/relayed.db-journal", "--allow-net", "--allow-ffi", "deploy/default.ts"]