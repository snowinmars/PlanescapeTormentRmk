// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~Jestem "zielonym" abiszai. Dostaję mdłości od samego patrzenia na siebie.~ */
  IF ~~ THEN REPLY #3330 /* ~Ja też. To znaczy... mam na myśli siebie.~ */ EXIT
END
