# Relayed

[![deno module](https://shield.deno.dev/x/relayed)](https://deno.land/x/relayed)

> [!IMPORTANT] Make Small Relay Great for the first time!

Relayed is lightweight relay written in Deno.

- built-in database
- GraphQL API for relay management

## Quick Start

1. Install Deno at https://deno.land/manual/getting_started/installation.

2. Next, create a file named `deploy/default.ts`:

```bash
cp deploy/example.ts deploy/default.ts
```

After that, launch the project with the command:

```bash
relayed_pw=123whatever deno task start
```

Finally, open your browser and go to http://localhost:8080/api to access the GraphQL playground.

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
