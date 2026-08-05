---
name: audit
description: Cross-references all active Daneel files to surface overlaps, stale items, missing dossiers, and unrouted context. Reports findings grouped by type and waits for the user to decide what to action. Use when the second brain feels noisy or out of sync, or as periodic structural hygiene. Triggers: /audit, "revisar el second brain", "auditar el daneel", "solapamientos", "limpiar el daneel".
---

# /audit — Second brain structural audit

Goal: read the full active state of the Daneel and surface what's off —
overlaps, gaps, staleness, and missed connections. **Report only. Do not write
anything without explicit confirmation.**

## What to read

Load all of the following before drawing any conclusions:

- `tasks.md`
- `projects/` — all tracks and `_overview.md` files (recurse)
- `team/` — all dossiers
- `growth/objectives.md`, `growth/evidence.md`, `growth/principles.md`,
  `growth/growth-framework.md`
- `reference.md`
- `weekly.md` — last 2–3 entries
- `prep/` — any files present

## What to look for

### 1. Overlaps and duplicates
- The same task or actionable appearing in more than one file (e.g. in `tasks.md`
  AND in a track).
- The same decision or context captured redundantly across tracks.
- Two tracks covering the same topic under different names.

### 2. Stale items
- Tasks marked `[ ]` with no recent activity and no clear owner or deadline —
  likely dead weight.
- Tracks in `projects/` with no updates in several weeks.
- "Para el próximo 1:1" items in `team/` that have been sitting across multiple
  sessions without being addressed.
- Done work (`[x]`) in `tasks.md` that hasn't been swept to `archive/`.

### 3. Missing dossiers
- People mentioned by name in `tasks.md`, `projects/`, or `growth/` who don't
  have a file in `team/`.

### 4. Unrouted context
- Items in `prep/` that were never propagated to a track or dossier.
- Decisions mentioned in `tasks.md` that belong in a track file instead.
- Context living only in `tasks.md` that should be in a `projects/` track.

### 5. Growth gaps
- Evidence-worthy items (outcomes, impact, decisions) visible in `projects/` or
  `team/` that haven't made it to `growth/evidence.md`.
- Activity this period that connects to `growth/objectives.md` but isn't
  reflected there.
- Principles that appear implicitly in decisions/notes but aren't in
  `growth/principles.md`.

### 6. Structural issues
- Tracks without a parent Epic that are large enough to warrant one.
- Epics with an `_overview.md` that's out of date relative to their tracks.
- `reference.md` sections that have grown large enough to be their own file.

## Output format

Group findings by type. For each finding:
- **File(s):** the specific file(s) involved.
- **Finding:** one sentence — what's wrong or off.
- **Suggested action:** what to do about it (merge, archive, create, route, etc.).

Use a severity marker:
- `[alta]` — actively misleading or causing confusion.
- `[media]` — worth fixing soon, creates friction.
- `[baja]` — cosmetic or low-impact, fix when convenient.

Keep the report tight. If there's nothing to flag in a category, skip it. If
the Daneel is clean, say so.

## After the report

Wait. Do not write, move, or archive anything. Present the findings and ask:
> "¿Qué querés que accione?"

Then execute only what the user confirms, using `/sync`'s routing conventions
for where things land.
