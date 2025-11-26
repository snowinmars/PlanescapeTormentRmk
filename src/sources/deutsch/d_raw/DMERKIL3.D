// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL3~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10504 /* ~Der grauhaarige Gnadentöger dreht sich langsam zu dir um und mustert dein Gesicht. Plötzlich bewegen sich seine Hände und bringen eine besonders bedrohlich aussehende Waffe zum Vorschein. "Jungs! Hierher! Ein Mörder!" Er greift dich an.~ */
  IF ~~ THEN REPLY #10505 /* ~Greif ihn an.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10506 /* ~Flieh.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10507 /* ~Du siehst einen stämmigen, grauhaarigen Mann in einer dornenbesetzten Rüstung. Mit kühlem Blick mustert er dich langsam von Kopf bis Fuß. An deinem Gesicht angelangt hält er kurz inne, als ob es ihn an irgend etwas erinnert. Dann seufzt er und sagt: "Kann ich dir irgendwie behilflich sein, mein Freund?"~ */
  IF ~~ THEN REPLY #10508 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #10509 /* ~"Hast du mich wiedererkannt?"~ */ GOTO 4
  IF ~~ THEN REPLY #10510 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10511 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10512 /* ~"Ich suche einen Sammler mit Namen Pharod. Weißt du vielleicht, wo er zu finden ist?"~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10514 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #10515 /* ~"Sei doch so nett, und erzähl mir was über diesen Ort."~ */ GOTO 7
  IF ~~ THEN REPLY #10516 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10513 /* ~"Willst du was von mir?"~ */
  IF ~~ THEN REPLY #10517 /* ~"Wer bist du?"
~ */ GOTO 3
  IF ~~ THEN REPLY #10518 /* ~"Hast du mich wiedererkannt?"~ */ GOTO 4
  IF ~~ THEN REPLY #10519 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10520 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10521 /* ~"Kennst du einen Sammler mit Namen Pharod? Ich bin auf der Suche nach ihm."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10522 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #10523 /* ~"Sei doch so nett, und erzähl mir was über diesen Ort."~ */ GOTO 7
  IF ~~ THEN REPLY #10524 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.0
  SAY #10525 /* ~"Ich? Ich bin Tarner."~ */
  IF ~~ THEN REPLY #10526 /* ~"Warum ziehst du dich so an?"~ */ GOTO 9
  IF ~~ THEN REPLY #10527 /* ~"Wer sind deine Freunde?"~ */ GOTO 5
  IF ~~ THEN REPLY #10528 /* ~"Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #10529 /* ~"Danke. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.1
  SAY #10530 /* ~"Das dachte ich, aber die Bilder sind ja uralt - der Verdächtige ist wahrscheinlich längst tot. Gewiß, hier auf den Ebenen ist schon allerhand Merkwürdiges passiert. Aber wenn du der bist, den ich im Sinn hab', dann sieht es so aus, als hättest du deine Strafe mit Schmerzen abgegolten."~ */
  IF ~~ THEN REPLY #10531 /* ~"Was kannst du mir über diese Person erzählen, von der du gesprochen hast?"~ */ GOTO 10
  IF ~~ THEN REPLY #10532 /* ~"Ha! Wer weiß? Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #10533 /* ~"Mehr als du je wissen kannst. Mehr als *ich* weiß. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 3.1 8.2
  SAY #10534 /* ~"Das sind Caleb und Ilsidon. Caleb ist Anfänger - ein neuer Rekrut. Ilsidon hat die Muskeln, ich das Hirn."~ */
  IF ~~ THEN REPLY #10535 /* ~"Was machst du hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #10536 /* ~"Ein Rekrut? Ist das der Grund, warum ihr alle gleich gekleidet seid?"~ */ GOTO 9
  IF ~~ THEN REPLY #10537 /* ~"Schon kapiert. Beantworte mir ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #10538 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 8.3
  SAY #10539 /* ~"In den üblen Straßen von Sigil sieht man allerhand, mein Freund. Es wäre mir wohl nur aufgefallen, wenn es etwas Sensationelles wäre."~ */
  IF ~~ THEN REPLY #10540 /* ~"Ich verstehe. Leb wohl."~ */ GOTO 8
  IF ~~ THEN REPLY #10541 /* ~"Ich schätze, daran würde man sich kaum erinnern. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.6 8.6
  SAY #10542 /* ~"Das hier? Das ist die Schwelende Leiche. Es geht der Plausch um, daß es hier überall Portale gibt und so, aber das trifft auf fast ganz Sigil zu. Jedenfalls gibt's hier gutes Gesöff für wenig Geld. Und wenn dich die Fusler und Scheusale nicht allzu sehr stören, kann man's hier ganz gut aushalten. Um mehr über den Laden zu erfahren, würde ich den Wirt fragen."~ */
  IF ~~ THEN REPLY #10543 /* ~"Verstehe schon. Ich würde gern noch was anderes wissen."~ */ GOTO 8
  IF ~~ THEN REPLY #10544 /* ~"Wie du meinst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.1 5.2 6.0 7.0 9.0 10.0 11.1 12.0 13.0
  SAY #10545 /* ~"Was willst du wissen?~ */
  IF ~~ THEN REPLY #10546 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #10547 /* ~"Hast du mich wiedererkannt?"~ */ GOTO 4
  IF ~~ THEN REPLY #10548 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10549 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10550 /* ~"Hast du jemals von einem Sammler namens Pharod gehört? Ich bin auf der Suche nach ihm."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10551 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #10552 /* ~"Sei doch so nett, und erzähl mir was über diesen Ort."~ */ GOTO 7
  IF ~~ THEN REPLY #10553 /* ~"Vorerst nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 5.1 11.0
  SAY #10554 /* ~"Es ist eine Art Uniform. Wir sind der Rote Tod... die Gnadentöter. Wir sorgen für Gerechtigkeit. Wenn jemand ein Verbrechen begeht, führen wir ihn der gerechten Strafe zu. Wir schaffen Unrecht aus der Welt. Um mehr zu erfahren, kannst du einen unserer Anwerber fragen."~ */
  IF ~~ THEN REPLY #10555 /* ~"Okay, okay. Beantworte mir doch ein paar Fragen, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #10556 /* ~"Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY #10557 /* ~"Er war ein besonders brutaler Verbrecher, soviel ich weiß. Vor vielen Jahrhunderten. Er war angeblich wahnsinnig stark und hatte genug Wut im Bauch, um einem Bariaur mir nichts, dir nichts den Kopf abzureißen. Mit ihm war nicht gut Kirschen essen. Er wurde angeblich von einer Patrouille des Roten Todes umstellt, floh durch ein Portal und wurde nie mehr gesehen.
