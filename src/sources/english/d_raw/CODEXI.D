// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~What you had first taken to be a rather unassuming book held closed by a tiny brass lock is, in actuality, bound in strange leathers and enchanted bronze. It is labeled simply: 'The Codex of the Inconceivable.'~ */
  IF ~~ THEN REPLY #50400 /* ~Open it... and read!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Reverently put the book away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~You unlock the book's bindings and open it. As you glance over the tome's contents, your jaw drops. You stand, spellbound, flipping through its pages. Its contents are simply too much to be described - mere words seem powerless to explain the wonders it holds.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"That was... that... I..."~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"That was... that... I..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~You stand thoughtfully for a moment, looking down at the Codex, before closing it and reverently putting the tome away.~ */
  IF ~~ THEN REPLY #50407 /* ~Leave.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~The Codex of the Inconceivable is bound in strange leathers and enchanted bronze. Its contents are simply too much to be described - mere words seem powerless to explain the wonders it holds.~ */
  IF ~~ THEN REPLY #50409 /* ~Reverently put the book away.~ */ EXIT
END
