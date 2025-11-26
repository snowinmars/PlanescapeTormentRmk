// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~Du siehst einen jungen Mann in zerrissenen Kleidern. Er sieht gelangweilt aus, wie er so in die Ferne starrt.~ */
  IF ~~ THEN REPLY #57501 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~Deine Begrüßung schreckt ihn auf. Er zuckt zusammen, dann starrt er dich einen Augenblick an. "Schleich dich nicht so an mich ran, Schleifer. Ich wäre vor Schreck fast gestorben."~ */
  IF ~~ THEN REPLY #57505 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~Er runzelt die Stirn. "Zum Beispiel..."~ */
  IF ~~ THEN REPLY #57507 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"Ich habe gehört, hier unten ist irgendwo ein Deva eingesperrt."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"Du brauchst meinen Namen nicht zu wissen. Stell einfach deine Fragen und dann laß mich in Frieden." Er sieht dich trotzig an.~ */
  IF ~~ THEN REPLY #57512 /* ~"Ich hasse arrogante Menschen. Normalerweise prügel ich die Arroganz aus ihnen raus."~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"Gut, ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~Er zuckt die Schultern. "Okay, ich heiße Binian. Bist du jetzt zufrieden?"~ */
  IF ~~ THEN REPLY #57516 /* ~"Ja, ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"Es ist ein einziger Misthaufen, und du und ich und alle, die du hier siehst, sind weiter nichts als Abfall, den die Stadt auf diesen  Misthaufen wirft." Er lächelt spöttisch. "Das sagt doch so ziemlich alles."~ */
  IF ~~ THEN REPLY #57519 /* ~"Warum bist du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~Er zuckt die Schultern und sieht sich nervös um. "Ich habe ein paar Sachen geklaut... vielleicht mal ein paar Schluckern weh getan... Und jetzt bin ich hier."~ */
  IF ~~ THEN REPLY #57523 /* ~"Du bist also ein Dieb..."~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~Er schüttelt den Kopf. "Nein. ich bin ein Ex-Dieb. Nach einem Jahr in diesem Rattenloch bin ich ein Ex-Dieb..." Er seufzt und sieht weg. "Ich will nie wieder hier landen, soviel ist sicher."~ */
  IF ~~ THEN REPLY #57527 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~Er runzelt die Stirn und sieht weg. "Da unten ist einer... bei der neuen Baugrube. Du brauchst nur zu suchen, wo zuletzt gegraben wurde, da findest du ihn."~ */
  IF ~~ THEN REPLY #57530 /* ~"Wo finde ich die Baugrube?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"Wonach graben sie da?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~Er zuckt die Schultern. "Bin noch nie dort gewesen, das ist da drüben." Er macht eine vage Geste. "Kannst du nicht verfehlen. Halte nach neuen Grabungen Ausschau."~ */
  IF ~~ THEN REPLY #57535 /* ~"Wonach graben sie da?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~Er schüttelt den Kopf. "Nach nichts. Wenn sie das Gefängnis erweitern wollen, lassen die Wachen uns graben." Er schnaubt. "Das ist alles Teil der Strafe..."~ */
  IF ~~ THEN REPLY #57539 /* ~"Wo finde ich die Baugrube?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~Du siehst Binian, den Dieb. "Du schon wieder... Was willst du jetzt?"~ */
  IF ~~ THEN REPLY #57543 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
