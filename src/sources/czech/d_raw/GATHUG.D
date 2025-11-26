// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"Řekli mi, že máš volnej průchod územím Ostrých andělů, vole. Nezneužívej toho."~ */
  IF ~~ THEN REPLY #34577 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"Stůj. Někdo si s tebou jde promluvit."~ */
  IF ~~ THEN REPLY #34579 /* ~"S tím nepočítej. Než se ukáže, budu dávno pryč."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"Proč ho nepřivítat tvojí krví? Nějakou ti odpustím..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"Fajn. Počkám"~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"Zaplatils, můžeš jít. Užij si to."~ */
  IF ~~ THEN REPLY #34583 /* ~"Díky. Sbohem."~ */ EXIT
END
