// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~Du siehst einen grobschlächtigen Mann mit wettergegerbter Haut. Er blickt ziemlich düster drein und merkt nicht, daß du näherkommst.~ */
  IF ~~ THEN REPLY #9853 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~Beim Klang deiner Stimme zuckt er zusammen und dreht sich rasch zu dir um. Sein Gesicht ist gerötet, und sein Atem geht schnell.~ */
  IF ~~ THEN REPLY #9861 /* ~"Ich bitte um Entschuldigung - ich wollte dich nicht erschrecken. Ich wollte dir nur ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"Bißchen nervös, was?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"Tut mir leid, wollte dich nicht stören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~Er wirft dir einen mürrischen Blick zu und zieht einen Dolch hinter seinem Rücken hervor. "Pack ein, Dussel! Mach dich aus dem Staub, wenn du nicht im Totenbuch landen willst."~ */
  IF ~~ THEN REPLY #9865 /* ~"Ganz ruhig. Ich muß dich bloß was fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"Steck deine Klinge weg, oder ich nehm sie dir ab und bring dich damit um."~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~Er geht in Lauerstellung und bedroht dich mit seiner Klinge. "Ich habe keine Antworten für dich. Ich habe dir überhaupt nichts zu sagen. Hau ab!"~ */
  IF ~~ THEN REPLY #9873 /* ~"Steck deine Klinge weg, oder ich nehm sie dir ab und bring dich damit um."~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~Er lacht und fuchtelt mit seiner Klinge herum. "Dann komm her. Ich nehm dich aus und hör nicht auf zu lachen, bis zu tot bist!"~ */
  IF ~~ THEN REPLY #9876 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~Du hast den Eindruck, daß er nicht weiß, was er dir sagen soll. Deine Bemerkung scheint ihn irgendwie überrumpelt zu haben. "Meine, äh... meine Gedanken waren ganz woanders, Schleifer. Was willst du?" Er beäugt dich mißtrauisch.~ */
  IF ~~ THEN REPLY #9883 /* ~"Bloß die Antworten auf ein paar Fragen. Okay?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"Eigentlich nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~Er starrt dich kurz an und blickt dann nervös um sich. "Gut, eine Frage, aber dann haust du ab. Zu mehr habe ich weder Zeit noch Lust."~ */
  IF ~~ THEN REPLY #9886 /* ~"Ich suche nach einem Deva. Ich habe gehört, er sei in Verdammnis."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"Wer hat hier was zu sagen?"~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"Was gibt's für Neuigkeiten in der Gegend?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"Was machst du?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"Wenn du zuverlässige Antworten auf ein paar Fragen haben wolltest, an wen würdest du dich wenden?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"Macht nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~Er schaut dich fragend an. "Ja, stimmt. Einer dieser selbstgerechten Fussler zieht durch die Straßen von Verdammnis, du bescheuerter Schleifer. So, jetzt hast du deine Antwort - also hau ab." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #9893 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"Tovus Giljaf. Er ist im Verwaltungsbüro am Marktplatz. So, jetzt hast du deine Antwort - also hau ab." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #9895 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~Er denkt kurz nach. "Weiß nicht... Für Klatsch und Tratsch bin ich der Falsche, Schleifer. Versuchs doch mal im Verrätertor, dieser Spelunke. Liegt ungefähr in dieser Richtung." Er fuchtelt unbestimmt durch die Luft. "So, jetzt hast du deine Antwort - also hau ab." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #9897 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~Er lacht. "Das geht dich nichts an, Dussel. So, jetzt hast du deine Antwort - also hau ab." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #9899 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~Er lächelt dich an. "Gute Frage. Du bist wohl gar nicht so dumm, wie du aussiehst." Er denkt kurz nach, bevor er dich genau mustert. "Ich an deiner Stelle würde mal mit Shar reden. Sie treibt sich hier in den Straßen herum und dürfte nicht allzu schwer zu finden zu sein. Wenn du nett zu ihr bist, hilft sie dir bestimmt. So, jetzt hast du deine Antwort - also hau ab." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #9901 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END
