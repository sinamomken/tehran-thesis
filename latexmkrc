$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode %O %S';
$pdf_mode = 1;
$dvi_mode = 0;
$bibtex_use = 2;
$postscript_mode = 0;
$bibtex_silent_switch = "";
$bibtex = 'bibtex8 -W -c cp1256fa %O %B';

add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("xindy -L persian-variant3 -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}

add_cus_dep('blo', 'bls', 0, 'makeblo2bls');
sub makeblo2bls {
    system("xindy -L persian-variant3 -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.blg -o '$_[0]'.bls '$_[0]'.blo");
}

add_cus_dep('acn', 'acr', 0, 'makeacn2acr');
sub makeacn2acr {
    system("xindy -L english -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.alg -o '$_[0]'.acr '$_[0]'.acn");
}

push @generated_exts, 'glo', 'gls', 'glg', 'glsdefs';
push @generated_exts, 'blo', 'bls', 'blg';
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'loa', 'lol';
push @generated_exts, 'bbl', 'brf';
push @generated_exts, 'mw';
push @generated_exts, 'tdo';
$clean_ext .= ' %R.ist %R.xdy';
