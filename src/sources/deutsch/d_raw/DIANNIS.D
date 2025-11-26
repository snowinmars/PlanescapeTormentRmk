// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~Dieser Mann trägt eine dunkelblaue Robe mit komplizierten Mustern. Trotz ihrer reichen Verzierung sieht die Robe zerknittert und abgetragen aus. Der Mann ist vielleicht vierzig, vielleicht auch Anfang sechzig... die Sorgenfalten machen eine genauere Schätzung unmöglich. Als du eintrittst, dreht sich der Mann langsam zu dir um. Just in diesem Augenblick überfällt dich das ungute Gefühl, diesen Mann zu *kennen*... bzw. ihn einmal gekannt zu haben.~ */
  IF ~~ THEN REPLY #2936 /* ~"Sei gegrüßt..."~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~Ignoriere den Mann und erkunde die Kanzlei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"Also gut. Wie kann ich dir behilflich sein?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"Entschuldige die Frage, aber geht's dir nicht gut?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"Entschuldige die Frage, aber geht's dir nicht gut?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"Geht's dir nicht gut?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"Geht's dir nicht gut?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"Sind wir uns schon mal begegnet?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"Wer bist du noch mal?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"Was ist das hier noch mal für ein Ort?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"Was genau ist noch mal ein Advokat?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"Kannst du mir was über Testamente erzählen?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"Iannis, es gibt einen Sinnesstein im Sinnsorium, der einen Bruchteil von den Erfahrungen deiner Tochter enthält."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"Hier ist das Testament von Deionarra, wie ich's dir versprochen hatte."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"Kannst du mir was über den Brand erzählen?"~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"Kannst du mir was über deine Tochter erzählen?"~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"Heute gar nicht. Ich muß jetzt gehen... Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~Du siehst Jannis... er dreht sich um, als du hereinkommst und fixiert dich mit einem müden Blick. Unter seinen Augen sind Tränensäcke und er sieht erschöpft aus.~ */
  IF ~~ THEN REPLY #29727 /* ~"Sei gegrüßt, Jannis."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~Ignoriere Jannis.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"Du schon wieder." Jannis runzelt leicht die Stirn, während er dich anstarrt. "Was willst du diesmal?"~ */
  IF ~~ THEN REPLY #29730 /* ~"Ich hätte da ein paar Fragen an dich..."~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"Heute will ich gar nichts, aber danke."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~Du siehst Jannis... er dreht sich um, als du hereinkommst, und seine Augen strahlen hoffnungsvoll. "Ah! Endlich! Konntest du sie überzeugen, mich in ihr Sinnsorium zu lassen?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"Ja. Du darfst zum Sinnesstein deiner Tochter."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"Ich hätte da zuerst ein paar Fragen, auf die ich eine Antwort brauche."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"Noch nicht. Aber ich hoffe, daß ich bald Neuigkeiten für dich habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~Der Mann blinzelt, als ob er versucht, dich einzuordnen. "Ja? Kann ich dir behilflich sein?"~ */
  IF ~~ THEN REPLY #29737 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~Ich habe einen Mann namens Jannis getroffen, der im Bezirk der Kuratoren arbeitet. Ich habe das Gefühl, daß ich diesen Mann irgendwoher kenne, kann mich aber nicht erinnern, woher.~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"Oh, Entschuldigung. Ich glaube, ich bin hier falsch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"Ich bin Jannis." Er mustert dich und runzelt die Stirn. "Hast du nach mir gesucht?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"Ich weiß nicht... was ist das hier für ein Ort?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"Entschuldige... das hattest du du mir ja schon gesagt. Vielleicht kannst du mir ja hierbei helfen..."~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"Oh, Entschuldigung. Ich glaube, ich bin hier falsch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"Wie ich schon sagte, ich bin Jannis. Kann ich dir irgendwie behilflich sein?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"Ich bin mir nicht sicher... was ist das hier für ein Ort?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"Entschuldige... das hattest du du mir ja schon gesagt. Vielleicht kannst du mir ja hierbei helfen..."~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"Oh, Entschuldigung. Ich glaube, ich bin hier falsch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"Ich bin Advokat. Das ist meine Kanzlei." Jannis Stimme bekommt einen gereizten Unterton. "Brauchst du eine Auskunft? Wenn nicht, dann geh mit deinen Fragen woanders hin."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"Advokat? Was ist das?"~ */ JOURNAL #28830 /* ~Jannis ist anscheinend ein "Advokat", jemand der Rechtsbeistand gibt, Nachlässe ordnet und Rechtsfälle vor Gericht ausficht.~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"Advokat? Was ist das?"~ */ JOURNAL #28830 /* ~Jannis ist anscheinend ein "Advokat", jemand der Rechtsbeistand gibt, Nachlässe ordnet und Rechtsfälle vor Gericht ausficht.~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"Advokat? Was ist das?"~ */ JOURNAL #28830 /* ~Jannis ist anscheinend ein "Advokat", jemand der Rechtsbeistand gibt, Nachlässe ordnet und Rechtsfälle vor Gericht ausficht.~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"Ich bin Advokat. Das ist meine Kanzlei. Zu mir kommen Leute, die Auskünfte brauchen."~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~"Was für Auskünfte?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~"Was für Auskünfte?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"Aha. Dann könntest du mir vielleicht helfen..."~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"Dann tut es mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~Jannis Stirn runzelt sich noch mehr. "Ein Advokat erteilt Auskünfte, hilft anderen, sich im Labyrinth von Sigils Rechtssystem zurechtzufinden, verfaßt Testamente für die Bewohner der Stadt, damit ihr Eigentum nach ihrem Tod nach ihrem Willen aufgeteilt wird und verteidigt Unschuldige vor Sigils Gerichten..." Er hält inne. "Brauchst du so eine Auskunft?"~ */
  IF ~~ THEN REPLY #29758 /* ~"Testamente?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"Ich glaube, daß du ein Testament für mich hast."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"Ich bin wegen des Testaments einer jungen Frau gekommen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"Ja, ich brauche so eine Auskunft."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"Nein, heute nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"Ein Advokat hilft anderen, sich im Labyrinth von Sigils Rechtssystem zurechtzufinden, errichtet Testamente für die Bewohner der Stadt, damit ihr Eigentum nach ihrem Tod nach ihrem Willen aufgeteilt wird und verteidigt Unschuldige vor Sigils Gerichten..." Er hält inne. "Brauchst du so eine Auskunft?"~ */
  IF ~~ THEN REPLY #29764 /* ~"Testamente?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"Ich glaube, daß du ein Testament für mich hast."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"Ich bin wegen des Testaments einer jungen Frau gekommen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"Ja, ich brauche so eine Auskunft."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"Nein, heute nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"Das sind Verträge, die nach dem Tod des Klienten in Kraft treten. Sie enthalten genaue Anweisungen, wie das Vermögen einer Person nach deren Tod aufgeteilt werden soll. Ich habe dafür auch schon die Bezeichnung *Letzter Wille* gehört."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"Sind sie so etwas ähnliches wie Staubmenschen-Verträge?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"Ich glaube, daß du ein Testament für mich hast."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"Ich bin wegen des Testaments einer jungen Frau gekommen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"Du meine Güte, nein! Staubmenschen-Verträge treten beim Tod des Klienten in Kraft und sehen vor, daß die Leiche des Klienten den Staubmenschen vermacht wird. Keine schöne Sache, aber manche Leute, die in armen Verhältnissen leben, finden, daß der Staubmenschen-Vertrag eine gute Sache ist... "~ */
  IF ~~ THEN REPLY #29776 /* ~"Wie kann man einen Staubmenschen-Vertrag außer Kraft setzen?"~ */ JOURNAL #28829 /* ~Jannis hat gesagt, der einzige Weg, einen Vertrag mit einem Staubmenschen außer Kraft zu setzen, sei, ihn zu zerstören. ~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"Sorry... kannst du mir noch mal erklären, was ein Testament ist?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"Danke. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~Er runzelt die Stirn. "Einen, der schon unterschrieben ist? Das ist so gut wie unmöglich. Der Staubmenschen-Vertrag enthält sehr genaue Regeln über den Verbleib der Leiche nach dem Tod. Sofern der Vertrag nicht vernichtet wird, ist da nichts zu machen."
