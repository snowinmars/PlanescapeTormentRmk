// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~Tato osoba se pokouší odstranit předměty z kapes vycpaného panáka, který je pověšený na lešení a ověšený různými zvonky zvonečky. Pokaždé když se ta osoba dotkne panáka příliš silně, hlasitě zazvoní.~ */
  IF ~~ THEN REPLY #43014 /* ~Odejít.~ */ EXIT
END
