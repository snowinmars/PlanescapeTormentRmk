// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~"Ich bin einer der Trauernden, die vor dem Staubmenschen-Kiosk in AR0200 (Stock B) singen. Wir 'betrauern die Lebenden' und der Spieler kann uns bitten, für die zu trauern, die Angehörige verloren haben."~ */
  IF ~~ THEN REPLY #7085 /* ~"Danke für die Auskunft."~ */ EXIT
END
