// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~Ten stary mężczyzna o rumianej twarzy, wykrzykuje do otaczającego go tłumu. Kiedy się zbliżasz, jego oczy rozświetlają się nadzieją. "Czy poświęcisz panie chwilkę... czy poświęcisz panie grosik... na to co najlepsze w tej części Sigil?"~ */
  IF ~~ THEN REPLY #9365 /* ~"Zobaczę co masz, ale najpierw sprawdzę u Roba Holloway'a.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"Hmmm. Sprawdź u niego, a potem wróć."~ */
  IF ~~ THEN REPLY #9367 /* ~"Poświęcę."~ */ EXIT
END
