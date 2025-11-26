// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~Les yeux de cette personne sont écarquillés de terreur en voyant les gehreleths massacrer la foule. "Je t'en prie, sauve-nous !"~ */
  IF ~~ THEN REPLY #67873 /* ~"Je vais voir ce que je peux faire…"~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"Merci ! Sans toi, ils nous auraient taillés en pièces !"~ */
  IF ~~ THEN REPLY #67875 /* ~"Je sais. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END
