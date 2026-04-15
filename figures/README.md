# Figures

Store raster or vector assets for the thesis (and optionally the presentation) here. Supported formats include `.pdf`, `.png`, `.jpg`, and `.svg` (depending on your TeX setup).

LaTeX resolves paths via `\graphicspath{{figures/},{template/logos/}}` in `thesis.tex` — use the **basename only** in `\includegraphics` (no `figures/` prefix).

All figure environments under `chapters/` currently use real `\includegraphics` references. The `\placeholder` macro in `thesis.tex` remains available for early drafts if needed.

## Thesis figures in this directory

| File | Chapter (indicative) |
|------|----------------------|
| `conceptual-framework.png` | Research design — Arch-Stage experimentation framework |
| `archhypo-big-picture.png` | Research design — ArchHypo overview |
| `entity-hypotheses-tab.png` | Results — Backstage integration / EntityHypothesesTab |
| `prioritization-dashboard.png` | Results — prioritization dashboard refinement |
| `evolution-chart.png` | Results — uncertainty/impact evolution chart |
| `hypothesis-form.png` | Results — hypothesis creation form refinements |

## Usage example

```latex
\begin{figure}[htb]
  \centering
  \includegraphics[width=0.95\textwidth]{conceptual-framework}
  \caption{Short description for the list of figures.}
  \label{fig:conceptual-framework}
\end{figure}
```

## Subfigures example

```latex
\begin{figure}[htb]
  \centering
  \begin{subfigure}[b]{0.48\textwidth}
    \centering
    \includegraphics[width=\textwidth]{example-before}
    \caption{Before.}
    \label{fig:example-before}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.48\textwidth}
    \centering
    \includegraphics[width=\textwidth]{example-after}
    \caption{After.}
    \label{fig:example-after}
  \end{subfigure}
  \caption{Side-by-side comparison.}
  \label{fig:example-comparison}
\end{figure}
```

## Naming convention

Use lowercase, hyphen-separated names that describe the content. Current thesis assets follow that pattern, for example:

- `conceptual-framework.png`
- `archhypo-big-picture.png`
- `entity-hypotheses-tab.png`
- `prioritization-dashboard.png`
- `evolution-chart.png`
- `hypothesis-form.png`
