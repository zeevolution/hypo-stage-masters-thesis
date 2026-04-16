# Hypo-Stage: Tool-Supported Architectural Hypothesis Engineering in Professional Software Development Teams — A Case Study

Master's thesis in Computer Science at **IME-USP** (Institute of Mathematics and Statistics, University of São Paulo).

| | |
|---|---|
| **Author** | José Gonçalves Lima Neto |
| **Advisor** | Prof. Dr. Paulo Roberto Miranda Meirelles |
| **Program** | Graduate Program in Computer Science — IME-USP |
| **Document year** | 2026 |
| **Repository status** | Near-final manuscript (spring 2026); PDFs in `main` track the latest integrated build |

## Read the Documents

| Document | Description |
|---|---|
| **[thesis.pdf](thesis.pdf)** | Full thesis (latest compiled version committed to `main`) |
| **[presentation.pdf](presentation.pdf)** | Defense presentation slides (Beamer / IME theme) |

## About

This dissertation reports a **flexible, multiple case study** of **[Hypo-Stage](https://github.com/ArchHypo/hypo-stage)** — a **Backstage** plugin that supports the **ArchHypo** technique for architectural hypothesis engineering — used by **two professional software development teams** (Product and Platform) over **approximately nine calendar weeks** (five consecutive **two-week** agile sprints between the first and last hypothesis registration dates in Hypo-Stage) in a large organization. The study combines **formative evaluation** and **action-research** elements: empirical observations drive **iterative refinements** to the tool, which are traced to repository commits. The manuscript includes full **Results and Refinements** (Chapter 5), a discursive **Conclusion** (Chapter 6), **Appendix A** (research instruments and training communication), and **Appendix B** (anonymized hypothesis records and technical-plan catalog).

## Template

This repository is based on the [IME-USP LaTeX template](https://github.com/ccsl-usp/modelo-latex) (`ccsl-usp/modelo-latex`) by Jesús P. Mena-Chalco, Fabio Kon, Paulo Feofiloff, and Nelson Lago.

## Context and Lineage

### Qualification work

The author's qualification research (**December 2024**) explored centralization vs. decentralization of software architecture decision-making through a systematic mapping study and a multivocal literature review. The committee recommended narrowing the scope to specific teams and a concrete artifact.

### ArchHypo

The **ArchHypo** technique (Silva et al., [IEEE Software 2024](https://doi.org/10.1109/MS.2024.3383628); [IEEE TSE 2025](https://doi.org/10.1109/TSE.2024.3520477)) applies hypotheses engineering to manage software architecture uncertainty. Prior evaluations showed value but also **adoption barriers** — especially the learning curve and cognitive load of manual application.

### Hypo-Stage (artifact)

**Hypo-Stage** was first designed and implemented as an undergraduate capstone project by Pedro Henrique Mariano Corrêa, supervised by the author and co-supervised by Prof. Paulo Meirelles. The initial design is documented in the [senior thesis](https://github.com/ArchHypo/hypo-stage-senior-thesis) repository; the code boundary referenced in this work is commit [`ceee509`](https://github.com/ArchHypo/hypo-stage/commit/ceee509776508081ebdd473c2c4f710b8ef55947) in [`ArchHypo/hypo-stage`](https://github.com/ArchHypo/hypo-stage).

**This master's thesis** treats Hypo-Stage as an existing artifact and contributes **empirical evaluation**, **thematic analysis** of registered hypotheses (including emerging pattern families), and **evidence-driven refinement** of the tool and usage guidance. Commits after `ceee509` in the plugin repository include refinements motivated by the field study.

## Repository structure

```
.
├── thesis.pdf                  # Compiled thesis (tracked on main when rebuilt)
├── thesis.tex                  # Thesis entry point
├── presentation.pdf            # Compiled presentation slides
├── presentation.tex            # Beamer entry point
├── references.bib              # Bibliography (BibLaTeX / biber)
├── chapters/                   # Main text (input from thesis.tex)
│   ├── abstract.tex            #   Abstract (EN) + Resumo (PT) + keywords
│   ├── 01-introduction.tex     #   Chapter 1
│   ├── 02-background.tex         #   Chapter 2
│   ├── 03-related-work.tex       #   Chapter 3
│   ├── 04-research-design.tex    #   Chapter 4
│   ├── 05-results-and-refinements.tex  #   Chapter 5 (included via \include)
│   ├── 05-results.tex            #   Legacy stub (not included in thesis.tex)
│   ├── 06-conclusion.tex         #   Chapter 6
│   ├── 06-discussion.tex         #   Optional scaffold (not included in thesis.tex)
│   └── appendix-a-instruments.tex    #   Appendix A
├── appendixes/
│   └── app-b-hypotheses-data.tex     #   Appendix B (hypothesis data)
├── figures/                    # Figures (.pdf, .png, .jpg, …)
├── template/                   # IME template (styles, logos, latexmkrc)
├── latexmkrc                   # Root build config (loads template/latexmkrc)
├── .github/workflows/          # CI: build thesis + presentation on push
├── LICENSE
└── README.md
```

## Building the PDFs

### Prerequisites

You need a TeX Live installation with `latexmk` and `biber`.

#### macOS

**Option A: Full MacTeX (recommended, ~4 GB)**

This is the easiest option. It installs everything you need in one step, including `latexmk`, `biber`, all fonts, and the TeXShop editor.

```bash
# Install via Homebrew
brew install --cask mactex

# IMPORTANT: restart your terminal after installation, or run:
eval "$(/usr/libexec/path_helper)"

# Verify installation
latexmk --version
biber --version
```

Alternatively, download the installer directly from [tug.org/mactex](https://www.tug.org/mactex/).

**Option B: BasicTeX (lightweight, ~100 MB) + manual packages**

If you prefer a minimal install, use BasicTeX and add the required packages manually:

```bash
# Install BasicTeX
brew install --cask basictex

# Restart your terminal, then install required tools and packages
eval "$(/usr/libexec/path_helper)"
sudo tlmgr update --self
sudo tlmgr install \
  latexmk biber \
  collection-fontsrecommended \
  collection-langenglish \
  collection-langportuguese \
  biblatex biblatex-abnt \
  booktabs caption csquotes enumitem etoolbox fancyhdr float \
  footmisc framed geometry hyperref indentfirst microtype \
  parskip pgfplots setspace subcaption tcolorbox titlesec \
  todonotes xcolor xpatch siunitx adjustbox makecell \
  threeparttable colortbl multirow longtable pdfpages \
  appendix datetime2 contour pgfgantt beamer \
  beamertheme-metropolis libertinus sourcecodepro
```

If you hit a missing `.sty` file during compilation, find and install it with:

```bash
tlmgr search --global --file missing-file.sty
sudo tlmgr install package-name
```

**Recommended editor setup:** [VS Code](https://code.visualstudio.com/) with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension works well on macOS. After installing MacTeX or BasicTeX, the extension automatically detects `latexmk` and provides build-on-save, PDF preview, and SyncTeX (click PDF to jump to source).

#### Debian / Ubuntu

```bash
sudo apt-get update
sudo apt-get install -y \
  biber \
  latexmk \
  texlive-plain-generic \
  texlive-latex-base \
  texlive-luatex \
  lmodern \
  fonts-lmodern \
  texlive-latex-recommended \
  texlive-fonts-recommended \
  texlive-latex-extra \
  texlive-fonts-extra \
  texlive-bibtex-extra \
  texlive-science \
  texlive-lang-english \
  texlive-lang-portuguese
```

#### Windows

Install [TeX Live](https://www.tug.org/texlive/) (full scheme) or [MiKTeX](https://miktex.org/) with the equivalent packages. Both include `latexmk` and `biber`.

### Compile

From the repository root:

```bash
# Build the thesis
latexmk -pdf thesis.tex

# Build the presentation
latexmk -pdf presentation.tex

# Clean all build artifacts for a given job
latexmk -C thesis.tex
latexmk -C presentation.tex
```

### Continuous Integration

Pushes to the default branch run a [GitHub Actions workflow](.github/workflows/latex.yml) that compiles the thesis and the presentation and uploads each PDF as a workflow artifact.

## License

The LaTeX template files are distributed under the [MIT License](LICENSE). The thesis content is by José Gonçalves Lima Neto, licensed under [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).
