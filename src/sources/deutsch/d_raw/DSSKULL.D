// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~Der Schädel atmet träge aus und spricht mit heißblütiger Stimme: "Warum störst du meine Ruhe? In letzter Zeit ist so viel passiert, und während ich zwar die Empfindung begrüße, muß ich doch bekennen, daß ich Stille wünsche."~ */
  IF ~~ THEN REPLY #31581 /* ~"Erzähl mir was von dir."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"Was machst du hier?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"Was kannst du mir über Lothar erzählen?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"Na dann will ich dich nicht noch länger stören. Leb wohl."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"Ich bin... ich war... Ozean-vor-dem-Sturm, ein Sinnsat. Jetzt bin ich leider nur noch Dekoration."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"Ein Sinnsat? Was ist denn das?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"Das muß hart für dich sein... hier gibt's sicherlich nicht viele Empfindungen, oder?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"Was weißt du über die anderen Schädel hier?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"Aha. Dann will ich dich nicht noch länger stören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"Nun, ich stehe auf dem Regal und sammle Staub, bis es einem von Lothars Rattengünstlingen einfällt, mich mal abzustauben. Ich beantworte Lothars Fragen, und... das ist schon alles, was mein elendes Dasein ausmacht."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"Ich wollte eigentlich wissen, wie du hier gelandet bist.'"~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"Ich wollte eigentlich wissen, wie du hier gelandet bist.'"~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"Was für Fragen?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"Dann stör ich dich lieber nicht noch länger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"Nichts, was er dir nicht selbst erzählen würde. Da ich den anderen Schädeln hier nicht traue, werde ich nichts sagen, was sie gegen mich verwenden könnten. Und bevor du fragst: ja, ich habe eine riesige Angst vor ihm."~ */
  IF ~~ THEN REPLY #31604 /* ~"Was kann er dir schon antun?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"Na dann will ich dich nicht noch länger stören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"Ach, die können meine Langeweile auch nicht vertreiben. Da ist Bockskamm, die Werratte, Grimmskalp, der Anarchist, Ernst, der alte Zaubermörder. Ich weiß nicht, was Ernst macht, aber er ist durch und durch böse."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"Pragmatiker? Ist das der Grund, warum jemanden in den Rücken zu fallen so oft die Lösung ist, die du für Probleme parat hast?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~Ozean-vor-dem-Sturm wendet sich wieder dir zu. "Siehst du? Durch und durch böse."~ */
  IF ~~ THEN REPLY #31613 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"Ja, da hast du recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"Ein Sinnsat ist ein Mitglied der Gesellschaft der Empfindung - einer der Bünde in Sigil, der seinen Sitz in der Städtischen Festhalle im Bezirk der Kuratoren hat. Wir glauben, daß das Universum nur über die Sinne verstanden und manipuliert werden kann und daß man darum so viele unterschiedliche Erfahrungen wie möglich sammeln sollte. Ich glaube, ich habe die Quote für Auf-einem-staubigen-Regal-herumliegen erreicht. Mir ist ja so langweilig."~ */
  IF ~~ THEN REPLY #31618 /* ~"Kann ich irgendwas für dich tun?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"Was machst du hier?~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"Du armer Schädel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"Nein, aber es ist nett, daß du fragst. Einmal habe ich mich selbst vom Regal fallen lassen und bin zerbrochen. Ehe ich mich versah, war ich wieder auf dem Regal und wir waren hier alle festgeklebt. Wenn Lothar meiner überdrüssig wird, wird er mich wegschmeißen."~ */
  IF ~~ THEN REPLY #31625 /* ~"Was machst du hier?~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"Ich wünsche dir viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~Der Schädel starrt dich an. "Da hast du recht. Streu noch Salz in die Wunde." Er macht eine etwas längere Pause. "Geh weg."~ */
  IF ~~ THEN REPLY #31631 /* ~"He, ich hab' doch nur Spaß gemacht..."~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"Das ist eine lange Geschichte, und ich darf dir gar nichts erzählen, bevor du nicht eine Aufgabe für Lothar erledigt hast."~ */
  IF ~~ THEN REPLY #31634 /* ~"Was kann er dir schon antun?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"Du kannst es mir ruhig erzählen."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"Dann erzähl mir was über dich."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"Na gut. Was kannst du mir über die anderen Schädel da auf dem Regal erzählen?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"Na gut. Was kannst du mir über die anderen Schädel da auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"Dann stör ich dich lieber nicht noch länger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"Das ist eine lange Geschichte, die mit Ravel Rätselschön, der Nachthexe, zu tun hat. Willst du die ganze Geschichte hören?"~ */
  IF ~~ THEN REPLY #31642 /* ~"Ja."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"Nö, eigentlich nicht."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~Wenn Schädel die Schultern zucken könnten, würde dieser es tun: "Nichts, was ich dir nicht schon gesagt habe."~ */
  IF ~~ THEN REPLY #31645 /* ~"Dann erzähl mir was über dich."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"Also schön. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~Der Schädel starrt dich an und du hast den Eindruck, daß er zittert. "Auch ohne Nervenenden kann man Schmerzen spüren. Nicht alle Schmerzen sind physisch, und nicht alle Gefühle seelisch. Diese Empfindungen möchte ich nicht noch einmal spüren." Er macht eine Pause. "Das Frage-Antwort-Spiel ist beendet. Leb wohl."~ */
  IF ~~ THEN REPLY #31650 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"Oh, alles Mögliche... Erfahrungen, die ich gesammelt habe, die Politik der Sinnsaten, die jetzt leider überholt ist, Eindrücke von Leuten, die hier vorbeikommen, und Worte, Worte, Worte. Die Fragen sind unterschiedlich, was ich mehr schätze, als du glaubst. Wenn du mich nichts weiter zu fragen hast, dann schweige ich jetzt lieber. Leb wohl."~ */
  IF ~~ THEN REPLY #31662 /* ~"Nein, warte, nur noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~Der Schädel starrt ausdruckslos und bleibt stumm.
