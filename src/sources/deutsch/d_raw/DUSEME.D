// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Dieser ältere Mann starrt in seinen Bierkrug, und in sein Gesicht ist das Elend gegraben. Der zerbeulte Zinnkrug sieht ungewöhnlich aus... Er ist mit feinen Gravuren von seltsamen Runen und bärtigen Gesichtern sowie mit dünnem Frost bedeckt. Er sieht auf, als du näherkommst. "Seid gegrüß... mein Herr..." Er scheint etwas besäuselt zu sein.~ */
  IF ~~ THEN REPLY #3023 /* ~Tätowierung der Boshaftigkeit~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"Ist irgend etwas nicht in Ordnung?"~ */ EXIT
END
