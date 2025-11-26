// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~Grrr. Moi gros Cornugon. Moi faire mal. Moi faire beaucoup mal.~ */
  IF ~~ THEN REPLY #3332 /* ~Moi aussi. Enchanté de faire ta connaissance.~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~N'es-tu pas censé être beaucoup plus rusé ? Je veux dire, tu ES un fiélon talentueux qui aiguise ses maléfices et son intelligence depuis des millénaires, non ?~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~Euh… ben oui, mais c'est tellement plus facile de grogner… ça impressionne les péquenauds.~ */
  IF ~~ THEN EXIT
END
