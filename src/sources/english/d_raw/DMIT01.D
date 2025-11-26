// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~This person is staring intently at a metal panel mounted on the chamber's wall. After a moment of fierce concentration, they wave their hands about and utter a string of impressive-sounding 'arcane syllables'... all to no effect. Nonetheless, they continue to practice diligently, far too involved with their work to speak with you.~ */
  IF ~~ THEN REPLY #43001 /* ~Leave.~ */ EXIT
END
