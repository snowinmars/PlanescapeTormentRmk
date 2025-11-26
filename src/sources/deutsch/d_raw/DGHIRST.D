// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~Du siehst ein hochgewachsenes, schlankes Wesen mit langen Armen und einem länglichen Kopf. Aus seinem riesigen Mund schauen mehrere Fangzähne hervor, und seine Finger haben lange Krallen. Es starrt dich unverwandt an, während du näherkommst.~ */
  IF ~~ THEN REPLY #58304 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~Beachte das Wesen nicht.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~Das Wesen lehnt sich vor und schnüffelt an dir. Dann streckt es eine Klaue aus und befühlt dich prüfend. Es leckt sich die Lippen. "Du bist n' bißchen zäh, aber vielleicht bist du ja trotzdem ganz schmackhaft."~ */
  IF ~~ THEN REPLY #58312 /* ~"Ich habe ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~Es grinst dich mit entblößten Zähnen an. "Gegen eine Unterhaltung vor dem Essen habe ich nichts einzuwenden. Was willst du denn wissen?"~ */
  IF ~~ THEN REPLY #58315 /* ~"Du willst mich fressen?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"Was bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"Was machst du hier?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"Was könnt ihr mir über Carzeri erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"Was kannst du mir über diese Katakomben erzählen?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"Hier unten lebt ein Schwarzhändler, der deinen Tod wünscht."~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"Ich muß gehen, Wiedersehen."~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~Sein Lächeln wird noch breiter. "Ja, das will ich, sobald du mit deinen närrischen Fragen fertig bist."~ */
  IF ~~ THEN REPLY #58324 /* ~"Du kannst es ja mal versuchen, aber du wirst an Bauchschmerzen sterben, wenn ich dich ausnehme."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"Ich komme mit friedlichen Absichten."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~Es zuckt mit den Achseln und hebt gleichgültig die Arme. "Ich geh das Risiko ein."~ */
  IF ~~ THEN REPLY #58328 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~Greif das Wesen an.~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~Es zuckt mit den Achseln und hebt gleichgültig die Arme. "Ein Jammer. Ich hab nämlich vor, dich zu töten."~ */
  IF ~~ THEN REPLY #58331 /* ~"Warum?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~Es zuckt nochmals mit den Achseln. "Ohne besonderen Grund... Du bist nur einfach zur falschen Zeit am falschen Ort." Es überlegt einen Moment." Oder zur rechten Zeit am rechten Ort." Es grinst. "Kommt auf den Standpunkt an."~ */
  IF ~~ THEN REPLY #58334 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"Ich bin nicht so leicht totzukriegen, aber du kannst es ja mal versuchen, wenn du willst."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~Es bohrt in der Nase und starrt dich an. "Ghirst..." Es starrt dich weiter an und erforscht mit dem Finger seine Nasenhöhle.~ */
  IF ~~ THEN REPLY #58337 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~Es hebt den Arm und kratzt sich träge unter der Achsel. "Gehreless... Farastu."~ */
  IF ~~ THEN REPLY #58340 /* ~"Was ist ein Gehreless?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"Was ist ein Farastu?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~Es gähnt, und dich umhüllt eine Wolke seines übelriechenden Atems. "Suche einen Deva. Schmecken gut. Lutsche das Mark aus den Knochen."~ */
  IF ~~ THEN REPLY #58345 /* ~"Du willst Trias fressen?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~Es sieht dich gelangweilt an. "Nein, Deva. Was interessiert mich irgend so ein Trias."~ */
  IF ~~ THEN REPLY #58349 /* ~"Trias ist der Name des Deva."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~Es zuckt die Achseln und langt nach hinten, um sich am Rücken zu kratzen. "Trias, Schmias. Mir egal, wie du's nennst, für mich ist es ein Mittagessen."~ */
  IF ~~ THEN REPLY #58353 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~Es öffnet den Mund und pult mit einer Kralle etwas zwischen den Zähnen heraus. Seine Antwort ist genuschelt. "Heim. Mein Heim, nich deins. Du bist hier nicht willkomm."~ */
  IF ~~ THEN REPLY #58356 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~Es starrt dich verdutzt an und nickt dann. "Ich weiß... Wollte ihn neulich fressen, aber er ist mir entwischt. Hab versucht, ihn zu fangen, aber er hat sich hinter Fallen verbarrikadiert." Es zuckt mit den Achseln. "Ich kann warten. Eines Tages wird ihm ein Fehler unterlaufen."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"Er hat mich geschickt, dich zu töten."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~Es schnäuzt sich in die Hand und schüttelt das Ergebnis einfach ab. Es wischt sich die Hand ab während es antwortet: "Oh... noch ein weiterer Grund, ihn zu töten... und dich gleich dazu."~ */
  IF ~~ THEN REPLY #58363 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~Es grinst dich breit an. "Gut. Mir reicht's mit den Fragen - Essenszeit!" Es greift mit einem Sprung an.~ */
  IF ~~ THEN REPLY #58366 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~Es rülpst, und ein widerlicher Gestank verpestet die Luft. Es zeigt träge mit dem Finger auf sich. "Ich bin ein Gehreless. Mein Rang ist Farastu." ~ */
  IF ~~ THEN REPLY #58368 /* ~"Was gibt es sonst noch für Ränge?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~Es betrachtet gelangweilt seine Klauen und zuckt die Schultern. "Is für dich ziemlich unerheblich, da ich der letzte Gehreless bin, das du je sehen wirst."~ */
  IF ~~ THEN REPLY #58372 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~Es schaut sich um und zuckt mit den Achseln. "Nichts. Bin hier rein auf der Suche nach Deva."~ */
  IF ~~ THEN REPLY #58375 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"Leb wohl."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
