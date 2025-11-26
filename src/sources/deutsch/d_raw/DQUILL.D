// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~Ich bin ein betrunkener Lebemann, der gerne durch den Bezirk der Kuratoren streunt und sich hier und da in Schlägereien verwickeln läßt. Wenn ich dich treffe, bist du dran. Paß also auf.~ */
  IF ~~ THEN REPLY #2973 /* ~Nein, ich glaube eher, DU solltest dich in Acht nehmen.~ */ EXIT
END
