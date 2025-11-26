// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~Tu vois un ancien esclave thokola particulièrement robuste. Il est couvert de sang de monstres des Carcères. "On tue les monstres, eh ? C'est pas si terrible… C'est toujours mieux que d'être esclave. Ça nous plaît, eh ?"~ */
  IF ~~ THEN REPLY #50970 /* ~"Continue à bien travailler."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"Ha ! Ça nous plaît de tuer, eh ?"~ */
  IF ~~ THEN REPLY #50972 /* ~"Continue… tu y es presque…"~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~Tu vois un esclave thokola particulièrement robuste. Il te fixe avec des yeux morts et emplis de haine. Il pousse un grognement à chaque fois que tu lui parles, mais refuse de te répondre.~ */
  IF ~~ THEN REPLY #50974 /* ~"Alors, au revoir…"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~Le thokola se contente de grogner.~ */
  IF ~~ THEN REPLY #50976 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~Tu vois un esclave thokola particulièrement robuste. Il te fixe avec des yeux morts et emplis de haine. Il pousse un grognement à chaque fois que tu lui parles, mais refuse de te répondre.~ */
  IF ~~ THEN REPLY #50978 /* ~"Alors, au revoir…"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~Le thokola se contente de grogner.~ */
  IF ~~ THEN REPLY #50980 /* ~"Alors, au revoir."~ */ EXIT
END
