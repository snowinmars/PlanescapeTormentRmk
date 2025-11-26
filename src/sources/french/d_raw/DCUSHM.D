// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~Cet homme-ci semble accorder toute son attention aux étals de marchandise. Il t'ignore à ton approche.~ */
  IF ~~ THEN REPLY #9351 /* ~"Euh… Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END
