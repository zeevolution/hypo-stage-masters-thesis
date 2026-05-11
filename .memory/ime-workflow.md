# IME-USP thesis workflow (operational)

Phased checklist for completing the master's thesis at IME-USP, combining project practice and the defense-form procedural notes.

## Phase A — Before defense

- The student performs the **digital deposit** directly in **Janus** (USP).
- The **Google Form receipt** (defense scheduling / committee suggestion) can be used in Janus in the field for proof of printed/PDF delivery and committee suggestion.
- The **suggested committee** must agree with the proposed **date and time**; if the date or time changes later, **both advisor and student** must inform the **committee** and **CCP**.

## Phase B — Defense logistics

- **Defense date:** 11 June 2026
- **Time:** 09:00
- **Modality:** presencial
- **Meeting link registered on the form:** `meet.google.com/kpe-csas-ryv` (logistics only; do not put this URL in the thesis PDF unless the template has a dedicated administrative field).
- Official date/time may still change administratively; **update this file and LaTeX metadata** if the defense is rescheduled.

## Phase C — After defense (versão corrigida)

- The **corrected version** must be included in the **Biblioteca Digital USP** within **60 days after the defense**; if it is not uploaded and no delay is communicated, the **deposited version** may be inserted into the system.
- **Committee names** in thesis front matter usually belong in the **corrected** workflow, not necessarily in the pre-defense original PDF, if the template distinguishes versions (this repo uses `definitiva` in `\tipotese` and `\banca` only for the final title page).
- **Repo-oriented checklist after defense:**
  1. Apply corrections requested by the committee.
  2. Enable corrected-version front matter (`definitiva` in `\tipotese` in `thesis.tex`; see comments there and `front-matter/banca.tex`).
  3. Regenerate the final PDF (`latexmk`).
  4. Archive a date-stamped PDF under `archive/` per repository skill.
  5. Upload the corrected thesis to USP systems (Biblioteca Digital / Janus as applicable).
  6. Tag the repository when the corrected upload is complete (optional but useful).

## Phase D — Institutional style reminders

- **Title:** after deposit, the title **must not** be changed (IME form).
- Use **full names**, not abbreviations, for committee members in official metadata where the institution expects them.
- Preserve **correct casing and accents**; do not render metadata in all caps.

## Cursor operating rule

When working on thesis-administration tasks, Cursor must consult this file first and treat these steps as the canonical IME-USP workflow unless a newer institutional document in the repo supersedes them.
