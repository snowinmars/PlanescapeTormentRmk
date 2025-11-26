// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~Diese saubere, gut gekleidete Frau ist ganz offensichtlich auf dem Weg irgendwohin.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~Laß sie ihrer Wege gehen.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~Sie bleibt kurz stehen und sieht dich an. Dabei weiten sich ihre Augen für einen Moment. Sie schaut sich um, um zu sehen, ob du jemand anderen gemeint hast, und lächelt dann zaghaft. "Entschuldigt, aber... kenne ich Euch?"~ */
  IF ~~ THEN REPLY #25845 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"Ich hab' es ziemlich eilig, mein Herr - und mir bleibt nicht mehr viel Zeit, um meinen Zielort zu erreichen." Sie geht einen Schritt zurück. "Also, wenn ich Euch dann bitten dürfte..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"Nur eine kurze Frage?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"Nur eine kurze Frage?"~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"Ich gestatte *nicht*! Und jetzt beantworte meine Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~Sie beißt auf ihre Lippe und nickt dann. "Also gut, mein Herr. Aber fragt schnell... Zeit ist Geld!"~ */
  IF ~~ THEN REPLY #25849 /* ~"Wo bin ich hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~Überrascht zieht sie die Augenbrauen hoch. "Dies ist der Bezirk der Kuratoren, mein Herr. Seid Ihr vom Weg abgekommen? Oh, das ist nicht schlimm. Ich muß gehen! Leb wohl..."~ */
  IF ~~ THEN REPLY #25851 /* ~"Warte... Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"Eine Frage habe ich Euch gestattet, mein Herr - würdet Ihr jetzt die Güte haben und mich meiner Wege gehen lassen? Vielleicht findet Ihr in einem der Straßencafes jemanden, der mehr Zeit für Euch hat."~ */
  IF ~~ THEN REPLY #25853 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~Sie kneift die Augen zusammen." Mit Eurem ungehobelten Benehmen und Eurer angsteinflößenden Visage könnt Ihr dorthin zurückkehren, wo Ihr hergekommen seid, aber in diesem Teil des schönen Sigil herrscht Recht und Ordnung. Jetzt laßt mich gehen, mein 'Herr', oder ich schreie um Hilfe!"~ */
  IF ~~ THEN REPLY #25855 /* ~"Ich bezweifle, daß dich noch jemand rechtzeitig retten kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"Du rufst besser niemand, wenn dir deine Gesundheit lieb ist!"~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"Verzeihung. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~Sie weicht zurück und ruft um Hilfe: "Wache! Wache!"~ */
  IF ~~ THEN REPLY #25857 /* ~Greif sie an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"So vieles, mein Herr! Und vor allem hier, in diesem Teil des Bezirks der Kuratoren, wo sich die Städtische Festhalle befindet. Und außerdem die Kunst- und Kuriositäten-Galerie."~ */
  IF ~~ THEN REPLY #25866 /* ~"Sonst noch was?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~Sie überlegt einen Moment. "Hmm. Nun, da gibt's noch Gonkalves, den Schneider, den Apotheker, das Haus des Advokaten und das Bordell zum Befriedigen Intellektueller Lüste. Oh, und die Katakomben unter dem Bezirk. Und noch den kleinen Kuriositätenladen."~ */
  IF ~~ THEN REPLY #25868 /* ~"Ich hätte eine Frage zu einem der Orte, die du erwähnt hast..."~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~Sie überlegt einen Moment. "Ihr könntet es bei der Festhalle versuchen... Die haben vielleicht noch was für Euch. Ihr könntet auch beim Advokaten oder beim Apotheker fragen. Ich geh dann jetzt besser... Leb wohl."~ */
  IF ~~ THEN REPLY #25873 /* ~"Ich hätte eine Frage zu einem der Orte, die du erwähnt hast..."~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"Was sucht Ihr denn, mein Herr?"~ */
  IF ~~ THEN REPLY #25878 /* ~"Das Haus des Advokaten."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"Die Apotheke."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"Den Kunstladen."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"Das Bordell."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"Die Katakomben unter dem Bezirk."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"Die Städtische Festhalle."~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"Den Kuriositätenladen."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"Den Schneider."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~"Jannis Haus liegt südlich des Tores zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Das Haus befindet sich auf der östlichen Seite der Straße."~ */
  IF ~~ THEN REPLY #25880 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus östlich der Straße. Es liegt nach Süden und hat drei Fenster aus farbigem Glas."~ */
  IF ~~ THEN REPLY #25884 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus westlich der Straße. Es liegt nach Süden und hat ein Dach, dessen Ziegel mit großen Steinen beschwert sind."~ */
  IF ~~ THEN REPLY #25888 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~Sie runzelt demonstrativ die Stirn und schüttelt den Kopf. "Das ist gleich östlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes, rundes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #25892 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~Sie runzelt die Stirn." Sind diese Eingänge noch geöffnet? Wenn ja, dann sind sie bestimmt bewacht... Diese Katakomben sollen ziemlich gefährlich sein. Ich weiß nicht genau, wie man dort hinkommt, mein Herr."~ */
  IF ~~ THEN REPLY #25896 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"Die Festhalle ist leicht zu finden, mein Herr. Das ist ein Riesengebäude im nordöstlichen Teil dieser Gegend."~ */
  IF ~~ THEN REPLY #25900 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"'Liegt im Südosten dieser Gegend. Ein auffälliges Gebäude, am Ende einer breiten Treppe. Ich bin nie selbst dort gewesen... Ist mir nicht ganz geheuer."~ */
  IF ~~ THEN REPLY #25904 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"Der Laden des Schneiders liegt nordöstlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #25908 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~Sie schüttelt den Kopf. "Tut mir wirklich leid... Vielleicht findet Ihr jemanden in einem der Straßencafes, der mehr Zeit für Euch hat, mein Herr. Also dann, lebt wohl..."~ */
  IF ~~ THEN REPLY #25913 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"Ravel, die Nachthexe? Meine Eltern haben mir Geschichten von ihr erzählt, als ich noch ein Kind war... Schauermärchen."~ */
  IF ~~ THEN REPLY #25915 /* ~"Kindergeschichten?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"Verstehe. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"Danke, mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~Sie nickt. "Ja. Über die Hexe mit dem schwarzen Herzen, die versucht hat, Sigil aufzubrechen. Sie haben mir erzählt, daß sie mich holen würde, wenn ich zu laut schreien würde, und daß sie mich zu dem schrecklichen Ort mitnehmen würde, an den sie verbannt wurde." Sie runzelt plötzlich die Stirn. "Ich glaube, es wäre das Beste, wenn ich jetzt gehe... Leb wohl."~ */
  IF ~~ THEN REPLY #25922 /* ~"Warte. Ich hätte noch eine Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"Nein, nein... überhaupt nicht!" Die Frau lacht nervös. "Nun ja, vielleicht..." Sie zeigt auf deinen mit Narben übersäten, nackten Oberkörper. "Ihr *seht* ein bißchen... äh... 'unheimlicher' aus als der Durchschnittsbewohner des Bezirks, nein? Ich wollte Euch damit keineswegs beleidigen, mein Herr."~ */
  IF ~~ THEN REPLY #25928 /* ~"Hab' ich auch nicht so aufgefaßt. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"Danke, daß war's schon. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~Die Frau nickt höflich zum Abschied. "Alles Gute und lebt wohl... Wenn Ihr mich jetzt entschuldigen wollt, mein Herr, aber ich bin etwas in Eile."~ */
  IF ~~ THEN REPLY #25933 /* ~"Warte. Ich hab' da ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"Wie ich bereits gesagt hab', mein Herr, ich bin in ziemlich großer Eile. Vielleicht findet Ihr in einem der Straßencafes jemanden, der mehr Zeit für Euch hat. Also dann, lebt wohl..."~ */
  IF ~~ THEN REPLY #25935 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~Sie hält inne und schaut dich an. Dabei weiten sich ihre Augen für einen Augenblick. Sie schaut sich um, um zu sehen, ob du nicht jemand anderes gemeint hast, und lächelt dann zaghaft. "Entschuldigt, aber kenne ich -" Plötzlich richten sich ihre Augen auf Morte. "Oh! Was für ein süßer, kleiner Mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"Nicht wahr? Er liebt es, wenn man ihm die Oberseite seines Schädels kratzt."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"Ich würd ihn nicht anfassen - er beißt."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"Jaja. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~Die Frau lächelt. "Wie niedlich! Und er spricht sogar von alleine!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~Sie schüttelt den Kopf. "Nein, ich hab' jedenfalls noch keinen gesehen. Sie sind doch bloß Gegenstände, oder ni..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~Die Frau zuckt mit den Achseln. "Das könnte gut sein."~ */
  IF ~~ THEN REPLY #25953 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"Ehrlich?" Sie lächelt weiter, aber schaut dich mißtrauisch an. "Ihr macht bestimmt nur Spaß, mein Herr! Das ist doch nur ein Mimir..."~ */
  IF ~~ THEN REPLY #25956 /* ~"Was meinst du damit? Mögen das nicht alle?"~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"Nein, ich sag die Wahrheit. Probier's mal."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"Beachte ihn gar nicht. Ich hätte da ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~Sie tätschelt Morte vorsichtig mit der Hand... Dieser schmiegt sich prompt an ihre Hand, grinst über das ganze Gesicht und zwinkert dir die ganze Zeit zu. Sie lacht zaghaft: "Wie seltsam!"~ */
  IF ~~ THEN REPLY #25960 /* ~"Ja... nun, ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"Trifft das nicht auf alles zu? Leb wohl."~ */ EXIT
END
