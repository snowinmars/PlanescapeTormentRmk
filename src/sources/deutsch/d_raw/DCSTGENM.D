// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~Du erblickst einen Mann mit besorgtem Gesichtsausdruck. Er wirft dir einen Blick zu, als du näherkommst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #64433 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~Er seufzt und wendet sich dir zu. "Sei ebenfalls gegrüßt.... Was willst du?"~ */
  IF ~~ THEN REPLY #64436 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~Er runzelt die Stirn. "Fragen... Vergiß es, Dussel. Verzieh dich." ~ */
  IF ~~ THEN REPLY #64439 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"Ich habe keine Sekunde Zeit für dich." Er hält inne, greift in seinen Gürtel und bringt einen Dolch zum Vorschein. "Wie wär's, wenn ich dir statt dessen etwas baatorianisches Stahl verpasse?"~ */
  IF ~~ THEN REPLY #64442 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~Du siehst einen jungen Mann. Er schielt dich an, als du dich ihm näherst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #64445 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~Er lächelt dich an, aber sieht sich dabei nervös um. "Ja. Grüße und so weiter. Willst du etwas?"~ */
  IF ~~ THEN REPLY #64448 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~Er legt die Stirn in Falten und seufzt. "Wenn es sein muß."~ */
  IF ~~ THEN REPLY #64451 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"Weißt du irgendwas von einem Deva?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"Es ist unwichtig, wer ich bin. Stelle einfach deine Fragen. Er sieht dich ungeduldig an.~ */
  IF ~~ THEN REPLY #64457 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"Was ich hier mache, geht dich überhaupt nichts an. Stelle einfach deine Fragen."~ */
  IF ~~ THEN REPLY #64460 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"Verdammnis..." Er unterbricht sich und sieht sich um. "Vertraue niemandem Das ist alles, was du wissen mußt, um in Verdammnis zu überleben. Vertraue niemandem..."~ */
  IF ~~ THEN REPLY #64463 /* ~"Gilt das auch für dich?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~Er lächelt. "Absolut..."~ */
  IF ~~ THEN REPLY #64467 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~Er runzelt die Stirn, während er nachdenkt. "Nein, von einem Deva weiß ich nichts." Er zuckt die Schultern. "Frag doch mal im Verwaltungsbüro in der Stadtmitte."~ */
  IF ~~ THEN REPLY #64470 /* ~"Das werde ich. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~Du erblickst einen ärgerlich aussehenden Mann. Er wirft dir einen Blick zu und legt die Stirn in Falten.~ */
  IF ~~ THEN REPLY #64473 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~Er sieht dich mißtrauisch an. "Äh... Hallo. Was auch immer du willst, ich hab es nicht. Was auch immer du verkaufen willst, ich will es nicht. Und jetzt laß mich in Ruhe." Er funkelt dich an.~ */
  IF ~~ THEN REPLY #64476 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"Hmm... Wie nett. Du hast Fragen. Nun, sei das wie es mag, ich will trotzdem nichts mit dir zu tun haben. Geh weg." Er runzelt die Stirn. ~ */
  IF ~~ THEN REPLY #64479 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~Er seufzt und wirft verzweifelt seine Arme in die Luft. "In Ordnung, wenn du es nicht verstehst, wenn ich auf die nette Art *nein* sage... Muß ich es auf die weniger nette Tour versuchen?"~ */
  IF ~~ THEN REPLY #64482 /* ~"Ja, das tust du."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~Er lächelt. "Na gut... Dann steck dir deine Fragen an den Hut!" Er macht eine obszöne Geste. "Verpiß dich, du Dussel!"~ */
  IF ~~ THEN REPLY #64485 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~Du siehst einen gelangweilten Mann. Er wirft dir einen Blick zu, als du dich näherst, und runzelt die Stirn. "Ich hab genug von dir, zieh Leine..." Er wendet sich ab und ignoriert dich.~ */
  IF ~~ THEN REPLY #64487 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~Diese Person sieht so aus, als wäre sie sehr aufgebracht darüber, im Gefängnis zu sitzen. Egal, was du anstellst, du bekommst von ihr keine Antwort.~ */
  IF ~~ THEN REPLY #64489 /* ~Geh weg.~ */ EXIT
END
