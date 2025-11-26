// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~Ich bin ein Händler im Unteren Bezirk. Ich arbeite auf dem Straßenmarkt direkt vor dem Versteigerungspodest.~ */
  IF ~~ THEN REPLY #3029 /* ~Ich hoffe, daß ich irgendwann auch mal was von euch Kerlen KAUFEN kann.~ */ EXIT
END
