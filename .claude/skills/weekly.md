---
description: Weekly zoom-out. Distills the week's accumulated notes into a short digest (saved to weekly.md), sweeps hygiene (stale tasks, done items), and surfaces what the daily cadence misses (evidence candidates, drift from objectives). The Distill gesture. Triggers: /weekly, "weekly review", "cierre de semana".
---

# /weekly — Weekly review & distill

Where `/catchup` debriefs a day, `/weekly` zooms out over the week: it distills
what accumulated, enforces hygiene, and surfaces the slower signals a daily pass
misses. Like `/catchup`, it delegates the actual filing to `/sync`'s routing —
it does not re-implement it.

## Steps

### 1. Gather the week (brain-first)
Pull, without interrogating the user:
- `tasks.md` — what closed, what moved, what's been sitting untouched.
- `projects/` tracks touched this week — decisions, progress, new state.
- `team/` — sessions logged this week; open "Para el próximo 1:1" buffers.
- `prep/inbox.md` — braindumps not yet routed.

### 2. Distill (the point of this gesture)
Compress the week into a tight digest — the essence, not a log:
- **What actually moved** — 3–5 bullets, outcomes not activity.
- **State now** — where the main tracks stand after the week.
- **Loose ends** — what's stalled, stale, or waiting on someone.

Progressive summarization: if a track's file has grown noisy, propose tightening
its `TL;DR` so the compaction lives in the track, not just the digest.

### 3. Surface the slow signals
The daily bar to interrupt is high; the weekly pass is where these belong:
- **Evidence candidates** — impact from the week worth a `growth/evidence.md`
  entry (propose, never file silently).
- **Principle candidates** — a learning that generalizes → `growth/principles.md`.
- **Drift** — anything pulling away from `growth/objectives.md`, or a priority in
  `tasks.md` that's gone stale.

### 4. Hygiene
Keep the live layers honest:
- Sweep `tasks.md` "Completed" items to `archive/`.
- Flag done work still lingering as open, and priorities that no longer match
  reality.
- Confirm the braindump inbox is empty (route what's left via `/sync`).

### 5. Route, save & close
- Route the durable residue via `/sync` (preview grouped by file, confirm before
  writing).
- **Save the digest** to `weekly.md` (newest on top, under a `## <date>` header).
  It's both a week-over-week record and the marker the session-open nudge reads,
  and it feeds `/review-prep` at review time.
- Close with the digest so the user ends the week with a clear picture and a
  clean board.

## The nudge
`/weekly` is manual by design — the surfacing works precisely because the user is
in the loop; a fully autonomous run would file things without the "high bar to
file" check and lose the point. But it shouldn't depend on the user remembering:
at session open (see `CLAUDE.md`), Daneel checks the latest date in `weekly.md`
and, if it's been ~7+ days, offers the weekly rather than waiting to be asked.
The user stays in command — it just doesn't slip.

## Tone
A calm weekly zoom-out with a companion. Compress hard — the value is what you
leave OUT. Distill, don't dump.
