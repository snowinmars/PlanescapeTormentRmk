// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~Die attraktive junge Frau lächelt freundlich. "Kann ich Euch irgendwie behilflich sein, mein Herr?"~ */
  IF ~~ THEN REPLY #49533 /* ~"Wie gelange ich in einen dieser Räume?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"Kann ich hier übernachten?~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"Im Moment nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"Dazu müßtet Ihr ein Mitglied der Gesellschaft der Empfindung sein, das von Splitter als solches bestätigt worden ist, mein Herr. Wenn Ihr mit ihm sprechen möchtet - Ihr findet ihn im Eingangsbereich der Festhalle."~ */
  IF ~~ THEN REPLY #49537 /* ~"Und kann ich hier übernachten?"~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"Die Öffentliche Festhalle vermietet oft abends nicht benutzte Kammern. Dort könntet Ihr sicher ruhen, wenn eine frei ist. Soll ich für Euch nachfragen, Herr?"~ */
  IF ~~ THEN REPLY #49540 /* ~"Ja, tu das doch bitte."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~Die attraktive junge Frau lächelt freundlich. "Ich grüße Euch, mein Herr." Sie schließt die Augen, blättert durch ein dickes Buch, schlägt eine scheinbar zufällige Seite auf und öffnet ihre Augen wieder. "Ah... Hier ist Euer Raumschlüssel..." Sie gibt dir einen kleinen Schlüssel. "Die östlichste Kammer hat ziemlich lange auf Eure Rückkehr gewartet. Möchtet Ihr Euch jetzt ausruhen, mein Herr?"~ */
  IF ~~ THEN REPLY #49542 /* ~"Ja, das wäre nett."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"Nein... aber was meinst du mit 'lange auf meine Rückkehr gewartet?'"~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"Nicht jetzt. Leb wohl."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~Die Kuratorin sieht dich merkwürdig an. "Aus meinem Buch geht hervor, daß dies Euer Schlüssel ist, mein Herr, und daß er Euch schon recht lange gehört. Wenn dem nicht so ist, dann hab ich mich vielleicht bloß geirrt. Möchtet Ihr Euch jetzt ausruhen, mein Herr?"~ */
  IF ~~ THEN REPLY #49546 /* ~"Ja, das wäre nett."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~Die attraktive junge Frau lächelt freundlich. "Ich grüße Euch, mein Herr. Möchtet Ihr Euch jetzt ausruhen?"~ */
  IF ~~ THEN REPLY #49549 /* ~"Ja, das wäre nett."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END
