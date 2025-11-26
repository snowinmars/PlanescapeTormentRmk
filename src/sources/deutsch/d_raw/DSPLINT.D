// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~Die goldene Haut dieses turmhohen Mannes glitzert leicht, beinahe so, als bestehe sie aus Metall - ob das sein Fleisch ist oder nur aufgemalt, kannst du nicht sagen. Er sieht dich kühl an, als du dich näherst, und verbeugt sich respektvoll, als du vor ihm stehst. "Willkommen in der Städtischen Festhalle, Reisender. Wir sind Splitter, Türsteher der Festhalle und Priester-König von Ur. Wie können Wir dir helfen?" Trotz seines bescheidenen Hilfeangebots ist seine Stimme kraftvoll und befehlend, ein tiefer, rumpelnder Klang, der im ganzen Raum widerhallt.~ */
  IF ~~ THEN REPLY #65145 /* ~"Wie kannst du mir helfen?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"Ich brauche im Moment keine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"Wir beantworten gerne alle Fragen, die Wir beantworten können, sofern sie einen Bezug zur Festhalle oder zur Gesellschaft der Empfindung haben."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"Da ist dieser Mann, Iannis. Ich hatte gehofft, du würdest ihm für eine Weile Zugang zum Privaten Sinnsorium gestatten..."~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"Gibt es hier einen Übersetzer oder Gelehrten, der mir mit der Sprache in diesem Dodekahedron helfen kann?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"Jumble Mördersinn hat mich verflucht. Kannst du oder sonst irgendjemand hier mir helfen?"~ */ JOURNAL #66264 /* ~Ich habe mit Splitter über Jumbles Fluch auf mir gesprochen, und er hat vorgeschlaggen, daß ich mit einem Mann namens Salabesh rede. Er hat mir erzählt, daß Salabesh sich in oder genau vor der Festhalle aufhalten sollte und daß er normalerweise Roben in Rot und Schwarz trägt.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"Ich hätte eine Frage zu dir..."~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"Wie kannst du mir helfen, Splitter?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"Kann ich mich hier irgendwo ausruh'n?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"Kann ich mich hier irgendwo ausruh'n?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"Erzähl mir was über die Festhalle."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"Da gibt es jemand, den ich hier suche..."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"Gibt es hier jemand, der etwas über Ravel Rätselschön weiß?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"Wir tun vieles in dieser schönen Halle, Reisender. Wir beantworten Fragen von Gästen zur Halle oder zu ihren Bewohnern. Wir leiten sowohl Besucher als auch Mitglieder der Gesellschaft der Empfindung zu den Sinnsorien oder zu den Vorlesunghallen weiter. Außerdem nehmen wir neue Mitglieder in die Gesellschaft auf. Und schließlich sind Wir es, die in den Gewölben der Gesellschaft Verkäufe abwickeln... Zauber, Gegenstände und dergleichen."~ */
  IF ~~ THEN REPLY #48523 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"Kannst du mir den Weg zu den Sinnsorien zeigen?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"Was für Vorlesungen kann man hier besuchen?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"Ich möchte etwas aus den Sinnsatengewölben kaufen..."~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"Wie kann ich etwas aus den Sinnsatengewölben kaufen?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"Es gibt zwei: das öffentliche Sinnsorium, in dem Besucher für eine Gebühr zwischen zehn und fünfzehn Einfachen die Sinnessteine benutzen können, und das private Sinnsorium, zu dem nur die Mitglieder der Gesellschaft der Empfindung Zutritt haben. In keines der beiden kannst du alleine gelangen. Wir müssen dich *hinbringen*."~ */
  IF ~~ THEN REPLY #48530 /* ~"Dann bring mich ins Öffentliche Sinnsorium."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"Dann bring mich ins Private Sinnsorium."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"Wie gelange ich ins private Sinnsorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"Moment... Ich hätte da noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"Eigentlich wollt ich gerade geh'n. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"Zu den aktuellen Rednern in der Festhalle zählen der Advokat des Todes mit seinen Ausführungen zum Tod und was danach kommt. Auf ihn folgen Ghysis, der Krumme, der über den Blutkrieg spricht und Drei-Ebenen-Ausgerichtet, der von der Macht der Gesinnung und des Glaubens berichtet. Vorausgesetzt, daß sie gerade hier sind, könnten Wir Euch jederzeit zu einer ihrer Vorlesungen führen."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"Ich möchte die Vorlesung des Advokaten des Todes besuchen."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"Ich möchte die Vorlesung von Ghysis, dem Krummen besuchen."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"Ich möchte die Vorlesung von Drei-Ebenen-Ausgerichtet besuchen."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"Ich hätte da eine Frage zu etwas anderem..."~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"Es gibt nur wenig, was Wir Euch noch nicht erzählt haben. Wir sind der Splitter, Türsteher der Festhalle, Sohn des Halbgottes Isahar und Priesterkönig von Ur. Ebenenreisende sind in unsere Welt gekommen und haben Uns von der Gesellschaft der Empfindung erzählt. Wir waren fasziniert und sind mit ihnen zurückgegangen. Wir haben Ur solange unserer fähigen Königin anvertraut, damit Wir an diesen Ort gehen und eine Zeitlang die Erfahrung von 'Knechtschaft' und 'Demut' machen konnten. Da die Zeit hier schneller vergeht als in Ur, entsprechen dem Jahrhundert, das Wir hier verbracht haben, kaum einige Monate in Unserer Welt. Nach etwa einem weiteren Jahrzehnt werden Wir wohl bereit sein, nach Ur zurückzukehren und es aufs Neue zu regieren."~ */
  IF ~~ THEN REPLY #48542 /* ~"Ich... verstehe. Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"Mehr... wollt ich gar nicht wissen. Leb wohl, Splitter."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"Die Städtische Festhalle ist eines der größten Gebäude in Sigil. Es beherbergt mit der Gesellschaft der Empfindung den größten Bund der Stadt. Sie umfaßt die Sinnsorien, Vorlesungshallen, Ausbildungsräume und dergleichen sowohl für Besucher als auch für Mitglieder der Gesellschaft.~ */
  IF ~~ THEN REPLY #48545 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"Erzähl mir über die Sinnsorien."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"Erzähl mir was über die Ausbildungsräume."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"Kernstück des Sinnsatenglaubens ist, daß das Multiversum nur über die Sinne *wahrhaft* erfaßt werden kann. Wenn ein Gegenstand nicht mit den Sinnen wahrgenommen werden kann, existiert er *nicht*. Nur über die Erfahrung... durch das Wahrnehmen aller möglichen Empfindungen... kann die ganze Wahrheit des Multiversums offenbar werden. Die Gesellschaft der Empfindung sammelt Erfahrungen und teilt sie mit Hilfe der Sinnsorien mit anderen."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"Könnte ich Sinnsate werden?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"Sinnsorien sind Räume, die viele Aufzeichnungs- oder Sinnessteine beherbergen. Diese Steine sind so verzaubert worden, daß sie verschiedenste Wahrnehmungen oder Erfahrungen enthalten, die später von anderen durch die Benutzung des Steins abgerufen werden können. Wenn Ihr es wünscht, können Wir Euch zu einem von ihnen hinführen."~ */
  IF ~~ THEN REPLY #48742 /* ~"Ja, tu das doch bitte."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"Nein, aber ich hätte da eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"Nein... Im Augenblick nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"Es gibt insgesamt drei - einen für Krieger, einen für Diebe und einen für Magiespezialisten. Wenn Ihr sie aufsuchen möchtet, geht durch die mittlere Tür in der Ostwand sowie durch die dahinterliegende Tür. Ihr befindet Euch dann in der Ecke eines Korridors... Entlang des nach Osten führenden Gangs sind drei Türen in der Südwand. Jede Tür führt in einen der Ausbildungsräume."~ */
  IF ~~ THEN REPLY #48559 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"Wen habt Ihr noch gleich gesucht, Reisender?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"Finam, den Linguisten."~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"Lady Jolmi aus dem Hause Syrma..."~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"Frohmann."~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"Qui-Sai, den Lehrer der Krieger."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"Eli Sonnenhut, den Lehrer der Diebe."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"Lady Dornenkamm, die Lehrerin der Zauberer."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"Montague, das Faktotum hier."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"Montague, das Faktotum hier."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"Eigentlich niemanden. Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"Ach, ist nicht so wichtig. Leb wohl, Splitter."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"Finam hält hier zur Zeit keine Vorlesungen. Ihr findet ihn am ehesten in seinem Haus. Geht vom Eingang der Festhalle gesehen in südliche Richtung zwischen Yvanas Galerie und der Apotheke. Ihr seht es zu Eurer Rechten. Es ist das kleine fünfeckige Haus westlich vom Kuriositätenladen."~ */
  IF ~~ THEN REPLY #48573 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"Jolmi hat sich vor einiger Zeit angewöhnt, genau in diesem Raum zu warten. Wir glauben, daß sie nach jemandem sucht oder auf jemanden wartet. Jedenfalls müßte sie in der Nähe sein."~ */
  IF ~~ THEN REPLY #48576 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"Qui-Sai sucht häufig ruhige Orte zum Meditieren auf. Er ist höchstwahrscheinlich in einem weniger vollen Raum zu finden, abseits von den anderen, regungslos und im Zustand stiller Kontemplation."~ */
  IF ~~ THEN REPLY #48580 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"Eli Sonnenhut hat das Gebäude vor einiger Zeit verlassen und sah ziemlich verärgert aus. Wir vermuten, daß er sich irgendwo im Bezirk in der Nähe der Städtischen Festhalle aufhält."~ */
  IF ~~ THEN REPLY #48583 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~Splitter runzelt leicht die Stirn und kneift die Augen zusammen. "Sie ist zweifellos in einem der Sinnsorien zu finden. In letzter Zeit hat sich Lady Dornenkamm um ihre Pflichten gedrückt und viel zu viel Zeit mit den Sinnessteinen verbracht. Du kannst nicht alleine dorthin gelangen, aber Wir könnten dich zu einem *bringen*, wenn du das möchtest."~ */
  IF ~~ THEN REPLY #48586 /* ~"Ja, tu das doch bitte."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"Nein, aber ich hätte da eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"Nein... Im Augenblick nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"Montague ist ein vielbeschäftigter junger Mann. Er ist für gewöhnlich ständig zwischen diesem Raum und drei weiteren unterwegs, die entlang der östlichen Wand dieses Raums liegen."~ */
  IF ~~ THEN REPLY #48590 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"Um Mitglied der Gesellschaft der Empfindung zu werden, muß man bereit sein, seine eigenen Erfahrungen zu teilen. Fünf Erfahrungen sind erforderlich - von jedem Sinn eine. Als Alternative kann man eine einzige Erfahrung beisteuern, die starke Elemente von allen fünf Sinnen enthält. Es muß sich entweder um neue Wahrnehmungen handeln oder um Verbesserungen, die auf unserem gegenwärtigen Erfahrungsschatz aufbauen. Wenn Wir die Erfahrungen für akzeptabel erachten, werden sie in die Sinnessteine eingeschlossen, und Euch wird als neuem Sinnsaten das 'Gesundheit verleihen' beigebracht. Dies erlaubt Euch, die Wunden anderer auf Euch selbst zu beziehen, und sie zu heilen, indem Ihr ihr Leiden annehmt."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"Ich bin schon Mitglied der Göttermenschen, aber..."~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"Ich bin schon Mitglied der Staubmenschen, aber..."~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"Ich bin schon Mitglied in... einem anderen Bund, aber..."~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"Ich bin schon Mitglied der Xaositekten, aber..."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"Ich bin schon Mitglied der Göttermenschen. Ich hab meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~" Ich bin schon Mitglied der Staubmenschen. Ich hab meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"Ich bin schon Mitglied in... einem anderen Bund. Ich hab's mir anders überlegt... Ich werde den Spieß nicht umdrehen."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"Ich bin schon Mitglied der Xaositekten. Ich hab meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"Ich bin bereit. Ich möchte Sinnsate werden."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"Ihr müßt ein Mitglied der Gesellschaft der Empfindung sein."~ */
  IF ~~ THEN REPLY #48605 /* ~"Kann ich dann Sinnsate werden?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"Was, wenn ich schon Sinnsate *wäre*? Ich war zwar lange nicht hier, aber ich versichere dir... Ich bin Sinnsate."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~Bluff: "Oh, aber ich *bin* Sinnsate! Ehrlich!"~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~Bluff: "Aber ich bin bereits Mitglied, Splitter... Ich bin einfach lange nicht hiergewesen. Ich habe viele Erfahrungen in meiner Abwesenheit gesammelt... so viele wie Narben auf meinem Körper."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~Splitter beugt sich etwas nach unten, um dich aus der Nähe zu mustern. "Wir erkennen Euch nicht... aber Wir sehen keine Lügen von Eurer Zunge tropfen. Also gut. Wir werden Euch die Privilegien erteilen, in deren Genuß nur Mitglieder der Gesellschaft der Empfindung kommen,... *wenn* Ihr Uns zeigen könnt, welche Erfahrungen Ihr in letzter Zeit gesammelt habt."~ */
  IF ~~ THEN REPLY #48612 /* ~"Also gut... Ich bin bereit."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"Ach, ist nicht so wichtig. Leb wohl, Splitter."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"Ein echter Priesterkönig von Ur kann erkennen, ob einem Lügen von der Zunge tropfen. Es wäre unklug, Uns zu belügen, Reisender."~ */
  IF ~~ THEN REPLY #48616 /* ~"Ich hab... Spaß gemacht, nicht gelogen. Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"Verzeih mir. Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"Ich hab bloß... Spaß gemacht, Splitter. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"Dann bitte ich dich um Vergebung, Splitter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~Seine Augen verengen sich, und er mustert dich. "Hmmm... Also gut. Wir werden Euch die Privilegien erteilen, in deren Genuß nur Mitglieder der Gesellschaft der Empfindung kommen,... *wenn* Ihr Uns zeigen könnt, welche Erfahrungen Ihr in der letzten Zeit gesammelt habt."~ */
  IF ~~ THEN REPLY #48621 /* ~"Also gut... Ich bin bereit."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"Ach, ist nicht so wichtig. Leb wohl, Splitter."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~Splitter nickt nur.~ */
  IF ~~ THEN REPLY #48625 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"Sie werden Euch nicht vergeben. Es wird kein Zurück geben."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"Ich bin bereit, Mitglied der Gesellschaft der Empfindung zu werden. Ich fühle mich den Göttermenschen nicht mehr verpflichtet."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"Ich bin bereit, Mitglied der Gesellschaft der Empfindung zu werden. Ich fühle mich den Staubmenschen nicht mehr verpflichtet."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"Ich bin bereit, der Gesellschaft der Empfindung beizutreten. Ich verspüre keine Loyalität mehr gegenüber... meinem alten Bund."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"Ich bin bereit, Mitglied der Gesellschaft der Empfindung zu werden. Ich fühle mich den Xaositekten nicht mehr verpflichtet."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~Lüge, um die Sinnsaten für die Anarchisten zu infiltrieren: "Ich bin bereit, der Gesellschaft der Empfindung beizutreten. Ich verspüre keine Loyalität mehr gegenüber... meinem alten Bund."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"Ich denke nicht, daß ich dazu bereit bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"Da wäre zunächst die Frage, welchen *Geruch* - oder welche damit verbundene Erfahrung - Ihr Uns anbieten könntet?"~ */
  IF ~~ THEN REPLY #48636 /* ~"Ich möchte eigentlich eine Erfahrung beisteuern, die alle fünf Sinne umfaßt: Ich wußte nicht, wo ich war, als ich auf einer blutverschmierten, eisernen Totenbank in den Tiefen der Leichenhalle aufgewacht bin, an einem Ort, den nur die Staubmenschen und die Leichen in ihrer Obhut gesehen haben..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~Er nickt. "Eine unangenehme Erfahrung."~ */
  IF ~~ THEN REPLY #48638 /* ~"Und ich hab sogar noch den Teil mit dem plappernden Schädel weggelassen, der auf mich zugeflogen ist, kaum daß ich wieder auf den Beinen war. Reicht das, Splitter?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"Ja... Wir werden jetzt zu einem leeren Stein gehen, um Eure Erfahrung aufzuzeichnen. Dann werden Euch die Privilegien erteilt, in deren Genuß nur Mitglieder der Gesellschaft der Empfindung kommen, und es wird Euch das 'Gesundheit verleihen' beigebracht."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~Begleite ihn, um deine Erfahrung aufzuzeichnen und um die Fähigkeit zu erlernen, Gesundheit zu verleihen.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~Begleite ihn, um deine Erfahrung aufzuzeichnen und gib vor, die Fähigkeit zu erlernen, Gesundheit zu verleihen.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~Du kommst mit Splitter in das Foyer der Städtischen Festhalle zurück.

