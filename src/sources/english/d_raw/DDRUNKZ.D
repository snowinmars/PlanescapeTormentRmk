// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~This man sways unsteadily back and forth, catches his balance for a moment, then manages a sickly, twisted smile at something just past your right ear. ~ */
  IF ~~ THEN REPLY #9864 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~He nods slowly, then manages a phlegm-filled gurgle, and a small green-colored trail of drool begins to drip from the side of his mouth, running down into his scruffy, dirt-caked beard. He looks like he's barely able to stand up, much less carry on a conversation.~ */
  IF ~~ THEN REPLY #9867 /* ~"Never mind... farewell."~ */ EXIT
END
