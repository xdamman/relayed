import { run } from "../src/main.ts";

const relay = await run({
  default_policy: {
    allowed_kinds: "all",
  },
  auth_required: false,
});
if (relay instanceof Error) {
  console.error(relay);
}
