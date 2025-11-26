// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAMRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAMRYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3020 /* ~Du siehst einen korpulenten Mann mit kantigem Kiefer. Er wendet sich dir mit einem breiten Lächeln zu. "Wie geht es dir, Schleifer. Einen wunderschönen Tag wünsche ich." Er blinzelt kurz, dann schüttelt er deine Hand.~ */
  IF ~~ THEN REPLY #3021 /* ~Schüttel seine Hand. "Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36645 /* ~"Beachte den Mann nicht."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36646 /* ~"Hamrys, Mitglied des Harmoniums und Designer von eleganten Särgen für die gerade Dahingeschiedenen - zu Euren Diensten. Ich glaube, ich habe Euch schon einmal gesehen... Vielleicht komme ich drauf..." Er hält inne, um nachzudenken. "Ich war wirklich gut mit Namen im Harmonium, das kann ich wohl sagen. Kannte jeden einzelnen im Bezirk..."~ */
  IF ~~ THEN REPLY #36647 /* ~Lüge: "Mein Name ist Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hamrys_1","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36648 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36649 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 14.2 15.3 16.1 17.1 18.0 19.0 20.1 21.0 23.1 24.1 25.1 29.1 31.1 32.1 33.1 34.1 35.1 36.1 37.2 38.3 39.1 40.1 41.1 42.1 43.1 45.0 47.0 48.1 49.2 50.2 52.1 54.2 55.2 57.1 59.1 60.0 61.3 62.1 63.1 64.1 65.0 66.0 67.2 68.2 69.1 71.2 72.2 73.0 74.1 76.0
  SAY #36650 /* ~Er nickt dir zu. "Frag ruhig." Er sieht dich mit einem breiten Lächeln an.~ */
  IF ~  Global("Dream","GLOBAL",3)
Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36651 /* ~"Ich muß ein Sargkissen kaufen."~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36652 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 19
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36653 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 20
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #36654 /* ~"Ich vermisse ein Journal. Hast du eins gesehen?"~ */ GOTO 22
  IF ~  Global("Know_Hamrys_Father","GLOBAL",1)
~ THEN REPLY #36655 /* ~"Ich hab' gehört, dein Vater ist gestorben. Kannst du mir erzählen, was passiert ist?"~ */ GOTO 41
  IF ~  !Global("Release_Dimtree","GLOBAL",5)