~ */
  IF ~~ THEN REPLY #29781 /* ~"Aha. Was schulde ich dir für deine Auskunft?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"Sorry... kannst du mir noch mal erklären, was ein Testament ist?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"Danke. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"Ja? Erinnerst du dich noch an den Namen oder die Aktennummer des Testaments?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"Das Testament hat, glaube ich, Nummer '51-AA'."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"Das Testament der jungen Frau hat die Nummer '687-KS'."~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"Das Testament der jungen Frau hat die Nummer '687-KS'."~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"Im Moment nicht. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vergiß die ganze Sache."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~Er sieht dich überrascht an, als du ihm sagst, um welches Testament es sich handelt. "Das ist uralt... bist du sicher... " Der Schock steht ihm tief ins Gesicht geschrieben. "Ich hoffe, das war keins von denen, das in den Flammen aufgegangen ist... "~ */
  IF ~~ THEN REPLY #29792 /* ~"Wie alt ist es?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"In den Flammen aufgegangen?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"Kannst du mal nachsehen, ob es dieses Testament noch gibt?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"Ach weißt du, vergiß es. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vergiß die ganze Sache."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~"Nun..." Jannis denkt eine Weile darüber nach. "Bestimmt mehrere Jahrzehnte."
~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"Du hast gesagt, daß es in den Flammen aufgegangen sein könnte. Was meinst du damit?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"Kannst du mal nachsehen, ob es dieses Testament noch gibt?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"Ach weißt du, vergiß es. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vergiß die ganze Sache."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~Jannis wirkt geknickt. "Ja, diese Kanzlei war das Ziel eines sinnlosen Wandalismus. Vor einem Jahr wurde in die Kanzlei eingebrochen. Anscheinend wollten die Einbrecher nur meine Rechtsdokumente verbrennen. Vieles ist dabei verlorengegangen. Eine Schande, wirklich. Sigil kann einen schon... vom Glauben abfallen lassen..." Als er Sigil erwähnt, scheint er um einen Zentimeter zu schrumpfen. "Es wurden nur bestimmte Dokumente beschädigt. Unersetzliche."~ */
  IF ~~ THEN REPLY #29803 /* ~"Wie alt ist das Testament?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"Kannst du mal nachsehen, ob es dieses Testament noch gibt?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"Kannst du mir sonst noch was über den Brand erzählen?"~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"Ach weißt du, vergiß es. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vergiß die ganze Sache."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~Er nickt schnell. "Oh, ja, natürlich... bin gleich wieder da."~ */
  IF ~~ THEN REPLY #29809 /* ~"Gut, ich warte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"Ach weißt du, vergiß es. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vergiß die ganze Sache."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~Jannis kommt zurück und nickt. "Ja, glücklicherweise ist dieses Testament von den Flammen verschont geblieben. Alle Artikel sind unversehrt."~ */
  IF ~~ THEN REPLY #29813 /* ~"Kannst du das Testament jetzt vollstrecken? Ich bin als Erbe eingesetzt."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"Ach weißt du, vergiß es. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"Danke. Ich wollte nur gucken, ob es noch da ist. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~"Natürlich... unterschreibe hier und hier... auf der gestrichelten Linie..."~ */
  IF ~~ THEN REPLY #29817 /* ~"Hier? Und hier? In Ordnung..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"So, damit wäre der Papierkram erledigt. Hier ist alles, was im Tresor war... u. a. auch eine uralte Quittung von einer Gießerei. Hat die Verstorbene irgendwas bei der Gießerei bestellt?"~ */
  IF ~~ THEN REPLY #29819 /* ~"Keine Ahnung. Vielleicht... fange ich langsam an, alles zu glauben. Wo ist die Gießerei?"~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~Ich habe mein Vermächtnis von Jannis, dem Advokaten, im Bezirk der Kuratoren abgeholt. Im Vermächtnis habe ich eine seltsame Rechnung gefunden ... Sie sieht sehr alt aus. Jannis sagt, es sei eine " Rechnung der Großen Gießerei" und bedeute, daß ich bei den Göttermenschen etwas in Auftrag gegeben habe. Jannis sagt, durch die Rechnung sollte ich Zugang zur Großen Gießerei im Unteren Bezirk bekommen.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"Sie liegt im Unteren Bezirk hinter dem großen Tor. Halte nach den Wachen der Göttermenschen an einem Tor Ausschau. Wenn du sie siehst, bist du an der richtigen Stelle."
~ */
  IF ~~ THEN REPLY #29821 /* ~"Okay. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"Danke für die Wegbeschreibung. Ich werde da jetzt gleich hingehen."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"Ich bin nicht der Typ, der anderen für solche Auskünfte was abknöpft." Ein flüchtiges Lächeln zeigt sich auf seinem Gesicht. "Ich bin Advokat und keine Krämerseele und darum auch nicht gierig."~ */
  IF ~~ THEN REPLY #29824 /* ~"Danke... vielen Dank. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"Das..." Seine Augen werden größer, als du ihm sagst, um welches Testament es sich handelt. "Das Testament meiner *Tochter*... ?!" Er sieht schockiert aus. "Woher kennst du meine Tochter?!"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"Ich bin mir nicht sicher. Es gibt einen Sinnesstein in der Festhalle, der die Erbschaftsnummer enthielt."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"Ich bin mir nicht sicher. Ich habe die Nummer in diesem Sinnesstein in der Festhalle gefunden, von dem ich dir erzählt habe. Er war für mich bestimmt."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"Ich weiß es nicht. Ich hoffe, daß ich die Antwort darauf im Testament finde."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"Das ist eine rechtliche Angelegenheit und geht dich nichts an."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"Das geht dich nichts an. Kannst du mal nachsehen, ob es das Testament noch gibt?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"Ach ne, das war das falsche Testament. Tut mir leid, daß ich dich damit belästigt habe... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"Wieso..." Jannis scheinen die Worte zu fehlen. "Wieso hat meine Tochter dir was hinterlassen?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"Ich bin mir nicht sicher. Es gibt einen Sinnesstein in der Festhalle, der die Erbschaftsnummer enthielt."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"Ich bin mir nicht sicher. Ich habe die Nummer in diesem Sinnesstein in der Festhalle gefunden, von dem ich dir erzählt habe. Er war für mich bestimmt."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"Vielleicht habe ich sie ja mal gekannt... und sie dann wieder vergessen."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~"Wie ich schon sagte, ich weiß es nicht. Ich hoffe, daß ich die Antwort darauf im Testament finde."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"Das ist eine rechtliche Angelegenheit und geht dich nichts an."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"Das geht dich nichts an. Kannst du mal nachsehen, ob es das Testament noch gibt?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"Ach ne, das war das falsche Testament. Tut mir leid, daß ich dich damit belästigt habe... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~Jannis starrt dich durchdringend an. "Du kommst mir *auf jeden Fall* bekannt vor..."~ */
  IF ~~ THEN REPLY #29840 /* ~"Weißt du, wer ich bin?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"Wenn du das Testament holen würdest, dann würden wir vielleicht beide eine Antwort darauf kriegen."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"Kannst du mir bitte das Testament holen? Das hier ist eine rechtliche Angelegenheit und geht dich nichts an."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"Tut mir leid, ich muß jetzt gehen... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"Das weiß ich leider auch nicht." Jannis seufzt.~ */
  IF ~~ THEN REPLY #29846 /* ~"Wenn du das Testament holen würdest, dann würden wir vielleicht beide eine Antwort darauf kriegen."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"Kannst du mir bitte das Testament holen? Das hier ist eine rechtliche Angelegenheit und geht dich nichts an."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"Ich glaube, ich habe da irgendwas durcheinander gebracht. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"Tut mir leid, ich muß jetzt gehen... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"Natürlich, natürlich... einen Augenblick, bin gleich wieder da."~ */
  IF ~~ THEN REPLY #29851 /* ~"Gut. Ich warte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~Ich habe Deionarras Letzten Willen von ihrem Vater abgeholt.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~Jannis starrt dich eine Weile an und kneift dann seine Augen zusammen. "Natürlich." Seine Stimme ist kalt wie Eis. "Wenn du so gütig wärst, zu warten, dann hole ich ihr Testament."~ */
  IF ~~ THEN REPLY #29853 /* ~"Wie du meinst."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~Ich habe Deionarras Letzten Willen von ihrem nervenden Vater abgeholt. Ich mag seinen Ton überhaupt nicht, wenn er mit mir spricht - er sollte sich lieber in acht nehmen, sonst endet er noch wie seine Tochter.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"Es ist alles vollständig..." Jannis hält drei Rollen in den Händen. "Ich hatte keine Ahnung, daß sie hier ein Testament gemacht hat..." Er starrt fast wie in Trance auf die Schriftstücke. "Bitte. Dürfte ich es... lesen?"~ */
  IF ~~ THEN REPLY #29855 /* ~"Das ist eine *Privatangelegenheit*. Als Advokat müsstest du das eigentlich verstehen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"Ich will es zuerst lesen. Dann entscheide ich, ob du es lesen darfst."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"Na klar. Hier, bitte."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"Natürlich..." Jannis scheint am Boden zerstört zu sein. "Aber ich bitte dich inständig. Ich habe kaum noch Erinnerungsstücke an meine Tochter..."~ */
  IF ~~ THEN REPLY #29859 /* ~Lüge: "Natürlich darfst du's dir auch mal durchlesen. Aber vielleicht kannst du mir ja vorher noch anderweitig behilflich sein..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~Schwur: "Klar darfst du's dir auch mal durchlesen. Aber vielleicht kannst du mir ja vorher noch anderweitig behilflich sein..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"Das kann ich verstehen. Aber vielleicht kannst du mir ja zuerst noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~Lüge: "Klar. Ich komme zurück, wenn ich alles gelesen habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~Schwur: "Klar. Ich komme zurück, wenn ich alles gelesen habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~Jannis nimmt die Rolle in die Hand und liest sie. Er schweigt eine ganze Weile, dann sieht er langsam zu dir auf. "Du... hast meiner Tochter sehr viel bedeutet. Sie war bereit, dein Leben für dich zu geben."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"Ich fürchte, daß sie das war."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Ich habe Jannis Deionarras Letzten Willen lesen lassen. Ihre letzten Worte schienen ihn etwas zu trösten. ~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"Ja, das war sie."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Ich habe Jannis Deionarras Letzten Willen lesen lassen. Ihre letzten Worte schienen ihn etwas zu trösten. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~Jannis gibt dir die Rolle zurück. "Ich danke dir. Du bist sehr nett. Ich weiß das zu schätzen."