Sie haben Bilder von ihm. Denk dir ein paar Narben weg, und er kommt dir schon recht nahe. Aber ich nehme an, du bist es nicht."
~ */
  IF ~~ THEN REPLY #10558 /* ~"Hört sich an wie'n fieser Kerl. Ich hätte noch ein paar Fragen zu was anderem."~ */ GOTO 8
  IF ~~ THEN REPLY #10559 /* ~"Klingt böse. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10560 /* ~"Wir warten auf einen Verbrecher, Calebs ersten Fall - falls der Dussel, auf den wir warten, je auftaucht."~ */
  IF ~~ THEN REPLY #10561 /* ~"Was, seid ihr etwa so 'ne Art Polizei-Einheit? Ist eure Rüstung dann vielleicht... 'ne Art Uniform?"~ */ GOTO 9
  IF ~~ THEN REPLY #10562 /* ~"Ich verstehe. Beantworte mir noch ein paar andere Fragen."
~ */ GOTO 8
  IF ~~ THEN REPLY #10563 /* ~"Viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4 2.4 8.4
  SAY #10564 /* ~"Du bist wohl auf der Suche nach ihm, was? Deinem Tonfall nach zu urteilen, hast du nicht vor, nur einen mit ihm trinken zu gehen. Also ich kenne diesen Pharod schon lange. Er ist ein windiger Bursche, und es ist nicht leicht, ihm was anzuhängen. Das Problem ist, daß nur ein Fanatiker wie Vhailor ihn ohne den geringsten Beweis kassieren könnte. Um es auf den Punkt zu bringen: Ich weiß nicht, wo der Kerl steckt, aber denk dran, daß er ein Verdächtiger ist, und du dich nicht unbedingt in seiner Gesellschaft blicken lassen solltest."~ */
  IF ~~ THEN REPLY #10565 /* ~"Danke für den Rat. Kannst du mir noch was anderes beantworten?"~ */ GOTO 8
  IF ~~ THEN REPLY #10566 /* ~"Danke für das Dunkel, Freund. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 2.5 8.5
  SAY #10567 /* ~"Vhailor? Vhailor war ein Fanatiker. Wenn er sich im Recht glaubte, schreckte er vor nichts zurück, auch wenn er dabei sein Leben aufs Spiel setzte. Er war der Gerechtigkeit so sehr verpflichtet, daß er wahrscheinlich selbst den Tod getötet hätte, wenn er dadurch einem Verbrecher hätte auf die Spur kommen können. Für ihn gab es keine Grenzen. Er hat uns alle inspiriert."~ */
  IF ~~ THEN REPLY #10568 /* ~"Das nenne ich wirklich Hingabe. Könntest du mir vielleicht noch eine Frage beantworten?"~ */ GOTO 8
  IF ~~ THEN REPLY #10569 /* ~"Da geh ich jede Wette ein. Leb wohl."~ */ EXIT
END
