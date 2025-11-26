// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~Vidíš něco, co vypadá jako obyčejný Lim-Lim. Těžko uvěřit, že tohle malé roztomilé stvoření zmasakrovalo bez problémů pět kouzelníků.~ */
  IF ~~ THEN REPLY #51178 /* ~Nakopni Lim-lima.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Nech to být.~ */ EXIT
END
