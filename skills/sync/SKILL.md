---
name: sync
description: Routes this session's context to the right Daneel files (tasks, projects/epics/tracks, team, growth, memory). Use any time — not only at close — when the user says "sync", "route this", "save the context where it belongs", or before closing a session with uncaptured material. Unlike /catchup (a conversational end-of-day debrief), /sync is the routing mechanic: it looks at what happened and files it tidily.
---

You are running `/sync`. Goal: take what happened in **this session** and
propagate it to the correct Daneel files, following the project structure. This
is not a conversational debrief — it's routing and orderly persistence.

## Where each thing goes

- **`tasks.md`** — prioritized tasks + day-to-day. Each item **references** its
  track; it's the index of "what am I on", not the detail. New/closed
  actionables, priorities, follow-ups.
- **`projects/<area-or-epic>/`** — work as **area → Epic → track**. Context,
  decisions, data, evidence, next steps per track go in the track file. Loose
  tracks can live directly in `projects/`; propose promoting one into an Epic
  folder when it grows siblings.
- **`team/<name>.md`** — feedback, 1:1 topics, per-person context. Items that
  involve a person go to their dossier, under "Para el próximo 1:1" if no
  session exists yet.
- **`growth/`** — `objectives.md`, `growth-framework.md`, `evidence.md` (the
  brag doc — concrete impact/evidence), `principles.md` (learnings).
- **`prep/`** — if this session produced meeting prep, its durable residue is
  routed to the track/team file; the prep artifact itself can be archived.
- **Memory** (`{{CLAUDE_MEMORY_DIR}}/`) — durable cross-session facts: contacts,
  resources/URLs, working preferences. Update `MEMORY.md` with the pointer.
  (The memory dir is per-machine; don't hardcode a path — use the one this
  session actually has.)

## Steps

### 1. Review the session
Identify the distinct pieces of context that appeared: decisions,
findings/data, actionables, feedback, people involved, learnings, resources.

### 2. Route each piece
For each, decide a destination using the structure above. Rules:
- Actionable/priority → `tasks.md` (referencing the track); if it has detail,
  the detail goes to the track.
- Context/decision/data of a track → the track file under its Epic. **If the
  Epic or track doesn't exist yet, propose creating it** (with its `_overview.md`
  if it's a new Epic).
- Involves a person (feedback, 1:1 topic) → their `team/<name>.md`.
- A leadership learning → `growth/principles.md`. Concrete impact/evidence tied
  to an objective or framework dimension → **propose** a `growth/evidence.md`
  entry (low bar to suggest, high bar to file — never file silently).
- A durable cross-session fact → memory.
- Doesn't fit any Epic → propose a loose track in `projects/` or a new Epic.
  **Ask when unsure which Epic it belongs to.**

### 3. Show the plan before writing
Present a preview grouped by file — bullets, not paragraphs:
> `tasks.md`: …
> `projects/<epic>/<track>.md`: …
> `team/…`: …
> `growth/evidence.md`: …
> memory: …

Mark anything that would be a **new** file/folder. Confirm before writing.

### 4. Write and close
Apply the confirmed changes. Close with a 2–3 line summary: what was propagated
and where. If something had no clear destination, leave it explicit as pending.

## Mandatory cross-check
Before finishing, cross-check against `growth/objectives.md` and the manager's
latest `team/` session: if something new is misaligned or connects to the
objectives, mention it — unprompted.

## Tone
Direct, orderly. Propose destinations, don't dump. The goal is a tidy Daneel
where nothing valuable is lost.
