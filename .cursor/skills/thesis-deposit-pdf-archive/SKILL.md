---
name: thesis-deposit-pdf-archive
description: Required whenever thesis sources change. Rebuilds thesis.pdf with latexmk and copies it to archive/thesis-deposit-original-YYYYMMDD.pdf using the session update date. Run before completing any thesis change (including PRs) so the deposit snapshot always matches the proposed text.
---

# Thesis deposit PDF archive

## When to run (required)

**This workflow is mandatory, not optional.** Whenever a change touches anything that affects the built thesis PDF, complete the steps below in the same change set before the work is considered done (including before push / PR).

Typical triggers:

- Edits to `thesis.tex`, `chapters/`, `appendixes/`, `front-matter/`, `references.bib`, or thesis graphics pulled in from TeX
- Any task described as updating or proposing changes to the thesis

Also run when the user explicitly asks to refresh **`thesis.pdf`**, the **deposit** copy, or **`archive/thesis-deposit-original-*.pdf`**.

Skipping the archive copy is incorrect for this repository: the canonical deposit under `archive/` must stay aligned with `thesis.pdf` for the same calendar date token.

## Date token (YYYYMMDD)

The filename must encode the **calendar date of the text/PDF update** (not a random build time).

1. If the Cursor conversation includes **Today's date** in user info, derive `YYYYMMDD` from that (authoritative for this environment).
2. Otherwise use the machine date in the project’s local timezone:

   `date +%Y%m%d`

Call this value **`DEPOSIT_DATE`**.

## Build

From the repository root (`hypo-stage-masters-thesis`):

```bash
latexmk -g -pdf -interaction=nonstopmode thesis.tex
```

Use `-g` so the PDF is actually regenerated even when latexmk believes sources are unchanged, whenever the user asked for a refresh or a deposit sync.

If the build fails, fix LaTeX/biber errors before copying the archive file.

## Copy / naming

```bash
cp thesis.pdf "archive/thesis-deposit-original-${DEPOSIT_DATE}.pdf"
```

## Single tracked deposit file

This repo keeps **one** canonical deposit PDF under `archive/`, named with the update date.

- If `archive/` already contains `thesis-deposit-original-*.pdf` files whose date suffix is **not** `DEPOSIT_DATE`, remove the outdated file(s) from git when committing (for example `git rm archive/thesis-deposit-original-OLD.pdf`) so only the new `thesis-deposit-original-${DEPOSIT_DATE}.pdf` remains tracked.
- If the suffix **already equals** `DEPOSIT_DATE`, overwriting with `cp` is enough.

## Git

Whenever thesis sources change, stage **`thesis.pdf`** and **`archive/thesis-deposit-original-${DEPOSIT_DATE}.pdf`** together with the TeX/Bib (or other source) edits so tracked binaries stay in sync with the text. Do not merge or ship a thesis-only PR without this pair.

## Quick checklist

- [ ] Resolve `DEPOSIT_DATE` (session Today → `YYYYMMDD`, else `date +%Y%m%d`)
- [ ] `latexmk -g -pdf -interaction=nonstopmode thesis.tex` from repo root
- [ ] `cp thesis.pdf archive/thesis-deposit-original-${DEPOSIT_DATE}.pdf`
- [ ] Drop obsolete `archive/thesis-deposit-original-*.pdf` if the date suffix changed
- [ ] Stage `thesis.pdf` + archive PDF with related source changes (required for every thesis update)
