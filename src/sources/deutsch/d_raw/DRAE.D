// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~Du siehst eine ältere Frau. Sie sieht dich finster an, als du näherkommst, und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #58664 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~Sie schnaubt verächtlich. "Halt die Knochenschüssel, Dussel. Das *Sei gegrüßt* kannst du dir sparen. Sag mir lieber, was du willst!"~ */
  IF ~~ THEN REPLY #58667 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"Dann stell sie doch." Sie starrt dich an.~ */
  IF ~~ THEN REPLY #58670 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"Weißt du irgend etwas über einen Deva, der hier unten sein soll?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~"Du bist ja recht kontaktfreudig. Ich heiße Rae - nicht daß es dir irgend etwas bringt, das zu wissen."~ */
  IF ~~ THEN REPLY #58675 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~Sie sieht sich um und zuckt mit den Schultern. "Das hier ist ein Gefängnis. Es besteht aus drei Sektoren. Im äußeren sitzen die kleinen Fische, im mittleren die aufstrebenden Übeltäter, und hier im innersten Sektor sind die echten Verbrecher." Sie lächelt dich an.~ */
  IF ~~ THEN REPLY #58678 /* ~"Und was für Verbrechen haben die Leute so begangen?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"Im äußeren Sektor sitzen sie wegen geringfügigen Diebstahls und so. Im Mittelteil hauptsächlich Überfälle. Er ist voll von Schlägern, Muskelprotze n und ihresgleichen. Hier im inneren Sektor sind die Mörder, Meuchelmörder, Verschwörer und sonstigen gefährlicheren Verbrecher untergebracht." Sie lächelt.~ */
  IF ~~ THEN REPLY #58682 /* ~"Warum bist du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~Sie lacht laut auf. "Weil ich was Unrechtes getan hab! Warum sollte ich wohl sonst hier sein?" Sie bedeutet dir zu gehen. "Geht dich eh nichts an."~ */
  IF ~~ THEN REPLY #58686 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~Sie schüttelt den Kopf. "Er ist nicht hier, er ist in seiner eigenen Spezialzelle... oder zumindest war er dort."~ */
  IF ~~ THEN REPLY #58689 /* ~"Was meinst du?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"Die Häftlinge im äußeren Bereich werden eingesetzt, um das Gefängnis zu erweitern. Sie graben all die neuen Räume." Sie hält inne. "Eines Tages sind sie beim Graben in eine Art Kammer vorgestoßen, und da war dein Deva. Wahrscheinlich ist er immer noch da."~ */
  IF ~~ THEN REPLY #58693 /* ~"Wo kann ich ihn finden?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~Sie zieht die Brauen zusammen. "Ich hab es dir doch gerade gesagt, Hirni. Er ist im äußeren Sektor!"~ */
  IF ~~ THEN REPLY #58697 /* ~"Was ist ein Hirni?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~Sie piekst dir einen knochigen Finger in die Brust. "Du bist einer, Dussel. Das vortrefflichste Beispiel für einen Hirni, das mir je untergekommen ist."~ */
  IF ~~ THEN REPLY #58701 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~Du siehst Rae. Sie lacht, als du näherkommst." "Was willst du diesmal, Dussel?"~ */
  IF ~~ THEN REPLY #58704 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"Nichts. Leb wohl."~ */ EXIT
END
