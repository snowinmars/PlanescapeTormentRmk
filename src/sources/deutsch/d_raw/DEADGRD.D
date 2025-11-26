// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEADGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEADGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52774 /* ~Du siehst eine der Wachen von Verdammnis, der in einer Lache seines eigenen Blutes liegt. Seine Rüstung ist völlig zerstört, das Fleisch darunter sieht aus, als sei es in der Hitze von tausend Sonnen gebacken. Er japst dich aus den Ruinen seinen Gesichts an: "Der Deva... ist stark. Gehe nicht hinein... bis du ihn... besiegen kannst." Er stirbt still.~ */
  IF ~~ THEN EXIT
END