~ */
  IF ~~ THEN REPLY #31665 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"Dann werde ich wieder schweigen. Leb wohl."
~ */
  IF ~~ THEN REPLY #31667 /* ~"Nein, warte. Beantworte mir noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"Leb wohl."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"Willst du mir denn gar keine Ruhe lassen?"~ */
  IF ~~ THEN REPLY #31670 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"Was ist denn mit den anderen Schädeln da auf dem Regal?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"Was kannst du mir über die anderen Schädel hier auf dem Regal erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"Na gut, ich laß dich jetzt in Ruhe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"Na gut. Ich habe in den Sinnsorien der Städtischen Festhalle, dem Hauptquartier der Sinnsaten, gearbeitet. Ravel Rätselschön, mögen die Mächte ihre schwarze Seele verfluchen, war dorthin gekommen, um die Lösungen zu ein paar Rätseln zu finden. Sie war eine Meisterin im Lösen von Rätseln. Rätsel, die unsere besten Denker überforderten, waren für sie kinderleicht, und doch war sie auf Rätsel gestoßen, die sie nicht allein lösen konnte. Ich habe gehört, sie sei hier gewesen, um die Geheimnisse von Sigil selbst zu lüften."~ */
  IF ~~ THEN REPLY #31677 /* ~"Erzähl weiter."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"Ist das laaaaangweilig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"Schrecklich häßlich war sie und sie hat sich nicht die Mühe gemacht, ihr Aussehen durch Magie zu verschleiern, was sie, wie ich gehört habe, hin und wieder tut, oder besser TAT. Ihr schreckliches Aussehen hat viele potentielle Bundmitglieder abgeschreckt. Trotzdem mußte ich sie einfach fragen, was sie vorhatte und ob sie mir beibringen könnte, was sie wußte."~ */
  IF ~~ THEN REPLY #31680 /* ~"Das war wohl ein Fehler, was?"~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"Ich kann's mir jetzt ganz gut vorstellen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"Ja, das war es. Sie schlug mir einen Handel vor, denn Rätsel waren ihr Lebensinhalt und -unterhalt: Wenn sie meine Frage beantworten würde, müßte ich eine ihrer Fragen beantworten. Wenn ich die Antwort nicht wüßte, würde ihr mein Leben gehören. Ich stimmte zu. Sie sagte mir, sie wolle das Rätsel des Käfigs lösen, um ihn allen zu öffnen, die hineinwollten, Mächten, Scheusalen, Himmelskreaturen, Modronen und Slaadi, ganz zu schweigen von allen Wesen auf den Inneren Ebenen, die hineinwollten. Am wichtigsten war ihr, daß alle wissen sollten, daß das Mysterium, über das sie alle so lange gerätselt hatten, von Ravel gelüftet wurde."~ */
  IF ~~ THEN REPLY #31683 /* ~"Was ist dann passiert?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"Sie stellte ihre Frage. Ich konnte sie nicht beantworten, obwohl sie mir versicherte, die Antwort sei so offensichtlich, daß selbst ein Blinder sie sehen würde. Meine Sinnsaten-Brüder fanden mich schreiend im Sinnsorium, als sie am nächsten Morgen hereinkamen. Ich flehte sie an, mich zu töten, und sie erfüllten meinen Wunsch. Es kam noch nicht einmal jemand auf die Idee, daß ich die neue Erfahrung genießen sollte, so schrecklich war sie. Und... hier bin ich. Ich muß mich jetzt ausruhen."~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"Was hat sie dich gefragt?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~Ozean-vor-dem-Sturm, der Sinnsatentotenschädel in Lothars Totenkopfbibliothek, hat mir eine Geschichte von Ravel Rätselschön und dem niederträchtigen Plan der Nachthexe erzählt.~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~"Beantwortest du mir noch ein paar Fragen?"~ */ JOURNAL #31348 /* ~Ozean-vor-dem-Sturm, der Sinnsatentotenschädel in Lothars Totenkopfbibliothek, hat mir eine Geschichte von Ravel Rätselschön und dem niederträchtigen Plan der Nachthexe erzählt.~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"Na gut. Danke für die Geschichte. Leb wohl."~ */ JOURNAL #31348 /* ~Ozean-vor-dem-Sturm, der Sinnsatentotenschädel in Lothars Totenkopfbibliothek, hat mir eine Geschichte von Ravel Rätselschön und dem niederträchtigen Plan der Nachthexe erzählt.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"Sie lautete: Wie ändert man das Wesen eines Menschen? Ich habe lange über die Antwort nachgedacht und sagte dann: 'Mit Liebe'. Sie hat gesagt, daß alle Leute sich selbst zu sehr lieben, um von so etwas Einfachem wie Liebe verändert zu werden. Und dann hat sie... sie... Ich muß mich jetzt ausruhen."
Tief in deiner Erinnerung meinst du, das Bild einer hakennasigen Gestalt mit ebenholzschwarzer Haut zu sehen, die dir eine ähnliche Frage stellt... aber du kannst dich nicht an deine Antwort erinnern.
~ */
  IF ~~ THEN REPLY #31690 /* ~"Beantwortest du mir noch ein paar Fragen?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"Du armer Schädel. Leb wohl."~ */ EXIT
END
