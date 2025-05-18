# Relayed


Relayed is lightweight relay written in Deno.

- sqlite database
- GraphQL API for relay management with built-in GraphQL playground (using graphiql)

## Quick Start

1. [Install Deno](https://deno.land/manual/getting_started/installation)

2. Next, create a file named `deploy/default.ts`:

```bash
cp deploy/example.ts deploy/default.ts
```

After that, launch the project with the command:

```bash
$> deno task start
```

Finally, open your browser and go to http://localhost:8080/api to access the GraphQL playground. Use your Nostr Browser Extension to login (make sure to register your Nostr pubkey as the admin key in `deploy/default.ts`).

### Use GraphQL Playground

Click on "Login with NIP-07 extensions".

Click the `Re-fetch GraphQL schema` button to retrieve the schema.

You can now utilize the GraphQL Playground to communicate with the server.

### Client Connection

Relay url is `ws://localhost:8000`.

## Run tests

```bash
$> deno task test
```
