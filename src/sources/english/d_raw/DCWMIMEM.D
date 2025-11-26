// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~This gentleman is closely watching some sort of performance artist, a confused expression upon his face.~ */
  IF ~~ THEN REPLY #49757 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~The man turns to you, but the performance artist still holds most of his attention. "Odd, no? Poor fellow."~ */
  IF ~~ THEN REPLY #49760 /* ~"What's going on?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"Never mind that. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~He continues to watch the silent, black-garbed man, shaking his head in response to you. "Not now, sir, please. Farewell."~ */
  IF ~~ THEN REPLY #49764 /* ~"Wait... tell me what's going on here, at least."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"Just a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"Really, sir, come now. I'm sure there are many people you can speak with rather than me. Leave me to watch this in peace, will you? Farewell."~ */
  IF ~~ THEN REPLY #49768 /* ~"Wait... tell me what's going on here, at least."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"Well you see... that man is a performance artist. His act consisted of various silent impersonations, both of physical actions - pulling on a rope, being trapped in an invisible box - and of passersby. He happened to mock a passing mage's unusual walk and now seems to be cursed: he actually *is* trapped in an invisible box, now, and cannot speak. Ironic, no?"~ */
  IF ~~ THEN REPLY #49771 /* ~"A bit, yes. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"That's strange, all right. Farewell."~ */ EXIT
END
