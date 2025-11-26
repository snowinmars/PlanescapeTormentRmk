// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~This lad looks like he's in a hurry. He looks at you resentfully at you detain him, and he's obviously in a hurry to leave.~ */
  IF ~~ THEN REPLY #47025 /* ~"I had a few questions for you."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"Who are you?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"What can you tell me about this area?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"Forget it. You can go on about your way."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~He pauses for a moment, but it's obvious he's not paying attention to the words. "Don't know," he says, and leaves.~ */
  IF ~~ THEN REPLY #47030 /* ~"Farewell, then."~ */ EXIT
END
