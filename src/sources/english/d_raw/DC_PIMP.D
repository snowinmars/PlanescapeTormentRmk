// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~The burly Curst guardsman looks you up and down. "It's not me you want to be talking to, cutter... it's them." He motions to a number of attractive - if somewhat tawdry looking - women in the room behind him. "And be kind when you do, cutter... don't play rough with the ladies."~ */
  IF ~~ THEN REPLY #67975 /* ~"Actually, it *is* you I wanted to talk to..."~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~He shakes his head; through the narrow slit in his helm you can see his eyes roll. He doesn't speak another word to you.~ */
  IF ~~ THEN REPLY #67977 /* ~Leave.~ */ EXIT
END
