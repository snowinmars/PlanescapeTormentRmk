// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~Je suis une construction mécanique d'indice de menace élevé, faite à partir du dédale modrone pour défier les intrus. Je ne suis pas sûre de faire partie du script, mais voilà le début en cas de besoin.~ */
  IF ~~ THEN REPLY #2902 /* ~Eh bien, ça m'a fait plaisir de parler avec toi. Tu t'en sortiras sûrement très bien… Euh, une fois que le créateur t'aura terminé.~ */ EXIT
END