~ */
  IF ~~ THEN REPLY #29874 /* ~"Das ist doch das wenigste, was ich tun kann. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"Ich trauere um den Verlust deiner Tochter. Ich hoffe, ihre Worte konnten dir etwas Trost spenden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~Der Mann mustert dich eine Weile und runzelt völlig in Gedanken versunken die Stirn. Die Falten in seinem Gesicht treten dabei ausgeprägter in Erscheinung, und du bist abermals überrascht, wie sehr ihm sein Alter ins Gesicht geschrieben steht. "Nein... aber du kommst mir irgendwie bekannt vor..."~ */
  IF ~~ THEN REPLY #29877 /* ~"Ja?"~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"Egal. Vielleicht kannst du mir ja anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"Ist ja auch egal. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~Er mustert dich erneut und schüttelt dann den Kopf. "Ich gebe zu, daß du mir irgendwie bekannt vorkommst, und ich bitte um Verzeihung, wenn ich dich gerade mit meiner Vergeßlichkeit beleidigt habe... ich hatte in letzter Zeit viel um die Ohren. *Haben* wir uns schon mal kennengelernt?"~ */
  IF ~~ THEN REPLY #29881 /* ~Wahrheit: "Ich glaube schon. Aber richtig erinnern kann ich mich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~Lüge: "Nein; ich muß da wohl irgendwas durcheinander gebracht haben. Ich glaube nicht, daß wir uns schon mal kennengelernt haben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"Viel um die Ohren?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"Viel um die Ohren?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"Viel um die Ohren?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"Egal. Vielleicht kannst du mir ja anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"Ist ja auch egal. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"Hmmm. Das ist für uns beide frustrierend, nicht wahr?"~ */
  IF ~~ THEN REPLY #29889 /* ~"Egal. Vielleicht kannst du mir ja anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"Ist ja auch egal. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"Hmmm. Na gut."
