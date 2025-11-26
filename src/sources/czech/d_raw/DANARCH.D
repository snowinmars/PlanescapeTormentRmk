// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~Tato osoba se na tebe zadívala s neskrývanou nedůvěrou a pak se rychle otočila. Ignorujíc tě, vrátila se k rozdělané práci. Vypadá to, jako by se celý dav chystal k nějaké ozbrojené revoltě.~ */
  IF ~~ THEN REPLY #3163 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~Stejně jako předtím, přišel jsi na to, že jsi pořádný hlupák.~ */
  IF ~~ THEN REPLY #64389 /* ~Odejít.~ */ EXIT
END
