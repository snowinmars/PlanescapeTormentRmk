// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~Dieser Mann ist in eine schmutzige, zerlumpte braune Robe gehüllt. Eine lange Kapuze verdeckt fast sein ganzes Gesicht.~ */
  IF ~~ THEN REPLY #25493 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~Laß ihn in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~Du siehst, wie sich seine Augen unter seiner Kapuze verengen, und er tritt einen Schritt zurück. "Was willst du?"~ */
  IF ~~ THEN REPLY #25495 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"Ich such nach ein paar verdammten Leichen, das versuch ich zumindest, aber man könnte meinen, die Totenmächte hätten ihr Zeug gepackt und die Ebenen verlassen, so wie die Leute gesund bleiben und so." Seine Augen leuchten plötzlich: "Letzten Monat hatten wir die Pocken hier, das war ne tolle Zeit, wirklich... zum Himmel stinkende Leichen, und auch viel Klimper zu holen."~ */
  IF ~~ THEN REPLY #25497 /* ~"Warum suchst du nach Leichen?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"Was ist dies für ein Ort?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~Er wirkt überrascht. "Na, du schleifst die Knochengerüste zur Leichenhalle. Da redest du mit den Staubies, handelst'n bißchen, und kriegst'n bißchen Klimper."~ */
  IF ~~ THEN REPLY #25499 /* ~"Warum kaufen die Staubmenschen die Leichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"Sie sammeln die Toten... das ist ihr Job. Sie bezahlen uns dafür, daß wir einen größeren Bereich absuchen und ihnen alle Leichen bringen, die wir da finden. Dann sorgen sie dafür, daß die toten Knochengerüste an ihren richtigen Platz kommen oder verbrannt werden. Die nehmen das total ernst, ihre bekloppte Philosophie, aber für mich heißt das einfach mehr Klimper." Er zwinkert.~ */
  IF ~~ THEN REPLY #25501 /* ~"Was ist dies für ein Ort?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~Er sieht dich stirnrunzelnd an. "Du bist hier im Stock, na klar. Im schmutzigsten Flecken von ganz Sigil. Wo kommst du her, Schleifer? Bist du von den Materiern, oder was?"~ */
  IF ~~ THEN REPLY #25503 /* ~"Nein. Warum suchst du nach Leichen?"~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"Nein. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"Nein. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~Er zieht eine Augenbraue hoch. "Dann hätt' ich zuerst noch ein paar an dich, zum Beispiel: Was willst du wissen, und wie wichtig ist es dir?"~ */
  IF ~~ THEN REPLY #25506 /* ~"Wie meinst du das?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"Erzähl mir was über Sammler."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"Schau dich um, Schleifer... Ich mach nicht genug Klimper, um für nichts Licht ins Dunkel zu bringen. Das kostet ein paar Münzen, wenn du den Plausch willst."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~Gib ihm ein paar Münzen.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"Du bekommst gar nichts von mir und wirst trotzdem meine Fragen beantworten."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~Er spricht verächtlich: "Selbst Staubies bezahlen mehr als das, Schleifer. Du scheinst ja nicht viel wissen zu wollen."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"Du bekommst gar nichts von mir und wirst trotzdem meine Fragen beantworten."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~Er studiert einen Moment lang die Münzen, die er in seinen Händen hält. "Also." Er steckt sie schnell ein. "Frag schon."~ */
  IF ~~ THEN REPLY #25512 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"Vergiß es. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"Ich... Wir... leben davon, daß wir Totenbüchler von Sigils schönen Straßen holen und ihre Bleiärsche in die Leichenhalle schleppen. Nicht die tollste Art, seine Brötchen zu verdienen, aber besser als nichts. War das alles, was du wissen wolltest, Schleifer?" Er schaut dich schräg an.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~Er kneift plötzlich die Augen zusammen. "Pharod... Was soll mit ihm sein?"~ */
  IF ~~ THEN REPLY #25516 /* ~"Du wirkst auf einmal so mißtrauisch... Warum?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"Weißt du, wo er ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"Erzähl mir was über Sammler."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"Pharod, hmpff!" Er spuckt und grinst verächtlich. "Der Lumpensammler-Platz ist das Gebiet von Grabteiler - meinem Boss - verstehst du? Pharod und seine Hunde kamen vor einer Weile her und wollten uns vertreiben. Wir haben sie abgewehrt, jawoll, und jetzt verstecken sie sich hier irgendwo. Ab und zu schnappen wir noch einen von seinen Leuten hier am Platz. Für gewöhnlich liefern wir sie für ein bißchen Klimper bei der Leichenhalle ab, die nichtsnutzigen Schlucker."~ */
  IF ~~ THEN REPLY #25518 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"Weißt du, wo Pharod ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"Ich suche außerdem nach einem Journal, das ich verloren hab'."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"Er ist mein Boss... Wirft seinen Schatten über einen ganzen Haufen von Sammlern, jawohl. Ich würd mich von ihm fernhalten, wenn du nicht einen *wirklich* guten Grund hast, mit dem Mann zu reden... Ich selber hab' nie persönlich mit ihm gesprochen."~ */
  IF ~~ THEN REPLY #25520 /* ~"Weißt du, wo Pharod ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"Erzähl mir was über Sammler."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"Ich weiß, wo der Rattenhund sich nicht aufhält... Er ist nicht dort, wo sich die meisten Sammler rumtreiben, am Lumpensammler-Platz, aber irgendwo da ganz in der Nähe, heißt es."~ */
  IF ~~ THEN REPLY #25522 /* ~"Teilen alle Sammler deine Meinung über Pharod?"~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"Erzähl mir was über Sammler."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~Er schüttelt nur verwundert den Kopf.~ */
  IF ~~ THEN REPLY #25526 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"Na dann leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"Die Hebamme? 'Ne herzensgute Frau. Hilft einem, wenn man krank ist, un' so. Sie lebt in einer Hütte da oben entlang der Plattformen am Lumpensammler-Platz, wenn du zu ihr willst."~ */
  IF ~~ THEN REPLY #25530 /* ~"Erzähl mir was über Sammler."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"Na dann, paß auf dich auf, Schleifer. Wenn ich dich auf der Straße finde, werd ich deine Leiche gut behandeln."~ */
  IF ~~ THEN REPLY #25535 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"Stell deine Fragen. Ich kann nicht sagen, daß ich helfen kann, aber vielleicht doch."
~ */
  IF ~~ THEN REPLY #25562 /* ~"Erzähl mir was über Sammler."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"Vergiß es. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"Ich weiß von gar nichts, Kumpel, und ich schlage vor, du suchst deine Antworten woanders."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~Pack ihn und schüttel ihn ein bißchen durch.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~Gib ihm ein paar Münzen.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~Laß zehn Kupfermünzen in seine Handflächen fallen.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~Der Mann macht einen Schritt zurück und schaut dich von unter seiner Kapuze mißtrauisch an. "Du wieder, was? Was willst du?"~ */
  IF ~~ THEN REPLY #25598 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"Nichts. Leb wohl."~ */ EXIT
END