~ */
  IF ~~ THEN REPLY #29892 /* ~"Vielleicht kannst du mir ja anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"Da gibt's nicht viel zu erzählen... es war ein seltsamer Brand, nur in einer Ecke. Ich habe keine Ahnung, was an den Dokumenten so wichtig war, die verkokelt sind, aber jemand muß sie absichtlich zerstört haben."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"Äh... wurde der Täter schon gefaßt?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"Wurde der Täter schon gefaßt?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"Kannst du mir sagen, was verbrannt ist?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"Aha. Erzähl mir was über deine Tochter."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"Du? Was meinst du damit?"~ */
  IF ~~ THEN REPLY #29904 /* ~Wahrheit: "Vielleicht... habe ich es ja irgendwann in der Vergangenheit getan. Als ich nicht ganz frisch war. Ich bereue meine Taten und bitte dich um Verzeihung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~Lüge: "Es war ein magischer Zwang, der mich dazu verleitet hat. Mehr weiß ich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"Tut mir leid, ich habe da Blödsinn erzählt. Erzähl mir was über deine Tochter."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"Verzeih mir, ich habe das alles nicht so gemeint. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"Gar nichts. Leb wohl."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"Nein..." Jannis Gesicht erstarrt zu Stein. "Ich habe dich schon gehört. Du hast behauptet, den Brand gelegt zu haben. Wieso hast du das getan, he? Bist du nicht mehr ganz frisch?!"~ */
  IF ~~ THEN REPLY #29910 /* ~Wahrheit: "Vielleicht... habe ich es ja irgendwann in der Vergangenheit getan. Als ich nicht ganz frisch war. Ich bereue meine Taten und bitte dich um Verzeihung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~Lüge: "Es war ein magischer Zwang, der mich dazu verleitet hat. Mehr weiß ich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"Schrei mich nicht noch mal an oder der nächste Brand hier wird tödlich ausgehen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~Jannis Gesicht verzerrt sich vor Wut. "Du... Sigilianischer *Schweinehund*! Ich hatte gehofft, daß du dich nach deiner feigen Tat noch mal blicken läßt! Du hast meine Kanzlei und mehrere Erinnerungsstücke, an denen ich sehr gehangen habe, zerstört. Und jetzt schleichst du dich wie ein Vampir in der Nacht zurück und WAGST es, mich erneut zu bedrohen?!"~ */
  IF ~~ THEN REPLY #29914 /* ~Wahrheit: "Vielleicht... habe ich es ja irgendwann in der Vergangenheit getan. Als ich nicht ganz frisch war. Ich bereue meine Taten und bitte dich um Verzeihung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~Lüge: "Es war ein magischer Zwang, der mich dazu verleitet hat. Mehr weiß ich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"Ja, ich wage es. Was willst du jetzt tun, alter Kerl?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~Jannis weicht zurück, als du einen Sprung auf ihn zu machst und schreit los: "Wachen! Hilfe! Überfall!"~ */
  IF ~~ THEN REPLY #29921 /* ~"Verdammt..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~Du greifst nach Jannis Schläfen und drehst seinen Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #29923 /* ~"Ich habe keine Zeit für deine Standpauke, alter Kerl..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~Du hörst ein *Knacken* und Jannis sackt schlaff in deine Arme.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"Jetzt ruhst du in Frieden..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~Jannis hat mich zum letzten Mal geärgert. Ich habe ihn gewürgt, bis er endlich ruhig war. Beim Mord kam mir eine Erinnerung ... aber sie war nicht deutlich genug, um an die Oberfläche zu gelangen. Aber eins ist sicher: Ich habe früher schon andere erwürgt.~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"Jetzt ruhst du in Frieden..."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~Jannis hat mich zum letzten Mal geärgert. Ich habe ihn gewürgt, bis er endlich ruhig war.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #29928 /* ~Laß die Leiche liegen und geh weiter.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~Jannis schreit los: "Wachen! Hilfe! Einbrecher! Hilfe!"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"Verdammt..."~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"Verdammt..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"Aber..." Jannis scheinen fast die Worte zu fehlen. "Aber... warum? Ein paar Sachen, die verbrannt sind... hatten nur einen Wert für mich... unersetzliche Sachen!"~ */
  IF ~~ THEN REPLY #29933 /* ~"Vielleicht stellte eins dieser Erinnerungsstücke oder Dokumente eine Bedrohung für mein zweites Ich dar... das werde ich wohl nie rausfinden."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"Ehrlich gesagt weiß ich das auch nicht."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"Dein zweites Ich? Wovon redest du?"~ */
  IF ~~ THEN REPLY #29936 /* ~"Mir passiert manchmal etwas sehr Merkwürdiges... gelegentlich verliere ich mich selbst und werde für eine gewisse Zeit zu jemand anderem. In dieser Zeit habe ich keine Gewalt über meine Handlungen."~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"Ehrlich gesagt weiß ich das auch nicht."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~Lüge: "Es war ein magischer Zwang, der mich dazu verleitet hat. Mehr weiß ich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"Das weißt du nicht?! Habe ich hier ein Kleinkind vor mir?! Wieso weißt du nicht, warum du etwas getan hast?!"~ */
  IF ~~ THEN REPLY #29940 /* ~"Mir passiert manchmal etwas sehr Merkwürdiges... gelegentlich verliere ich mich selbst und werde für eine gewisse Zeit zu jemand anderem. In dieser Zeit habe ich keine Gewalt über meine Handlungen."~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~Lüge: "Es war ein magischer Zwang, der mich dazu verleitet hat. Mehr weiß ich auch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~Jannis runzelt die Stirn... Er scheint über die Sache nachzudenken. "Ich habe bereits davon gehört, daß ein solcher magischer *Zwang* einem Mann auferlegt werden kann." Er verstummt einen Moment lang. "Und du *hast* dich entschlossen, zurückzukommmen und die Verantwortung für das Verbrechen zu übernehmen..."~ */
  IF ~~ THEN REPLY #29943 /* ~"Ich wollte dich nur bitten, mir für mein Verbrechen zu verzeihen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Ich habe Jannis belogen und ihm gesagt, daß ich unter dem Zwang eines Zaubers stand, als ich das Feuer in seinem Laden legte, und habe ihn um Verzeihung gebeten. Er hat die Lüge geglaubt und mir mit Leichtigkeit vergeben. Er hat mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"Ich wollte dich bitten, mir zu verzeihen und will deinen Verlust wiedergutmachen, wenn es in meiner Kraft liegt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Ich habe Jannis belogen und ihm gesagt, daß ich unter dem Zwang eines Zaubers stand, als ich das Feuer in seinem Laden legte, und habe ihn um Verzeihung gebeten. Er hat die Lüge geglaubt und mir mit Leichtigkeit vergeben. Er hat mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"Naja... ich will's nicht im eigentlichen Sinn gestehen. Schließlich hatte ich keine Gewalt über meine Handlungen."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~Ich habe Jannis belogen und ihm gesagt, daß ich unter dem Zwang eines Zaubers stand, als ich das Feuer in seinem Laden legte, und habe ihn um Verzeihung gebeten. Er hat die Lüge geglaubt und mir mit Leichtigkeit vergeben. Er hat mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~Jannis runzelt die Stirn... er scheint über die Sache nachzudenken. "Ich habe von solchen Symptomen gehört... vorübergehender Gedächtnisverlust und das Durchdringen einer anderen Persönlichkeit... dann ist da noch die Tatsache, daß du beschlossen hast, das Verbrechen zu gestehen..."~ */
  IF ~~ THEN REPLY #29948 /* ~"Genau das scheint mir zu widerfahren... Ich wollte dich bitten, mir für mein Verbrechen zu verzeihen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Ich habe Jannis erzählt, daß ich für das Feuer in seinem Laden verantwortlich war, und ihn um Verzeihung gebeten. Er hat schnell vergeben und mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"Ich wollte dich bitten, mir zu verzeihen und will deinen Verlust wiedergutmachen, wenn es in meiner Kraft liegt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Ich habe Jannis erzählt, daß ich für das Feuer in seinem Laden verantwortlich war, und ihn um Verzeihung gebeten. Er hat schnell vergeben und mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"Naja... ich will's nicht im eigentlichen Sinn gestehen. Schließlich hatte ich keine Gewalt über meine Handlungen."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~Ich habe Jannis erzählt, daß ich für das Feuer in seinem Laden verantwortlich war, und ihn um Verzeihung gebeten. Er hat schnell vergeben und mir versichert, daß kein dauerhafter Schaden entstanden ist.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"Ich..." Jannis runzelt die Stirn, dann entspannt sich sein Gesichtsausdruck. "Da gibt's nichts zu verzeihen... ich habe mich mit dem Verlust abgefunden und keinen bleibenden Schaden davongetragen. Warum ausgerechnet meine Kanzlei heimgesucht wurde, weiß ich allerdings nicht. Unter den verbrannten Dokumenten war nichts Wertvolles dabei."~ */
  IF ~~ THEN REPLY #29953 /* ~"Was für Dokumente sind das gewesen?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"Hauptsächlich Testamente. Einige davon sehr alt."~ */
  IF ~~ THEN REPLY #29955 /* ~"Testamente?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"Nein, weder das Harmonium noch die Gnadentöter konnten den Täter finden."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"Kannst du mir sagen, was verbrannt ist?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"Aha. Erzähl mir was über deine Tochter."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"Aha. Erzähl mir was über deine Tochter."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"Das tut mir sehr leid für dich. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"Einige alte Testamente und einige Erinnerungsstücke und andere Andenken, die nur für mich einen Wert besaßen."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"Vielleicht habe ich ja den Brand gelegt." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"Testamente?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"Aha. Erzähl mir was über deine Tochter."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"Aha. Erzähl mir was über deine Tochter."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"Bitte entschuldige, aber in letzter Zeit habe ich das Unglück gepachtet... die vergangenen vier Jahre waren nicht gerade einfach."~ */
  IF ~~ THEN REPLY #29971 /* ~"Kann ich dir irgendwie helfen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"Tut mir leid, daß ich dich gestört habe... ich hoffe, daß es dir bald wieder besser geht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"Nein, nein... du kannst mir leider nicht helfen." Er nickt dir zu. "Aber trotzdem danke für dein Angebot."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"Vielleicht hilft es dir ja, mit mir darüber zu sprechen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"Vielleicht hilft es dir ja, mit mir darüber zu sprechen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"Vielleicht hilft es dir ja, mit mir darüber zu sprechen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"Okay. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"Ich hoffe, daß es dir bald wieder besser geht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~Jannis seufzt. "Ich will dich nicht damit belasten... ich habe vor kurzem meine Tochter verloren. Und dann war da noch dieser Brand... aber das ist eine andere Geschichte."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"Erzähl mir was über deine Tochter."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"Erzähl mir was über deine Tochter."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"Ein Brand?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~Jannis seufzt. "Ich will dich nicht noch mehr mit meinen Sorgen belasten... wie ich bereits sagte, ich habe vor kurzem meine Tochter verloren. Und dann war da noch der Brand... aber das ist eine andere Geschichte."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"Erzähl mir noch mehr über deine Tochter."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"Erzähl mir noch mehr über deine Tochter."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"Ein Brand?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~Jannis scheint plötzlich in sich zusammenzusacken. "Ja..." Sein professioneller Gesichtsausdruck wird allmählich durch pure Verzweiflung ersetzt. "Meine Tochter Deionarra ist vor einiger Zeit gestorben... " Bei dem Namen läuft es dir kalt den Rücken runter. Du *kanntest* diese Frau.~ */
  IF ~~ THEN REPLY #30225 /* ~"Erzähl mir was über sie. Wie war sie?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"Wie ist sie gestorben?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt. Sie ist jetzt ein Geist und hat behauptet, mich zu kennen."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"Erzähl mir doch noch mal was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~Jannis scheint sofort in sich zusammenzufallen. "Ja..." Sein Gesicht verliert die geschäftige Fassade, und zurück bleibt kalte Verzweiflung. "Meine Tochter, Deionarra, ist vor einiger Zeit verstorben... "~ */
  IF ~~ THEN REPLY #30233 /* ~"Erzähl mir was über sie. Wie war sie?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"Wie ist sie gestorben?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt. Sie ist jetzt ein Geist und hat behauptet, mich zu kennen."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"Erzähl mir doch noch mal was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"Deionarra? Sie war... jung. Sie war kurz vorher der Gesellschaft der Empfindung, den Sinnsaten, beigetreten... kein schlechter Bund, aber sie hat dort auch jemanden kennengelernt... sie hat diesen Mann auf einer Reise begleitet und da ist sie dann gestorben. Ihre Lei..." Sein Gesicht ist schmerzverzerrt. "Ich habe nicht mal ihre Leiche gefunden..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt."~ */ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"In der Gedenkhalle der Leichenhalle liegt eine Frau, die so heißt. Sie ist jetzt ein Geist und hat behauptet, mich zu kennen."~ */ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"Du sagst, sie war ein Sinnsat?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"Weißt du irgendwas über diesen Mann, den sie begleitet hat?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"Weißt du, wohin sie gereist ist?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"Weißt du, wie sie gestorben ist?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"Verzeih mir die Frage, aber wenn du ihre Leiche nicht finden konntest, woher wußtest du dann, daß sie gestorben war?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarras Vater, Jannis, hat mir erzählt, daß sie ein Mitglied der Sinnsaten war. Er sagt, sie sei sehr jung gestorben, und zwar, als sie einem Mann folgte, den sie auf einer Reise getroffen hatte. Ihre Leiche sei nie gefunden worden.~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"Ja... " Seine Miene hellt sich ein bißchen auf, so als ob er sich selbst mit einer kostbaren Erinnerung tröstet. "Sie ist ihnen wegen ihrer Gabe beigetreten... und weil sie so *viel* über das Multiversum erfahren wollte. Die Sinnsaten teilen ihre Erfahrungen und Gefühle ja bereitwillig mit anderen."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"Das ist mir auch aufgefallen. Ich habe im Sinnsorium einen Sinnesstein gesehen, der einen Bruchteil ihrer Erfahrungen enthielt."~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"Gabe?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~Jannis hat mir erzählt, daß durch Deionarras Adern das Blut eines Orakels geflossen sei. Es habe ihr die Gabe des "Zweiten Gesichts" gegeben, so daß sie Ereignisse habe sehen können, bevor sie eintraten.~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"Weißt du irgendwas über diesen Mann, den sie begleitet hat?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"Weißt du, wohin sie gereist ist?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"Weißt du, wie sie gestorben ist?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~In seinen Augen glimmt Hoffnung auf. "Wirklich? Welcher Stein war es denn...? Nun sag's mir schon!"~ */
  IF ~~ THEN REPLY #30262 /* ~"Es war einer der Sinnessteine der Sinnsaten... wenn du kein Sinnsat bist, lassen sie dich aber nicht rein."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~Er grübelt eine Weile. "Ich muß einen Weg finden... vielleicht machen sie für ihren Vater ja eine Ausnahme..."~ */
  IF ~~ THEN REPLY #30264 /* ~"Wenn du willst, könnte ich mit jemandem reden. Ich bin sicher, daß sie in deinem Fall eine Ausnahme machen würden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Ich habe Jannis gesagt, daß ich in der Festhalle Erkundigungen einholen und versuchen kann, daß er den Sinnesstein seiner Tochter zu sehen bekommt. Ich weiß nicht, was ich ausrichten kann, aber ich werde es versuchen.~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"Ich will die Gesetze der Sinnsaten nicht verletzen. Aber ich könnte ja mit jemandem reden und sehen, was ich tun kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Ich habe Jannis gesagt, daß ich in der Festhalle Erkundigungen einholen und versuchen kann, daß er den Sinnesstein seiner Tochter zu sehen bekommt. Ich weiß nicht, was ich ausrichten kann, aber ich werde es versuchen.~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"Ich könnte dir helfen, aber das kostet dich was. Meine Worte könnten in der Festhalle Gehör finden."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~Ich habe Jannis gesagt, daß ich in der Festhalle Erkundigungen einholen und versuchen kann, daß er den Sinnesstein seiner Tochter zu sehen bekommt ... gegen Bezahlung. Er hat mir gesagt, er werde mich bezahlen, wenn er die Erlaubnis von den Sinnsaten habe. ~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"Das wäre möglich. Nun, in dem Sinnesstein hat sie mir eine Erbschaftsnummer hinterlassen..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"Das wäre möglich. Nun, in dem Sinnesstein hat sie mir eine Erbschaftsnummer hinterlassen..."~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"Das mußt du selbst mit den Sinnsaten regeln. Erzähl mir mehr über Deionarra..."~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"Das kann schon sein. Du solltest mit ihnen reden. Aber ich will dich noch was anderes fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"Das kann schon sein. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~Jannis wirkt erleichtert. "Dafür wäre ich dir sehr dankbar."~ */
  IF ~~ THEN REPLY #30273 /* ~"Ich werde sehen, was ich für dich tun kann. Ich würde aber gerne mehr über Deionarra wissen. Wie war sie denn so?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"Ich werde gleich gehen und die Sache regeln. Nun, in dem Sinnesstein hat sie mir eine Erbschaftsnummer hinterlassen..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"Ich werde gleich gehen und die Sache regeln. Nun, in dem Sinnesstein hat sie mir eine Erbschaftsnummer hinterlassen..."~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"Ich werd's versuchen... vielleicht kannst du mir ja noch anderweitig behilflich sein, bevor ich gehe..."~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"Ich werde sehen, was ich tun kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~Jannis wirkt erleichtert. "Bitte komm zurück, wenn du die Erlaubnis für mich bekommen hast, den Stein zu sehen. Ich werde dann dafür sorgen, daß du für deine Mühen fürstlich belohnt wirst."~ */
  IF ~~ THEN REPLY #30277 /* ~"Ich werde sehen, was ich tun kann, aber unter Umständen ist das gar nicht so einfach. Ich möchte aber noch mehr über Deionarra wissen, bevor ich mich in der Festhalle erkundige. Wie war sie denn so?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"Dann werde ich gleich gehen und die Sache regeln. Nun, ich interessiere mich für das Erbe, das sie mir hinterlassen hat..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"Dann werde ich gleich gehen und die Sache regeln. Nun, ich interessiere mich für das Erbe, das sie mir hinterlassen hat..."~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"Ich werd's versuchen... vielleicht kannst du mir ja noch anderweitig behilflich sein, bevor ich gehe..."~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"Ich werde sehen, was ich tun kann... es kann aber wirklich *sehr* teuer werden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"Danke, danke, danke! Ich stehe in deiner Schuld!"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"Da hast du sehr recht... du hast doch vorhin was von einer Belohnung gesagt..."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~Ich bin zu Jannis zurückgekehrt und habe ihm gesagt, daß die Sinnsaten ihm den Zugang zum Sinnesstein seiner Tochter gewähren wollen. Er war sehr dankbar ... so dankbar, daß er mir jede Menge Münzen zu zahlen bereit war, sowie einige kleinere Zaubermittel, die er gelagert hatte. Ich nehme an, die Liebe eines Vaters zu seiner Tochter läßt sich in Gold aufwiegen...~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"Gern geschehen, Jannis. Bitte geh nun zum Stein und sieh dir die Erfahrungen deiner Tochter an. Danach fühlst du dich bestimmt besser."