~ THEN REPLY #36656 /* ~"Wer ist dein Freund hier?"~ */ GOTO 42
  IF ~~ THEN REPLY #36657 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 46
  IF ~~ THEN REPLY #36658 /* ~"Was weißt du über die Stadt Sigil?"~ */ GOTO 55
  IF ~~ THEN REPLY #36659 /* ~"Ich muß jetzt weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36660 /* ~Er nickt dir zu. "Ah! Dann bist du also hier, um etwas zu erwerben. Ich versichere dir, was ich tue, ist eine Liebhaberarbeit. Der wirkliche Wert meines Berufs ist das Bauen des Sarges... das eigentliche Zusammenbauen, und zwar gut. Es ist eine ganz und gar geordnete Kreation, jedes Teil muß passen für die Wertsteigerung des Ganzen. Es ist fast wie eine Metapher für die Philosopie des Harmoniums... wir erzeugen Ordnung, und darin liegt Schönheit..."~ */
  IF ~~ THEN REPLY #36661 /* ~"Ich brauche bloß ein Kissen..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36662 /* ~Er nickt dir erneut zu. "Erstmal brauche ich fünfzig Kupferstücke für die Grundbretter, wobei diese Ausgabe jedoch die Arbeitszeit noch nicht umfaßt. Gewöhnlich werden sie dann entweder weiß getüncht oder mit einer vom Kunden gewählten Farbe bemalt. Die Bretter selbst sind normalerweise ein Sechzehntel Handspanne dick, vielleicht auch mehr, das hängt von der Leiche ab, ob es zum Beispiel ein Mensch ist, der begraben wird, oder nicht. Oder ob sie befürchten, daß die Person vielleicht wieder aufsteht." Er lacht.~ */
  IF ~~ THEN REPLY #36663 /* ~"Ich brauche bloß ein Kissen..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36664 /* ~Er nickt dir erneut zu. "Einige bevorzugen bytopianische Kiefer, die wirklich schön und traditionell ist, aber ich finde die schweren arboreanischen Eichenmaterialien besser, ganz einfach, weil sie so viel wiegen. Sogar ein Zwanzigstel Zoll Eiche ist stärker als ein Sechzehntel Handspanne Kiefer..." Er hält einen Moment inne.~ */
  IF ~~ THEN REPLY #36665 /* ~"Ich sagte, ich brauche bloß ein Kissen..."~ */ GOTO 6
  IF ~~ THEN REPLY #36666 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36667 /* ~Er nickt dir zu. "Dann brauche ich so ungefähr zwanzig mal zwanzig stählerne Holzschrauben mit den Maßen von ungefähr acht mal eineinviertel Zoll oder so. Gibt's in vielen Läden hier in der Gegend, ist nicht schwierig, die ranzukriegen. Dann brauche ich noch Metallstifte, um die Innenverkleidung zu befestigen; am besten besorgt man die auch gleich. Dann geht's noch um die Leisten und Eckstücke, je nach dem, wie du die haben willst."~ */
  IF ~~ THEN REPLY #36668 /* ~"Hörst du, was ich sage? Ich sagte, ich brauche bloß ein Kissen!"~ */ GOTO 7
  IF ~~ THEN REPLY #36669 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36670 /* ~Er stützt sein Kinn auf. "Ich lasse zwar im allgemeinen das natürliche Holz die Farbe des Sarges sein, aber manchmal will der Kunde ihn in einer bestimmten Farbe gestrichen oder etwas eingraviert haben... Normalerweise mache ich die feinere Arbeit dafür nicht selbst, obwohl ich die Ausbildung habe, sondern vergebe den Auftrag..." Er hält einen Moment inne, um Atem zu holen. "Und dann kommen noch die Griffe dran; das ist wieder ganz was anderes..." Er nickt wissend.~ */
  IF ~~ THEN REPLY #36671 /* ~Seufze: "Was ist mit den Griffen?"~ */ GOTO 8
  IF ~~ THEN REPLY #36672 /* ~"Wenn du nicht gleich den Mund hältst und mir ein Kissen gibst, verpasse ich dir eine... und zwar kräftig."~ */ GOTO 10
  IF ~~ THEN REPLY #36673 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #36674 /* ~"Schwierige Angelegenheit, die Griffe: Hängt alles davon ab, wie der Sarg getragen werden soll - wenn Leute vom Friedhof den Sarg auf Schulterhöhe tragen, dann brauchst du gar keinen Gedanken an Griffe zu verschwenden, professionelle Sargträger benutzen die nämlich nie, mußt du wissen. Wenn hingegen Freunde und Verwandte den Sarg tragen, dann sind Griffe notwendig. Du brauchst Kordelgriffe oder gar Metallgriffe..." Er wirft dir einen zufriedenen Blick zu.~ */
  IF ~~ THEN REPLY #36675 /* ~"Das ist ja schön und gut, aber ich bin hier rein gekommen, weil ich ein Kissen suche... Hast du welche?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36676 /* ~"Ich werde dir ein Beispiel geben: Ich glaube, der schönste Sarg, den ich je gesehen habe, war einer aus heller Kiefer. Ich weiß nicht, wo sie das Holz herbekommen haben, ob aus Bytopia oder woanders her... Na, jedenfalls war er sorgfältig verdübelt und mit einer wunderschönen Rotholzkante verziert. Der Effekt wurde allerdings ziemlich zerstört durch die großen, rohen Hanfseile, die drumherum liefen. Natürlich mußten die Sargträger etwas zum Anfassen haben, aber die Schönheit dieses einmaligen Sarges mit solch schlecht gedrehtem Seil zu verschandeln..." Hamrys schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #36677 /* ~"Das ist bestimmt faszinierend, aber ich will bloß ein Kissen..."~ */ GOTO 10
  IF ~~ THEN REPLY #36678 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.0
  SAY #36679 /* ~"Dann sind da noch die Maße. Das kann eine heikle Angelegenheit sein, und ich versuche stets, sie selber zu nehmen, denn ab und zu vernachlässigt es ein Kunde, mich über die Rasse des Verstorbenen in Kenntnis zu setzen, oder er vergißt, mir so was wie den Hüftumfang mitzuteilen... wirklich außerordentlich wichtig. Und falls der Kunde noch am Leben ist, versuche ich, Zugaben in die Berechnung einzubeziehen, falls der Kunde noch etwas 'fülliger' werden sollte, bevor er stirbt, verstehst du?" Er hält inne. "Und schließlich die Konstruktion selbst..."~ */
  IF ~~ THEN REPLY #36680 /* ~"Hamrys..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36681 /* ~"Es gibt viele verschiedene Möglichkeiten, die Seiten und Endstücke am Boden des Sarges und aneinander zu befestigen. Manche Leute verwenden dafür Innenleisten oder Eckstücke und viele Holzschrauben, damit alles gut fest sitzt. Du kannst auch nach der Methode der Scheusal-Zähne vorgehen und entlang der Kanten, die zusammengefügt werden sollen, einfach abwechselnd Zungen und Aussparungen sägen, so daß die Teile perfekt ineinandergreifen, wie der Kiefer eines Scheusals. Erfordert ein wenig mehr Arbeit, aber das Ergebnis ist sauber und sehr robust." Er macht wieder eine Pause, um Atem zu holen.~ */
  IF ~~ THEN REPLY #36682 /* ~"Hamrys..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36683 /* ~"Nicht zu vergessen den Deckel. Der Deckel muß einen Rand oder was ähnliches entlang der gesamten Kantenlänge aufweisen, der aus einem Streifen Holz gemacht ist und am Kasten befestigt oder entlang der Kante geschnitzt ist. Wenn du dann erstmal ein paar Führungslöcher in den Sarg gebohrt hast, kannst du die Schrauben im Abstand von ungefähr einer halben Handspanne oben in den Deckel einschrauben." Du hast langsam den Eindruck, daß er überhaupt nicht mehr aufhören wird zu reden, jetzt wo er so voll in Schwung ist.~ */
  IF ~~ THEN REPLY #36684 /* ~"Wenn du nicht gleich den Mund hältst und mir ein Kissen gibst, verpasse ich dir eine... und zwar kräftig."~ */ GOTO 13
  IF ~~ THEN REPLY #36685 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36686 /* ~Du glaubst, du hast endlich seine Aumerksamkeit. Er sieht dich ganz durcheinander an. "Bitte?"~ */
  IF ~~ THEN REPLY #36687 /* ~"Ich sagte, ich brauche ein Sargkissen. Das ist alles, ein einfaches Kissen. Hast du welche?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36688 /* ~Er lächelt erleichtert. "Ein Kissen? Ah, ich dachte, Ihr bräuchtet vielleicht den ganzen Sarg." Er legt wieder die Hand auf sein Kinn. "Es tut mir schrecklich leid, aber ich habe gerade keine Kissen vorrätig. Ich weiß nicht, wann ich wieder welche reinbekomme, jetzt, wo das Lagerhaus geschlossen ist und das alles..."~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36689 /* ~"Lagerhaus?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36690 /* ~"Ja, du hast die Probleme erwähnt. Worum ging es noch mal gleich ?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #36691 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36692 /* ~"Mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #36693 /* ~"Ja... Das Lagerhaus, in dem ich meine Ware habe, hat irgendwelche 'internen Probleme'. Neues Management oder irgendso ein Unsinn. In letzter Zeit konnte ich meinen Vorrat nicht auffüllen." Er runzelt die Stirn. "Das Harmonium würde die Dinge nie so weit entgleiten lassen, daß seine Kunden in Mitleidenschaft gezogen werden..." Seine Stimme wird unhörbar, während er nachdenkt. Dann blickt er dich wieder an. "Vielleicht könntet Ihr Euch ja um diese Angelegenheit kümmern?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36694 /* ~"Ich hatte bereits mit dem Lager zu tun. Ich werde einfach hingehen und mir dort ein Kissen holen."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36695 /* ~"Ich fürchte, ich habe keine Wahl, wenn ich ein Kissen will. Ich werde es tun."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich das Sargkissen möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 16
  IF ~~ THEN REPLY #36696 /* ~"Das ist nicht mein Problem... Wieso kümmerst du dich nicht darum?"~ */ GOTO 17
  IF ~~ THEN REPLY #36697 /* ~"Ich denk drüber nach. Ich habe einige Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #36698 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.0 67.0 68.0
  SAY #36699 /* ~Er lächelt von einem Ohr zum anderen. "Hervorragend. Wenn du diese Angelegenheit zufriedenstellend erledigst, bekommst du dein Kissen vielleicht sogar umsonst..." Sein Gesicht nimmt wieder diesen 'lehrerhaften' Ausdruck an. "Das mag dir nicht wie eine befriedigende Bezahlung erscheinen, aber laß mich dir erst von der Beschaffenheit dieser Kissen erzählen..."~ */
  IF ~~ THEN REPLY #36700 /* ~"Nein danke! Ich fange sofort damit an. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36701 /* ~"Ein andermal. Ich habe einige Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #36702 /* ~Er runzelt die Stirn. "Ich habe es versucht, jedoch ohne großen Erfolg. Ich habe die Angelegenheit sogar vor dem Harmonium vorgebracht, aber diesmal können sie mir nicht helfen." Er sieht dich mit unschuldiger Miene an und hebt resigniert die Hände. "Wenn du das Kissen wirklich brauchst..." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #36703 /* ~"OK. Ich werde mich darum kümmern."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich das Sargkissen möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 16
  IF ~~ THEN REPLY #36704 /* ~"Ich denk drüber nach. Ich habe einige Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #36705 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0
  SAY #36706 /* ~Er schnippst mit den Fingern. "Natürlich! Adahn! Du kamst mir gleich bekannt vor. Also, du benötigst meine Dienste? Er betrachtet dich genau und grinst dann, weil ihm ein guter Witz auf deine Kosten auf der Zunge liegt. "Es sieht mir wirklich so aus, mein Freund, als ob du unbedingt einen Sarg bräuchtest, und zwar bald." Er scheint von seinem Witz begeistert zu sein.~ */
  IF ~~ THEN REPLY #36707 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36708 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.1
  SAY #36709 /* ~Er denkt scharf nach. "Kann nicht behaupten, jemals von diesem Typen gehört zu haben. 'Herr der Knochen' sagtest du? Nicht schlecht als Titel, was." Er grinst. "Andererseits könnte das glatt auch mein Titel sein, wo ich doch so viel mit Leichen zu tun habe. Naja, ich weiß ja, daß die meisten von ihnen noch Fleisch dran haben, aber ich mußte schon häufig Särge nur für Knochen machen. Da war zum Beispiel dieser eine Typ, dessen Knochen von etwas sauber abgenagt waren; hab' nie herausfinden können, von was..."~ */
  IF ~~ THEN REPLY #36710 /* ~Unterbrechen: "Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36711 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36712 /* ~Er zieht die Augenbrauen hoch und zuckt mit den Achseln. "Keine Ahnung, wer sowas machen würde. Über die Zeit hab' ich auch so einige Totenschädel begraben, puh. Weißt du, die meisten Leute können sich nicht vorstellen, einen Totenschädel alleine in einem Sarg zu begraben, aber ich kann dir viele Geschichten erzählen über merkwürdige Wünsche für Sargkonstruktionen. Da gab es zum Beispiel eine Anzahl von Leuten, die einfach nur Totenschädel begraben wollten, da die restlichen Körperteile der toten Person sich nicht finden ließen. Da war auch ein Mann, dessen Knochengerüst von einer Gruppe von Xaositekten zerfetzt wurde, nur so viel dazu..."~ */
  IF ~~ THEN REPLY #36713 /* ~Unterbrechen: "Was ist ein Xaositekt?"~ */ GOTO 21
  IF ~~ THEN REPLY #36714 /* ~Unterbrechen: "Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36715 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36716 /* ~Er macht eine lange Pause, bevor er antwortet. "Auf diese Frage gibt es keine Antwort, mein Freund. Sie sind einer der Bünde von Sigil und glauben an das Chaos." Er denkt weiter nach und zuckt dann die Schultern. "Meistens kann man nicht mal mit ihnen reden, sie stammeln nur unvollständige Sätze und hüpfen von einem Thema zu nächsten. Ihr Hirn, falls sie überhaupt eins haben, muß ein wüstes Durcheinander sein. Aber wo war ich doch grad stehengeblieben..."~ */
  IF ~~ THEN REPLY #36717 /* ~Unterbrechen: "Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36718 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.3
  SAY #36719 /* ~Er zuckt die Achseln. "Kann nicht behaupten, eins gesehen zu haben... außer meinem eigenen Journal natürlich. Ich mache mir gerne Notizen und schreibe meine Gedanken auf. Das ist faszinierender Lesestoff, wenn man ein paar Wochen oder einen Monat später seine Gedanken wieder ansieht." Er nickt dir zu, als ob du genau verstehen müßtest, wovon er redet.~ */
  IF ~~ THEN REPLY #36720 /* ~"Das ist okay, aber..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36721 /* ~Er labert dich einfach weiter zu. "Ich habe mit mehreren Druckern im Bezirk der Kuratoren darüber gesprochen, ob diese Aufzeichnungen nicht vielleicht gedruckt werden könnten. Mir wurde gesagt, daß sie einen ziemlich umfassenden Einblick in verschiedene Aspekte des Stadtlebens geben, die ich auf meinen Pflichtrundgängen mit dem Harmonium beobachtet habe. Und obwohl ich nie eine richtige Ausbildung hatte, waren sie sich einig, daß mein Schreibstil ziemlich eindrucksvoll ist... aber genug davon. Es wäre viel einfacher, wenn du's dir selbst anhörst. Ich könnte dir einige der besten Passagen vorlesen..."~ */
  IF ~~ THEN REPLY #36722 /* ~"OK, weiter."~ */ GOTO 24
  IF ~~ THEN REPLY #36723 /* ~"Nicht jetzt, ich habe ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #36724 /* ~"Mir reicht's für heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36725 /* ~Hamrys liest dir mehrere Passagen aus seinen monotonen Tagebüchern vor, allesamt bis zu einem gewissen Grad langweilig. Du denkst gerade darüber nach, wie du dem entfliehen könntest, als er etwas von dem Verschwinden seines Vaters erwähnt, was du nicht ganz mitkriegst. Irgendwie durchzuckt es dich da.~ */
  IF ~~ THEN REPLY #36726 /* ~"Warte, du sagtest, dein Vater ist verschwunden?"~ */ GOTO 25
  IF ~~ THEN REPLY #36727 /* ~"Das ist ja alles schön und gut, aber ich habe noch einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36728 /* ~"Mir reicht's für heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36729 /* ~Hamrys hebt seine Hand, um deine Unterbrechung abzuwehren, bis er den nächsten Absatz in einem seiner faden Journale beendet hat. "Na, was meinst du dazu? Erstaunlich umfassend für ein einfaches Mitglied des Harmoniums, was?" Er lächelt. Er scheint deine Unterbrechung vergessen zu haben.~ */
  IF ~~ THEN REPLY #36730 /* ~"Ja, sehr umfassend. Sagtest du, dein Vater ist verschwunden?"~ */ GOTO 26
  IF ~~ THEN REPLY #36731 /* ~"Also ehrlich gesagt, deine Journale sind... mir zuviel für eine Sitzung. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36732 /* ~"Ich habe deine Stimme lange genug gehört, um ein ganzes Leben davon zu zehren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 41.0
  SAY #36733 /* ~Er nickt. "Oh ja. Vor vielen, vielen Jahren. Mein Vater war ein begnadeter Steinmetz, und er konstruierte nicht bloß Sarkophage, sondern war auch richtig gut beim Bau von Grabstätten. Leute aus ganz Sigil..." Der Raum tritt langsam in den Hintergrund, als deine Erinnerung an deinem Bewußtsein rüttelt...~ */
  IF ~  !Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36734 /* ~Entspanne dich und versuche dich zu erinnern.~ */ DO ~SetGlobal("Hamrys_Mem","AR0506",1)
