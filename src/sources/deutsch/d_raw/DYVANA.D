// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVANA~

IF ~  Global("Yvana","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3003 /* ~Vor dir steht eine gut gekleidete ältere Frau in einem Kleid aus pfirsichfarbenem und goldenem Zwirn. Sie steht schweigend da mit sittsam gefalteten Händen und nickt dir zu. Erst da bemerkst du, daß sie keine Pupillen hat - ihre Augen sind ganz weiß. "Seid gegrüßt, mein Herr. Ich bin Yvana und heiße Euch in meiner Galerie willkommen. Seht Euch nur um und nehmt Euch dabei Zeit. Solltet Ihr zu einem der Stücke Fragen haben, zögert nicht, sie mir zu stellen."~ */
  IF ~~ THEN REPLY #3004 /* ~"Ich hätte da ein paar Fragen, Yvana..."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #42094 /* ~"Dann werd ich mich vielleicht mal umsehen. Leb wohl."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.1 4.1 5.1 6.1 7.0 10.0 12.0 13.0 15.0 16.0 17.1 18.1 19.1 20.0 21.8 22.10 23.2 24.1 25.2 26.1 27.2 28.1 29.1 31.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.2 42.1 43.1 44.0 45.1 46.0 47.0 48.1
  SAY #42095 /* ~"Natürlich. Frag schon."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65156 /* ~"Hast du jemals so etwas gesehen wie die Inschrift in diesem Dodekahedron?"~ */ GOTO 47
  IF ~~ THEN REPLY #42096 /* ~"Ich hätte da eine Frage über eines der Stücke..."~ */ GOTO 21
  IF ~  !NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42097 /* ~"Siehst du was, Yvana?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42098 /* ~"Siehst du was, Yvana?"~ */ EXTERN ~DGRACE~ 141
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42099 /* ~"Weißt du, was dieses kleine, würfelartige Spielzeugwesen ist?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 45
  IF ~  GlobalGT("Yves","GLOBAL",1)
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42100 /* ~"Du kommst mir irgendwie bekannt vor... Kennst du jemanden namens Yves?"~ */ GOTO 3
  IF ~  Global("Yvana","GLOBAL",3)
~ THEN REPLY #42101 /* ~"Hast du in letzter Zeit mit deiner Tochter gesprochen, Yvana?"~ */ GOTO 15
  IF ~~ THEN REPLY #42102 /* ~"Was ist das für ein Ort?"~ */ GOTO 16
  IF ~~ THEN REPLY #42103 /* ~"Was gibt's hier Interessantes?"~ */ GOTO 2
  IF ~~ THEN REPLY #42104 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42105 /* ~"Ich möchte etwas über einen bestimmten Ort wissen..."~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42106 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 2
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42107 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 17
  IF ~~ THEN REPLY #42108 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.8 1.9 1.10 1.11
  SAY #42109 /* ~"Tut mir leid, aber ich entferne mich nie allzu weit von der Galerie, so daß ich dir in dieser Sache nicht helfen kann. Frag am besten jemand anderen."~ */
  IF ~~ THEN REPLY #42110 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42111 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5
  SAY #42112 /* ~"Das ist meine Tochter." Einen Augenblick lang schimmert Trauer in ihren milchig weißen Augen. "Wir reden nicht mehr miteinander."~ */
  IF ~~ THEN REPLY #42113 /* ~"Warum denn das?"~ */ GOTO 4
  IF ~~ THEN REPLY #42114 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42115 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #42116 /* ~"Wir haben uns einfach nichts mehr zu sagen. Sie ist auf der Suche nach Geschichten losgezogen... Warum, weiß ich nicht."~ */
  IF ~  Global("Yves","GLOBAL",2)
~ THEN REPLY #42117 /* ~"Sie hat mir eine Geschichte erzählt, die diese Frage beantworten könnte..."~ */ GOTO 5
  IF ~~ THEN REPLY #42118 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42119 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42120 /* ~Yvana zieht die Augenbrauen hoch. "Oh? Bitte erzähl sie mir! Ich wäre dir sehr dankbar..."~ */
  IF ~~ THEN REPLY #42121 /* ~Erzähl ihr die Geschichte von der Geschichtenjägerin und ihrer endlosen Suche nach der Geschichte, die die Wahrheit enthält, die sie begehrt.~ */ DO ~SetGlobal("Yvana","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #42122 /* ~"Vielleicht ein andermal. Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42123 /* ~"Ein andermal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42124 /* ~Yvana nickt langsam. "Das... das wußte ich nicht. Ich werde mich mit ihr treffen. Danke für diese Neuigkeiten über meine einzige Tochter." Während dieser Worte füllt sich die blasse Iris beider Augen langsam mit Farbe und leuchtet bald im kräftigsten Grün.~ */
  IF ~~ THEN REPLY #42125 /* ~"Deine Augen... Siehst du jetzt was, Yvana?"~ */ GOTO 7
  IF ~~ THEN REPLY #42126 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42127 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42128 /* ~Sie nickt lächelnd.~ */
  IF ~~ THEN REPLY #42129 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42130 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 9.0
  SAY #42131 /* ~"Warte. Deine Stimme... Sie ist schwer von der Last vieler Jahre und Wunden. Darf ich dein Gesicht berühren?"~ */
  IF ~~ THEN REPLY #42132 /* ~"Ja, schieß los."~ */ GOTO 11
  IF ~~ THEN REPLY #42133 /* ~"Nein, bitte nicht."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY #42134 /* ~"Warte..."~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #42135 /* ~Yvana nickt. "Gut. Ich werde dich nicht wieder darum bitten."~ */
  IF ~~ THEN REPLY #42136 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #42137 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY #42138 /* ~Yvana lächelt, als sie mit ihren alten Händen über dein Gesicht streicht. Dann runzelt sie die Stirn und macht einen leicht verwirrten Eindruck. "Diese Narben... Alte und neue. Es ist, als ob sie..." Sie faßt dir seitlich an die Kehle, errötet und zieht ihre Hände zurück. "Verzeih mir. Ich wollte nur sehen, wo sie aufhören."~ */
  IF ~~ THEN REPLY #42139 /* ~"Schon gut. Sie sind überall: Mein ganzer Körper ist voller Narben."~ */ GOTO 12
  IF ~~ THEN REPLY #42140 /* ~"Tu das bitte nie wieder, alte Frau."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #42141 /* ~Yvana nickt.~ */
  IF ~~ THEN REPLY #42142 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #42143 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 14.0
  SAY #42144 /* ~"Ich bin blind, weil ich nicht sehen will. Irgendwann werde ich meinem Augenlicht erlauben zurückzukommen. Dann kann ich meine Galerie mit neuen, unverbrauchten Augen sehen."~ */
  IF ~~ THEN REPLY #42145 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42146 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #42147 /* ~Yvana nickt lächelnd. "Da hat deine Gefährtin wohl recht..."~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 1.6
  SAY #42148 /* ~"Ja, wir sprechen wieder miteinander... Und dafür bin ich dir dankbar. Ich bin glücklich, wieder zu meiner Tochter gefunden zu haben." Yvana lächelt dich an.~ */
  IF ~~ THEN REPLY #42149 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42150 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7
  SAY #42151 /* ~"Nun, es ist meine Galerie der Ebenen." Mit einem Lächeln zeigt sie um sich. "Diese Stücke kommen von überall her. Einige verkaufe ich, andere behalte ich, aber alle werden früher oder später ausgestellt. Laß sie auf dich wirken... Falls du Fragen zu einem Stück hast, kannst du dich jederzeit gerne an mich wenden."~ */
  IF ~~ THEN REPLY #42152 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42153 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.12 41.0
  SAY #42154 /* ~"Ich weiß, daß sie eine Nachthexe ist, eine der ältesten Grauen Schwestern der Einöden. Sie kam vor vielen Jahrhunderten nach Sigil, um irgendwelche geheimnisvollen Experimente durchzuführen, die anscheinend gegen den Willen der Dame verstießen. Aus diesem Grund wurde Ravel aus Sigil verjagt und in einen Irrgang der Dame auf der Ätherischen verbannt. Dort ruht ihr Körper bis heute..."~ */
  IF ~~ THEN REPLY #42155 /* ~"Erzähl weiter..."~ */ GOTO 18
  IF ~~ THEN REPLY #42156 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42157 /* ~"Ich hör mir den Rest ein anderes Mal an, ja? Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #42158 /* ~"Ravel soll eine Meisterin des Rätsels gewesen sein. Doch ein gewisses Rätsel, eine Frage, scheint die alte Nachthexe ganz besonders geplagt zu haben. Sie lautet: 'Was kann das Wesen eines Menschen ändern?'"~ */
  IF ~~ THEN REPLY #42159 /* ~"Erzähl weiter..."~ */ GOTO 19
  IF ~~ THEN REPLY #42160 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42161 /* ~"Ich hör mir den Rest ein anderes Mal an, ja? Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #42162 /* ~"Sie stellte eine Herausforderung: Sie versprach alle, die zu ihr kämen, in ihrer Kunst zu unterweisen - aber nur unter der Bedingung, daß sie besagte Frage zu Ravels vollster Zufriedenheit beantworten könnten. Andernfalls würden sie von ihr verspeist. Viele bezahlten mit dem Tod für ihren Wunsch, an Ravels Lehren teilzuhaben. Doch angeblich hat Ravel bis zu ihrer letzten Stunde in Sigil keine Antwort auf ihre Frage bekommen."~ */
  IF ~~ THEN REPLY #42163 /* ~"Erzähl weiter..."~ */ GOTO 20
  IF ~~ THEN REPLY #42164 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42165 /* ~"Ich hör mir den Rest ein anderes Mal an, ja? Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42166 /* ~"Ravels Vergehen bestand wohl darin, daß sie den Käfig zu zerstören und ganz Sigil aus einem unbekannten Grund aufzubrechen versuchte." Yvana seufzt. "Das ist alles, was ich über sie weiß."~ */
  IF ~~ THEN REPLY #42167 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42168 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.1 23.1 24.0 25.1 26.0 27.1 28.0 29.0 31.0 33.0 44.1 48.0
  SAY #42169 /* ~"Ja? Welches meinst du? Eines der Bilder?"~ */
  IF ~  Global("View_Art_01","AR0608",1)
~ THEN REPLY #42170 /* ~"Das Buntglasfenster aus Arkadien."~ */ GOTO 23
  IF ~  Global("View_Art_02","AR0608",1)
~ THEN REPLY #42171 /* ~"Das Schlachthorn von Acheron."~ */ GOTO 25
  IF ~  Global("View_Art_DBirds","AR0608",1)
~ THEN REPLY #42172 /* ~"Die Dunklen Vögel von Okanthus."~ */ DO ~SetGlobal("Know_Styx_Ice","GLOBAL",1)
~ JOURNAL #67816 /* ~Yvana, die Kuratorin der Kunstgalerie im Bezirk der Kuratoren, hat mir gesagt, daß die dort ausgestellten Dunklen Vögel von Okanthus eigentlich gefrorene Scherben Styx-Eises sind. Ist jemand wahnsinnig genug, eine dieser Scherben zu essen, hat das auf ihn dieselbe Wirkung wie Styx-Wasser selbst - er verliert sein gesamtes Gedächtnis. In meinem Fall ein definitiver Rückschlag, obwohl manchen der Gedanke ja vielleicht gefällt...~ */ GOTO 27
  IF ~  Global("View_Art_03","AR0608",1)
~ THEN REPLY #42173 /* ~"Die rubinrote Statuette."~ */ GOTO 29
  IF ~  Global("View_Art_04","AR0608",1)
~ THEN REPLY #42174 /* ~"Die belebte Kette einer Kyton."~ */ GOTO 30
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN REPLY #42175 /* ~"Die Statue des schreienden Manns."~ */ GOTO 32
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN REPLY #66658 /* ~"Die... äh... 'Statue' des schreienden Mannes."~ */ GOTO 48
  IF ~~ THEN REPLY #42176 /* ~"Ja, eines der Bilder..."~ */ GOTO 22
  IF ~~ THEN REPLY #42177 /* ~"Du, da fällt mir noch 'ne andere Frage ein..."~ */ GOTO 1
  IF ~~ THEN REPLY #42178 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.7 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.0 43.0
  SAY #42179 /* ~"Welches meinst du?"~ */
  IF ~  Global("View_Art_07","AR0608",1)
~ THEN REPLY #42180 /* ~"'Küste von Karasuthra.'"~ */ GOTO 34
  IF ~  Global("View_Art_08","AR0608",1)
~ THEN REPLY #42181 /* ~"'Räuber aus den Außenländern.'"~ */ GOTO 35
  IF ~  Global("View_Art_09","AR0608",1)
~ THEN REPLY #42182 /* ~"'Hazazoth bei der Vernichtung N'gars.'"~ */ GOTO 36
  IF ~  Global("View_Art_10","AR0608",1)
~ THEN REPLY #42183 /* ~"'Oberfläche von Thalasia.'"~ */ GOTO 37
  IF ~  Global("View_Art_11","AR0608",1)
~ THEN REPLY #42184 /* ~"'Die Bibliothek.'"~ */ GOTO 38
  IF ~  Global("View_Art_12","AR0608",1)
~ THEN REPLY #42185 /* ~"'Die Torheit Udos.'"~ */ GOTO 39
  IF ~  Global("View_Art_13","AR0608",1)
~ THEN REPLY #42186 /* ~"'Tal unterhalb des Clangeddin.'"~ */ GOTO 40
  IF ~  Global("View_Art_14","AR0608",1)
~ THEN REPLY #42187 /* ~"'Graue Hexe von Oinos.'"~ */ GOTO 41
  IF ~  Global("View_Art_06","AR0608",1)
~ THEN REPLY #42188 /* ~"'Wellenbewegungsstudie Nr. 7. '"~ */ GOTO 42
  IF ~  Global("View_Art_05","AR0608",1)
~ THEN REPLY #42189 /* ~"'Kurzer Blick von den Mauern Moch'chmas.'"~ */ GOTO 43
  IF ~~ THEN REPLY #42190 /* ~"Du, da fällt mir noch 'ne andere Frage ein..."~ */ GOTO 1
  IF ~~ THEN REPLY #42191 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #42192 /* ~"Es ist ein buntes Glasfenster, das man vor zweiunddreißig Jahren schwebend in der dritten Unterebene Arkadiens fand. Die Szene kündete von einem Ereignis, das in der Zukunft eintreten würde. Als dies dann geschah, verblaßten die Szenen zu ihrem gegenwärtigen Zustand. Vermutlich hat das Fenster auf Arkadien sowohl das Licht als auch die Dunkelheit der Sphäre von Tag und Nacht eingefangen. Diese gibt sie jetzt langsam ab und erzeugt so eine kurze, aber wahrnehmbare Dämmerung, allerdings nur im Glas selbst."~ */
  IF ~~ THEN REPLY #42193 /* ~"Die Sphäre von Tag und Nacht? Arkadien?"~ */ GOTO 24
  IF ~~ THEN REPLY #42194 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42195 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42196 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42197 /* ~"Arkadien ist eine Ebene der friedlichen Ordnung, auch bekannt als das Land des Vollkommenen Guten. Die Sphäre von Tag und Nacht befindet sich auf dem höchsten Gipfel Arkadiens. Dadurch, daß die eine Hemisphäre Licht und die andere Dunkelheit abstrahlt und die Kugel sich dreht, wird es auf Arkadien Tag und Nacht."~ */
  IF ~~ THEN REPLY #42198 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42199 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42200 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #42201 /* ~"Ach, das Reinigende Horn. Es ist ein Horn aus gehämmertem Blei, das direkt aus dem Würfel von Acheron gefertigt wurde. Zum letzten Mal sei es ertönt, als die Kompanien des Schakals in der Schlacht in den Umkämpften Landen gegen den Klan der Hohlaugen gekämpft haben. Die Legende besagt, die Kraft des Horns sei gegen Ende der Schlacht eingesetzt worden, um die schwebenden Würfel gegeneinander zu treiben und die Kompanie des Schakals zu zermalmen, bevor sie entkommen konnte."~ */
  IF ~~ THEN REPLY #42202 /* ~"Würfel? Acheron?"~ */ GOTO 26
  IF ~~ THEN REPLY #42203 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42204 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42205 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #42206 /* ~"Acheron ist eine Ebene, auf der mit strengsten Mitteln für Ordnung gesorgt wird. Konformität ist das oberste Ziel, egal, ob sie schadet oder nützt. Die Ebene besteht aus gigantischen Metallwürfeln, die durch eine unendliche Leere schweben... Viele Würfel sind so groß, daß man auf ihren Seiten ganze Städte oder gar Königreiche errichtet hat."~ */
  IF ~~ THEN REPLY #42207 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42208 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42209 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.2
  SAY #42210 /* ~"Sie wurden alle aus der großen magischen Decke aus schwarzem, unendlichem Eis gefertigt, die sich im schwarzen Inneren der Ebene von Okanthus befindet." Yvana hält inne und tippt sich ans Kinn. "Angeblich mündet der Styx letztendlich in diese Eisdecke. Wenn das stimmt, sind die Erinnerungen all derer, die jemals in die gedächtnisauslöschenden Fluten des Styx eingetaucht sind, noch immer im Eis eingefroren."~ */
  IF ~~ THEN REPLY #42211 /* ~"Wenn die Wasser des Styx das Gedächtnis auslöschen, kann dann das Eis von Okanthus das auch?"~ */ GOTO 28
  IF ~~ THEN REPLY #42212 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42213 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42214 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #42215 /* ~"Das würde ich vermuten, ja."~ */
  IF ~~ THEN REPLY #42216 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42217 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42218 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY #42219 /* ~"Dieses Stück hier stammt aus einer Kathedrale, die auf den fruchtbaren Feldern von Amorias, der Sorglosen, der ersten Unterebene des Elysiums steht, dort, wo sie an den Fluß Ozeanus grenzt. Der Name des Stücks ist unbekannt, doch handelt es sich um ein herausragendes Beispiel für die Juwelierkunst der Ebenen. Allein wie das Licht eingefangen, gefiltert und durch die Facetten verstärkt wird, ist ein atemberaubendes Schauspiel, ja fast ein Wunder. Das Stück scheint die potentielle ideologische Verbindung zwischen allen Dingen, selbst zwischen dem schlechtesten und dem reinsten Wesen des Multiversums, vor Augen zu führen... Faszinierend."~ */
  IF ~~ THEN REPLY #42220 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42221 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42222 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.4
  SAY #42223 /* ~"Die Kette kommt aus der Stadt Klimpernder Hiter, der Stadt der Ketten, die an Minauros, der dritten Unterebene von Baator, hängt. Dort findet man zwar die schönsten Ketten des ganzen Multiversums, doch die Einwohner von Klimpernder Hiter sind boshaft und grausam. Sie benutzen die Ketten als lebendige Waffen gegen all jene, die in ihre Stadt eindringen und ihre Gesetze mißachten."~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42224 /* ~"Die Kytonen bewegen sich in der Stadt der Ketten wie Spinnen in ihrem Netz. Sie schmücken sich mit Ketten, die sie sich um den Körper wickeln. Durch ihre sogenannte 'Gabe der Ketten' können sie Ketten durch pure Willenskraft manipulieren. Von der Kette in meiner Galerie heißt es, sie sei in einer Schlacht belebt worden, in welcher der Kytone, der sie führte, von einem verfluchten Hammer getroffen wurde... So ging seine Lebenskraft auf die Kette über."~ */
  IF ~~ THEN REPLY #42225 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42227 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42228 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.5
  SAY #42229 /* ~"Diese Statue stellt wohl nicht das definitive Schicksal des Etherserischen Magiers Gangroighydron dar. Er wurde von einer Horde rivalisierender Magier auf dem Gipfel seines Traumwahnsinns angegriffen und mit einem Zauber belegt, der ihn versteinern ließ. Angeblich erstarrte Gangroighydron mit einem letzten, schrecklichen Fluch auf den Lippen. So furchtbar war dieser Fluch, daß er *keinem* lebenden Menschen jemals über die Lippen kommen sollte."~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42230 /* ~"Es heißt, die Kraft des Fluches reiche aus, um das Fleisch von den Knochen derer zu lösen, die ihn hörten, daß sie sogar ausreiche, um ganze Felsen zu zertrümmern."~ */
  IF ~~ THEN REPLY #42231 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #42232 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42233 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.0
  SAY #42234 /* ~"Karasuthra ist eine Unterebene des Landes der Tiere, die immerzu in Nacht gehüllt ist und von Tieren bevölkert wird, die sich im Dunkeln an ihre Beute heranpirschen. Ich habe die Bilder von einem Maler, der sich in eine Katzenfürstin verliebt hatte und ihr bis in ihre Heimat gefolgt war. Allerdings hat er mir nie verraten, unter welchen mysteriösen Umständen die Gemälde entstanden sind."~ */
  IF ~~ THEN REPLY #42235 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42236 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42237 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY #42238 /* ~"Ein interessantes Stück, nicht wahr? Der Maler hat mit den Formen im Schatten der Felswand eine höchst eindrucksvolle Wirkung geschaffen. Die Frau, von der ich es habe, hat mir gesagt, sie hätte es in einer verlassenen Lagerstätte in den Außenländern gefunden... Doch der ursprüngliche Maler ist unbekannt. Wahrscheinlich wurde er von eben jenen Räubern niedergemetzelt, die in dem Gemälde verewigt sind."~ */
  IF ~~ THEN REPLY #42239 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42240 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42241 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.2
  SAY #42242 /* ~"Dieses Bild ist die Kopie einer Zellenwand des Pförtnerhauses, Sigils größtem Irrenhaus. Das einzige, was der Insasse sagen konnte, war: 'Hazazoth hat N'gar vernichtet... Hazazoth hat N'gar vernichtet...' Etwas beängstigend, wie ich finde, aber dennoch ein schönes Bild."~ */
  IF ~~ THEN REPLY #42243 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42244 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42245 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.3
  SAY #42246 /* ~"Thalasia ist das Meer, aus dem der Fluß Ozeanus, der sich durch fast die gesamte Ebene des Elysiums windet, entspringt und in das er auch wieder mündet. Einer der Bewohner seiner vielen Inseln hat das Bild gemalt."~ */
  IF ~~ THEN REPLY #42247 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42248 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42249 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.4
  SAY #42250 /* ~"Über dieses Stück weiß ich sehr wenig... Es lag einfach eines Tages vor der Tür meiner Galerie, eingehüllt in schwarzes Tuch und mit der Aufschrift 'Aus der Zitadelle'. Ein sachkundiger Besucher hat gemutmaßt, es könnte sich um die Festung eines großen Zauberers handeln, die sich auf einer selbst geschaffenen Halbebene befindet."~ */
  IF ~~ THEN REPLY #42251 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42252 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42253 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.5
  SAY #42254 /* ~"Dieses Gemälde illustriert eine der Legenden der materiellen Welt Goha. Udo war ein so fähiger und mächtiger Zauberkönig, daß er einen Zauber wirkte, der ihn selbst in eine Macht und die Menschen seiner großen Nation in göttliche Diener verwandeln sollte. Als er den Zauber ausgesprochen hatte, schlugen Blitze in Udos Palast ein und setzten ihn in Brand. Noch bevor der letzte Donner rollte, war die Stadt leer... Weit und breit war kein Lebewesen mehr zu finden. Im Handumdrehen waren über siebzigtausend Menschen spurlos verschwunden. Niemand kennt das Schicksal Udos oder das seines Volkes."~ */
  IF ~~ THEN REPLY #42255 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42256 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42257 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 22.6
  SAY #42258 /* ~"Bulbog Steinnase hat mir dieses Bild verkauft... Es zeigt ein Feld unterhalb des Clangeddin-Berges in Arkadien. Dort sind die Einheriar-Zwerge, die Geister der Oberen Ebenen, die als Wächter oder Krieger dienen, beheimatet."~ */
  IF ~~ THEN REPLY #42259 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42260 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42261 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 22.7
  SAY #42262 /* ~"Dies ist angeblich ein Porträt von Ravel Rätselschön, der wahrscheinlich bösesten Hexe, die je die Graue Einöde und die Gebiete jenseits davon in Angst und Schrecken versetzt hat."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42263 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 17
  IF ~~ THEN REPLY #42264 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42265 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42266 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.8
  SAY #42267 /* ~"Ein junger Mann, dessen Name ich nicht kenne, hat mir das Stück verkauft. Er hatte mehrere davon, aber die anderen seien schon vergeben... Jedenfalls hat er das gesagt. Ich hätte gern die komplette Sammlung erworben, aber es hat wohl nicht sein sollen."~ */
  IF ~~ THEN REPLY #42268 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42269 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42270 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.9
  SAY #42271 /* ~"Moch'chma ist eine Festung der Githzerai, die auf der Ebene von Limbus schwebt. Der Augen-Blick wurde von der Chaos-Gelehrten Dy gemalt, die sich an alles, was sie sieht, genau erinnern kann, wenn sie nicht gerade dem Wahnsinn verfallen ist."~ */
  IF ~~ THEN REPLY #42272 /* ~"Ich hätte da noch eine Frage über ein anderes Bild..."~ */ GOTO 22
  IF ~~ THEN REPLY #42273 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42274 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Yvana","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #42275 /* ~Yvana lächelt und winkt dich herbei. "Sei gegrüßt. Schön, daß du wieder da bist. Willst du etwas über eines der Stücke wissen?"~ */
  IF ~~ THEN REPLY #42276 /* ~"Nein. Aber ich hab noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #42277 /* ~"Ja, das will ich..."~ */ GOTO 21
  IF ~~ THEN REPLY #42278 /* ~"Nein, im Moment nicht. Leb wohl, Yvana."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.4
  SAY #42279 /* ~Yvana nimmt den Gegenstand und fährt mit ihren Fingern daran entlang. Sie betastet die ganze Außenseite, bevor sie dir das Objekt wieder überreicht. "Das ist mehr als nur ein handwerklich perfekter Spielzeug-Modron, soviel steht fest. Es könnte eine Art Rätselkiste oder der Schlüssel zu einem Portal sein."~ */
  IF ~~ THEN REPLY #42280 /* ~"Was ist ein Modron?"~ */ GOTO 46
  IF ~~ THEN REPLY #42281 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42282 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #42283 /* ~"Die Modronen sind gesetzestreue, disziplinierte Wesen. Es gibt sie in vielen unterschiedlichen Formen, von denen jede eine andere Stufe in ihrer strengen Hierarchie belegt. Ich glaube, hier handelt es sich um einen 'Quadronen'."~ */
  IF ~~ THEN REPLY #42284 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #42285 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 1.0
  SAY #65153 /* ~Yvana fährt mit den Fingerspitzen über die eingravierten Buchstaben auf dem 'Journal.' "Nein, habe ich nicht. Du solltest besser einen richtigen Übersetzer fragen... vielleicht findest du einen in der Städtischen Festhalle."~ */
  IF ~~ THEN REPLY #65154 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #65155 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.6
  SAY #66654 /* ~"Komisch, daß du danach fragst... Kurz nach einem schrecklichen Lärm, sind einige Kunden zu mir gestürmt und haben von einer verstümmelten Leiche erzählt, die auf dem Boden liegt. Das Harmonium ist gekommen, um die Leiche aus dem Gebäude abzutransportieren, aber es konnte keinen Täter finden. Ich hab ihnen gesagt, daß höchstwahrscheinlich irgendein Verrückter Gangroighydon freigelassen hat und durch seinen Fluch umgekommen ist... Doch den alten Magier selbst hat man nirgendwo finden können. Mehr weiß ich nicht."~ */
  IF ~~ THEN REPLY #66655 /* ~"Ich hätte noch eine Frage über ein anderes Stück..."~ */ GOTO 21
  IF ~~ THEN REPLY #66656 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 1
  IF ~~ THEN REPLY #66657 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
