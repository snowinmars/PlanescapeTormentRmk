// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"What the... I *know* I locked that door behind me! Get out, will you?"~ */
  IF ~~ THEN REPLY #67948 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"Mayhap it's my own blasted fault if I forgot to lock the door... but I'd rather you weren't in my room just now. Out, please." They motion towards the door.~ */
  IF ~~ THEN REPLY #67950 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~They stare at you angrily and point towards the door, unwilling to say even a word to you. ~ */
  IF ~~ THEN REPLY #67952 /* ~Leave.~ */ EXIT
END
