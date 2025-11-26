// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~Du siehst einen untersetzten Mann, der einen Hautausschlag und lauter Pusteln im Gesicht hat. Seine Kleider *scheinen* ihn als Beamten auszuweisen, doch sind sie schmutzig, zerknittert und voller Rattenhaare. Als du ihn anschaust, kratzt er sich abwesend mit seinen kurzen, dicken Fingern.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~Laß den Mann in Ruhe, sieh dich im Laden um.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"Ahhhhh!" Der kleine Mann schreit auf und zuckt erschreckt zusammen. Er faßt sich ans Herz, atmet tief durch und schiebt seine Brille auf die mit Pusteln bedeckte Nase. "Jaaah? Was kann ich für dich tun..." Er kratzt sich die Nase  und mustert dich von Kopf bis Fuß, vor allem deine Narben. "Ich... äh... hab' so gut wie gar nichts in der Kasse. Wenn du zum Plündern hergekommen bist, hast du dir den falschen Ort ausgesucht."~ */
  IF ~~ THEN REPLY #2403 /* ~"Ich bin nicht gekommen, um zu 'plündern'. Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"'So gut wie gar nichts in der Kasse', was? Nun, warum gibst du mir nicht einfach heraus, was du hast - und dann trennen wir uns als Freunde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"Auf bald."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"Ahhhhh! Bei den Mächten... komm mir bloß nicht zu *nahe*!" Er schiebt seine Brille auf die Nase und wirft dir einen strengen Blick zu. "Und was kann ich *dieses* Mal für dich tun, hmmm?"
~ */
  IF ~~ THEN REPLY #2401 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"Ich könnte gebrauchen, was du in deiner Kleingeldkiste da hast; dann geh ich auch."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"Heute nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"Ich? Ich bin der Angesehene Phineas T. Lort der Neununddreißigste, zuständig für das Büro zur Schädlings- und Seuchenbekämpfung in diesem Stock. Ich darf..." Er kratzt sich an der Brust und bläst sich auf. "dich informieren, daß wir, *wir* im bürokratischen Sinne des Wortes, womit ich die gesamte Bürokratie Sigils meine, eine Prämie für alle Arten von Schädlingen und Streunern kassieren, die..." Er kratzt sich wieder. "... die schönen Straßen Sigils beschmutzen, denn Sigil ist der Nabel des Multiversums, die Stadt, die im Mittelpunkt aller Dinge steht, und Maßstab für *alle* anderen Städte."~ */
  IF ~~ THEN REPLY #2408 /* ~"Prämie?"~ */ JOURNAL #66745 /* ~Ich habe im Stock mit einem Inspektor der Schädlingsbekämpfung, Phineas T. Lort, gesprochen. Er sagt, er zahle eine Belohnung für jeden Schädelrattenschwanz, der ihm in sein Büro geliefert wird, und zwar einen Kupfer pro Schwanz... Vielleicht kann ich noch einen besseren Preis rausschlagen, wenn ich ihm genügend Rattenschwänze bringe.~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"Ich verstehe. Nun, ich schätze, ich habe genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"Ja ja... wir, im bürokratischen Sinne des Wortes *wir*, womit ich die gesamte Bürokratie Sigils meine, nehmen handfeste Beweise für die Ausrottung von Schädelratten, auch Klugschädlinge genannt, im Stock entgegen. Dieser Bereich war in den letzten Jahren besonders stark befallen, wie eine Zählung der Schädlingspopulation jüngst gezeigt hat. Die Bürokratie Sigils hat mich befugt, eine Prämie in Höhe..." Er plustert sich fürchterlich auf. "... einer einfachen Kupfermünze für jede Schädelratte auszuzahlen, die in meinem Büro abgegeben wird."~ */
  IF ~~ THEN REPLY #2411 /* ~"'Schädelratten'?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"Ich hab' zwar keine Ratten, aber dafür ein paar Rattenschwänze."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"Ich verstehe. Nun, ich sollte mich lieber auf den Weg machen... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"Schädelratten sind Schädlinge, die immer intelligenter werden, je mehr davon sich auf einem Haufen befinden. Eine Schädelratte allein ist zwar lästig, aber sie knabbert höchstens ein paar Bretter an oder frißt sich durch die Vorratskammer. Doch fünf, zehn oder mehr Schädelratten auf einmal sind furchtbar intelligent, und zwar noch intelligenter als meinereiner." Er kratzt sich und rümpft verächtlich die Nase. "*Euch*, gnädiger Herr, könnten wahrscheinlich schon zwei oder drei Schädelratten das Wasser reichen."~ */
  IF ~~ THEN REPLY #2415 /* ~"Noch so ein Kommentar, und du kannst deinen Arsch als Hut tragen."~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"Wie viele Schädelratten gibt's denn in Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"Erzähl mir mehr über die Schädelratten."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"Ich hab' zwar keine Ratten, aber dafür ein paar Rattenschwänze."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~Phineas blinzelt. Er scheint sich endlich an deine äußere Erscheinung gewöhnt zu haben. "Hmmm. Ich nehme meine höchst unangemessene Bemerkung zurück, besonders in Anbetracht der Dominanz und physischen Überlegenheit, die du in dieser Situation bewiesen hast."~ */
  IF ~~ THEN REPLY #2420 /* ~"Wie viele Schädelratten gibt's denn in Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"Erzähl mir mehr über die Schädelratten."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"Ich hab' zwar keine Ratten, aber dafür ein paar Rattenschwänze."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"Hervorragend! Ganz hervorragend!" Er klatscht entzückt in die Hände. "Laß mal sehen..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~Gib ihm die Rattenschwänze, und nimm dafür die Prämie entgegen.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"Wenn ich's mir recht überlege, behalte ich sie doch lieber noch eine Weile. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"Vielleicht ein ander Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"Mehr als genug, um einen Kopfgeldjäger ein Leben lang zu beschäftigen... vielleicht auch mehr als einen."
