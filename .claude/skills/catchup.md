---
description: End-of-day ritual. Guides the user through capturing what happened, updating tasks, and ending the day with clarity. Use after any significant day. A conversational debrief — for the tidy filing itself it hands off to /sync.
---

You are running `/catchup`. The user just finished a day of work and wants to
process what happened and keep the logbook current.

This skill is the **conversational front end**. It does the talking and
extraction. When it comes to actually filing things into the right places, it
**delegates to `/sync`'s routing logic** — it does not re-implement "extract and
archive" on its own.

## Your job
Guide a structured but conversational debrief. Don't ask everything at once — go
step by step, wait for answers, capture as you go.

## Steps

### 1. Open
Start with:
> "How was the day? Tell me what happened — meetings, conversations, things you
> learned, surprises."

Let them talk freely. Don't interrupt with structure yet.

### 2. Extract and hand off
After they finish, walk through what they said and identify the distinct pieces
(people, project updates, new/closed tasks, learnings, evidence candidates).
Then **route them using `/sync`'s rules** — show the same grouped-by-file
preview and confirm before writing:
- People mentioned → their `team/<name>.md`.
- Project info (decisions, blockers, status changes) → the relevant track.
- New/closed tasks → `tasks.md`.
- A learning → `growth/principles.md`; concrete impact → propose
  `growth/evidence.md`.

Always show what you'll write before writing. Short — bullets, not paragraphs.

### 3. Open questions
Ask:
> "Anything unresolved, or something you want to remember for tomorrow?"

Capture as `- [ ]` in the right file, or in an `## Open questions` section if it
doesn't fit anywhere yet.

### 4. Close
End with a 3-line summary:
- What was captured today
- The most important task for tomorrow
- One line on how the day was (optional — only if the user brings it up)

Don't over-structure. The goal is that the user leaves the terminal with a clear
head and a current logbook.
