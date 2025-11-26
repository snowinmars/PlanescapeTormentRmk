// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~La personne que tu viens d'aborder te regarde méchamment, mécontente que tu aies interrompu sa conversation, puis te tourne résolument le dos.~ */
  IF ~~ THEN REPLY #67993 /* ~"Je souhaiterais juste te poser quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"Dans ce cas, au revoir…"~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~La réponse est cinglante : "Tu m'interromps. Bien sûr que non !"~ */
  IF ~~ THEN REPLY #67992 /* ~"Très bien. Au revoir."~ */ EXIT
END
