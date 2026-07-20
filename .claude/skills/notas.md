---
description: Meeting-notes mode. Capture raw notes during a meeting with minimal friction, then process them into a structured session entry in team/ (or a track). Triggers: /notas, "take notes", "meeting notes".
---

# /notas — Take meeting notes

When the user activates this command, follow these steps in order.

## 1. Ask initial context

Ask these two questions together, in a single short message:
- Who is the meeting with? (name or ldap)
- Date? (suggest today as default)

## 2. Enter notes mode

Once you have the context, confirm with a short message like:
> "Got it, taking notes for the meeting with [name] — [date]. Jot down whatever
> you want, I'll capture it. When you're done say **terminamos**."

In this mode:
- Each user message is a raw note — don't interrupt, don't reformulate, don't
  ask questions.
- Very short or terse messages are still notes.
- If they send something that's clearly a question for you (not a note), answer
  briefly and return to notes mode.
- Acknowledge with something minimal ("👍", "noted", "ok") so they know it
  landed — nothing more.

## 3. When the user says "terminamos" (or "listo", "done", "that's all")

Process all the notes and:

1. **Generate a structured session entry** using the 1:1 template format:

```
**Topics covered:**
- [clean list extracted from the notes]

**Current focus:**
- [if mentioned]

**Blockers or concerns raised:**
- [if mentioned]

**Agreements:**
- [if any explicit agreements]

**My action items:**
- [ ] [tasks left for the user]

**Their action items:**
- [ ] [tasks left for the other person]
```

2. **Save the entry** in `team/<ldap-or-name>.md`:
   - If the file exists, add the new session at the top of the `## Bitácora`
     section (respecting the dossier format).
   - If it doesn't exist, create it from `team/TEMPLATE.md` and fill what you can
     (at least the header + a stub "Who they are").

3. **Show the preview** of what you saved — the full, well-formatted entry.

4. **Ask** whether they want to adjust anything before closing. Then offer to
   propagate any action items to `tasks.md` via `/sync`.

## Tone
Notes mode = minimum noise. The user is in a meeting, can't read paragraphs.
Short messages, minimal acknowledgements.
