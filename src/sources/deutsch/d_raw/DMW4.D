// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~Du triffst auf einen Mann mittleren Alters, der gerade eifrig mit Lagerkisten beschäftigt ist. Er nickt, als er dich kommen sieht.~ */
  IF ~~ THEN REPLY #47992 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~Er lächelt und wischt sich über die Augenbrauen. "Wie geht's, Schleifer?"~ */
  IF ~~ THEN REPLY #47995 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~Er nickt. "Nun denn..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~Er schüttelt den Kopf. "Noch nie von ihm gehört. Ich frag mal rum, ob jemand anders was mit dem Namen anfangen kann."~ */
  IF ~~ THEN REPLY #48004 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~Er sieht dich verdutzt an. "Du vermißt einen Schädel... Ich, äh..." Er zuckt mit den Achseln. "Tut mir leid, aber damit will ich nichts zu tun haben..." Es scheint, als ob er dich etwas fragen will, verkneift es sich dann aber.~ */
  IF ~~ THEN REPLY #48007 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~Er konzentriert sich einen Augenblick lang, so als ob er zu verstehen versucht, was du ihn gerade gefragt hast. "Nun ja... Waffen? Ich hab keine Ahnung... Ich schätze, einer der Händler hier verkauft welche. Das sind eigentlich Dinge, die ein Durchschnittsbürger nicht braucht."~ */
  IF ~~ THEN REPLY #48010 /* ~"Wie soll man sich denn ohne Waffen verteidigen?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~Er schaut dich ungläubig an. "Das Harmonium... Die haben die Aufgabe, uns Bürger zu schützen. Sie sorgen für Recht und Ordnung, bestrafen die Schuldigen und so. Ein Bürger sollte sich nicht selbst schützen müssen." Er sieht dich verdutzt an.~ */
  IF ~~ THEN REPLY #48014 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"Magie? Ich...." Er verzieht sein Gesicht zu einer verwirrten Grimasse. "Ich hab keine Ahnung. Vielleicht bei einem der Händler hier, aber Magie is auch nich' überall erhältlich... oder?" Er wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #48017 /* ~"Du hast ja wohl überhaupt keinen Durchblick, oder?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~Er sieht dich schockiert an. "Nun ja, nein... ich meine ja... äh, also... vielleicht nicht." Er zuckt mit den Achseln. "Man hat mich als naiv bezeichnet, aber ich finde nicht, daß das so ist. Ich bin eben nich' so *weltgewandt* wie andere. Das is alles."~ */
  IF ~~ THEN REPLY #48021 /* ~"Welche Farbe hat der Himmel in deiner Welt..."~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~Er schaut hinaus und zeigt mit dem Finger. "Er is gelb,... wegen dem ganzen Rauch und so von den Fabriken."~ */
  IF ~~ THEN REPLY #48025 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~Der Arbeiter schaut dich an. "Da bist du ja wieder. Kann ich dir helfen."~ */
  IF ~~ THEN REPLY #48028 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
