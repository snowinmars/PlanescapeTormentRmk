// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~Der Wachposten verengt die Augen und sieht in deine Richtung, als du näherkommst, sagt aber nichts.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"Was liegt hinter diesem Bogen?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"Was liegt hinter diesem Bogen?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Ignoriere ihn und geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"Pharod und sein Hof, Schleifer. Paß auf dich auf da drin und hüte deine Zunge. Er hat eine stinkmiserable Laune."~ */
  IF ~~ THEN REPLY #56963 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"Nein, eigentlich nicht. Ich weiß nicht mal, warum ich hier überhaupt rumstehe." Er zuckt die Schultern.~ */
  IF ~~ THEN REPLY #56967 /* ~"Leb wohl."~ */ EXIT
END
