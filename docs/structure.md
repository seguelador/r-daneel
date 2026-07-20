# Structure & conventions

The logbook is a set of layers. Each has one job. This doc is the source of truth
for "where does X go".

## `tasks.md` — the index

What you're working on, prioritized. Each item **references** its track; the
detail lives in the track, not here. Keep it honest: done items move to
`## Completed` and get swept to `archive/` periodically. When it grows large, do
a prioritization pass (blocking vs. can-wait).

## `projects/` — area → Epic → track

Three concepts, nested only as far as the work justifies:

- **Track** = a file. A unit of work with its own context, decisions, data, next
  steps. Start from the track template (`projects/_track.md`, from
  `templates/projects/` in the framework).
- **Epic** = a folder with an `_overview.md` (index + status, **not** a content
  dump) and one file per track.
- **Area** = a large domain. A folder with an `_overview.md`, a `_reference.md`
  (durable architecture/glossary/versions), and nested **sub-Epic** folders.

Rules:

- A loose track can live directly in `projects/`. **Promote** it into an Epic
  folder when it grows siblings.
- The `_overview.md` is an **index + status**, never a container for everything.
- Slow-changing reference (architecture, repos, glossary) goes in `_reference.md`
  — separate from track progress.
- **Meeting notes are routed to a track, never dumped into the overview.** The
  anti-pattern to avoid is the "god-file" that mixes overview + reference +
  every track + stakeholders + meeting notes.

## `team/` — the people CRM

One **dossier** per person (`team/TEMPLATE.md`). Flat folder; model the
type with the **Relationship** field (report | manager | peer | expert |
stakeholder) rather than subfolders.

- **Separate stable from running:** "Who they are" and "Growth trajectory" mature
  in place; "Bitácora" only appends.
- **Tiered enrichment:** someone merely mentioned gets a light stub; promote to a
  full dossier when they reappear.
- Each report's stage maps to the `growth-framework`.

## `growth/` — growth as a system

Four files, separate concerns:

- `objectives.md` — the year's objectives.
- `growth-framework.md` — what you're growing toward / what's expected (formal or
  self-authored). The anchor for evidence detection.
- `evidence.md` — the brag document: concrete impact tagged to
  objectives/dimensions. The review currency.
- `principles.md` — principles and learnings (judgment).

## `prep/` — ephemeral

Meeting prep, talking points, the braindump inbox. A holding pen: durable residue
is routed out via `/sync`; the artifact is archived or discarded. Nothing durable
lives only here.

## `archive/` — closed work

Closed tracks, dead projects, swept-out completed tasks, old prep. Move, don't
delete — history stays queryable, out of the way of the live layers.

## Cross-layer connections worth knowing

- **team ↔ growth/evidence** — developing a person is your own evidence.
- **team ↔ tasks** — 1:1 action items flow to `tasks.md`; items from other
  meetings that touch a person flow to their "Para el próximo 1:1".
- **anything ↔ growth** — decisions/learnings cross-check against `objectives.md`
  and may become a `principle` or an `evidence` candidate.
