# Modules — company-specific extensions

A module layers company-specific behavior (calendar rules, ticketing, chat,
growth framework mapping) on top of the generic Daneel core, without modifying
it. The core stays portable; the module is swappable.

**Modules are not committed to this repo.** Clone your company's module
separately and place it here as `modules/<company>/`.

## Available modules

- **[r-daneel-meli](https://github.com/mseguel_meli/r-daneel-meli)** — MercadoLibre
  (Jira/Slack/Calendar MCPs, Fury skills, IT Experience Map, MELI tone)

## How to add a module

```bash
git clone <module-repo> modules/<company>
```

Then follow the module's own `README.md` to compose it onto your `CLAUDE.md`.

## How to build a module

Copy the structure from any existing module:

```
modules/<company>/
  README.md          # how to enable, what's here, composition principle
  CLAUDE.<co>.md     # the behavior layer — reference this from your CLAUDE.md
  reference/         # durable knowledge specific to this company
  skills/            # repo-local skills (company-specific gestures)
```

**Composition principle:** a module only *adds*. If anything conflicts with the
generic core, the core wins and the module adapts — never the reverse.
