$pdf_mode = 1;  # tex -> pdf
$pdflatex = 'lualatex  --interaction=nonstopmode -shell-escape --synctex=1  %O %S';
$postscript_mode = $dvi_mode = 0;

@default_files = ('Ragni2016.tex');

@latex = 'latex --interaction=nonstopmode -shell-escape --synctex=1';
@pdflatex = 'lualatex --interaction=nonstopmode -shell-escape --synctex=1';