~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~Ich bin zu Jannis zurückgekehrt und habe ihm gesagt, daß die Sinnsaten ihm den Zugang zum Sinnesstein seiner Tochter gewähren wollen. Er war sehr dankbar; einfach nur die Erwähnung meines Erfolgs, für ihn die Erlaubnis erlangt zu haben, den Stein zu sehen, hat seine Depression deutlich gemildert.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"Natürlich, natürlich... einen Augenblick, ich bin gleich wieder da."~ */
  IF ~~ THEN REPLY #30286 /* ~"Gut. Ich warte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~Jannis kommt wieder zurück. Er trägt einen großen Beutel mit Münzen und mehrere Gegenstände, die aussehen wie eigenartig geformte Talismane. "Hier, bitte... Und nochmals vielen Dank für deine Hilfe."~ */
  IF ~~ THEN REPLY #30288 /* ~"Schon gut... aber vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"Hab' ich doch gern gemacht... auf jeden Fall für so viel Kohle. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"Wenig. Bis zu ihrer Abreise wußte ich ja noch nicht mal, daß es ihn überhaupt gibt. Und dann war's zu spät, ihn kennenzulernen."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"Ich glaube, dieser Mann war ich. Aber ich habe viel vergessen."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"Du sagst, sie war ein Sinnsat?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"Weißt du, wohin sie gereist ist?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"Wie ist sie gestorben?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"Woher weißt du, daß sie tot ist?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"Das hat sie mir nicht gesagt. Wer weiß, vielleicht konnte sie's mir ja auch nicht sagen. Muß wohl ein... schrecklicher Ort gewesen sein."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"Du sagst, sie war ein Sinnsat?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"Weißt du irgendwas über diesen Mann, den sie begleitet hat?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"Wie ist sie gestorben?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"Woher weißt du, daß sie tot ist?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"Das war ganz merkwürdig... ich bin zu den Staubmenschen gegangen, weil ich wissen wollte, ob die ihre Leiche gefunden hatten. Die haben mich dann zum Staubmenschen-Denkmal geschickt... zu einem ihrer Mitglieder. 'Tod-der-Namen' hieß der, glaube ich. Er soll so eine Art selbsternanntes Orakel für Verstorbene sein. Und der hat mir gesagt, daß meine Tochter gestorben sei."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"Du sagst, sie war ein Sinnsat?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"Weißt du irgendwas über diesen Mann, den sie begleitet hat?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"Weißt du, wohin sie gereist ist?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~Jannis scheint eine Weile in Gedanken versunken zu sein. Als er wieder etwas sagt, kommen ihm die Worte nur schwer über die Lippen. "Sag's mir. Ich muß es wissen."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Wahrheit: "Ich trage die Schuld am Tod deiner Tochter. Ich habe sie auf der Negativen Materiellen Ebene getötet und gehofft, daß ihre Liebe zu mir sie an diesen Ort binden würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Ich habe Jannis, Deionarras Vater, gestanden und ihm erzählt, was seiner Tochter zugestoßen ist. Trotz der Ungeheuerlichkeit des Verbrechens hoffe ich, daß das Wissen um ihr Schicksal ihn etwas beruhigen wird. ~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~Wahrheit: "Ich trage die Schuld am Tod deiner Tochter. Ich habe sie auf der Negativen Materiellen Ebene getötet und gehofft, daß ihre Liebe zu mir sie an diesen Ort binden würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Ich habe Jannis, Deionarras Vater, gestanden und ihm erzählt, was seiner Tochter zugestoßen ist. Trotz der Ungeheuerlichkeit des Verbrechens hoffe ich, daß das Wissen um ihr Schicksal ihn etwas beruhigen wird. ~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Halbe Wahrheit: "Sie ist auf der Negativen Materiellen Ebene gestorben, weil sie verraten wurde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Ich habe Jannis, Deionarras Vater, gegenüber ein Teilgeständnis abgelegt und ihm einen Teil dessen erzählt, was seiner Tochter zugestoßen ist. Ich hoffe, daß das Wissen um ihr Schicksal den alten Mann etwas beruhigen wird. Er könnte die ganze Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht. ~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~Halbe Wahrheit: "Sie ist auf der Negativen Materiellen Ebene gestorben, weil sie verraten wurde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Ich habe Jannis, Deionarras Vater, gegenüber ein Teilgeständnis abgelegt und ihm einen Teil dessen erzählt, was seiner Tochter zugestoßen ist. Ich hoffe, daß das Wissen um ihr Schicksal den alten Mann etwas beruhigen wird. Er könnte die ganze Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht. ~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~Lüge: "Sie ist auf der Reise krank geworden... anscheinend hatte ihre Zeit in Sigil sie nicht auf die Umgebung auf den anderen Ebenen vorbereitet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Ich habe Jannis, Deionarras Vater, darüber angelogen, was seiner Tochter zugestoßen ist. Ich hoffe, die Lüge wird den alten Mann etwas beruhigen. Er könnte die Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht.~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"Vergiß es. Ich habe Blödsinn erzählt. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"Ist nicht wichtig. Leb wohl."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~Jannis starrt dich eine Weile schweigend an, dann überschlägt sich seine Stimme. "Wieso... *wieso* hast du so etwas Schreckliches getan?"~ */
  IF ~~ THEN REPLY #30333 /* ~"Das war nicht ich... das war ein anderer Teil von mir. Er tat es in der Hoffnung, daß sie für ihn als ein Band zu dieser Ebene dienen könnte. Es tut mir leid, Jannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"Vielleicht trage ich die Schuld an vielen schrecklichen Dingen, von denen ich mich an die meisten noch nicht mal erinnern kann. Ich habe es in der Hoffnung getan, daß sie als ein Band zu dieser Ebene dienen könnte. Es tut mir leid, Jannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"Das war nichts 'Schreckliches', sondern etwas *Notwendiges*, Jannis. Deine Tochter war bereit, ihr Leben für mich zu opfern, um mein Leben zu retten."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~Jannis starrt dich schweigend an. "Wer hat sie verraten?"~ */
  IF ~~ THEN REPLY #30337 /* ~Wahrheit: "Ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~Lüge: "Keine Ahnung. Und es ist wohl am besten, sich da nicht weiter mit zu befassen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~Jannis wirkt niedergeschlagen. "Ich muß es herausfinden..." Er schaut zu dir auf. "Danke, daß du's mir gesagt hast. Ich mußte wissen, was mit ihr passiert ist..."~ */
  IF ~~ THEN REPLY #30340 /* ~"Das kann ich verstehen. Vielleicht kannst du mir anderweitig behilflich sein, bevor ich gehe..."~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"Ich trauere um den Verlust deiner Tochter, Jannis. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"Sie..." Jannis versucht zu verstehen, was du gerade gesagt hast. "Warte... sie sollte als Band zu dieser Ebene benutzt werden? Was meinst du damit?"~ */
  IF ~~ THEN REPLY #30343 /* ~"Soweit ich weiß, bestand die Hoffnung, daß die Kombination aus ihrer Liebe zu mir und ihrem Tod auf der Negativen Materiellen Ebene ihr Weiterleben als Geist zur Folge haben würde."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"Sie *lebt*?"~ */
  IF ~~ THEN REPLY #30345 /* ~"Ja... gewissermaßen schon."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"Na ja, ich würde nicht gerade sagen, daß sie *lebt.* Ihren Geist gibt es noch..."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"Das..." Der Schrecken steht ihm ins Gesicht geschrieben. "Dann muß sie befreit werden!"~ */
  IF ~~ THEN REPLY #30348 /* ~"Wenn ich wüßte, wie, würde ich's tun."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"Ich habe bereits geschworen, daß ich versuchen würde, sie zu befreien... oder zu ihr zu kommen."~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"Wenn du nur einen Funken Anstand in dir hättest, würdest du meine Tochter in Ruhe lassen. An der Vergangenheit kann man nicht mehr rütteln. Aber bitte laß ihre Seele in Frieden ruhen. Ich werde dir irgendwie für deine Schandtaten verzeihen, wenn du das für mich tust."~ */
  IF ~~ THEN REPLY #30351 /* ~Schwur: "Ich verspreche, daß ich deine Tochter in Frieden ruhen lassen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"Ich werde sehen, was ich tun kann."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"Das kann ich nicht..."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"Na gut. Geh jetzt. Ich möchte allein sein."~ */
  IF ~~ THEN REPLY #30355 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"Dann mögen die Ebenen über dich richten!" Jannis beißt die Zähne zusammen. "Möge das Leid meiner Tochter hundertfach auf dich zurückfallen!"~ */
  IF ~~ THEN REPLY #30357 /* ~"Paß auf, was du sagst, Jannis, oder du siehst deine Tochter schneller wieder, als du denkst."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"Wir haben uns nichts mehr zu sagen. Leb wohl."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"Keine Ahnung... ihr Körper wurde nie gefunden." Jannis Gesicht läuft blutrot an und er ballt seine Fäuste. "Und das ist auch das, was mich noch in den *Wahnsinn* treiben wird... ich werde niemals erfahren, wieso sie weggelaufen ist, was mit ihr passiert ist und wo ihre Leiche jetzt ist!"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"Du sagst, sie war ein Sinnsat?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"Weißt du, wohin Deionarra und dieser Mann gereist sind?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"Verzeih mir die Frage, aber woher weißt du, daß sie tot ist, wenn du ihre Leiche nie gesehen hast?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"Ja, ich habe in der Gedenkhalle einen Sarg aufstellen lassen. Natürlich ist er leer, aber ich habe gehofft daß der Sarg ihr den Weg nach Hause zeigen würde."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"Es hat funktioniert... ihr Geist ist jetzt dort."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"Du sagst, sie war ein Sinnsat?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"Weißt du, wohin Deionarra und dieser Mann gereist sind?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"Weißt du, wie sie gestorben ist?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"Wenn es keine Leiche gibt, woher weißt du dann, daß sie tot ist?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"Aha. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"W... was?!" Jannis sieht fassungslos aus. "W... was hast du da gerade gesagt?!"~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"Ihr Geist ist jetzt in der Gedenkhalle."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"Ihr Geist ist jetzt in der Gedenkhalle. Ich habe eine Weile mit ihr gesprochen. Sie scheint bekümmert zu sein."~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"Gar nichts... erzähl mir noch mal was über Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"Nichts... ich habe Blödsinn erzählt. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"Ich habe gesagt, daß ich um deinen Verlust trauere. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"Du?!" Jannis betrachtet dich von Kopf bis Fuß. "Das warst du... und du sagst, du hast es *vergessen*?!" Jannis baut sich vor dir auf. Es sieht so aus, als ob er sich auf einen Kampf vorbereitet. "Du hast es *vergessen*... aber es ist doch noch gar nicht so lange her. Wie kann das sein?"~ */
  IF ~~ THEN REPLY #30384 /* ~"Mit mir passiert etwas sehr Merkwürdiges... ich verliere mich selbst... für eine Weile. Alles, was du mir über deine Tochter sagen kannst, wäre von unschätzbarem Wert."~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"Ich habe Blödsinn erzählt. Ich bezweifle, daß ich dieser Mann bin. Ich könnte mich bestimmt an deine Tochter erinnern, wenn ich mit ihr gereist wäre."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"Deine Fragen langweilen mich. Leb wohl."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"Das hatte ich befürchtet." Jannis seufzt. "Deine Geschichte klingt wahr... sie hatte ein behütetes Leben in der Stadt, und selbst zu ihren besten Zeiten war sie kränklich." Er schaut voller Hoffnung auf. "Weißt du, wo ihre Leiche sein könnte? Ich würde sie begraben, so wie es sich gehört."~ */
  IF ~~ THEN REPLY #30388 /* ~"Von ihrer Leiche ist nichts mehr übrig... sie hatte eine Krankheit, die den Körper verfallen ließ. Dabei ist wenig von ihr übriggeblieben."~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"Nein, mein Herr, ich habe Euch gut verstanden. Ihr sagt, Ihr wüßtet, was meiner Tochter zugestoßen ist. Ihr werdet es mir erzählen. Jetzt." Die Runzeln auf Jannis' Stirn vertiefen sich. "Oder ich werde eine Harmonium-Streife rufen, damit sie die Antworten aus Euch herausholt." ~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Wahrheit: "Ich trage die Schuld am Tod deiner Tochter. Ich habe sie auf der Negativen Materiellen Ebene getötet und gehofft, daß ihre Liebe zu mir sie an diesen Ort binden würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Ich habe Jannis, Deionarras Vater, gestanden und ihm erzählt, was seiner Tochter zugestoßen ist. Trotz der Ungeheuerlichkeit des Verbrechens hoffe ich, daß das Wissen um ihr Schicksal ihn etwas beruhigen wird. ~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Halbe Wahrheit: "Sie ist auf der Negativen Materiellen Ebene gestorben, weil sie verraten wurde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Ich habe Jannis, Deionarras Vater, gegenüber ein Teilgeständnis abgelegt und ihm einen Teil dessen erzählt, was seiner Tochter zugestoßen ist. Ich hoffe, daß das Wissen um ihr Schicksal den alten Mann etwas beruhigen wird. Er könnte die ganze Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht. ~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~Wahrheit: "Ich trage die Schuld am Tod deiner Tochter. Ich habe sie auf der Negativen Materiellen Ebene getötet und gehofft, daß ihre Liebe zu mir sie an diesen Ort binden würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Ich habe Jannis, Deionarras Vater, gestanden und ihm erzählt, was seiner Tochter zugestoßen ist. Trotz der Ungeheuerlichkeit des Verbrechens hoffe ich, daß das Wissen um ihr Schicksal ihn etwas beruhigen wird. ~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~Halbe Wahrheit: "Sie ist auf der Negativen Materiellen Ebene gestorben, weil sie verraten wurde."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Ich habe Jannis, Deionarras Vater, gegenüber ein Teilgeständnis abgelegt und ihm einen Teil dessen erzählt, was seiner Tochter zugestoßen ist. Ich hoffe, daß das Wissen um ihr Schicksal den alten Mann etwas beruhigen wird. Er könnte die ganze Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht. ~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~Lüge: "Sie ist auf der Reise krank geworden... anscheinend hatte ihre Zeit in Sigil sie nicht auf die Umgebung auf den anderen Ebenen vorbereitet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Ich habe Jannis, Deionarras Vater, darüber angelogen, was seiner Tochter zugestoßen ist. Ich hoffe, die Lüge wird den alten Mann etwas beruhigen. Er könnte die Wahrheit wahrscheinlich ohnehin nicht ertragen, und ich habe es wirklich nicht nötig, daß noch einer mich für absolut *jeden* Ärger auf den Ebenen verantwortlich macht.~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"Du willst die Wachen rufen? Nur zu. Das Totenbuch ist nach meiner Zählung nicht mal halb voll."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"Wieso hast du das getan?! Es war das LEBEN meiner Tochter, nicht..."~ */
  IF ~~ THEN REPLY #30398 /* ~"Es war das Leben deiner Tochter, und ich konnte damit machen, was ich wollte. Sie hat mir dazu die Erlaubnis gegeben, indem sie ihr Leben in meine Hand legte."~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"Ich habe es satt, noch länger mit dir zu reden. Halt' den Mund oder ich vereine dich mit deiner Tochter im Tod."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~Jannis Gesicht verzerrt sich vor Wut. "Du... Sigilianischer *Schweinehund*! Du hast meine Tochter ohne einen einzigen Gewissensbiß umgebracht und jetzt wagst du es, wie ein Vampir in der Nacht zurückzukommen und WAGST es, mich zu bedrohen?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"Ich habe voreilig gesprochen... bitte entschuldige meine Worte."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"Ja, ich wage es und es macht mir nichts aus, meiner Liste noch mehr Leichen hinzuzufügen. Was willst du jetzt tun, alter Mann?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"Rede nicht in Bildern!" Jannis sieht wütend aus. "Ich habe keine Zeit für deine Wortspiele..."~ */
  IF ~~ THEN REPLY #30462 /* ~"Nein, ich meine das so, wie ich es gesagt habe. Ihr Geist ist in der Gedenkhalle."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"Nein, ich meine das so, wie ich es gesagt habe. Ihr Geist ist jetzt in der Gedenkhalle. Ich habe eine Weile mit ihr gesprochen. Sie scheint bekümmert zu sein."~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"Dann entschuldige ich mich... erzähl mir noch mal was über Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"Ich habe Blödsinn erzählt. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"Ich habe meine Worte schlecht gewählt. Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"Sie ist zu einem... Geist geworden?"~ */
  IF ~~ THEN REPLY #30468 /* ~"Ja."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"Ja, ich habe eine Weile mit ihr gesprochen. Sie scheint bekümmert zu sein."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"Nein, ich weiß auch nicht, was ich da eben gefaselt habe... erzähl mir noch mal was über Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"Ich habe Blödsinn erzählt. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"Ich habe meine Worte schlecht gewählt. Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"Ich... ich... muß sie finden, versuchen, mit ihr zu reden, herausfinden, was sie dort festhält... ihren Zustand... woher weißt du, daß sie zu einem Geist geworden ist?"~ */
  IF ~~ THEN REPLY #30485 /* ~"Ich habe bei ihrem Sarg in der Leichenhalle einen kurzen Blick auf einen Geist erhascht. Ich nahm an, das sie das war."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"Ich habe eine Weile mit ihr gesprochen. Sie scheint bekümmert zu sein."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"Nein, ich weiß auch nicht, was ich da eben gefaselt habe... erzähl mir noch mal was über Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"Ich habe Blödsinn erzählt. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"Ich habe meine Worte schlecht gewählt. Ich trauere um deinen Verlust. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"Ich werde zu ihr gehen, sobald es mir möglich ist, und mir die Sache selbst angucken." Er nickt dir zu. "Wenn deine Worte wahr sind, dann stehe ich in deiner Schuld..."
