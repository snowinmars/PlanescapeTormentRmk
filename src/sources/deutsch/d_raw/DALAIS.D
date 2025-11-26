// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~Der Materier schaut dich angeekelt an. "Was willst DU denn?" Die Art, wie er das Pronomen betont, kann einen fast schon wütend machen und ist auf jeden Fall beleidigend.~ */
  IF ~~ THEN REPLY #11435 /* ~"Schon gut. Ich wollt' dir bloß ein paar Fragen stellen."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"Von dir? Nichts."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"Aus Eurer Haltung läßt sich schließen, daß Ihr nichts weiter von mir wollt. Es wäre schön, wenn Ihr mich nicht weiter durch Eure Anwesenheit stören würdet. Guten Tag." Er kehrt dir eiskalt den Rücken zu.~ */
  IF ~~ THEN REPLY #11438 /* ~"Sieh mal, ich entschuldige mich für das, was ich vorhin gesagt habe. Ich brauche lediglich die Antworten auf ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"Also gut."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"Ihr habt gesagt, was Ihr gesagt habt, und ich habe es zu Herzen genommen. Aber ich lasse ja bekannterweise mit mir reden. Was kann ich für Euch tun?"~ */
  IF ~~ THEN REPLY #11441 /* ~"Wer bist du noch mal?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"Wer sind die Gäste in dieser Taverne?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"Ich suche nach einem Journal. Du hast nicht kürzlich eins gesehen?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"Hast du mal was von einem Sammler namens Pharod gehört?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"Ich möchte mich bei dir entschuldigen."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"Ich möchte mich bei dir entschuldigen."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~Seine Augen glühen vor Wut. "Ihr habt mich schon genug beleidigt, mein 'Freund'. Ich werde kein Wort mehr mit Euch wechseln." Mit hochrotem Kopf und tief gekränktem Stolz dreht er sich weg. Du setzt deine ganze Überredungskunst ein, aber er dreht sich nicht wieder zu dir um.~ */
  IF ~~ THEN REPLY #11450 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"Die einige Person, die ich hier kenne, ist Ebb. Ich bin neu hier und stecke meine Nase gewöhnlich nicht in andrer Leute Angelegenheiten. Habt Ihr sonst noch Fragen, oder darf ich weiter meine Einsamkeit genießen?"~ */
  IF ~~ THEN REPLY #11454 /* ~"Tja, eigentlich würde ich dir gern zuerst noch ein paar Fragen stellen."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"Du kannst mit deiner vorherigen Tätigkeit fortfahren."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~Er seufzt laut und schaut dich verächtlich an. "Los, Narbengesicht, dann fragt schon. Aber macht's kurz."
