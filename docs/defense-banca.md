# Comissão Julgadora — Defesa de Mestrado

Roster as confirmed on the IME defense form. Authoritative prose copy also lives in `.memory/defense-and-committee.md`; LaTeX `\banca{...}` in `thesis.tex` must stay in sync for the post-**definitiva** title page.

## Titulares

| # | Name | Role | Institution |
|---|------|------|---------------|
| 1 | Prof. Dr. Eduardo Martins Guerra | Presidente | UniBz |
| 2 | Prof. Dr. Jorge Augusto Melegati Gonçalves | Titular | U.Porto |
| 3 | Prof. Dr. Marco Tulio de Oliveira Valente | Titular | UFMG |

## Suplentes

| # | Name | Institution |
|---|------|-------------|
| 1 | Prof. Dr. Paulo Roberto Miranda Meirelles | USP |
| 2 | Profª. Drª. Carla Ilane Moreira Bezerra | UFC |
| 3 | Prof. Dr. Breno Bernard Nicolau de França | Unicamp |

## Defense logistics (reference)

- **Data / hora:** 11 June 2026, 09:00 (presencial).
- **Meet (form):** `meet.google.com/kpe-csas-ryv` — keep for logistics; do not add to the thesis PDF unless the template has a dedicated field.

## Notes

- Composition satisfies CCP rules (titulares + suplentes as registered).
- If the defense date or time changes, inform the committee and CCP; update `.memory/`, `thesis.tex` (`\defesa`), and this doc.

## Source of truth in the repo

- `front-matter/banca.tex` — macros `\bancaTitulares`, `\bancaSuplentes` (for optional `\input` when preparing corrected-version collateral).
- `thesis.tex` — `\banca{...}` list consumed by `imelooks` when `\tipotese` includes **definitiva** (committee block on the title page).