PlaySoundNotRanged("SPTR_01")
AddexperienceParty(500)
~ JOURNAL #36029 /* ~Ich glaube, ich habe Hamrys' Vater beauftragt, mir eine Gruft zu bauen, und ihn dann getötet. Ich weiß nicht, warum ich das getan habe...~ */ GOTO 27
  IF ~~ THEN REPLY #36735 /* ~Unterdrücke die Erinnerung und widme dich wieder Hamrys.~ */ GOTO 29
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #68426 /* ~Entspanne dich, und versuch dich zu erinnern.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.2
  SAY #36736 /* ~Du siehst dich in eben diesem Laden stehen und mit einem älteren Mann sprechen. In der Ecke sitzt ein spielendes Kind. Auf dem Ladentisch zwischen dir und dem Besitzer liegen einige Pläne. Er scheint einige komplizierte Einzelheiten bei der Konstruktion einer Grabstätte zur erläutern. Deine Vision verblaßt, als du versuchst, die Details der Pläne zu betrachten.~ */
  IF ~~ THEN REPLY #36737 /* ~Weiter.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #36738 /* ~Als du wieder klar sehen kannst, stehst du in einer großen Höhle vor einer Gruft. Über dem Eingang siehst du den Leitspruch: 'Entworfen für die Ewigkeit' deutlich in den Stein gehauen. Der Ladenbesitzer steht stolz lächelnd neben dir. Er macht dir ein Zeichen und geht in die Gruft hinein. Du holst ihn schnell ein und ziehst deine Klinge...~ */
  IF ~~ THEN REPLY #36739 /* ~Weiter.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 28.0
  SAY #36740 /* ~Du findest dich in Hamrys Laden wieder. Er sieht dich besorgt an. "Alles in Ordnung, mein Freund?"~ */
  IF ~~ THEN REPLY #36741 /* ~"Sag, was ist mit deinem Vater geschehen?"~ */ GOTO 30
  IF ~~ THEN REPLY #36742 /* ~"Mir geht's gut. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36743 /* ~"Nein, ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36744 /* ~"Er verschwand eines Tages einfach, und die meisten Aufträge blieben unvollendet. Peinliche Lage, hat lange gedauert, die Schulden zu begleichen, die durch sein Verschwinden entstanden, und wenn man es genau nimmt, habe ich immer noch verschiedene Rechnungen zu begleichen. Dennoch habe ich ein gewisses Geschick für die Arbeit, und..." Er seufzt leicht und sieht träumerisch in die Ferne.~ */
  IF ~~ THEN REPLY #36745 /* ~"Red' weiter."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #36746 /* ~Er zuckt die Achseln. "Entschuldigung, ich dachte nur gerade... Das Verschwinden meines Vaters war auch der Grund, warum ich mich dem Harmonium anschloß und es später wieder verließ. Zuerst wollte ich unbedingt herausfinden, was mit ihm geschehen war, später fühlte ich mich dann verpflichtet, sein Lebenswerk fortzuführen." Er seufzt. "Ich habe jedoch nie die Antworten gefunden, die ich gesucht habe. Es ist mir wirklich ein Rätsel, was passierte..." Seine Stimme wird immer leiser, bis sie unhörbar ist.~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36747 /* ~"Hat dein Vater irgendwelche von den Plänen aufgehoben für die Grabstätten, die er gebaut hat?"~ */ GOTO 32
  IF ~~ THEN REPLY #36748 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36749 /* ~"Ich gehe jetzt, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36750 /* ~Er denkt einen Moment nach. "Ja, hat er. Als ich volljährig war und das Geschäft übernahm, ging ich durch alle seine Aufzeichnungen. Sie waren ziemlich umfangreich. Warum fragst du?"~ */
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36751 /* ~"Wenn ich dir eine Grabstätte beschreibe, könntest du mir dann sagen, ob es ein Werk deines Vaters ist?"~ */ GOTO 33
  IF ~~ THEN REPLY #36752 /* ~"Nur so, ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36753 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36754 /* ~Er legt die Stirn in Denkfalten und zuckt dann die Schultern. "Ich kann es zumindest versuchen. Durch meine Ausbildung beim Harmonium habe ich ein gutes Erinnerungsvermögen; ich denke, ich sollte die Arbeiten meines Vaters wiedererkennen, wenn du mir genügend Details gibst." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #36755 /* ~Beschreibe die Grabstätte aus deiner Erinnerung. ~ */ GOTO 34
  IF ~~ THEN REPLY #36756 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36757 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36758 /* ~Er denkt eine ganze Weile nach. "Es besteht wenig Zweifel, daß die Grabstätte, die du mir beschreibst, die Arbeit meines Vaters war. Der Leitspruch, den du erwähnst, ist schon seit Generationen das Markenzeichen unserer Familie. Er macht eine Pause und wirft dir einen merkwürdigen Blick zu. "Diese Grabstätte, wo befindet sie sich?"~ */
  IF ~~ THEN REPLY #36759 /* ~Beschreibe den Ort.~ */ GOTO 35
  IF ~~ THEN REPLY #36760 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36761 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36762 /* ~Du beschreibst ihm die Lage in allen Einzelheiten und bist selbst überrascht, wie genau du die Gegend kennst. Hamrys beobachtet dich mit besorgtem Gesichtsausdruck. "Merkwürdig, ich kann mich an nichts in den Aufzeichnungen erinnern, das ihm auch nur erlaubt hätte, dort eine Grabstätte zu errichten. Die Staubmänner sind sehr zurückhaltend mit Baurechten und Grundstücken, vor allem unter den Straßen von Sigil..."~ */
  IF ~~ THEN REPLY #36763 /* ~"Dann erkennst du den Ort wieder?"~ */ GOTO 36
  IF ~~ THEN REPLY #36764 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36765 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36766 /* ~Er nickt enthusiastisch. "Oh, ja. Hört sich an wie die Katakomben der Weinenden Steine." Er hält inne. "Ich bin noch nie selbst dagewesen, aber ich hab in meinen Jahren im Harmonium viele Beschreibungen der Gegend gehört."~ */
  IF ~~ THEN REPLY #36767 /* ~"Ich muß wissen, ob dein Vater die Pläne für diese Grabstätte aufbewahrt hat."~ */ GOTO 37
  IF ~~ THEN REPLY #36768 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36769 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #36770 /* ~"Ja... Das Lagerhaus, in dem ich meine Waren habe, kümmert sich auch um meine Geschäftspapiere. Aber sie haben gerade irgendwelche 'internen Probleme'. Neues Management oder irgendso ein Unsinn. In letzter Zeit konnte ich meinen Vorrat nicht auffüllen, und ich glaube nicht, daß ich an irgendwelche Papier rankomme." Er runzelt die Stirn. "Das Harmonium würde die Dinge nie so weit entgleiten lassen, daß seine Kunden in Mitleidenschaft gezogen werden..." Seine Stimme wird unhörbar, während er nachdenkt. Dann blickt er dich wieder an. "Vielleicht könntet Ihr Euch ja um diese Angelegenheit kümmern?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36771 /* ~"Lagerhaus?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36772 /* ~"Ja, du hast die Probleme erwähnt. Worum ging es noch mal gleich ?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #36773 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36774 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #36775 /* ~"Ja... Das Lagerhaus hat irgendwelche 'internen Probleme', was immer das heißen mag. Ich erhalte keine Lieferung, bevor sie die Angelegenheit nicht geklärt haben." Er runzelt die Stirn. "Das Harmonium würde die Dinge nie so weit entgleiten lassen, daß seine Kunden in Mitleidenschaft gezogen werden..." Seine Stimme wird unhörbar, während er nachdenkt. Dann blickt er dich wieder an. "Vielleicht könntest du dich ja um diese Angelegenheit kümmern?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36776 /* ~"Ich hab' bereits mit dem Lager zu tun gehabt. Ich geh einfach hin und hole die Pläne."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36777 /* ~"Ich fürchte, ich habe keine andere Wahl, wenn ich die Pläne haben will. Ich tu's."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich die Gruftpläne möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 39
  IF ~~ THEN REPLY #36778 /* ~"Das ist nicht mein Problem... Wieso kümmerst du dich nicht darum?"~ */ GOTO 40
  IF ~~ THEN REPLY #36779 /* ~"Ich denk drüber nach. Ich habe einige Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #36780 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1 40.0 71.0 72.0
  SAY #36781 /* ~Er lächelt von einem Ohr zum anderen. "Hervorragend. Wenn du diese Angelegenheit zufriedenstellend erledigst, bekommst du deine Pläne vielleicht sogar umsonst..." Sein Gesicht nimmt wieder diesen 'lehrerhaften' Ausdruck an. "Das mag dir nicht wie eine befriedigende Bezahlung erscheinen, aber laß mich dir erst einmal von den Schwierigkeiten bei der Erstellung dieser Pläne erzählen..."~ */
  IF ~~ THEN REPLY #36782 /* ~"Nein danke! Ich mach' mich sofort auf den Weg. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36783 /* ~"Ein andermal. Ich habe einige Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #36784 /* ~Er runzelt die Stirn. "Ich habe es versucht, jedoch ohne großen Erfolg. Ich habe die Angelegenheit sogar vor dem Harmonium vorgebracht, aber diesmal können sie mir nicht helfen." Er sieht dich mit unschuldiger Miene an und hebt resigniert die Hände. "Wenn du die Pläne so nötig brauchst..." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #36785 /* ~"Gut. Ich werde mich darum kümmern."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 39
  IF ~~ THEN REPLY #36786 /* ~"Ich denk' drüber nach. Ich habe einige Fragen."~ */ JOURNAL #36028 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich die Gruftpläne möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 2
  IF ~~ THEN REPLY #36787 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.4
  SAY #36788 /* ~Er runzelt die Stirn. "Nun, er verschwand vor einiger Zeit, so daß ich davon ausgehen muß, daß er tot ist. Wo hast du das denn gehört?"~ */
  IF ~~ THEN REPLY #36789 /* ~"Ich erinnere mich nicht. Du sagtest, er ist verschwunden?"~ */ GOTO 26
  IF ~~ THEN REPLY #36790 /* ~"Na gut, ich habe noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36791 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.5
  SAY #36792 /* ~Er wirft einen Blick auf den Kunden. "Schwachbaum?" Er zuckt die Achseln, als hätte er den Typ vorher gar nicht beachtet. "Still. Sagt nicht viel - nicht wahr, Schwachbaum?" Schwachbaum reagiert nicht und zeigt auch weiterhin eine ausdruckslose Miene. Einige Sekunden später nickt er. Hamrys zuckt mit den Achseln und wendet sich wieder dir zu. "Kam hier eines Tages vor ein paar Wochen rein und kommt seitdem regelmäßig. Hat bisher nichts gekauft, aber er stört auch nicht; also kann er bleiben. Scheint wirklich harmlos. Weißt du, als ich im Harmonium diente, gehörte es zu unserer Arbeit, Leute unter unsere Fittiche zu nehmen, ihnen ein wenig Obdach vor dem Chaos auf den Straßen zu geben, sie 'herauszuputzen'..."~ */
  IF ~  Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36793 /* ~"Du weißt doch, daß er ein Zombie ist, oder?"~ */ GOTO 43
  IF ~  !Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36794 /* ~"Ich verstehe. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36795 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #36796 /* ~Er seufzt, wirft erst Schwachbaum und dann dir einen Blick zu. "Was redest du da für einen Unsinn? Schwachbaum ist doch kein Zombie. Gut, er mag ein bißchen still sein und bewegt sich nicht viel, aber das zeichnet nun mal einen guten Zuhörer aus -"~ */
  IF ~~ THEN REPLY #36797 /* ~Schlag Schwachbaum: "Sieh mal, Schwachbaum is'n Zombie." ~ */ GOTO 44
  IF ~~ THEN REPLY #36798 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36799 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #36800 /* ~Hamrys ist völlig schockiert. "Was im Namen des Harmoniums willst du--?!" Du schlägst Schwachbaum auf den Schädel. Ziemlich hart. Er zwinkert nicht mal mit den Augen. Hamrys wird rot und fängt an zu brüllen. "Das geht jetzt aber zu weit! Ich werde es nicht zulassen, daß du meine Kunden schlägst! Ich verhafte dich nach den Regeln des Harmoniums-" Er schweigt plötzlich und starrt verwundert auf Schwachbaum, der immer noch keine Reaktion zeigt.~ */
  IF ~~ THEN REPLY #36801 /* ~"Er ist ein Zombie, Hamrys..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #36802 /* ~Hamrys starrt Schwachbaum verwirrt an. "Ich frag mich, wie er gestorben ist." Du bekommst das Gefühl, daß Hamrys es einfach nicht kapiert. "Neulich war er doch noch ganz lebhaft." Er räuspert sich und ist tatsächlich einmal sprachlos. "Tja, sieht so aus, als ob der alte Schwachbaum nen Sarg braucht. Wie gut, daß er hier gelandet ist. Es ist nur so, was für'n Sarg sollte..." Er sieht so aus, als ob er gleich wieder einen Vortrag anfängt.~ */
  IF ~~ THEN REPLY #36803 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36804 /* ~"Ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 2.6
  SAY #36805 /* ~"Ja, der Untere Bezirk..." Er beugt sich nach vorne, als ob er einem Kleinkind etwas erklären würde. "... weißt du, die meisten Neuankömmlinge und selbst Leute im Bezirk wissen es nicht: Die meisten Leute denken, daß dieser Bezirk seinen Namen einfach daher hat, weil er nicht so vornehm wie einige der anderen ist, aber das ist ganz und gar nicht der Grund. Ganz und gar nicht. Weißt du, wo der Name herkommt? Hmmm?" Er sieht dich erwartungsvoll an.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #36806 /* ~"Von all den Portalen zu den Unteren Ebenen?"~ */ GOTO 47
  IF ~~ THEN REPLY #36807 /* ~"Nein, ich weiß nicht, woher der Name kommt."~ */ GOTO 48
  IF ~~ THEN REPLY #36808 /* ~"Ist mir egal, wo der Name herkommt. Kannst du mir sagen, was es im Bezirk zu sehen gibt?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #36809 /* ~Er nickt und wirkt etwas enttäuscht, weil du es weißt. "Ja, genau. Diese Portale zu den Unteren Ebenen sind zudem der Grund für den Smog hier am Himmel..." Er blickt nach oben, als ob der Himmel über Euren Köpfen wäre. "... aber ich bin sicher, daß du dich mit den Umständen auskennst, die diesem Bezirk zu schaffen machen."~ */
  IF ~~ THEN REPLY #36810 /* ~"Ja, ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36811 /* ~"Nein, erzähl mir davon."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.1
  SAY #36812 /* ~"Na, wegen der Portale zu den Unteren Ebenen! Sie sind auch der Grund für den ganzen Smog in der Gegend; so wie die giftige Gase und all sowas ausstoßen. Zum Glück blasen die Winde von der Säule her die schlimmsten Schwaden fort, aber der Smog kann die Schwächeren im Bezirk trotzdem lahmlegen und richtig krank machen." Er schüttelt traurig den Kopf. "Glücklicherweise hat meine Ausbildung beim Harmonium mich auf alle Arten von gefährlichen Umständen vorbereitet, und nach meinen Reisen in die Unteren Ebene ist der Smog in diesem Bezirk richtig harmlos, wirklich..."~ */
  IF ~~ THEN REPLY #36813 /* ~"Was gibt es im Bezirk zu sehen?"~ */ GOTO 49
  IF ~~ THEN REPLY #36814 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36815 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2 48.0
  SAY #36816 /* ~Er lächelt von einem Ohr zum anderen. "Eine ganze Menge, eine ganze Menge. Wo soll ich anfangen... Wenn wir all die Hochöfen, Schmieden, Brauereien und Distillerien außer acht lassen würden, die zwischen den vielen Müllfeuern verstreut liegen, ganz zu schweigen von den Alchemistenbuden, den Krematorien, den Fleischpökelhäusern und den Braunkohlebrennern, und den Bezirk dann einfach als ganzes betrachteten, könnte man sagen... Nun, da ist die Gießerei, der Belagerungsturm und..." Er zögert und muß eine Denkpause einlegen.~ */
  IF ~~ THEN REPLY #36817 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 50
  IF ~~ THEN REPLY #36818 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 51
  IF ~~ THEN REPLY #36819 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36820 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0 52.0
  SAY #36821 /* ~"Die große Gießerei ist das Hauptquartier der Gläubigen der Quelle, die von den Laien auch 'Göttermenschen' genannt werden wegen ihres Glaubens, daß jeder eine Gottheit werden kann." Er schüttelt den Kopf. "Die Große Gießerei paßt gut zu ihrer Philosophie: eine große, weitläufige Konstruktion, die nichts als heiße Luft zu produzieren scheint." Er lacht. "Ich will nur sagen, wann hat man zuletzt einen der Gläubigen der Quelle plötzlich zu einer Macht werden sehen? Nicht ein einziges Mal in der Geschichte des Bundes."~ */
  IF ~~ THEN REPLY #36822 /* ~"Erzähl mir von den Göttermenschen."~ */ GOTO 53
  IF ~~ THEN REPLY #36823 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 51
  IF ~~ THEN REPLY #36824 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36825 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1 54.0
  SAY #36826 /* ~"Das vernarbte Eisenwrack? Eines der Rätsel im Bezirk, aber ich habe mir so meine Gedanken dazu gemacht. Also, erst einmal war es nicht immer hier, wenn ich das richtig verstehe. Es kam einfach eines Nachts hierher, und niemand weiß, wie es hergekommen ist. Ihr habt doch die Außenseite gesehen, oder? Es muß unglaubliche Schlachten erlebt haben, Schlachten, die sich die meisten Leute wohl nicht vorstellen können. Ich hingegen habe die Ausläufer des Blutkrieges miterlebt, hab es sogar mir einem Scheusal von Tanar-Ri oder zweien aufgenommen, als alles gegen uns stand, und das nur mit meinen Gefährten vom Harmonium zur Seite... Und diese Narben am Turm sehen so aus, als ob sie mindestens über mehrere Jahrhunderte zugefügt wurden." Er hält einen Moment inne.~ */
  IF ~~ THEN REPLY #36827 /* ~"Red' weiter."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #36828 /* ~"Also, hört mir gut zu: Meine Erfahrung erlaubt mir, einige diese Narben, die die Seiten des Turms schmücken, zu identifizieren: Einige rühren von Säureangriffen her, ganz bestimmt von starken Zaubereien, andere stammen von Zahnklingen von Tanar-Ris, wieder andere sehen aus wie Detonationen von 'lossenkugeln oder Narben von Baatezu-Cornugonpeitschen. Dennoch sind viele der Waffen, die in die Seiten eingebettet sind, Waffen, die ich noch nie zu Gesicht bekommen habe, und ich kenne mich mit einer ganzen Reihe von Waffen in vielen verschiedenen Welten und vielen unterschiedlichen Ebenen gut aus. Da fragt man sich, was das Innere des Turms wohl birgt. Der Knochenbrecher, der den Turm aufbricht, könnte glatt ein Museum in der Hand haben. Macht einen neugierig, findet Ihr nicht?" Er starrt dich an.~ */
  IF ~~ THEN REPLY #36829 /* ~"Erzähl mir von der Gießerei. "~ */ GOTO 50
  IF ~~ THEN REPLY #36830 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36831 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY #36832 /* ~"Genau genommen, mein Freund, ist der Begriff 'Göttermenschen' die Laienbezeichnung für ihren Bund; ihr wirklicher Name ist 'Gläubige der Quelle'. Sie glauben an eine interessante, wenn auch letztendlich fehlerhafte Philosophie: Sie glauben daran, daß jeder einzelne die Fähigkeit hat, göttlichen Status zu erreichen, indem sie sich einfach darum bemühen..." Er schüttelt nachsichtig seinen Kopf und denkt nach.~ */
  IF ~~ THEN REPLY #36833 /* ~"Red' weiter."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36834 /* ~"Wie meine Pflichtrunde beim Harmonium schnell zeigen sollte, gibt es viele, die nie einen göttlichen Status erreichen könnten, auch wenn sie es noch so lange versuchten und sich darum bemühten..." spottet er. "Nichtsdestotrotz arbeiten die Gläubigen der Quelle ziemlich hart..." Er zuckt die Achseln. "... und ihr kleiner Bund ist auch recht nett."~ */
  IF ~~ THEN REPLY #36835 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 51
  IF ~~ THEN REPLY #36836 /* ~"Kannst du mir etwas über die anderen Bünde erzählen?"~ */ GOTO 61
  IF ~~ THEN REPLY #36837 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36838 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 2.7
  SAY #36839 /* ~"Sigil..." Er atmet tief durch. "Sigil ist die Stadt im Zentrum aller Dinge, oder so glauben jedenfalls viele. Sie ist die Stadt der Türen; es gibt buchstäblich tausende Portale hier. Und sie ist die Heimat der Dame der Schmerzen." Er zuckt die Achseln. "Sigil... ist ein Thema, das Bände und Bände und noch mehr Bände füllen könnte..."~ */
  IF ~~ THEN REPLY #36840 /* ~"Erzähl mir was über die Dame der Schmerzen."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #36841 /* ~"Du sagtest was von Portalen. Kennst du welche?"~ */ GOTO 65
  IF ~~ THEN REPLY #36842 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36843 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36844 /* ~"Die Dame der Schmerzen..." Hamrys beugt sich vor und spricht etwas leiser. "Eines der großartigsten Rätsel des Multiversums, da wird mir jeder zustimmen. Ich denke, sie hat zweifellos bewiesen, daß weibliche Wesen die gefährlichsten Geschöpfe im ganzen Multiversum sind..." Er seufzt.~ */
  IF ~~ THEN REPLY #36845 /* ~"Red' weiter."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #36846 /* ~"Einige meinen, sie sei eine Göttin, eine Macht, die sich Sigil als Heim gewählt hat. Die Wahrheit ist, daß sie die Gesetze jeder Macht bricht, die mir bekannt ist. Mächte brauchen Verehrer - das gibt ihnen ihre Macht - aber die Dame mag es gar nicht, verehrt zu werden. Die Leute, die sie anbeten, enden in ihrem Schatten, ihr Fleisch von unsichtbaren Klingen zerfetzt. Im Laufe meines Lebens habe ich ja schon eine Menge schrecklicher Dinge gesehen, Dinge, bei denen andere Männer weiche Knie bekämen und die Kontrolle über ihre Körperfunktion verlören. All das ist jedoch kein Vergleich mit dem Anblick der Opfer der Dame."~ */
  IF ~~ THEN REPLY #36847 /* ~"Interessant. Was kannst du mir sonst noch erzählen?"~ */ GOTO 58
  IF ~~ THEN REPLY #36848 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36849 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36850 /* ~"Dann mag sie keine Leute, die versuchen, sich in Sigil als Gott aufzuspielen. Kann sein, daß du das nicht weißt, aber zu allererst einmal können keine Mächte nach Sigil hereinkommen, weder Zeus, noch Ra, noch sonstwer. Es wird gesagt, daß die Anwesenheit der Dame sie fernhält. Können einfach nicht rein, keiner von ihnen, und darüber sind sie ziemlich sauer, kannst du wohl glauben. Sigil ist solch eine süße Frucht, und jeder will sie pflücken. Also sind die anderen Mächte ständig auf der Suche nach einem Weg in die Stadt. Bisher vergeblich."~ */
  IF ~~ THEN REPLY #36851 /* ~"Red' weiter."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #36852 /* ~"Na, und das ist noch nicht alles. Nicht nur, daß die Dame sie fernhält, sie sorgt auch dafür, daß keiner der Stadt von innen schadet. Da hat sie natürlich auch Unterstützung von unserem Bund, dem Harmonium, denn wir mögen Ordnung. Aber ab und zu setzt es sich doch so ein dummer Knochenbrecher in den Kopf und fängt einen Straßenkampf in der Stadt an, hat vielleicht vor, ein paar Dabus zu töten, ein bißchen Unruhe zu stiften oder fängt an, Massenvernichtungszauber zu sprechen. Keine schöne Sache. Regt die Dame auf. Sie mag's gar nicht, ihre Stadt verletzt zu sehen. Sie würde dich töten... oder in die Irrgänge schicken... für so etwas."~ */
  IF ~~ THEN REPLY #36853 /* ~"In die Irrgänge schicken?"~ */ GOTO 60
  IF ~~ THEN REPLY #36854 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36855 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #36856 /* ~"Du hast nichts von den Irrgängen gehört?" Er sieht dich herablassend an. "Na, du bist vielleicht grün hinter den Ohren. Die Dame hat Gefängnisse außerhalb der Dimensionen, in die sie bestimmte Übeltäter schicken kann. Weißt du, sie nimmt kleine Stückchen von Sigil, formt sie zu Irrgängen und trennt sie dann von Sigil ab. Eines Abends machst du dich auf den Heimweg, oder du gehst durch einen Torbogen in der Nähe deines Hauses, und plötzlich ist alles anders. Du bist nicht an dem Ort, wie du ihn kennst. Du bist in einer Falle. Es geht zwar die Sage, daß es aus jedem Irrgang auch einen Ausweg gibt, aber du wirst längst tot und begraben sein, bevor du spitzkriegst, wie du da raus kommst."~ */
  IF ~~ THEN REPLY #36857 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36858 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.1 62.0 63.0 64.0
  SAY #36859 /* ~Er lächelt dich an, begierig sich mitzuteilen. "Natürlich kann ich das, mein Freund. Ich kann Euch ein wenig über das Harmonium, die Gnadentöter oder die Herrschner erzählen. Womit soll ich anfangen?"~ */
  IF ~~ THEN REPLY #36860 /* ~"Die Herrschner."~ */ GOTO 62
  IF ~~ THEN REPLY #36861 /* ~"Das Harmonium."~ */ GOTO 63
  IF ~~ THEN REPLY #36862 /* ~"Die Gnadentöter."~ */ GOTO 64
  IF ~~ THEN REPLY #36863 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36864 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #36865 /* ~Er nickt wissend. "Die 'Bruderschaft der Ordnung' ist der eigentliche Name ihres Bundes. Sie haben sich dem Gesetz und dem Wissen verschrieben, und sie verbringen ihre Zeit vorrangig damit, jeden Aspekt des Gesetzes zu erforschen. Und ich meine damit nicht nur die von Menschen gemachten Gesetze. Nein, ihre Forschung geht viel weiter. Sie wollen das Wie und Warum hinter allem herausfinden. Aufgrund ihrer Hingabe zum Gesetz leiten sie auch die Gerichte Sigils und fungieren als Rechtsberater, Richter, Advokat und so."~ */
  IF ~~ THEN REPLY #36866 /* ~"Erzähl mir etwas über einen der anderen Bünde..."~ */ GOTO 61
  IF ~~ THEN REPLY #36867 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36868 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #36869 /* ~Er richtet sich stolz auf. "Der wichtigste Bund in Sigil ist selbstverständlich das Harmonium. Wir sind ein Bund, der sich für die Einhaltung von Gesetz und Ordnung in Sigil einsetzt, und es gibt doch wirklich keine wichtigere Funktion. Fortschritt kann nur in einem Staat des Friedens und der Harmonie erreicht werden. Es gibt natürlich immer welche, die das anders sehen, aber die haben nicht unsere Entschlossenheit und deshalb werden sie nicht weit kommen."~ */
  IF ~~ THEN REPLY #36870 /* ~"Erzähl mir etwas über einen der anderen Bünde..."~ */ GOTO 61
  IF ~~ THEN REPLY #36871 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36872 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #36873 /* ~Er lächelt. "Die Gnadentöter stehen für Gerechtigkeit. Für sie ist die Gerechtigkeit das A und O. Sie ist absolut und perfekt. Sie widmen ihr Leben der Erteilung von Gerechtigkeit, aber sie muß korrekt ausgeführt werden, nach dem Gesetz. Sie glauben fest daran, daß das Multiversum durch die Durchsetzung von Gerechtigkeit von allem Übel gereinigt werden kann und vollkommen wird."~ */
  IF ~~ THEN REPLY #36874 /* ~"Erzähl mir etwas über einen der anderen Bünde..."~ */ GOTO 61
  IF ~~ THEN REPLY #36875 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36876 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY #36877 /* ~Er lacht. "Portale? Ob ich Portale kenne?" Er hält inne. "Nun, nicht direkt persönlich, außer den zugänglicheren. Ich denke mir, daß sie wohl fast in jedem Bezirk zu finden sind... Portale sind komische Dinger, manchmal verändern sie ihren Standort, ein anderes Mal scheinen sie einfach zu verschwinden... Es ist schwierig, ihre Spur nicht zu verlieren." Er zuckt die Achseln.~ */
  IF ~~ THEN REPLY #36878 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36879 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 66 // from:
  SAY #36880 /* ~"Oh, hallo. Vielleicht inzwischen Bedarf für einen Sarg?" Er lächelt freundlich.~ */
  IF ~~ THEN REPLY #36881 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36882 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",1)
