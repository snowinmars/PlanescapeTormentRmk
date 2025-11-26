// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~Cet habitant de la Ruche regarde les dabus travailler. Il se gratte la tête et se tourne vers toi. "Par la Dame, je ne comprends pas ce qu'ils font à ce bâtiment… toujours à démolir des trucs, à les rebâtir… ni rime ni raison dans tout ça, si tu veux mon avis."~ */
  IF ~~ THEN REPLY #9363 /* ~"Peu importe, alors."~ */ EXIT
END
