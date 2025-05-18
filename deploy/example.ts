import { run } from "../src/main.ts";

const relay = await run({
    port: 8000,
    default_policy: {
        allowed_kinds: "all",
    },
    admin: "", // pubkey of the admin
    auth_required: true,
});
if (relay instanceof Error) {
    console.error(relay);
}
