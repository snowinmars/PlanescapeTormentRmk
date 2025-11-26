// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~The man gives a sheepish smile and half-bow at your approach. "For a moment, I thought you one of my employer's men when you walked in. Was I ever relieved to see you were not!"~ */
  IF ~~ THEN REPLY #51724 /* ~"Why? Why are you here?"~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"That's good. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~The man nods guiltily. "Yes, yes, I am still here." He shrugs.~ */
  IF ~~ THEN REPLY #51727 /* ~"Why?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"Yes, I noticed that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"I could not stand my work at the Records Sub-Hall Seven for another moment, so I darted off. Had I simply gone home, my employer would've sent a messenger, that... that tyrant! That is why I am hiding here, of course. I intend to lounge about for a bit longer before returning to my cramped little desk."~ */
  IF ~~ THEN REPLY #51730 /* ~"Farewell, then."~ */ EXIT
END
