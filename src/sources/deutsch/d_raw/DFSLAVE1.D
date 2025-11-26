// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~Du siehst eine junge Frau. Sie hat einen finsteren Gesichtsausdruck und wirkt verärgert. Sie grinst dich höhnisch an, als du näher kommst. "Und was magst du wohl wollen?"~ */
  IF ~~ THEN REPLY #36002 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~Sie runzelt die Stirn und stützt ihre Hände in die Hüften. "Pack ein, Dussel! Sieh zu, daß du hier wegkommst."~ */
  IF ~~ THEN REPLY #36005 /* ~"Was heißt das?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"Du bist ganz schön überheblich."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"OK, ich glaub' ich geh dann mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~Sie zeigt dir die Zähne und macht eine rüde Geste. "Soll heißen, mach dich aus dem Staub, Fusler! Ich hab' dir nix zu sagen." Sie wirft dir einen herausfordernden Blick zu.~ */
  IF ~~ THEN REPLY #36010 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"OK, ich glaub' ich geh dann mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~Sie sieht dich mit einem bösen Lächeln an. "Und ich hab' die Antwort für dich... Nimm dir einen Koffer und pack ein!" Sie macht noch eine rüde Geste in deine Richtung.~ */
  IF ~~ THEN REPLY #36013 /* ~"Du bist ganz schön überheblich."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"OK, ich glaub' ich geh dann mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~Sie lacht. "Ja, ja, und wir kennen uns noch gar nicht. Und nun steck dich dorthin, wo's Tageslicht nie hindringt!"~ */
  IF ~~ THEN REPLY #36016 /* ~"OK, ich glaub' ich geh dann mal. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~Du siehst eine junge Frau. Sie hat einen finsteren Gesichtsausdruck und wirkt zornig. Sie grinst dich höhnisch an, als du näher kommst. "Was willst du denn von mir?"~ */
  IF ~~ THEN REPLY #36018 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"Nichts, leb wohl."~ */ EXIT
END
