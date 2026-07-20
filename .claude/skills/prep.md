---
description: 1:1 prep. Loads a person's dossier, surfaces open threads and the "Para el próximo 1:1" buffer, and proposes an agenda. Triggers: /prep <person>, "prep my 1:1 with", "get ready for the 1:1".
---

# /prep <person> — Prepare a 1:1

You are running `/prep` for a 1:1 with `<person>`.

## Steps

### 1. Load the dossier
Open `team/<person>.md`. If it doesn't exist, offer to create a stub from
`team/TEMPLATE.md` and prep from whatever context you can find (other files,
recent notes).

### 2. Summarize the state
Present a tight briefing:
- **Who / where they are** — role, stage·path, growth trajectory (1–2 lines).
- **Open threads** — the "Para el próximo 1:1" buffer + unresolved action items
  from the last sessions in the Bitácora (theirs and yours).
- **Signals** — anything from recent meetings/notes elsewhere that involves this
  person (brain-first: check `tasks.md` and recent tracks).
- **Growth angle** — one thing tied to their trajectory / the growth-framework
  worth advancing this session.

### 3. Propose an agenda
Offer a short agenda (blocks with rough time), forward-looking, not a status
interrogation. Keep it to what matters this session.

### 4. Set up capture
Remind the user they can drop into `/notas` during the meeting, and that you'll
help update the dossier and route action items afterward.

## After the meeting
When the user brings back notes, update the dossier: append the session to the
`## Bitácora`, refresh "Growth trajectory" if it moved, clear resolved items from
"Para el próximo 1:1", and route action items to `tasks.md` via `/sync`. If the
person grew in a notable way, flag it as a candidate for `growth/evidence.md`
(developing your people is your own evidence).

## Tone
Brief and useful. The user is about to walk into a conversation — give them the
map, not an essay.
