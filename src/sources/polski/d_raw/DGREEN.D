// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~Widzisz coś, co wydaje się być zwykłym Lim-Limem. Trudno uwierzyć, że to małe, śliczne stworzenie z taką łatwością zgładziło pięciu uczniów czarnoksiężnika.~ */
  IF ~~ THEN REPLY #51178 /* ~Kopnij Lim-Lima.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Zostaw go w spokoju.~ */ EXIT
END
