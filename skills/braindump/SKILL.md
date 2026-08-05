---
name: braindump
description: Low-friction capture. Drop a raw thought and it lands in an inbox to be routed later — no structure required in the moment. Triggers: /braindump, "quick note", "dump this", "don't lose this".
---

# /braindump — Capture a raw thought

You are running `/braindump`. The point is **zero friction**: the user has a
thought and wants it out of their head without deciding where it goes.

## Behavior

1. Take whatever the user says as-is. Don't reformulate, don't ask clarifying
   questions, don't route it yet.
2. Append it to the inbox: `prep/inbox.md` (create it if missing), as a
   timestamped bullet:
   ```
   - [YYYY-MM-DD HH:mm] <the raw thought, verbatim>
   ```
3. Acknowledge minimally ("captured 👍"). Stay in braindump mode — each further
   message is another item — until the user stops or says done.

## Routing (later, not now)
The inbox is ephemeral. On the next `/sync` or `/catchup`, review `prep/inbox.md`
and route each item to its proper home (task, track, team, growth, memory), then
clear the routed items. Nothing durable is meant to live in the inbox
long-term — it's a holding pen, not a destination.

## Tone
Silent and fast. The user is offloading — get out of the way.