~ THEN BEGIN 67 // from:
  SAY #36883 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr Euch vielleicht schon überlegt, ob Ihr mir bei meinen Lagerhausproblemen behilflich sein könntet?"~ */
  IF ~~ THEN REPLY #36884 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich das Sargkissen möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 16
  IF ~~ THEN REPLY #36885 /* ~"Nein, ich denk noch drüber nach. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36886 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF WEIGHT #7 /* Triggers after states #: 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #36887 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr vielleicht Eure Meinung geändert und wollt mir bei meinen Lagerhausproblemen behilflich sein?"~ */
  IF ~~ THEN REPLY #36888 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich das Sargkissen möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 16
  IF ~~ THEN REPLY #36889 /* ~"Nein, hab' ich nicht. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36890 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",3)
~ THEN BEGIN 69 // from:
  SAY #36891 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr die Lagerhausprobleme schon gelöst?"~ */
  IF ~~ THEN REPLY #36892 /* ~"Nein, ich arbeite noch daran. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36893 /* ~"Nein, aber ich habe ein paar Fragen an dich..."~ */ GOTO 2
END

IF WEIGHT #5 /* Triggers after states #: 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",4)
~ THEN BEGIN 70 // from:
  SAY #36894 /* ~Hamrys lächelt dich an. "Nochmals einen guten Tag, Schleifer. Haste das Kissen bekommen, nach dem du gesucht hast?"~ */
  IF ~~ THEN REPLY #52763 /* ~"Ja. Ich hab mich um die Probleme im Lagerhaus gekümmert und das Kissen bekommen."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Pillow_Quest","GLOBAL",5)
