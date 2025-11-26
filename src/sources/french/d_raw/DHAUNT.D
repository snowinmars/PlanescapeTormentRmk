// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~Je suis un repaire mouvant près de Sigil et d'autres régions. Je ne sais pas si je ferai partie du jeu.~ */
  IF ~~ THEN REPLY #2930 /* ~La vie est pleine d'incertitudes… Et ça n'a pas l'air de s'arranger après la mort.~ */ EXIT
END
