// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~Cet homme rougeaud harangue la foule. À ton approche, ses yeux s'éclairent d'une lueur d'espoir. "T'aurais un moment… ou une pièce… à consacrer à l'un des plus beaux articles de Sigil, m'sieur ?"~ */
  IF ~~ THEN REPLY #9365 /* ~"Je reviendrai voir ce que tu as après être allé voir les boutiques des marchands avec Louis Creuchemin."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"Hmmmph. Vois avec lui, puis reviens."~ */
  IF ~~ THEN REPLY #9367 /* ~"Oui."~ */ EXIT
END
