// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~Vidíš muže ve starých roztrhaných šatech. Když se k němu blížíš, zastaví se a kouká na tebe.~ */
  IF ~~ THEN REPLY #1560 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"Máš nějakej *problém,* chcíplino...? Nebo problémy *vyhledáváš'*?" Plivne ti před nohy. "Vodsuň tu svou zjizvenou prdel nebo ti nějaká jizva přibude."~ */
  IF ~~ THEN REPLY #1562 /* ~"Buď zticha. Právě chci položit otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Napadni ho.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Posmívá se. "Sem si jistej, že jo a pro takový jako seš ty nemám žádný vodpovědi. Jdi do prdele!"~ */
  IF ~~ THEN REPLY #1565 /* ~Napadni ho.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"Pak tedy sbohem."~ */ EXIT
END