~ JOURNAL #66530 /* ~Ich habe mich mit Hamrys getroffen und ihm gesagt, daß ich ihm das Sargkissen besorgen kann. Dieses eine Mal hat er mir nicht die Ohren zugelabert.~ */ GOTO 76
END

IF WEIGHT #4 /* Triggers after states #: 72 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #36897 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr Euch vielleicht schon überlegt, ob Ihr mir bei meinen Lagerhausproblemen behilflich sein könntet?"~ */
  IF ~~ THEN REPLY #36912 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich die Gruftpläne möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 39
  IF ~~ THEN REPLY #36913 /* ~"Nein, ich denk noch drüber nach. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36914 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF WEIGHT #3 /* Triggers after states #: 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",2)
~ THEN BEGIN 72 // from:
  SAY #36915 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr vielleicht Eure Meinung geändert und wollt mir bei meinen Lagerhausproblemen behilflich sein?"~ */
  IF ~~ THEN REPLY #36916 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Scheint so, als gebe es irgendeinen Ärger beim Lager. Wenn ich die Gruftpläne möchte, muß ich erst herausfinden, was Sache ist, und das Problem lösen.~ */ GOTO 39
  IF ~~ THEN REPLY #36917 /* ~"Nein, ich denk noch drüber nach. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #36918 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 73 // from: 15.0 38.0
  SAY #36919 /* ~Er lächelt von einem Ohr zum anderen. "Hervorragend. Kann ich dir dann vielleicht bei etwas anderem behilflich sein?"~ */
  IF ~~ THEN REPLY #36920 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36921 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",3)
