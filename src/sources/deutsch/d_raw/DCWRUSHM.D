// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~Der adrette, gut gekleidete Mann hat es offensichtlich eilig.~ */
  IF ~~ THEN REPLY #25733 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~Laß ihn seiner Wege gehen.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~Er bleibt stehen und schaut dich von oben bis unten an. Dein Erscheinungsbild scheint den Mann etwas in Erstaunen zu versetzen. "Kenne ich... äh... Euch, mein Herr?"
~ */
  IF ~~ THEN REPLY #25736 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"Ich hab' wirklich keine Zeit, mein Herr - Ich hab's eilig. Also, wenn Ihr gestattet..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"Nur eine kurze Frage?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"Nur eine kurze Frage?"~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"Ich gestatte *nicht*! Und jetzt beantworte meine Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~Er beißt sich auf die Lippe und nickt dann. "Das kann ich Euch nicht verwehren. Aber ich bitte Euch, fragt schnell!"~ */
  IF ~~ THEN REPLY #25745 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~Er sieht dich einen Moment verwundert an. "Nun, das hier ist der Bezirk der Kuratoren. Habt Ihr Euch... vielleicht verlaufen? Oh, das ist nicht schlimm. Ich muß los! Leb wohl..."~ */
  IF ~~ THEN REPLY #25752 /* ~"Warte... Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"Ich hatte aber nur für eine Frage Zeit, mein Herr. Vielleicht findet Ihr in einem der Straßencafes jemanden, der mehr Zeit für Euch hat. Also dann, lebt wohl..."~ */
  IF ~~ THEN REPLY #25755 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"Mein Herr! Ich habe weder Zeit noch Lust, mich jetzt hier aufhalten zu lassen! Lasst mich gehen, oder ich sehe mich gezwungen, um Hilfe zu rufen!"~ */
  IF ~~ THEN REPLY #25758 /* ~"Ich bezweifle, daß dich noch jemand rechtzeitig retten kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"Du rufst besser niemand, wenn dir deine Gesundheit lieb ist!"~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"Verzeihung. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~Er weicht zurück und ruft um Hilfe: "Wache! Wache!"~ */
  IF ~~ THEN REPLY #25763 /* ~Greif ihn an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"Im Bezirk der Kuratoren gibt es viel zu sehen, mein Herr... sogar mehr als in jedem anderen! Die Städtische Festhalle beispielsweise, die Kunst- und Kuriositäten-Galerie und das Bordell zum Befriedigen Intellektueller Lüste..." Er seufzt vergnügt und versinkt in Gedanken.~ */
  IF ~~ THEN REPLY #25766 /* ~"Sonst noch was?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~Er überlegt einen Augenblick lang. "Hmm. Also, da gibt es den Schneider, den Apotheker, das Haus des Advokaten. Oh, und die Katakomben unter dem Bezirk. Und auch den kleinen Kuriositätenladen." Er zuckt mit den Achseln. "Mehr als genug, um hier alle in Trab zu halten, finde ich. Viel Spaß hier und lebt wohl!"~ */
  IF ~~ THEN REPLY #25768 /* ~"Ich hätte eine Frage zu einem der Orte, die du erwähnt hast..."~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~Er überlegt einen Augenblick. "Versucht's doch mal beim Apotheker. Oder beim Advokaten. Ihr könntet natürlich auch bei der Festhalle vorbeischauen... die haben vielleicht noch ein paar Arbeiten, die erledigt werden müssen. Viel Glück, mein Herr... lebt wohl."~ */
  IF ~~ THEN REPLY #25772 /* ~"Ich hätte eine Frage zu einem der Orte, die du erwähnt hast..."~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"Und welchen Ort sucht Ihr?"~ */
  IF ~~ THEN REPLY #25776 /* ~"Das Haus des Advokaten."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"Die Apotheke."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"Den Kunstladen."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"Das Bordell."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"Die Katakomben unter dem Bezirk."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"Die Städtische Festhalle."~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"Den Kuriositätenladen."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"Den Schneider."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"Jannis Haus liegt südlich des Tores zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Das Haus befindet sich auf der östlichen Seite der Straße."~ */
  IF ~~ THEN REPLY #25786 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus östlich der Straße. Es liegt nach Süden und hat drei Fenster aus farbigem Glas."~ */
  IF ~~ THEN REPLY #25789 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus westlich der Straße. Es liegt nach Süden und hat ein Dach, dessen Ziegel mit großen Steinen beschwert sind."~ */
  IF ~~ THEN REPLY #25792 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"Das Bordell zum Befriedigen Intellektueller Lüste, was?" Er lächelt wissend. "Das liegt unmittelbar östlich vom Tor zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes rundes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #25795 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~Er runzelt die Stirn. "Hmm. Es gibt mehr als einen Eingang, soviel weiß ich... aber nicht viel mehr. Ich möchte Euch aber vorsichtshalber mitteilen, daß nichts, was einmal da unten war, jemals wieder nach oben kommt... einschließlich derjenigen, die hinuntergegangen sind."~ */
  IF ~~ THEN REPLY #25798 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"Die Festhalle ist leicht zu finden, mein Herr. Das ist ein Riesengebäude im nordöstlichen Teil dieser Gegend."~ */
  IF ~~ THEN REPLY #25801 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"Ich bin noch nie dort gewesen, aber ich hab' mir den Weg dorthin beschreiben lassen - der Laden liegt im südöstlichen Teil dieser Gegend. Ein auffälliges Gebäude, am Ende einer breiten Treppe. Kann man gar nicht verfehlen."~ */
  IF ~~ THEN REPLY #25804 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"Der Laden von Gonkalves, dem Schneider, liegt nordöstlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #25807 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~Er schüttelt den Kopf. "Vielleicht findet Ihr in einem der Straßencafes jemanden, der mehr Zeit für Euch aufbringt. Also dann, lebt wohl..."~ */
  IF ~~ THEN REPLY #25810 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"Was?" Er wirkt einen Moment lang durcheinander... Dann blitzen seine Augen, als ob ihm plötzlich etwas eingefallen ist. "Ah! Die Nachthexe, ja? Ich erinnere mich an Geschichten, die ich als Kind von ihr gehört hab'..."~ */
  IF ~~ THEN REPLY #25813 /* ~"Kindergeschichten?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"Verstehe. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"Danke, mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~Er nickt. "Ja. Sie ist ein Mythos, nicht wahr? Die Hexe, die versucht hat, Sigil zu zerstören?" Er runzelt plötzlich die Stirn. "Ich glaube, es wäre das Beste, wenn ich jetzt gehe, mein Herr... Leb wohl."~ */
  IF ~~ THEN REPLY #25817 /* ~"Warte. Ich hätte noch eine Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"Nein, mein Herr, überhaupt nicht!" Der Mann lacht nervös. "Nun... äh..." Er zeigt auf deinen mit Narben übersäten, nackten Oberkörper. "Ihr seht vielleicht ein bißchen... wie soll ich sagen, 'unheimlicher' aus als der Durchschnittsbewohner des Bezirks, nicht? Das soll keine Beleidigung sein, mein Herr."~ */
  IF ~~ THEN REPLY #25820 /* ~"Hab' ich auch nicht so aufgefaßt. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"Danke, das war's schon. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"Schön, Euch wiederzusehen, mein Herr. Wenn Ihr mich jetzt entschuldigen wollt, ich bin ein bißchen in Eile. Leb wohl..."~ */
  IF ~~ THEN REPLY #25823 /* ~"Warte. Ich hab' da ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"Wie ich bereits sagte, mein Herr, ich bin ziemlich in Eile. Vielleicht finden Ihr ja in einem der Straßencafes jemanden, der mehr Zeit für Euch aufbringt. Also dann, lebt wohl..."~ */
  IF ~~ THEN REPLY #25826 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"Na dann leb wohl."~ */ EXIT
END
