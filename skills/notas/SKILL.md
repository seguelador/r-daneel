---
name: notas
description: >
  Capture and organize notes for any meeting: project discussions, team syncs,
  planning, reviews, workshops, or 1:1s. Use for "notas", "toma notas",
  "take notes", or "meeting notes". Capture with minimal interruption, then
  propose a structured record and an appropriate destination.
---

# /notas — Take meeting notes

Capture any meeting without forcing a person dossier or a 1:1 format.
Respond in the user's language. This skill also works with notes supplied
after the meeting; if capture is already complete, go straight to processing.

## 1. Establish minimal context

Reuse context already supplied. If needed, ask in one short message for the
meeting's topic/title, participants (if known), and date (suggest today in the
user's timezone). Participants can be a group or team; a name or LDAP is not
required. Do not delay capture if the user starts sending notes before answering.

Confirm briefly that notes mode is active and that **terminamos** closes it.

## 2. Capture without interruption

- Treat successive messages as raw notes, including terse fragments. Do not
  reformulate, analyze, route, or interrupt with questions during capture.
- Acknowledge minimally. If the user clearly addresses a question to you,
  answer briefly and return to notes mode; a question recorded from the meeting
  remains a note.
- Preserve uncertainties and attribution. Do not turn proposals into decisions,
  infer attendees, or assign tasks that were not agreed.
- Finish on a clear closing instruction such as **terminamos** or **done**.
  Do not mistake a quoted word or an agreement inside a note for closing the session.

## 3. Process when the user finishes

Create a record adapted to the meeting. Include its title/topic and date;
include participants only when known. Use only sections supported by the notes:

- **Topics and context:** a readable account of what was discussed.
- **Decisions and agreements:** explicit outcomes, separated from suggestions.
- **Actions:** task, responsible person/team, and deadline when stated.
  If ownership or timing was not agreed, leave it explicitly unassigned/unspecified.
- **Open questions, blockers, and follow-up:** unresolved issues and next steps.

Omit empty sections. For multiple participants, use actions by responsible
person/team rather than forcing "my actions" and "their actions". Retain a
1:1-specific structure when the meeting actually calls for it.

## 4. Propose the destination and save

Show the structured record and its proposed destination **before writing**.
Respect an explicit destination supplied by the user; otherwise use:

| Meeting context | Proposed destination |
|---|---|
| A project, epic, or workstream | A dated entry in the relevant `projects/` track, not an `_overview.md`. |
| A 1:1 or discussion primarily about one person's development/relationship | A dated entry in that person's `team/<name>.md` under `## Bitácora`. |
| A general meeting or no clear durable destination | `prep/YYYY-MM-DD-meeting-<topic>.md` as a temporary record, to route later with `/sync`. |

The subject determines the destination, not the number of attendees: a
two-person project discussion can belong to a track. Reuse an existing file;
if a new track, dossier, or folder is needed, include it explicitly in the preview.
For a new person dossier, use `team/TEMPLATE.md` when available without inventing
biographical facts. Preserve existing history, format, and chronology.

Obtain confirmation before persisting, unless the user has already explicitly
authorized the shown content and destination. Save once, then verify the entry
was added. Do not duplicate the full minutes into every attendee's dossier.

Close with where the record was saved. Offer `/sync` for actions in `tasks.md`
or focused person/project follow-ups when useful; do not propagate them silently.
If saved in `prep/`, make its temporary routing status clear.
