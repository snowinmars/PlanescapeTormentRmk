// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~Ohne einen Ton zu sagen, zückt dieser schwerbewaffnete Mann seine Waffe und holt aus.~ */
  IF ~~ THEN REPLY #10482 /* ~Greif ihn an.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~Flieh.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~Dieser hünenhafte Mann ist schwer bewaffnet. Er scheint auch überaus wachsame Augen zu haben - ihm entgeht nichts von dem, was um ihn herum passiert. Er scheint auch kein Interesse daran zu haben, mit dir zu sprechen.~ */
  IF ~~ THEN REPLY #10485 /* ~"Ich würde dir gern ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"Hallo?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~Der Mann starrt dich herablassend an. Dabei blinzelt er langsam. Er wendet sich ab, ohne ein Wort mit dir zu wechseln.~ */
  IF ~~ THEN REPLY #10490 /* ~"Sprich mit mir, oder ich reiß' dir's Herz raus, du elender Haufen Blech."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"Hallo?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"Na dann leb wohl. Meine Antworten werde ich auch woanders finden."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~Du vernimmst ein unterirdisches Grollen, das aus der Tiefe des Brustkorbs dieses Mannes kommt. Er streichelt sanft über seine Waffe und starrt dich mit neuem Interesse an.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"Wenn du's so willst. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~Greif ihn an.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~Zu deinem Erstaunen reagiert der stumme Riese. Er beugt sich nach vorn und fixiert dich mit seinen leuchtenden Augen, ohne auch nur ein einziges Mal zu blinzeln. Seine tiefe Stimme ertönt wie ein Grollen aus seiner riesigen Brust: "Vhailor war der beste von uns allen. Ein wahrer Gnadentöter. Die Gerechtigkeit war sein Antrieb und sein Lebensinhalt. Man sagt, er habe den Leuten die Reinheit ihrer Seelen angesehen. Er liebte seine Aufgabe so sehr, daß er nie kapitulierte, nicht einmal, wenn sein Leben auf dem Spiel stand. Vor einigen Jahren verschwand er durch ein Tor auf der Suche nach einem Verbrecher. Seither haben wir ihn nie mehr gesehen. Er ist eine wahre Legende." Er lehnt sich zurück und schweigt.~ */
  IF ~~ THEN REPLY #10499 /* ~"Kannst du mir vielleicht noch ein paar andere Fragen beantworten?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~"Nein." Der Gnadentöter schaut dich nicht einmal an.~ */
  IF ~~ THEN REPLY #10502 /* ~"Ich möchte nur die Antworten auf ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"Auf bald, dann."~ */ EXIT
END
