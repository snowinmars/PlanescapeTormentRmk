// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~Osoba ta patrzy z dzikim strachem w oczach, jak gehrelethy odprawiają swe krwawe szaleństwo w ludzkiej ciżbie. "Ratuj nas, proszę"~ */
  IF ~~ THEN REPLY #67873 /* ~"Zobaczę, co się da zrobić..."~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"Dziękuję! Gdyby nie ty, te potwory rozszarpałyby nas na krwawe strzępy!"~ */
  IF ~~ THEN REPLY #67875 /* ~"Tak, wiem. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END
