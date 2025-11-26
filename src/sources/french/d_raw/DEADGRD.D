// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEADGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEADGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52774 /* ~Tu aperçois l'un des gardes de Maudith, baignant dans une flaque de son sang. Son armure a été complètement saccagée, et la chair en dessous semble avoir été cuite sous mille soleils. Il suffoque en levant son visage ravagé vers toi. "Le deva… est fort. N'entre pas… si tu ne peux pas… le battre." Il meurt en silence.~ */
  IF ~~ THEN EXIT
END
