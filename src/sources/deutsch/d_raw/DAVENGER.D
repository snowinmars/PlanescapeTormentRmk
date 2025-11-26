// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~Dieser Mann nimmt dich nicht wahr und hat seine Augen fest auf den Richter auf dem Podium gerichtet. Er preßt die Lippen fest zusammen, und seine Fingerknöchel sind schneeweiß. Er lacht geistlos in sich hinein und bemerkt nicht einmal deine Anwesenheit.~ */
  IF ~~ THEN REPLY #67882 /* ~"Dann vergiß es."~ */ EXIT
END
