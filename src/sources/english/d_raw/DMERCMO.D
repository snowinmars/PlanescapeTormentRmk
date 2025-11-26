// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~This red-faced old man is shouting out to the crowds around him. As you approach, his eyes light up hopefully. "A moment to spare... or a coin to spare... for some of the finest items this side of Sigil, sirrah?"~ */
  IF ~~ THEN REPLY #9365 /* ~"Let me see what you have after I check with Rob Holloway about the merchant stores."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"Hmmmph. Check with him, then return."~ */
  IF ~~ THEN REPLY #9367 /* ~"I will."~ */ EXIT
END
