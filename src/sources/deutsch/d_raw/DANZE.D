// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~Du siehst einen älteren, ernst dreinschauenden Mann. Sein Gesicht ist runzlig und voller Denkfalten. Er scheint seinen Kunden genauso viel Aufmerksamkeit zu widmen wie dem Burschen, der nebenan am Ofen arbeitet.~ */
  IF ~~ THEN REPLY #33884 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~Er macht eine kurze, steife Verbeugung. "Ja, sei ebenfalls gegrüßt. Anze ist mein Name. Was wünscht du?"~ */
  IF ~~ THEN REPLY #33887 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~Er grinst dich mit seinem zahnlosen Mund an. "Ja, ich habe Zeit für einen kleinen Plausch. Was willst du wissen?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"Wozu dient dieser Ofen?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"Ich will Waffen kaufen."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"Ich will magische Gegenstände kaufen."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"Lothar... der Name sagt mir überhaupt nichts." Er blinzelt ein paar Mal, während er überlegt. "Aber von diesem *Knochen*-Typen, ja, von dem habe ich schon mal gehört. Es geht das Gerücht um, daß man sich besser nicht mit ihm anlegt. Mächtiger Schleifer, tut sich mit den Toten zusammen und so."~ */
  IF ~~ THEN REPLY #33897 /* ~"Wo kann ich ihn finden?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~Er zuckt die Schultern. "Keine Ahnung. Schleifer wie der können ihre Absteige überall haben. Kein Dussel wird denen das verweigern, soviel ist sicher."~ */
  IF ~~ THEN REPLY #33901 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~Er gibt ein kurzes, bellendes Lachen von sich. "Du hast schon alles gehört, Schleifer. Mehr weiß ich auch nicht."~ */
  IF ~~ THEN REPLY #33905 /* ~"Wo kann ich ihn finden?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~Er versucht, mitleidsvoll auszusehen, scheitert aber kläglich. "Oh, du armer Schleifer. Wenn du glaubst, daß er gestohlen wurde, dann sag's dem Harmonium."~ */
  IF ~~ THEN REPLY #33909 /* ~"Dem Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"Danke, aber ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~Er lächelt. "Das Gesetz, Schleifer. Die Harmonium-Knochenbrecher sind hier in Sigil das Gesetz. Wenn dir was geklaut wurde, dann mußt du's ihnen sagen."~ */
  IF ~~ THEN REPLY #33913 /* ~"Glaubst du, daß das Harmonium den Schädel wiederfinden wird?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~Er fängt an, etwas zu sagen, unterbricht sich dann aber wieder, um nachzudenken. Nach einer Weile fängt er an zu kichern. "Nee, Schleifer. Wahrscheinlich nicht. Vergiß es."~ */
  IF ~~ THEN REPLY #33914 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"Dann geh zu Aalek, gleich hier nebenan. Er kann dir vielleicht weiterhelfen." Er zeigt auf den Stand links von ihm.~ */
  IF ~~ THEN REPLY #33918 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~Er wirft einen Blick auf den Ofen und den Jungen, der daneben steht, und spricht dann mit verhaltener Stimme. "Der Ofen dient nur dazu, diesem faulen Burschen Verantwortung beizubringen. Alles, was dieser Bursche tut, ist ununterbrochen zu quasseln. Hält sich für einen Gelehrten und hat keine Ahnung, was richtige Arbeit ist. Wenn du kompliziertere Fragen hast... nun, dann frag lieber ihn und nicht mich."~ */
  IF ~~ THEN REPLY #33921 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Anze lächelt dich wie üblich mit seinem zahnlosen Mund an. "Willkommen, Schleifer. Was wünscht du heute?"~ */
  IF ~~ THEN REPLY #34245 /* ~"Ich würde gern deine Ware sehen."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"Ich trauere um Lazlo, meinen Jungen. Mein Laden bleibt vorerst geschlossen... ich weiß noch nicht, wann ich wieder aufmache..."~ */
  IF ~~ THEN REPLY #34249 /* ~Geh.~ */ EXIT
END
