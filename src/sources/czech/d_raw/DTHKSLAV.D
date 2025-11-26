// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~Vidíš velkého thokolího ex-otrokáře. Je pokrytý krví monster Carceri. "Zabíjíme příšery, eh? To ne tak zlý... zabíjet místo zotročovat. Líbí nám se, eh?"~ */
  IF ~~ THEN REPLY #50970 /* ~"Jen tak dál."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"Ha! Rádi zabíjíme, eh?"~ */
  IF ~~ THEN REPLY #50972 /* ~"Jen tak dál... už to skoro je..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~Vidíš hřmotného thokolího otrokáře. Jeho oči jsou mrtvé, ale plné nenávisti. Ať řekneš cokoli, jenom bručí. Neodpovídá.~ */
  IF ~~ THEN REPLY #50974 /* ~"Tak tedy sbohem..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~Thokola na tebe jenom zabručel.~ */
  IF ~~ THEN REPLY #50976 /* ~"Tak sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~Vidíš hřmotného thokolího otrokáře. Jeho oči jsou mrtvé, ale plné nenávisti. Ať řekneš cokoli, jenom bručí. Neodpovídá.~ */
  IF ~~ THEN REPLY #50978 /* ~"Tak tedy sbohem..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~Thokola na tebe jenom zabručel.~ */
  IF ~~ THEN REPLY #50980 /* ~"Tak sbohem."~ */ EXIT
END
