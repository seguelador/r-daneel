# Daneel — the second brain for a Technical Leader

> A second brain operated by Claude Code. It captures what happens in your week —
> 1:1s, decisions, projects, learnings — routes it to the right place, and
> gives it back when you need it: preparing a 1:1, writing a status update, or
> building your case for a performance review.

Daneel is a **plain-Markdown Daneel plus a set of Claude Code skills**. Your
notes stay yours — readable, portable, versionable. Claude reads the folder,
understands the structure, and writes back into it following the conventions
below.

## Why this one

There is a thriving community of "AI second brain" setups (see Credits). Almost
all of them target founders and individual contributors. **Daneel is built for a
lead at a large company**: recurring 1:1s, a people CRM, a growth/role
framework, ceremony prep, and integration with a corporate tool stack. If your
week is made of *people and decisions* more than *tickets and code*, this is for
you.

## What's in the box

```
CLAUDE.md          # how Daneel behaves — the operating contract
docs/              # philosophy, structure conventions, skills, how to customize
.claude/skills/    # the gestures: sync, catchup, weekly, notas, prep, review-prep, braindump, status-update
templates/         # empty scaffolds you copy into your own Daneel
modules/meli/      # optional MercadoLibre integration (calendar, Jira, Slack). Delete if not at MELI.
```

## Quickstart

1. **Copy the scaffold.** Create your own private Daneel folder (keep it
   separate from this framework repo) and copy in `CLAUDE.md`, `.claude/`, and
   the contents of `templates/`.
2. **Make it yours.** Open `docs/customize.md` and fill the placeholders in
   `CLAUDE.md` (your role, manager, team, current project) and the `growth/`
   files. This is manual for now — an onboarding wizard is on the roadmap.
3. **First session.** Open Claude Code in your Daneel folder and just talk:
   drop meeting notes, ask what's open, or run a skill (`/notas`, `/sync`,
   `/catchup`).
4. **At MELI?** Enable `modules/meli/` — see its README.

## The layers (30-second tour)

- **`tasks.md`** — the index of "what am I working on". Each item references its
  track; details live in the track, not here.
- **`projects/`** — work organized as *area → Epic → track*. Durable context,
  decisions, data.
- **`team/`** — a people CRM. One dossier per person (reports, manager, peers,
  stakeholders): who they are, where they're growing, a running log of 1:1s.
- **`growth/`** — your professional growth as a system: `objectives`,
  `growth-framework` (what you're growing toward), `evidence` (the brag doc for
  reviews), `principles` (learnings).
- **`reference.md`** — durable general knowledge not tied to a project or person
  (the Resources layer). Promote a big topic to its own file when it grows.
- **`prep/`** — ephemeral meeting prep; its durable residue gets routed out.
- **`archive/`** — closed tracks and dead projects.

See `docs/structure.md` for the full conventions and `docs/skills.md` for the
gestures.

## Credits

Daneel stands on patterns proven by the community:

- **Garry Tan — `gstack` / `gbrain`**: operating gears, brain-first lookup,
  tiered enrichment of people profiles.
- **Cole Medin — [`second-brain-starter`](https://github.com/coleam00/second-brain-starter)**:
  bootstrap wizard, memory-centric design, lifecycle hooks.
- **[`COG-second-brain`](https://github.com/huytieu/COG-second-brain)**:
  framework-vs-content separation, people CRM, model routing.
- **Julia Evans — "Get your work recognized: write a brag document"**: the
  evidence ledger behind `growth/evidence.md`.
- **Andrej Karpathy — the "LLM Wiki" pattern**: plain Markdown you own,
  compiled and linked by the model.

## License

MIT — see `LICENSE`.