"Wir heißen Euch in der Gesellschaft der Empfindung willkommen, Reisender. Mögen weitere Reisen und Erfahrungen Euren Weg zu den großen Wahrheiten des Multiversums pflastern."~ */
  IF ~~ THEN REPLY #48643 /* ~"Danke, Splitter. Ich hätte da eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"Hab Dank. Leb wohl, Splitter."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"Dann würden wir Euch um fünf Erfahrungen bitten, von denen jede einem der Sinne zugeordnet ist... Oder um eine einzige Erfahrung, die starke Elemente von allen fünf Sinnen enthält."~ */
  IF ~~ THEN REPLY #48646 /* ~"Dann hätte ich eine einzige Erfahrung beizusteuern: Ich wußte nicht, wo ich war, als ich auf einer blutverschmierten, eisernen Totenbank in den Tiefen der Leichenhalle aufgewacht bin, an einem Ort, den nur die Staubmenschen und die Leichen in ihrer Obhut gesehen haben..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~Er nickt. "Eine unangenehme Erfahrung."~ */
  IF ~~ THEN REPLY #48648 /* ~"Und ich hab sogar noch den Teil mit dem plappernden Schädel weggelassen, der auf mich zugeflogen ist, kaum daß ich wieder auf den Beinen war. Reicht das, Splitter?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"Ja. Wir heißen Euch erneut willkommen, Reisender, und erteilen Euch die Privilegien, in deren Genuß nur Mitglieder der Gesellschaft der Empfindung kommen."~ */
  IF ~~ THEN REPLY #48650 /* ~"Danke, Splitter. Ich hätte da eine Frage..."~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"Hab Dank. Leb wohl, Splitter."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"Es gibt Unterkünfte innerhalb der Festhalle, doch nur Mitgliedern der Gesellschaft der Empfindung ist es gestattet, sie zu nutzen. Wenn Ihr sie Euch ansehen möchtet, dann geht von hier aus in östliche Richtung durch die Festhalle. Dann werdet Ihr irgendwann zu ihnen gelangen. Der Kurator dort gibt den Sinnsaten Einlaß zu ihren Räumen."~ */
  IF ~~ THEN REPLY #48653 /* ~"Also... es gibt keinen anderen Weg, um hier ein Zimmer zu bekommen?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~Splitter betrachtet dich so kühl wie immer, als du dich näherst. "Wir heißen Euch aufs Neue in der Städtischen Festhalle willkommen, Reisender. Womit können Wir Euch dienen?"~ */
  IF ~~ THEN REPLY #65146 /* ~"Wie kannst du mir helfen?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"Ich brauche im Moment keine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~Splitter nickt. "Erzählt weiter."~ */
  IF ~~ THEN REPLY #48660 /* ~"Mein gesamter Körper hat nach Balsamierungsöl gestunken. Doch selbst dieser Geruch konnte an Intensität nicht mit dem Kupfergeruch des Blutes um mich herum mithalten. Dutzende von Leichen haben auf unzähligen blutigen Totenbänken gelegen, die genauso ausgesehen haben wie die, auf der ich aufgewacht bin. Und all diese Leichen wurden gerade von alptraumhaften Uhrwerkgeräten aus irgendeinem Grund ausgenommen, gefleddert und dergleichen. Die einzigen Geräusche waren das Quietschen von bearbeitetem Metall und der ungleichmäßige Gang untoter Arbeiter, wenn sie die Totenbänke auf verrosteten Eisenschienen durch die Leichenhalle geschoben haben."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~Splitter nickt. "Erzählt weiter."~ */
  IF ~~ THEN REPLY #48662 /* ~"Mein gesamter Körper hat nach Balsamierungsöl gestunken. Doch selbst dieser Geruch konnte an Intensität nicht mit dem Kupfergeruch des Blutes um mich herum mithalten. Dutzende von Leichen haben auf unzähligen blutigen Totenbänken gelegen, die genauso ausgesehen haben wie die, auf der ich aufgewacht bin. Und all diese Leichen wurden gerade von alptraumhaften Uhrwerkgeräten aus irgendeinem Grund ausgenommen, gefleddert und dergleichen. Die einzigen Geräusche waren das Quietschen von bearbeitetem Metall und der ungleichmäßige Gang untoter Arbeiter, wenn sie die Totenbänke auf verrosteten Eisenschienen durch die Leichenhalle geschoben haben."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~Splitter schließt die Augen und denkt kurz nach. "Wir würden Euch raten, mit einem Zauberer namens Quell über Ravel zu sprechen. Quell hält sich ständig irgendwo in der Festhalle auf. Er ist häufig im privaten Sinnsorium zu finden."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"Zeig mir den Weg zum privaten Sinnsorium."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"Wie gelange ich ins private Sinnsorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"Frohmann geht für gewöhnlich in der Nähe der Vorlesungshallen auf und ab. Geht durch die mittlere Tür in der östlichen Wand und dann durch die dahinterliegende Tür. Er dürfte in dem Korridor umhergehen, in dem Ihr Euch dann befindet."~ */
  IF ~~ THEN REPLY #48669 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"Geht durch die mittlere Tür in der Ostmauer und dann durch die dahinterliegende Tür. Geht anschließend den Korridor hinunter,  und dann durch die zweite Tür auf der Nordseite."~ */
  IF ~~ THEN REPLY #49869 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"Geht durch die am südlichsten gelegene Tür in der Ostmauer."~ */
  IF ~~ THEN REPLY #49872 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"Geht durch die mittlere Tür in der Ostwand und dann durch die dahinterliegende Tür. Geht dann den Korridor hinunter, in dem Ihr Euch befindet, und geht durch die erste Tür auf der Nordseite."~ */
  IF ~~ THEN REPLY #49875 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"Und aus welchem Grund sollten Wir so etwas erlauben?"~ */
  IF ~~ THEN REPLY #51518 /* ~"Weil einer der Steine dort ein Fragment der Erinnerungen seiner Tochter enthält. Sie starb weit weg von zu Hause, nachdem sie sich schon lange nicht mehr gesehen hatten, und er trauert zutiefst um sie."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~Ich habe mit Splitter, dem Türsteher der Städtischen Festhalle, darüber gesprochen, ob Jannis die Erlaubnis bekommen könnte, den Sinnesstein seiner Tochter zu sehen. Splitter würde ihn reinlassen, also muß ich Jannis nur noch Bescheid sagen...~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~Splitter nickt, denkt einen Moment nach und nickt dann erneut. "Ja, Wir werden diesem Jannis erlauben, das private Sinnsorium zu betreten - natürlich nur in entsprechender Begleitung. Du kannst ihm sagen, daß er die Erlaubnis hat."~ */
  IF ~~ THEN REPLY #51520 /* ~"Danke, Splitter. Ich hätte noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"Meinen Dank. Wiedersehen, Splitter."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~Spöttisch sieht der riesige Mann auf dich herunter. "Du wirst den guten Leuten hier nicht mehr zur Last fallen. Wir werden schon dafür sorgen, daß du von hier verschwindest." Er winkt, alles verschwimmt vor deinen Augen, und die Festhalle scheint wegzuschmelzen.~ */
  IF ~~ THEN REPLY #56843 /* ~"Was...?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"Wir kennen einen solchen Mann, der dir vielleicht helfen kann - Finam."~ */
  IF ~~ THEN REPLY #65148 /* ~"Wo kann ich ihn finden?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"Ja, in der Festhalle gibt es Unterkünfte. Wenn Ihr sie sehen wollt, geht von hier ostwärts durch die Festhalle, und Ihr kommt direkt drauf zu. Wendet Euch dort an den Raumverwalter."~ */
  IF ~~ THEN REPLY #66168 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"Wir würden Euch empfehlen, Euch an jemanden namens Salabesh zu wenden. Wenn er gerade nicht in der Festhalle ist, hält er sich in ihrer unmittelbaren Umgebung auf. Salabesh ist groß und dünn und trägt häufig schwarze oder purpurrote Roben."~ */
  IF ~~ THEN REPLY #66259 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