~ */
  IF ~~ THEN REPLY #2433 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"Ich verstehe. "Nun, danke, daß du dir für mich Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"Je mehr davon sich auf einem Haufen befinden, desto ungeheuerlicher werden sie... manche können sogar Zauber aussprechen, und sie sind immun gegen Zauber, die gegen sie ausgesprochen werden. Außerdem sind sie auch imstande... ausgeklügelte Taktiken anzuwenden." Er schiebt seine Brille wieder hoch. "Du wirst verstehen, daß wir stark daran interessiert sind, ihre Bestände in Sigil zu dezimieren."~ */
  IF ~~ THEN REPLY #2436 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"Ich verstehe. "Nun, danke, daß du dir für mich Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"Das ist eine ziemlich lange Geschichte... also, ich bin in Sigil geboren..."~ */
  IF ~~ THEN REPLY #2439 /* ~"Äh..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"... und wurde mir irgendwann der Tatsache bewußt, daß ich meine Kollegen irgendwie beleidigt haben muß, denn ich wurde zu diesem Büro hier 'befördert', wo ich nun schon seit ... *vielen*... Jahren bin." Er seufzt, dann kratzt er sich abwesend an der Nase.~ */
  IF ~~ THEN REPLY #2441 /* ~"Ähh..." *gähn*... Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"Ich verstehe... und, äh, danke, daß du dir für mich Zeit genommen hast. Leb wohl."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"Mein Ausschlag? Ansteckend? Ach was... glaub' ich jedenfalls nicht. Ich fürchte, er ist Ausdruck meiner Arbeit. Sie wächst mir sozusagen über den Kopf." Er kratzt sich wieder.~ */
  IF ~~ THEN REPLY #2444 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"Ich verstehe. "Nun, danke, daß du dir für mich Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"Äh... ja gewiß..." Er greift nach der Kasse unter seinem Tresen, knackt den Deckel und stöbert darin herum. Als seine Hand wieder zum Vorschein kommt, liegen ein paar Geldstücke darin, die er dir überreicht. "Ich hoffe, du empfindest wenigstens ein Funken Scham für deine Tat. Ohne diese spärlichen Mittel kann das Büro nicht einmal seine Kosten decken."~ */
  IF ~~ THEN REPLY #2447 /* ~"Du hast mein Mitgefühl. Leb wohl."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"Ich kann nur spekulieren, daß es dir nicht genügt hat, mir alles zu rauben, was ich hatte. Warum bist du zurückgekommen?"~ */
  IF ~~ THEN REPLY #51468 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~Phineas summt fröhlich, als du den Tausch perfekt machst. "Danke, danke vielmals, guter Herr. Die Stadt Sigil und ich schätzen die Mühe, die du für uns auf dich genommen habt."~ */
  IF ~~ THEN REPLY #2456 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"Danke. Falls ich noch ein paar Rattenschwänze auftreibe, komme ich wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"Hmm? Und was wären das bitte schön für Fragen...?"~ */
  IF ~~ THEN REPLY #2459 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"Was machst du hier?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"Wie konnte jemand so... Erlauchtes wie du an einem solchen Ort landen?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"Erzähl mir von diesen Schädelratten."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"Ich habe ein paar Rattenschwänze. Ich hätte gerne die Prämie dafür."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"Ist dein Ausschlag da ansteckend?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"Keine weiteren Fragen. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"Neiiiiin! Bitte töte mich nicht..." kreischt Phineas und fährt erschrocken zusammen. Er sieht dich an, als hätte er jemand anders erwartet. "Den Mächten sei Dank, du bist es nur..." Er hält inne und bemüht sich um Fassung.~ */
  IF ~~ THEN REPLY #51477 /* ~"Dich nicht töten? Steckst du in irgendwelchen Schwierigkeiten?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"Mir scheint, hier habe ich nichts verloren, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~Er schluckt und sieht sich um. "Die Schädelratten... Scheinbar wollen sie Sigil von meiner Anwesenheit befreien. Ich habe meine Arbeit im Büro zur Schädlings- und Seuchenbekämpfung wohl zu gewissenhaft erledigt." Er sieht dich flehend an.~ */
  IF ~~ THEN REPLY #51480 /* ~"Wovon redest du eigentlich?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"Ich habe genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"Heute habe ich ein großes Rattenexemplar hier, direkt in meinem Büro, gefunden. Ich habe das Vieh gefangen und es in den Keller gebracht, um ihm den Garaus zu machen." Seine Augen weiten sich, und sein Atem geht schwer. "Vor meinen Augen ist sie zu einem menschengroßen Wesen herangewachsen und hat gesagt, daß sie geschickt wurde, um mich für meine Verbrechen an den Schädelratten zu töten!"~ */
  IF ~~ THEN REPLY #51483 /* ~"Was hast du getan?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"Ich hab genug gehört, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"Ich bin um mein Leben gerannt! Gelobt seien die Mächte, daß ich es zurück nach oben in meinen Laden geschafft habe. Ich habe die Tür hinter mir abgeschlossen. Ich bin sicher, das Vieh sitzt dort unten in der Falle." Er starrt dich an, und seine Augen wandern über deine zahlreichen Narben. Sein Blick trifft wieder deinen. "Erleg das Vieh für mich... Ich werde dich gut belohnen."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"Was gibst du mir, wenn ich's tue?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"Was gibst du mir dafür?~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~Er denkt einen Moment nach, dann lächelt er. "Ich werde gerne vergessen, daß du mich ausgeraubt hast, und die Angelegenheit nicht den städtischen Behörden übergeben..." Er macht eine Pause, um deine Reaktion abzuschätzen. "Und ich bezahle dir auch hundert einfache Kupfermünzen."~ */
  IF ~~ THEN REPLY #51490 /* ~"Ist gut, ich mach's."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"Ich will da nicht reingezogen werden. Wiedersehen.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~Er denkt einen Moment nach, dann lächelt er. "Ich bezahle dir zweihundert einfache Kupfermünzen, wenn du meinen Keller von diesem scheußlichen Untier befreist."~ */
  IF ~~ THEN REPLY #51494 /* ~"In Ordnung, mach ich."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"Ich denk drüber nach, Wiedersehen."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"Ich möchte damit nichts zu tun haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~Er lächelt und verbeugt sich leicht. "Ausgezeichnet. Hier ist der Schlüssel zu meinem Keller. Erledige das Untier, dann bezahle ich dich."~ */
  IF ~~ THEN REPLY #51498 /* ~Nimm den Schlüssel und geh.~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~Ich bin zum Büro zur Schädlings- und Seuchenbekämpfung gegangen, um mit Phineas T. Lort zu sprechen. Er war ziemlich fertig und hat immer was davon geschwafelt, daß in seinem Keller eine Werratte haust. Ich habe mich bereit erklärt, die Kreatur gegen eine Belohnung zu töten.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~Du siehst Phineas. Er sieht dich über den Rand seiner Brille hinweg an. "Abermals beehrst du mich mit deiner Anwesenheit. Bist du vielleicht gekommen, um meiner Bitte zu entsprechen und mir beim Töten des Untiers in meinem Keller zu helfen?"~ */
  IF ~~ THEN REPLY #51500 /* ~"In Ordnung, mach ich."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"Ich glaube nicht. Leb wohl." ~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~Du siehst Phineas. Er sieht dich über den Rand seiner Brille hinweg an. "Abermals beehrst du mich mit deiner Anwesenheit. Hast du vielleicht meine Bitte, mir beim Töten des Untiers in meinem Keller zu helfen, noch einmal überdacht?"~ */
  IF ~~ THEN REPLY #51504 /* ~"Ist gut, ich mach's."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"Lieber nicht, Wiedersehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~Du siehst Phineas. Er sieht dich über den Rand seiner Brille hinweg an. "Abermals beehrst du mich mit deiner Anwesenheit. Hast du die Aufgabe erfüllt, die ich dir gestellt habe?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"Ja, die Kreatur ist tot, und ich komme, um meine Belohnung zu holen."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"Nein, noch nicht."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~Phineas lächelt dich an. "Das sind wirklich ausgezeichnete Neuigkeiten. Welche Belohnung hatte ich dir versprochen?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"Hundert einfache Kupfermünzen - und du vergißt einfach, daß ich... das Geld aus deiner Kasse geborgt hab."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"Zweihundert einfache Kupfermünzen."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"Danke für deine Dienste. Ich stehe in deiner Schuld." Er verbeugt sich.~ */
  IF ~~ THEN REPLY #51514 /* ~"Wiedersehen."~ */ JOURNAL #54870 /* ~Ich hab die Werratte erschlagen und die Belohnung von Phineas eingestrichen. War nicht viel, wenn man bedenkt, was ich durchmachen mußte, um die Aufgabe zu erfüllen, aber Geld ist Geld.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~Er sieht dich mit gerunzelter Stirn an. "Ich wäre dir dankbar, wenn du dich schnell dieser Angelegenheit annehmen könntest. Guten Tag."~ */
  IF ~~ THEN REPLY #51516 /* ~Geh.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~Du erblickst Phineas. Er schiebt seine Brille auf der Nase hoch und sieht dich freundlich an. "Ah, mein Freund. Und was kann ich *diesmal* für dich tun, hmnnnn?"~ */
  IF ~~ THEN REPLY #64157 /* ~"Diesmal bist du nicht vor Schreck aus deiner Haut gehüpft, als ich hereinkam."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~Er seufzt und lächelt dich dann an. "Nach deiner heldenhaften Tat fühlte ich mich... frei. Ich muß zugeben, daß ich mich seit Jahren nicht mehr so wohlgefühlt habe." Er überlegt einen Moment. "Ich danke dir dafür. Und was kann ich nun für dich tun?~ */
  IF ~~ THEN REPLY #64161 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"Nichts. Leb wohl."~ */ EXIT
END
