// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~Die ausgezehrte Frau wirft dir einen angsterfüllten Blick zu, und bevor du sie ansprechen kannst, ergreift sie die Flucht.~ */
  IF ~~ THEN REPLY #20030 /* ~"Also, bis dann..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~Die Frau sieht dich mit großen, angsterfüllten Augen an. "Bleib mir vom Leib, Dussel, und dir wird nichts passieren!"~ */
  IF ~~ THEN REPLY #20032 /* ~"Beruhige dich. Ich wollte doch bloß wissen, wer du bist."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"Hey, immer locker bleiben. Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"Wovor fürchtest du dich so sehr?"~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"Wer ich bin?" Sie stößt ein bitteres Lachen aus. "Du könntest genauso gut ein Sandkorn nach seinem Namen fragen, Schleifer, denn so wichtig bin ich ungefähr."~ */
  IF ~~ THEN REPLY #20037 /* ~"Das ist ja eine positive Einstellung. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"Red' weiter... was wolltest du wissen?"~ */
  IF ~~ THEN REPLY #20040 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"Wovor fürchtest du dich?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"Was ich tue? Tja, ich friste einfach mein elendes Dasein unterm Lumpensammler-Platz und versuche, mich von denen fernzuhalten, denen ich's zu verdanken habe, daß ich überhaupt hier bin. Das tue ich."~ */
  IF ~~ THEN REPLY #20045 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"Ich will nur sichergehen, daß du nicht eins von diesen Kreaturen bist, die Pharod zerrissen haben."~ */
  IF ~~ THEN REPLY #20048 /* ~"Kreaturen? Was für Kreaturen?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"Pharod ist tot?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"Ja, das waren Kreaturen der Nacht und der Dunkelheit, Kreaturen des Nicht-Lichts, die sich ihren kalten Weg hier durch gebahnt haben und in Pharods Hof verschwunden sind. Das Echo des Schreis klingt immer noch nach, so scheint es..."~ */
  IF ~~ THEN REPLY #20053 /* ~"In Ordnung. Erzähl mir dann was anderes..."~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~Sie putzt sich ihre laufende Nase in ihren Ärmel. "Was willst du diesmal?"~ */
  IF ~~ THEN REPLY #20056 /* ~"Ich wollte ein paar Antworten."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~Du siehst eine ausgezehrte Frau, in deren sorgenzerfurchtem Gesicht jede einzelne Narbe zu sehen ist, die die Jahre ihr beigebracht haben. Ihr Blick ist wissend und müde, und sie schnieft beim Sprechen: "Was willst du von mir?"~ */
  IF ~~ THEN REPLY #20059 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"Nichts. Leb wohl."~ */ EXIT
END
