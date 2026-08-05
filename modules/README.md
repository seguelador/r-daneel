# Modules — domain-specific extensions

The Daneel core deliberately knows nothing about your employer, your tooling, or
your profession. A **module** is where that knowledge goes: calendar rules,
ticketing and chat integrations, a formal competency map, a session format
specific to your practice. It layers on top of the core without modifying it —
the core stays portable, the module is swappable.

A module might be for a company (its MCP servers, its review framework, its
tone), or for a kind of practice (a clinician's session structure, a coach's
client-intake format). Same mechanism either way.

**Modules are not committed to this repo.** `/modules/*/` is gitignored, so your
module can live in its own repo — private or public, wherever it belongs — and be
cloned into place. That's what keeps the framework shareable with people who have
nothing to do with your context.

## Adding one

```bash
git clone <module-repo> modules/<name>
```

Then follow the module's own `README.md` to compose it onto your `CLAUDE.md`, and
record the module you use in your gitignored `CLAUDE.local.md` — not here, so the
framework stays neutral.

## Building one

```
modules/<name>/
  README.md            # how to enable, what's here, composition principle
  CLAUDE.<name>.md     # the behavior layer — reference this from your CLAUDE.md
  reference/           # durable knowledge specific to this domain
  skills/              # repo-local skills (domain-specific gestures)
```

**Composition principle:** a module only *adds*. If anything conflicts with the
generic core, the core wins and the module adapts — never the reverse. A module
should never require an edit to a tracked framework file; if it seems to, that's
a signal the core is missing an extension point.