~ */
  IF ~~ THEN REPLY #30491 /* ~"Das ist nicht wichtig... erzähl mir noch mal was über Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"Na gut. Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"Das werde ich mir für ein anderes Mal merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"Du... hast mit ihr gesprochen?!" Jannis sieht jetzt noch verwirrter aus. "Was bekümmert sie?"~ */
  IF ~~ THEN REPLY #30495 /* ~"Ich... bin nicht ganz sicher. Ich konnte nicht verstehen, was sie gesagt hat."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Ich anscheinend. Sie sagte, sie liebe mich und daß ich sie geliebt hätte... und daß ich sie im Stich gelassen hätte."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Ich anscheinend. Sie sagte, sie liebe mich und daß ich sie geliebt hätte... und daß ich sie im Stich gelassen hätte."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"Aha. Dann..." Jannis runzelt die Stirn und mustert dich... sein Gesicht ist wie versteinert. "warst du's, mit dem sie Sigil verlassen hat? Hast du sie mit auf die Reise genommen, auf der sie gestorben ist?"~ */
  IF ~~ THEN REPLY #30498 /* ~"Ich... bin nicht sicher. Vielleicht bin ich dieser Mann, aber ich habe viel vergessen."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"Nein, das glaube ich nicht. Sie schien hysterisch zu sein und wußte wenig über ihre Umgebung. Du könntest ja selbst zu ihr gehen."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"Während meiner Arbeit in dieser Stadt habe ich es mit unzähligen Lügnern zu tun gehabt." Jannis betrachtet dich eingehend. "Du scheinst mir keiner zu sein... zumindest nicht bei dieser Sache." Er seufzt. "Wenn du dich wirklich nicht erinnern kannst, dann muß das, was dir und meiner Tochter auf eurer Reise passiert ist, tiefe Narben hinterlassen haben."~ */
  IF ~~ THEN REPLY #30501 /* ~"Da würde ich dir zustimmen."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"Dann bitte ich dich um etwas: Komm zu mir zurück, wenn du dich wieder erinnerst, was mit meiner Tochter passiert ist. Nur so werde ich endlich wieder ruhig schlafen können."~ */
  IF ~~ THEN REPLY #30503 /* ~Schwur: "Mach ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~Lüge: "Mach ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"Wenn ich herausfinde, was mit ihr passiert ist, komm ich zurück... sofern es mir möglich ist."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"Hm..." Jannis runzelt die Stirn. "Ich danke dir für diese Auskunft. Ich kann nur hoffen, daß sie nicht lange leiden mußte, bevor sie gestorben ist."~ */
  IF ~~ THEN REPLY #30507 /* ~"Das ging ruck... ich bin sicher, daß sie schnell und schmerzlos gestorben ist. Die Krankheit traf sie wie ein Dolch, ohne Vorwarnung. Die *Arme*."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"Oh, ja..." Jannis nickt. "In den Adern meiner Tochter floß das Blut eines Orakels, aber es war eine Gabe, auf die man sich nicht verlassen konnte. Manchmal konnte sie Ereignisse voraussagen... Sie hatte 'seherische Fähigkeiten'. Sie konnte durch die Zeit und durch die Windungen des Schicksals sehen..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"Jannis, ich weiß jetzt, was Deionarra zugestoßen ist."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"Du sagst, sie war ein Sinnsat?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"Weißt du irgendwas über diesen Mann, den sie begleitet hat?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"Weißt du, wohin sie gereist ist?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"Weißt du, wie sie gestorben ist?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"Verzeih mir die Frage, aber wenn du ihre Leiche nicht finden konntest, woher wußtest du dann, daß sie gestorben war?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"Aha. Erzähl mir was über diesen Brand."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"Vielleicht kannst du mir ja noch anderweitig behilflich sein..."~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"Hmmm. Das muß eine wirklich nützliche Gabe gewesen sein... besonders für den, mit dem sie gereist ist. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"Nein. Ich habe dich schon gehört. Du wirst mir jetzt alles erzählen, was du weißt. Los!"Jannis Miene verfinstert sich. "Sonst rufe ich eine Wache des Harmoniums und quetsche die Antwort aus dir raus."~ */
  IF ~~ THEN REPLY #30519 /* ~"Mit mir passiert etwas sehr Merkwürdiges... ich verliere mich selbst... für eine Weile. Ich habe dich über deine Tochter nicht belogen. Ich habe einfach viel über mein Leben und mich selbst vergessen."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~Brich ihm das Genick.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"Du willst die Wachen rufen? Nur zu. Die sind genauso leicht umzulegen wie du."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"Ah!" Jannis nickt. "Es scheint so, als ob du mir die Wahrheit gesagt hast... Du hast meine Tochter also gekannt." Er seufzt. "Einen Augenblick, ich schaue mal, was sie dir vermacht hat."~ */
  IF ~~ THEN REPLY #30525 /* ~"Ich werde warten."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~Ich habe Deionarras Letzten Willen von ihrem Vater abgeholt.~ */ GOTO 31
END
