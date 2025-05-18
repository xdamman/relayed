run: fmt
	deno run --check \
		--allow-net \
		--allow-read=data/relayed.db,data/relayed.db-journal,/Users/mac/Library/Caches/deno/plug \
		--allow-write=data/relayed.db,data/relayed.db-journal \
		--allow-env=PORT,NOSTR_RELAY_ADMIN_PUBKEY,DENO_DEPLOYMENT_ID,DENO_DIR,DENO_SQLITE_PATH,DENO_SQLITE_LOCAL,HOME \
		--unstable-kv --unstable-ffi --allow-ffi \
		deploy/default.ts

fmt:
	deno fmt

test: fmt
	deno test \
		--trace-leaks --unstable-kv \
		--allow-read=src/queries,data/test.sqlite,data/relayed.db,data/relayed.db-journal \
		--allow-net --allow-write --allow-ffi \
		--allow-env=PORT,NOSTR_RELAY_ADMIN_PUBKEY,DENO_DEPLOYMENT_ID,DENO_DIR,HOME \
		--coverage \
		src/tests/*.ts

cov:
	deno coverage coverage --html
	file_server -p 4508 coverage/html

bundle:
	deno bundle main.ts mod.ts
