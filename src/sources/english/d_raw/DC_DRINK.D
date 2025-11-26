// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~This person turns, eyes narrowed and sneering, as you interrupt them. Taking in your appearance at a glance, their expression softens into a mere tight-lipped frown; they give you a grudgingly respectful nod and turn away again.~ */
  IF ~~ THEN REPLY #67936 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~This person turns and barely looks up from their drink. "I can't help you, I can't answer your questions... so just leave me be. Farewell."~ */
  IF ~~ THEN REPLY #67938 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~They turn and glower at you angrily. "What? Can't you see I'm busy? If I'd wanted to speak with you, I'd have started the conversation myself." They turn away, shaking their head.~ */
  IF ~~ THEN REPLY #67940 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~This person turns and looks you over nervously. "I can't stop you from drinking here, but I'm not speaking with you - and that's that." They turn away and resume their drinking.~ */
  IF ~~ THEN REPLY #67942 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~They have nothing more to say to you.~ */
  IF ~~ THEN REPLY #67944 /* ~Leave.~ */ EXIT
END
