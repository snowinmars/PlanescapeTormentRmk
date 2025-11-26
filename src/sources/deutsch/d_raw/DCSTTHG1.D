// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Du siehst einen jungen Mann in Kleidern, die ihm nicht recht passen. Er schaut dich gelangweilt an, als du näherkommst.~ */
  IF ~~ THEN REPLY #3165 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~Bevor er deinen Gruß erwidert, mustert er dich von Kopf bis Fuß. "Sei gegrüßt, Schleifer. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #9928 /* ~"Ich wollte dir ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~Er starrt dich eine Weile an, bevor er anfängt zu kichern. "Ich weiß nichts, ich sehe nichts, ich höre nichts. Deshalb kann ich auch keine Antworten geben. Und jetzt verschwinde, bevor ich dir weh tun muß."~ */
  IF ~~ THEN REPLY #9931 /* ~"Wird nicht weh tun, mir ein paar einfache Fragen zu beantworten. Na, was meinste?"~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"Wenn ich die Antworten aus dir herausprügeln muß, soll mir das auch recht sein."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"Gut. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~Er schaut dich mit finsterem Blick an. "Ich habe dir nichts zu sagen, Dussel. Dies ist deine letzte Chance, diesen Ort heil zu verlassen."
~ */
  IF ~~ THEN REPLY #9935 /* ~"Wenn ich die Antworten aus dir herausprügeln muß, soll mir das auch recht sein."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"Gut, schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~Er betrachtet dich von Kopf bis Fuß, besonders deine Narben. Dann lächelt er freundlich. "Okay, schreckhaft bist du also nicht. Mit dir kann man reden. Was willst du?"~ */
  IF ~~ THEN REPLY #9938 /* ~"Bloß ein paar Antworten."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"Schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~Er zuckt mit den Achseln. "Klar. Schieß los."~ */
  IF ~~ THEN REPLY #9941 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"Wer hat hier was zu sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"Was ist denn so in letzter Zeit in der Stadt losgewesen?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~Er kichert. "Das halt' ich für unwahrscheinlich. Ich kann mir nicht vorstellen, daß ein Deva auch nur einen Fuß in diese Stadt setzt, es sei denn, er will sie dem Erdboden gleichmachen. Ich glaube, du verschwendest deine Zeit."~ */
  IF ~~ THEN REPLY #9947 /* ~"Verstehe. Eine andere Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"Was meinst du?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"Ich danke Dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~Er zuckt mit den Achseln. "Angeblich gibt es Dussel, die Deva als Engel bezeichnen. In Verdammnis gibt es keine 'Engel', weder tote noch lebendige. Dafür sind wir auf der falschen Seite des Rings."~ */
  IF ~~ THEN REPLY #9951 /* ~"Was für ein Ring?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"Verstehe. Eine andere Frage."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"Der Ring der Äußeren Ebenen. Recht und Ordnung auf der einen, Chaos auf der anderen Seite, und dazwischen Gut und Böse. Du bist wohl neu hier, was?" Er sieht dich fragend an.~ */
  IF ~~ THEN REPLY #9954 /* ~"Könnte man so sagen. Ich muß dich noch was fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~Er zuckt mit den Achseln und lächelt vielsagend. "Für manche ist es ein schöner Ort. Kommt auf dich an und darauf, wen du kennst."~ */
  IF ~~ THEN REPLY #9957 /* ~"Und wen sollte ich deiner Meinung nach kennenlernen?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"Also gut, nächste Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"Ich verstehe. Nun, ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~Er denkt kurz nach. "Für einen Schleifer wie dich würde vielleicht das Verrätertor in Frage kommen. Das ist eine Bar, die von einem Mann namens Besudelter Barse geleitet wird." Er lächelt dich an. "Aber sag ihm bloß nicht, daß ich dich geschickt habe."~ */
  IF ~~ THEN REPLY #9961 /* ~"Und wie finde ich diesen Ort?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"Verstehe. Eine andere Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"Meinen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~Er zuckt mit den Achseln. "Ganz sicher bin ich mir nicht, aber ich glaube, sie ist ungefähr in diese Richtung." Er zeigt nach rechts. "Sieh dich einfach um, du wirst sie schon finden."~ */
  IF ~~ THEN REPLY #9965 /* ~"Also gut. Nächste Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"Tovus Giljaf. Du findest ihn im Verwaltungsbüro am Marktplatz."~ */
  IF ~~ THEN REPLY #9968 /* ~"Was kannst du mir über Tovus erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"Noch 'ne Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"Ich danke dir. Leb wohl.".~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"Ich hatte noch nie was mit ihm zu tun. Hätte er hier nicht das Sagen, würde ich wohl nicht einmal den Namen kennen." Er macht ein gelangweiltes Gesicht.~ */
  IF ~~ THEN REPLY #9972 /* ~"Also schön. Beantworte mir noch etwas."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"Dann wünsche ich dir einen guten Tag."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~Er blickt gelangweilt um sich. "Nicht besonders viel. Es ist zur Zeit ziemlich ruhig hier."
~ */
  IF ~~ THEN REPLY #9975 /* ~"Ich verstehe. Ich habe da noch eine andere Frage an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"Ich muß mich jetzt verabschieden. Schönen Tag noch."
~ */ EXIT
END
