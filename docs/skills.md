# Skills — the gestures

Skills are the recurring gestures of a lead's week. A gesture earns a skill if
it's recurring, benefits from consistent structured behavior, and has a clear
trigger. Everything else is just behavior described in `CLAUDE.md`.

| Cadence | Gesture | Skill |
|---------|---------|-------|
| Continuous | Capture a loose thought | `/braindump` |
| Continuous | Capture a meeting | `/notas` |
| Continuous | Route session context | `/sync` |
| Continuous | Think / work a problem | *(default mode — no skill)* |
| Per 1:1 | Prep a 1:1 | `/prep <person>` |
| Daily | Debrief the day | `/catchup` |
| Weekly | Zoom out & distill the week | `/weekly` |
| Ad-hoc | Status update | `/status-update` |
| Yearly | Prep a performance review | `/review-prep` |

Lookup/recall is a **behavior** (brain-first), not a skill — just ask.

## The sync ↔ catchup boundary (important)

These two are easy to confuse. They are different:

- **`/sync`** is the **routing/persistence engine**. It looks at what happened
  and files it into the right places, with a preview and confirmation. Run it any
  time you want to persist context.
- **`/catchup`** is the **conversational end-of-day debrief**. It does the
  talking and extraction — and when it comes to actually filing, it **delegates
  to `/sync`'s routing logic**. It does not re-implement filing.

So: `catchup` is a front end that *uses* `sync`. If you just want to file, run
`sync`. If you want to reflect on the day and then file, run `catchup`.

`/weekly` is the **weekly** analog of `/catchup`: it also delegates filing to
`/sync`, but zooms out to distill the week and do hygiene, rather than debrief a
single day. It saves a digest to `weekly.md` and is nudged automatically once a
week has passed since the last one.

## The four newer gestures

- **`/prep <person>`** — loads the person's dossier, surfaces open threads and
  the "Para el próximo 1:1" buffer, proposes an agenda. After the meeting, helps
  update the dossier and route action items.
- **`/review-prep`** — compiles `growth/evidence.md` into a narrative by
  objective and by framework dimension, ready for your manager. The payoff of a
  year of evidence capture.
- **`/braindump`** — zero-friction capture into `prep/inbox.md`; routed later.
- **`/status-update`** — drafts a status update from the Daneel (what moved,
  blockers, next), tuned to the audience.

## Deferred (on the roadmap)

- **`/ceremony <type>`** — prep for formal ceremonies (MBR/QBR/planning/retro).
  More company-specific; a candidate for a company module.

## Company skills

If you enable a company module (e.g. `modules/meli/`), it may add its own skills
(a change-control generator, a ticket-tracker sync). See the module's README.
