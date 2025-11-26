// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~Vidíš štíhlou dívku tieflingského původu, je k tobě obrácená zády. Všiml sis, že obě její ruce a stejně tak stůl před ní jsou zamazané čerstvou vrstvou něčeho, co vypadá jako růžová barva. Vypadá to, že si tě dívka vůbec nevšimla.~ */
  IF ~~ THEN REPLY #36406 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Ignoruj dívku a jdi dál.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~Když tě uslyšela, otočila hlavu a kývla na tebe. Tvář má, byť je pokrytá špínou a růžovými tečkami, překrásnou. Hezky se na tebe usmála a pak se vrátila ke své práci.~ */
  IF ~~ THEN REPLY #36408 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Nechej ji, ať maluje dál.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~Tieflingská dívka je hluboce ponořená do svého umění. Ignoruje tě.~ */
  IF ~~ THEN REPLY #36410 /* ~Nechej ji, ať maluje dál.~ */ EXIT
END
