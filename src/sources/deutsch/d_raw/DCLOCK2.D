// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~Diese riesige Uhr sieht aus, als wäre sie teilweise mit dem schwarzen Stein in ihrer Umgebung verschmolzen... Als du das Zifferblatt der Uhr betrachtest, spürst du plötzlich ein merkwürdiges Gefühl durch deinen Hinterkopf kriechen - du hast so eine Uhr schon einmal gesehen, aber es war nicht diese. Etwas daran ist wichtig, aber du weißt nicht, was.~ */
  IF ~~ THEN REPLY #64236 /* ~Laß die Uhr in Ruhe.~ */ JOURNAL #64240 /* ~Ich habe eine große, zerstörte Uhr in der Festung gefunden... Als ich sie mir näher ansah, hatte ich das Gefühl, daß ich etwas auf ihr *sehen* sollte, aber ich weiß nicht was. Vielleicht habe ich schon früher einmal eine ähnliche Uhr wie diese gesehen.~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~Diese riesige Uhr sieht aus, als wäre sie teilweise mit dem schwarzen Stein in ihrer Umgebung verschmolzen... Anders als die andere Uhr mit der Nachricht, trägt dieses Ziffernblatt keine Nachrichten oder Zeichen. Offensichtlich ist deine vorherige Inkarnation niemals zu dieser Uhr gelangt. ~ */
  IF ~~ THEN REPLY #64237 /* ~Laß die Uhr in Ruhe.~ */ EXIT
END
