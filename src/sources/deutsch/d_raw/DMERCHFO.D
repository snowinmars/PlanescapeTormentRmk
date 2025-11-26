// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~Diese alte Frau mit schrumpligem Gesicht schreit in die Menschenmenge. Als du näherkommst, lächelt sie und hält irgendwelches Zeug hoch, das wie eine Handvoll toter Ratten und Vögel aussieht. "Seid Ihr hungrig, Sir?"~ */
  IF ~~ THEN REPLY #9369 /* ~"Nein danke, nicht heute."~ */ EXIT
END
