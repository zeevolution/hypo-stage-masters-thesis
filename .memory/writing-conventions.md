# Writing and LaTeX conventions

Operational rules accumulated during thesis revisions.

## Citations (natbib/biblatex style used in chapters)

- Use **`\citet`** only when the cited author functions **syntactically as part of the sentence** (the author is the grammatical subject or object).
- Otherwise use **`\citep`** (parenthetical citation).

## Sources and framing

- **Gray literature / industry:** venues such as **InfoQ** may be discussed as industry or gray literature, not as peer-reviewed academic evidence on its own.
- Maintain **explicit traceability** between empirical observations and cited papers in related-work and background sections.

## Tone and terminology

- Prefer consistent **IME/USP formal English**; avoid casual or marketing wording.
- Keep **Chapter 4** methodological terms **precisely defined** and reuse them consistently across methods, results, and conclusion.

## Template

- Do not change the deposited **title** strings in `thesis.tex` after deposit approval.
- Committee and defense logistics that are not meant for the pre-defense PDF stay in `.memory/` or in commented/isolated LaTeX until the corrected build.
