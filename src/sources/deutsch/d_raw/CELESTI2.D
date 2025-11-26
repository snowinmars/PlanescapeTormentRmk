// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CELESTI2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~CELESTI2~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~Du hälst Himmelsfeuer in den Händen, seine Klinge lodert mit weißem Feuer, das sich in deine Gedanken brennt. Die Erkenntnis, daß du diese Waffe *einmal* nach deinen Bedürfnissen formen kannst, geht dir plötzlich strahlend hell auf.~ */
  IF ~~ THEN REPLY #64490 /* ~Bring sie mit deiner Willenskraft dazu, ein Hammer zu werden.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~Bring sie mit deiner Willenskraft dazu, eine Axt zu werden.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~Bring sie durch Willenskraft dazu, eine Keule zu werden.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~Bring sie mit deiner Willenskraft dazu, Stachelhandschuhe zu werden.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~Bring sie mit deiner Willenskraft dazu, ein spitzer Dolch zu werden.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~Laß die Klinge im Moment, wie sie ist.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~Die schwere Klinge liegt unbeweglich in deinen Händen, eine Masse silbernen Metalls von ausgesuchter Schönheit. Sie tut nichts, egal wie sehr du deine Willenskraft anstrengst.~ */
  IF ~~ THEN REPLY #64497 /* ~Laß es in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~Die Klinge der Waffe dehnt sich, die Schneiden werden für einen Moment lang stumpf, und das Metall fließt mit unglaublicher Geschwindigkeit zum Kopf des Schwertes. In wenigen Augenblicken ist die Verwandlung in einen wohlgeformten Hammer abgeschlossen. Er ist ein wunderschönes Stück.~ */
  IF ~~ THEN REPLY #64507 /* ~"Ausgezeichnet."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~Die Klinge der Waffe beginnt sich zu dehnen, die Schneiden verschwinden, als die Klinge sich zu einem Zylinder formt. Metall fließt mit unglaublicher Geschwindigkeit zum Kopf des Schwertes. In wenigen Augenblicken hat es sich in eine Axt verwandelt. Sie ist ein besonders schönes Stück.~ */
  IF ~~ THEN REPLY #64505 /* ~"Ausgezeichnet."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~Das Heft des Schwertes verschmilzt mit der Klinge, die Schneiden werden stumpf und runden sich zu einer wunderbaren Form, die mit ähnlichen Mustern verziert ist wie zuvor die Klinge. In wenigen Augenblicken ist aus dem Schwert eine exquisite Keule geworden.~ */
  IF ~~ THEN REPLY #64506 /* ~"Ausgezeichnet."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~Deine Augen können der Transformation von der Klinge in Handschuhe nicht ganz folgen, aber du spürst, wie das Metall sich in deinen Händen bewegt. Als du die Hände auseinandernimmst, hältst du ein Paar silberne Handschuhe in Händen, die wunderschön aussehen - und tödlich.~ */
  IF ~~ THEN REPLY #64504 /* ~"Ausgezeichnet."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~Die Klinge des Schwertes verdichtet sich, sie scheint zu schrumpfen, und in wenigen Augenblicken hältst du eine Mini-Version von Trias' Schwert in Händen, mit einem kompletten Griff in Handgröße. Es fühlt sich sehr handlich an.~ */
  IF ~~ THEN REPLY #64503 /* ~"Ausgezeichnet."~ */ EXIT
END
