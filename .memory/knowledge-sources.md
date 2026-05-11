# Knowledge source index

**Purpose:** preserve URLs and origins that repeatedly informed this thesis, and give future sessions a **retrieval order** when `.memory/*.md` is not enough.

**First fallback:** after reading the other `.memory/` files, consult this index before broad web search.

---

## 1. Preferred project repositories

| URL | Why it matters |
|-----|----------------|
| https://github.com/ArchHypo/hypo-stage | **Hypo-Stage** plugin source, commit history, and issues tied to empirical refinements and the evaluation boundary (`ceee509` and later in this thesis). |
| https://github.com/ArchHypo/hypo-stage-masters-thesis | **This thesis** — LaTeX sources, `.memory/`, deposit PDFs under `archive/`, and CI-built artifacts. |
| https://github.com/ArchHypo/hypo-stage-senior-thesis | **Undergraduate capstone** that first implemented Hypo-Stage; design lineage and early requirements trace to the master’s work. |

---

## 2. Canonical project documents

| Document | Where to find it | Notes |
|----------|------------------|--------|
| Latest master thesis PDF (tracked build) | `thesis.pdf` (repo root); date-stamped copy `archive/thesis-deposit-original-YYYYMMDD.pdf` | `YYYYMMDD` follows the repository deposit-archive skill; see `README.md`. |
| Senior thesis (Hypo-Stage capstone) | https://github.com/ArchHypo/hypo-stage-senior-thesis | Build PDF or release in that repo if needed; not vendored here. |
| Qualification exam / report (mapping + multivocal work, Dec 2024) | **Not stored in this repo** | Described in `README.md` (“Qualification work”); recover from author’s USP/IME records or personal archive if required. |
| Bibliography / citation keys | `references.bib` | Stable keys for recurring papers (e.g. `silva2024tse`, `souza2019`, `robson2016`). |

---

## 3. Institutional sources (IME-USP / USP)

Prefer these for **procedures, deadlines, and formal conventions** over random blogs:

- https://www.ime.usp.br/en/home — IME-USP home (English hub).
- https://www.ime.usp.br/pos-computacao/ — Graduate program in **Ciência da Computação** (rules, forms, academic calendar).
- https://fc.ime.usp.br/ — **Ficha catalográfica** generator referenced in `thesis.tex`.

Add Janus / Biblioteca Digital USP URLs from current official communications when working on deposit or corrected-version uploads; do not invent URLs here.

---

## 4. Core academic references (recurring in this project)

One line each — full metadata in `references.bib`.

- **ArchHypo TSE:** Silva et al., *IEEE TSE* — `doi:10.1109/TSE.2024.3520477` (`silva2024tse`); central technique reference.
- **ArchHypo startup / IEEE Software:** Silva et al., *IEEE Software* — `doi:10.1109/MS.2024.3383628` (`silva2024ieeesw`); startup framing.
- **Mapping study (architecture from requirements):** Souza et al., *Information and Software Technology* 2019 — `doi:10.1016/j.infsof.2019.01.004` (`souza2019`); qualification-era gap analysis, cited in background.
- **Robson & McCartan (flexible / real-world research):** *Real World Research*, 4th ed. (`robson2016`); methodology backbone for Chapters 4–6.
- **Yin (case study research):** *Case Study Research* (`yin2009`); case-study terminology alongside Robson.
- **Hypothesis-engineering patterns (SugarLoafPLoP):** Silva et al. — `doi:10.1145/3698322.3698333` (`silva2024patterns`); pattern language for ArchHypo.

---

## 5. Gray literature and industry sources

| Source | Role in the thesis |
|--------|---------------------|
| **InfoQ** (trend reports and articles, e.g. `infoq2024trends`, `infoq2025empowering`, `infoq2025decentralized` in `references.bib`) | Industry / practitioner framing for IDP and architecture governance themes. |
| **Backstage** | https://backstage.io — official docs; CNCF incubating IDP stack used in the empirical setting (`backstage2024` in bib). |
| **CNCF / Spotify** | Backstage ecosystem pages (via backstage.io and CNCF) for portal and community context. |

**Framing rule:** gray literature and vendor/industry pages are **not peer-reviewed academic evidence**; in thesis text they must be labeled and used like industry or practitioner sources (see `writing-conventions.md`).

---

## Cursor retrieval rule

When `.memory/` files do not provide enough context, consult these sources in the following order:

1. Project repositories (section 1).
2. Canonical thesis/project PDFs and `references.bib` (section 2).
3. IME-USP institutional pages (section 3).
4. Recurring academic references (section 4).
5. Gray literature / industry documentation (section 5).

Only search more broadly after checking the sources above.