~ THEN BEGIN 74 // from:
  SAY #50440 /* ~Hamrys lächelt dich an. "Guten Tag, mein Herr. Habt Ihr die Lagerhausprobleme schon gelöst?"~ */
  IF ~~ THEN REPLY #50441 /* ~"Nein, ich arbeite noch daran. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #50442 /* ~"Nein, aber ich habe ein paar Fragen an dich..."~ */ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",4)
~ THEN BEGIN 75 // from:
  SAY #50443 /* ~Hamrys lächelt dich an. "Da bist du ja wieder, Schleifer. Hast du die Pläne bekommen, nach denen du gesucht hast?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52766 /* ~"Ja. Ich habe mich um das Problem im Lagerhaus gekümmert und die Gruftpläne geholt. Ich habe auch das Sargkissen mitgenommen."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",5)
AddexperienceParty(2000)
SetGlobal("Plans_Quest","GLOBAL",5)
~ JOURNAL #66531 /* ~Ich habe mich mit Hamrys getroffen und ihm erzählt, daß ich die Gruftpläne und das Sargkissen aus dem Lager geholt habe. Dieses eine Mal hatte er nicht viel zu sagen.~ */ GOTO 76
  IF ~  !Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52767 /* ~"Ja. Ich habe mich um das Problem im Lagerhaus gekümmert und die Gruftpläne geholt."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",5)
AddexperienceParty(2000)
~ JOURNAL #66532 /* ~Ich habe mich mit Hamrys getroffen und ihm erzählt, daß ich die Gruftpläne habe. Dieses eine Mal hatte er nicht viel zu sagen.~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 70.0 75.0 75.1
  SAY #52764 /* ~Er lächelt und nickt. "Gut gemacht, Schleifer. Wie ich bereits sagte. Du kannst als Belohnung behalten, was immer du aus dem Lagerhaus geholt hast. Danke für deine Hilfe."~ */
  IF ~~ THEN REPLY #61971 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #61972 /* ~"Leb wohl, Hamrys."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Hamrys_Done","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #64164 /* ~"He, hallo da. Bist du schon auf dem Markt wegen einem Sarg?" Er lächelt freundschaftlich. "Ich habe keine Arbeit mehr für dich, also... Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #64165 /* ~"Ich habe ein paar Fragen..."~ */ EXIT
  IF ~~ THEN REPLY #64166 /* ~"Nichts, leb wohl. "~ */ EXIT
END
