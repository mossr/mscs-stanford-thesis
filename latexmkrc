ensure_path( 'TEXINPUTS', './preamble/julia_mono_listings//' );
ensure_path( 'BIBINPUTS', './references//' );

$pdf_mode = 4;
$out_dir = 'output';
$aux_dir = 'output';

$lualatex = "lualatex %O -shell-escape %S";

@default_files = ('main');