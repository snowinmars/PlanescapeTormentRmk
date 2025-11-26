// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"He! In diesem Bereich ist der Zutritt verboten! Du kannst hier nicht rein!"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"Wie bekomme ich die Erlaubnis?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Zeig der Wache das Zeichen: "Ich habe ein Zeichen." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Lüge: "Ich habe die Befugnis."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"Du kannst mit einem hohen Tier sprechen, oder du kannst versuchen, an uns vorbeizukommen." Er lächelt grimmig. "Die letztere Möglichkeit würde ich allerdings nicht empfehlen."~ */
  IF ~~ THEN REPLY #64559 /* ~"Ich versuch es trotzdem."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"Okay, okay. Dann geh ich halt wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~Er betrachtet das Zeichen genau. "Mein Fehler, Sir. Kann ich Euch sonst noch irgendwie helfen?"~ */
  IF ~~ THEN REPLY #64561 /* ~"Nein. Einen schönen Tag noch."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"Nein."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"Dann mußt du mir es zeigen. Er wartet, daß du etwas vorzeigst, und sagt dann: "Wenn du mit mir Spielchen spielen willst, dann wirst du schnell feststellen, daß ich mich nicht sehr lange konzentrieren kann - und noch kürzer beherrschen kann."~ */
  IF ~~ THEN REPLY #64563 /* ~"Dann solltest du vielleicht etwas daran ändern."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"Schon gut. Nicht gleich aggressiv werden. Leb wohl."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"Kann ich Euch helfen, Sir?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"Wie komm ich durch diese Türen?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Zeig der Wache das Zeichen: "Ich habe ein Zeichen." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Lüge: "Ich habe die Befugnis, durch die Türe zu gehen."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"Dann vergiß es."~ */ EXIT
END
