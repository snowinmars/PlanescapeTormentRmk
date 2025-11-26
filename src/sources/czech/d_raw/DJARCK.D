// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~I'm Jarckel the three-faced. The theory is that you'll get three of me and have puzzles based on the drinks you give me. Maybe I'll give you something cool for it.~ */
  IF ~~ THEN REPLY #3368 /* ~Maybe? Maybe if you don't I'll punch you in your ratty, zombified, stupid human face.~ */ EXIT
  IF ~~ THEN EXIT
END
