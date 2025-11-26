// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~Dieser schmierig aussehende Typ merkt sofort, daß du ihn anschaust. "He, Knochenbrecher! Kommt her und schaut, was ich für Euch habe!" Er zwinkert und winkt dich zu sich.~ */
  IF ~~ THEN REPLY #17158 /* ~"Was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~Die kleinen runden Augen des Mannes funkeln wie winzige schwarze Edelsteine, als er dich erblickt. "Guter Mann, Ihr seid es wieder. Seht, was ich heute für Euch habe!"~ */
  IF ~~ THEN REPLY #17192 /* ~"Was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~Der Mann unterbricht dich mitten im Satz. "Ihr werdet staunen, was ich heute für Euch habe! Ihr seid ein kluger Knochenbrecher, daß Ihr zu mir kommt. Von mir werdet Ihr nicht über den Tisch gezogen wie von diesen anderen Neppern." Mit einer Geste zeigt er zu den anderen Kaufleuten.~ */
  IF ~~ THEN REPLY #17208 /* ~"Okay, was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"Ich hätte da ein paar Fragen...~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"Ich gehe jetzt. Leb wohl."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~Er nickt, doch es ist offensichtlich, daß er nicht zuhört. "Ja, hier gibt es wirklich allererste Ware! Kommt und staunt! Und auch die Preise... Ihr würdest mich praktisch *bestehlen*!"~ */
  IF ~~ THEN REPLY #17212 /* ~"Okay, was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"Hör mir zu: ICH - HABE - FRAGEN."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~Dreh dich um und geh weg.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"Aber sicher! Zum Beispiel: 'Wie kann der so verflucht niedrige Preise haben?' Oder: 'Wo hat der Typ die Riesenauswahl her?' Aber zerbrecht Euch nicht den Kopf, Knochenbrecher! Aber merkt Euch, daß es bei mir fast alles gibt! Na ja, bis auf diese Lim-Lim-Dinger... Aber wer bei Baator braucht die schon? Was? Häh? Ha ha ha!"
~ */
  IF ~~ THEN REPLY #17224 /* ~"Na gut, na gut... was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~Dreh dich um und geh weg.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~Du hörst ihn hinter dir rufen: "Wartet, Knochenbrecher, wohin des Weges? Wollt Ihr nicht meine feinen Waren bewundern? Kommt zurück! Ihr wißt nicht, was Ihr verpaßt!"~ */
  IF ~~ THEN REPLY #17226 /* ~"Na gut. Was hast du anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~Geh einfach weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~Der Mann unterbricht dich mitten im Satz. "Ihr werdet staunen, was ich heute für Euch habe! Ihr seid ein kluger Knochenbrecher, daß Ihr zu mir kommt. Von mir werdet Ihr nicht über den Tisch gezogen wie von diesen anderen Neppern." Mit einer Geste zeigt er zu den anderen Kaufleuten.~ */
  IF ~~ THEN REPLY #17475 /* ~"Okay, was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"Ich geh jetzt. Leb wohl."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~Er nickt, doch es ist offensichtlich, daß er nicht zuhört. "Ja, hier gibt es wirklich allererste Ware! Kommt und staunt! Und auch die Preise... Ihr würdest mich praktisch *bestehlen*!"~ */
  IF ~~ THEN REPLY #17477 /* ~"Okay, was hast du mir anzubieten?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~Dreh dich um und geh weg.~ */ GOTO 5
END
