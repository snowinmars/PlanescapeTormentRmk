// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAPGOOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAPGOOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2839 /* ~Wir sind die Brüder, die die Tore zum Müll-Labyrinth und zum Begrabenen Dorf unten bewachen. Du mußt uns entweder überlisten oder deinen Weg freikämpfen, wenn du hier rein willst.~ */
  IF ~~ THEN REPLY #2840 /* ~Hört sich echt faszinierend an. Kann's gar nicht abwarten, das vom DESIGNER IMPLEMENTIERT zu sehen. Wau. Einen schönen TAG noch, meine Herren.~ */ EXIT
END
