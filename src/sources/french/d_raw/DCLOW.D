// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~Je suis l'une des constructions mécaniques de faible indice de menace qui remplissent le dédale modrone. Mon devoir est de défier les intrus qui pénètrent dans le dédale. Te sens-tu défié ?~ */
  IF ~~ THEN REPLY #2904 /* ~Pas dans l'immédiat, mais ça sera surement le cas. Adieu.~ */ EXIT
END
