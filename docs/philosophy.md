# Philosophy

## The problem

A lead's work is mostly **people and decisions**, and almost none of it is
written down in a way you can get back. What did you agree with someone three
1:1s ago? What was the rationale for that architecture call? What concrete impact
did you have this quarter — the stuff you'll need at review time? It lives in
your head, in scattered docs, and in Slack scrollback. It decays.

## The idea

Daneel is a **companion operated by Claude Code that keeps a second brain for
you**. It's plain Markdown you own, in
a folder. Claude reads that folder, understands its structure, and writes back
into it following a set of conventions. You talk; it captures, routes, and gives
things back.

Three principles:

1. **Plain Markdown you own.** No database, no lock-in. Readable, portable,
   versionable in git. The model is the interface; the files are the truth.
2. **Structure that routes.** Every kind of thing has a home (a task, a track, a
   person, a learning, a piece of evidence). Capture is cheap because routing is
   defined. The layers are an index over your work, not a pile.
3. **Brain-first and proactive, but low-noise.** Daneel consults the Daneel
   before answering, and surfaces high-value connections unprompted (a
   misalignment with your objectives, a candidate for your evidence ledger) —
   but the bar to interrupt is high. If there's nothing, it says nothing.

## Why it compounds

The value isn't any single note — it's what accumulates. A `team/` that becomes a
real CRM of your people. A `growth/evidence.md` that, by December, is a curated
case for your review instead of a panicked reconstruction. Principles that make
your judgment legible to yourself over time. The Daneel gets more useful the
longer you run it.

## What it's not

Not a task tracker to replace Jira. Not a wiki. Not an autonomous agent that acts
on the world. It's a **second brain for a lead** — it remembers, connects, and
prepares, so you can spend your attention on the people and the decisions.

## Prior art

Daneel is a specific instance of a well-established, fast-moving pattern. It
borrows deliberately — see Credits in the README (Garry Tan's gstack/gbrain, Cole
Medin's second-brain-starter, COG, Julia Evans' brag document, Karpathy's LLM
Wiki). Its one bet is the **niche**: a lead at a large company, where the
existing tools are thin.