~ */
  IF ~~ THEN REPLY #11458 /* ~"Wer bist du noch mal?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"Wer sind die Gäste in dieser Taverne?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"Ich suche nach einem Journal. Du hast nicht kürzlich eins gesehen?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"Hast du mal was von einem Sammler namens Pharod gehört?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"Ich möchte mich bei dir entschuldigen."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"Ich möchte mich bei dir entschuldigen."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"Dies ist eine Taverne, in der man sich fast zu Hause fühlen könnte, wären da nicht die Scheusale in der Ecke und diese unendlich vielen seltsamen Dinge, die mir ins Auge springen. Doch wenigstens hat dieser Ort etwas Menschliches, und dafür bin ich dankbar."~ */
  IF ~~ THEN REPLY #11470 /* ~"Oh, das stimmt. Du bist ein Planloser, nicht wahr?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"Du bist ein Materier, stimmt's?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"Kann ich mir vorstellen. Mehr Fragen, wenn ich darf."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"Kann ich mir vorstellen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"Ein Journal? Wo soll ich das denn gesehen haben? Ich hab' doch gesagt, daß ich neu hier bin. Wie soll ich mich dann an ein JOURNAL erinnern? Ihr seid nicht nur beleidigend und unverschämt, sondern obendrein auch noch dumm."~ */
  IF ~~ THEN REPLY #11475 /* ~"Sagen wir einfach, wir sind quitt, was Beleidigungen angeht, in Ordnung?"~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"Willst du mich provozieren?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"Das ist sinnlos. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"Ich hab' doch schon gesagt, daß ich neu hier bin. Ihr habt Euch doch bereits lustig darüber gemacht. Natürlich weiß ich nichts von diesen 'Sammlern'. Laßt Ihr mich jetzt endlich in Frieden?"~ */
  IF ~~ THEN REPLY #11525 /* ~"Noch nicht. Ich brauche noch ein paar Antworten von dir."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"Ich möchte mich bei dir entschuldigen."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"Ich würde es gern irgendwie wiedergutmachen."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"Gewiß. Einen schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~Er wirkt völlig schockiert, als wäre ihm der Gedanke an Entschuldigungen völlig fremd. "Ihr... ihr möchtet Euch bei mir entschuldigen?"~ */
  IF ~~ THEN REPLY #11530 /* ~"Das habe ich gesagt."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"Wenn ich's mir recht überlege, nein. Ich habe meine Meinung geändert. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"Dann... dann... ist es mir eine Ehre, Eure Entschuldigung anzunehmen. Dann möchte ich mich ebenfalls entschuldigen. Lassen wir die Sache auf sich beruhen."~ */
  IF ~~ THEN REPLY #11533 /* ~"Wie du meinst. Könntest du mir noch ein paar Fragen beantworten?"~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"Ich bin vielleicht dumm, aber nicht so dumm, als daß ich Eure Beleidigungen einfach so wegstecken und Euch so mir nichts, dir nichts verzeihen würde. Von mir aus könnt Ihr Euch am nächsten Baum aufhängen. Ich hoffe nur, daß Ihr mit der Zeit noch mehr Narben und vielleicht auch mehr Ehrgefühl bekommt. Guten Tag, mein Herr." Er dreht sich um und würdigt dich keines Blickes mehr.~ */
  IF ~~ THEN REPLY #11536 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"Das ist schon das zweite Mal, daß Ihr mich beleidigt, mein Herr. Jetzt reicht's. Verteidigt Euch!"~ */
  IF ~~ THEN REPLY #11539 /* ~"Wir können das doch klären..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"Wenn du damit meinst, daß ich aus der wahren Welt komme, dann muß ich wohl ein Materier sein. Ich genieße dort als Krieger einiges Ansehen. Obwohl ich mich in diesem neuen Land noch nicht so gut auskenne, würde ich mich keineswegs als 'planlos' bezeichnen, obgleich einige der hiesigen Schurken das bereits getan haben."~ */
  IF ~~ THEN REPLY #11541 /* ~"Nein, in Ordnung. Hören wir einfach mit den gegenseitigen Beleidigungen auf, okay?"~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"Wirklich? Ich schon."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"Quitt? Erst, wenn Ihr Euch entschuldigt habt." Es scheint, als wäre er auf Ärger aus. "Oder muß ich Euch noch mehr provozieren?"~ */
  IF ~~ THEN REPLY #11546 /* ~"Also gut. Ich entschuldige mich."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"Mich entschuldigen? Bei dir? Niemals."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"Mieser Schuft, ehrloser Schwächling, seelenloses Stück Fleisch, alterndes Narbengesicht ohne Aussicht auf Erlösung. Ihr seid dazu verdammt, ohne die Eigenschaften durchs Leben zu gehen, die einen Mann zum Manne machen. Ich hab' genug von Euch. Ihr seid zu bedauern. Guten Tag." Er kehrt dir den Rücken zu.~ */
  IF ~~ THEN REPLY #11550 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~Verschwinde.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"Was möchtet Ihr wissen?"~ */
  IF ~~ THEN REPLY #11555 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"Wer sind die Gäste in dieser Taverne?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"Ich suche nach einem Journal. Du hast nicht kürzlich eins gesehen?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"Hast du mal was von einem Sammler namens Pharod gehört?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"Nichts. Vergiß es einfach."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~Du siehst einen gepflegten, muskulösen Mann, der mondäner gekleidet ist als die meisten anderen Leute, die dir in dieser Stadt bisher begegnet sind. Seine Haltung zeugt von hochnäsiger Arroganz. Mit seinem vornehmen Getue paßt er überhaupt nichts ins Bild. "Was wollt Ihr?" fragt er.~ */
  IF ~~ THEN REPLY #11566 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"Wer sind die Gäste in dieser Taverne?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"Ich suche nach einem Journal. Hast du in letzter Zeit eins gesehen?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"Hast du mal was von einem Sammler namens Pharod gehört?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~"Nichts. Vergiß es einfach."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"Ich bin Alais, ein angesehener Krieger! Ihr habt sicher schon von mir gehört, nicht wahr?"~ */
  IF ~~ THEN REPLY #11588 /* ~Lüge: "Ja."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~Wahrheit: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"Na endlich! Dann gibt es hier ja doch ein paar Leute mit Grips! Ich erlaube Euch, mir was zu trinken zu spendieren, und dann können wir ein paar Geschichten austauschen! Ich unterhalte Euch mit meinen neuesten Abenteuern und erzähle Euch, wie ich in diese wundersame, erschreckende Stadt gekommen bin."~ */
  IF ~~ THEN REPLY #11594 /* ~"Ich kann es kaum erwarten. Kannst du mir jedoch vorher noch ein paar Fragen beantworten?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"Woher kommst du? Und wie BIST du bloß hierher gekommen?"~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"Vielleicht später. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"Ist es möglich? Ist es möglich, daß niemand in dieser Stadt je von mir und meinen Heldentaten gehört hat? Nun gut... jetzt muß ich meine Tapferkeit erneut beweisen. Und ich dachte, mein Ruhm sei mindestens bis hierher durchgedrungen."~ */
  IF ~~ THEN REPLY #11608 /* ~"Woher *kommst* du denn?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"Das muß es wohl. Beantworte mir mal ein paar Fragen, ja?"~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"Wir müssen alle mit Enttäuschungen kämpfen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"Ich komme aus der Stadt Aliburn am Fluß Taime. Sicher hast du von ihren Herrlichkeiten und Wundern gehört? Macht nichts, macht nichts... Dieser Ort ist unwissend und unbedarft, wenn es um den Glanz wahrer Städte geht. Mir wurde gesagt, daß mein Land von den Bewohnern dieser Stadt eine 'Materie' genannt wird - auch wenn ich nicht ganz verstehe, wie das gemeint ist."~ */
  IF ~~ THEN REPLY #45189 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"Gut. Da bist du wirklich fern der Heimat. Na dann, viel Glück und alles Gute."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~Er läuft rot an und umklammert verkrampft den Griff seines Schwerts. "Ein Planloser? Ihr wollt mich wohl beleidigen, mein Herr! Ich verabschiede mich und hoffe, daß unsere Wege sich nie mehr kreuzen." Noch immer rot vor Zorn und gekränktem Stolz wendet er sich von dir ab.~ */
  IF ~~ THEN REPLY #11638 /* ~"Ich wollte dir bloß ein paar Fragen stellen."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"Ich habe nur einen älteren Mann namens Ebb Knarrknie kennengelernt, der mir die Stadt und die 'Ebenen' erklärt hat. Der Zauber meines Feindes muß uns ans andere Ende der Welt katapultiert haben, denn ich weiß von keinen Tiefebenen, die in der Nähe meiner Heimat liegen könnten."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"Nein, nein... nicht solche Ebenen. Die Ebenen sind Ebenen der Vorstellungskraft, des Denkens und des Glaubens. Also keine Tiefebenen, sondern andere Dimensionen."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"Nein, nein... nicht solche Ebenen. Die Ebenen sind Ebenen der Vorstellungskraft, des Denkens und des Glaubens. Also keine Tiefebenen, sondern andere Dimensionen."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"Jetz begreif ich. Du bist ein Planloser."~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"Ähm. Gut. Hör mal, ich hab' noch andere Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"Gut. Da bist du wirklich fern der Heimat. Na dann, viel Glück und alles Gute."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~Ein Ausdruck der Verwirrung huscht über sein Gesicht. "Ich... ich verstehe. So langsam wird mir klar, was der alte Mann sagen wollte... entschuldigt. Ich muß nachdenken. Auf bald."~ */
  IF ~~ THEN REPLY #11647 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"Keine Ahnung. Als ich hierher kam, brauchte ich erst einmal eine Weile, um mich zurechtzufinden. Mit Entsetzen stellte ich fest, daß sich sogar in einfachen Tavernen Exzentriker und Verrückte herumtreiben. Ich bin tatsächlich in einem Irrenhaus gelandet!"~ */
  IF ~~ THEN REPLY #11649 /* ~"Wo kommst du her?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"So scheint es jedenfalls manchmal. Ich würde dir gern noch ein paar Fragen stellen."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"Ganz recht. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~"Tut mir leid, aber nach solchen Dingen habe ich nicht gesucht. Wie auch? Ich muß ja erst mal zusehen, daß ich mich in dieser fremden Umgebung zurechtfinde. Dabei achte ich zwar auch auf Details, aber ich muß zugeben, daß ich bisher noch nie nach einem Journal Ausschau gehalten habe."~ */
  IF ~~ THEN REPLY #11653 /* ~"Also gut. Beantworte mir noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"Wie du meinst. Vielen Dank für deine Zeit."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"Pharod? Sammler? Diese Namen und Begriffe sind mir fremd, aber wenn ich je etwas über sie hören sollte, werde ich mich sicher an Euer Gesicht erinnern. Das kann man nicht so leicht vergessen."~ */
  IF ~~ THEN REPLY #11656 /* ~"Vielen Dank. Beantworte mir noch ein paar Fragen, okay?"~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"Ich jagte gerade meinem Erzfeind, dem schurkischen Elfling Tir Tanelel hinterher..." Er hält inne, um sich davon zu überzeugen, daß du zuhörst. Dann fährt er fort. "Mit einer seiner dämonischen Zauberformeln schaffte er es, sich ein Portal zu öffnen, durch das er entwischte. Ich wollte mich hinterherstürzen... und landete hier."~ */
  IF ~~ THEN REPLY #45193 /* ~"Jetzt begreife ich. Du bist einer der Planlosen."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"Das hört sich verdammt nach Abenteuer an. Ich hätte noch ein paar Fragen an dich."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"Viel Glück noch. Du wirst es brauchen. Leb wohl."~ */ EXIT
END
