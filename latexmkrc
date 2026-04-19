# Root latexmkrc — tells LaTeX where to find template files,
# then loads the template's own build configuration.

ensure_path('TEXINPUTS', './template//');
ensure_path('BSTINPUTS', './template//');

# Perl 5.26+ no longer includes the current directory in @INC, so a bare
# `do 'template/latexmkrc'` can fail. Load the template rc via an explicit
# relative path (see perl526delta).
do './template/latexmkrc';
