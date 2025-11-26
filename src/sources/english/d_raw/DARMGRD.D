// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"Hey! That area's off-limits! You're not allowed in there!"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"How do I get permission?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Show the token to the guard: "I've got a token." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Lie: "I've got authorization."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"Forget it, then."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"You can speak to a high-up, or you can try to get through us." He smiles grimly. "I wouldn't recommend that last option, though."~ */
  IF ~~ THEN REPLY #64559 /* ~"I'll try it anyway."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"All right, all right. I'll just be leaving, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~He examines the token closely. "My mistake, sir. May I help you with anything else?"~ */
  IF ~~ THEN REPLY #64561 /* ~"No. Good day."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"No."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"Then you have to show it to me." He waits for you to produce something, and then says, "If you're going to try to play games, you'll find that I have a very short attention span - and a very short temper."~ */
  IF ~~ THEN REPLY #64563 /* ~"Then maybe you ought to do something about it."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"All right. No need to get belligerent. Farewell."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"May I help you, sir?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"How do I get through those doors?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Show the token to the guard: "I've got a token." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Lie: "I've got authorization to get through the door."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"Forget it, then."~ */ EXIT
END
