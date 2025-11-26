// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10941 /* ~Diese Frau macht einen abwesenden Eindruck. Sie wirkt weder jung noch alt. Vielleicht liegt dies an ihren zweifelnden Gesichtszügen. Sie sieht aus, als würde sie ihren eigenen Sinnen nicht trauen. Sie sieht dich an und sagt in scharfem Ton, ohne jedoch aggressiv zu klingen: "Brauchst du was?"~ */
  IF ~~ THEN REPLY #10942 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #10943 /* ~"Ich suche ein Journal."~ */ GOTO 3
  IF ~~ THEN REPLY #10944 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 12
  IF ~~ THEN REPLY #10945 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10946 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10947 /* ~"Du und dein Freund, was habt ihr da grade über Sigil gesagt?"~ */ GOTO 6
  IF ~~ THEN REPLY #10948 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10949 /* ~"Brauchst du was?"~ */
  IF ~~ THEN REPLY #10950 /* ~"Die Antworten auf ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10951 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10952 /* ~"Ich bin Kiarus. Kiarus Dornenzunge. Ich bin mit meinem Cousin hier, weil mein Onkel nicht will, daß ich den Stock auf eigene Faust erkunde. Er traut mir wohl nicht allzuviel zu. Vielleicht hat er recht. Ich kenne diese Stadt und diese Ebene nicht besonders gut. Ich bin nicht von hier. Ich bin von der Materiellen."~ */
  IF ~~ THEN REPLY #10953 /* ~"Die Materielle? Was ist das denn?"~ */ GOTO 9
  IF ~~ THEN REPLY #10954 /* ~"Du bist von der Materiellen Ebene?"~ */ GOTO 10
  IF ~~ THEN REPLY #10955 /* ~"Naja, vielleicht kannst du mir trotzdem meine Fragen beantworten."~ */ GOTO 7
  IF ~~ THEN REPLY #10956 /* ~"Dann kannst du meine Fragen wahrscheinlich nicht beantworten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10957 /* ~"Tut mir leid, ich bin neu hier und habe bestimmt nichts gesehen, das wie ein Journal aussah - obwohl ich gehört habe, daß Dinge, die eine Person zu sein scheinen, für andere Wesen Journale sein können. Ich habe die hiesige Philosophie noch nicht so ganz verstanden. Sie ist mir ein bißchen zu hoch. Aber angeblich muß man einfach stur nach ihren Grundsätzen handeln, dann klappt es schon."~ */
  IF ~~ THEN REPLY #10958 /* ~"Na, da bin ich ja erleichtert. Ich hätte gern ein paar Antworten von dir."~ */ GOTO 7
  IF ~~ THEN REPLY #10959 /* ~"Das hoffe ich doch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10960 /* ~"Soviel ich weiß, ist das die Taverne zur Schwelenden Leiche. Sie heißt so wegen des brennenden Kerls am Eingang. Wenn du mich fragst, ist das hier eine Spelunke, in der sich Abschaum und allererste Sahne zu einer vollkommen unappetitlichen Geschmacksrichtung vermischen. Aber als Materierin bin ich vielleicht nicht ganz unbefangen in meiner Wahrnehmung."~ */
  IF ~~ THEN REPLY #10961 /* ~"Du bist von der Materiellen Ebene? Was soll das heißen?"~ */ GOTO 9
  IF ~~ THEN REPLY #10962 /* ~"Du bist von der Materiellen Ebene? Und was machst du dann hier?"~ */ GOTO 10
  IF ~~ THEN REPLY #10963 /* ~"Das ist möglich. Die Dinge sind hier nicht immer so, wie sie scheinen. Kannst du mir vielleicht ein paar Fragen beantworten?"~ */ GOTO 7
  IF ~~ THEN REPLY #10964 /* ~"Das ist möglich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10965 /* ~"Das ist Ignus. Er hat vor geraumer Zeit - vor mehreren Jahrhunderten? - versucht, einen Teil der Stadt abzufackeln. Zur Strafe dafür wurde er in eine lebende Flamme verwandelt. Ein schlimmes Schicksal, aber angemessen für einen Pyromanen und Brandstifter. Ich habe gelesen, man sollte ihn am besten in Ruhe lassen."~ */
  IF ~~ THEN REPLY #10966 /* ~"Wie kommt es, daß du so viel über diesen Ort weißt? Bist du nicht ein Materier?"~ */ GOTO 11
  IF ~~ THEN REPLY #10967 /* ~"Ich würde dir gern noch mehr Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #10968 /* ~"Vielen Dank. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10969 /* ~"Das ist nicht mein Freund, sondern mein Cousin. Er hat mir gerade erzählt, daß dies nicht der Mittelpunkt des Multiversums ist, obwohl dieser Ort genau im Zentrum der Außenländer liegt, obwohl hier alle Tore des Kosmos zusammenlaufen - und nirgendwo sonst gibt es so viele Tore - obwohl er ein ewiger Zankapfel zwischen den Göttern ist und obwohl man hier unglaubliche Vielfalt und geballte Macht vorfindet. Dieser Ort ist einzigartig im Kosmos - und er will mir erzählen, er sei nichts Besonderes? Ha!"~ */
  IF ~~ THEN REPLY #10970 /* ~"Eine interessante Sichtweise. Vielleicht gibt es bei euch beiden Elemente der Wahrheit?"~ */ GOTO 8
  IF ~~ THEN REPLY #10971 /* ~"Wie dem auch sei, ich würde dir gern noch ein paar Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #10972 /* ~"Interessant. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 2.2 3.0 4.2 5.1 6.1 8.0 9.0 10.0 11.0 12.1 13.0
  SAY #10973 /* ~"Schieß los. Ich werde mein bestes tun."~ */
  IF ~~ THEN REPLY #10974 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10975 /* ~"Ich suche nach einem Journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10976 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 12
  IF ~~ THEN REPLY #10977 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10978 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10979 /* ~"Du und dein Freund, was habt ihr da grade über Sigil gesagt?"~ */ GOTO 6
  IF ~~ THEN REPLY #10980 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #10981 /* ~"Du magst recht haben, aber dieser ganze Relativismus geht mir zu weit. Entweder der Ort ist wichtig, oder er ist es nicht. Widersprüche mögen dem Fortbestand der Ebenen dienen, aber irgendeinen Sinn müssen sie doch haben."~ */
  IF ~~ THEN REPLY #10982 /* ~"Nicht unbedingt... aber ich hab' jetzt keine Zeit, mit dir darüber zu diskutieren. Ich würde dir statt dessen gern noch mehr Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #10983 /* ~"Das hoffe ich doch. Ich brauche Antworten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0 4.0
  SAY #10984 /* ~Sie legt ihren Kopf auf die Seite und sieht dich fragend an. "Die Materielle Ebene? Der Ort, an dem der Glaube entstanden ist, aus dem die Äußeren Ebenen geformt wurden? Die Welt? Sterne, Monde? Glaube und Realität? Ich hoffe, du weißt um die Materielle, denn sie ist ein essentieller Teil des Wissens über die Ebenen."~ */
  IF ~~ THEN REPLY #10985 /* ~"Das wußte ich schon. Ich hätte noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10986 /* ~"Oh. Nun gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 4.1
  SAY #10987 /* ~"Ich bin hier zu Besuch, um meinen Horizont zu erweitern. Auf der Materiellen läßt es sich gut leben, aber sie ist meiner Meinung nach etwas zu... real. Mein Onkel schickt all seine Nichten und Neffen für ein paar Jahre in die Ebenen. Wenn wir möchten, dürfen wir auch ganz hier bleiben. Mal sehen. Ich bin hin und her gerissen zwischen Faszination und Ekel, aber das liegt wohl in der Natur der Ebenen, nicht wahr?"~ */
  IF ~~ THEN REPLY #10988 /* ~"Wenn ich das richtig verstehe, ja. Hast du genug Wissen, mir einige Antworten zu geben?"~ */ GOTO 7
  IF ~~ THEN REPLY #10989 /* ~"Ja, stimmt. Leb wohl und viel Glück."~ */ EXIT
  IF ~~ THEN REPLY #10990 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10991 /* ~"Der gemeinsame Onkel von Cielan und mir ist ein hiesiger Zauberer. Er schickt seine Verwandten auf die Ebenen, um ihnen die Freuden und Schrecken des Multiversums begreiflich zu machen. Ich habe mich äußerst gründlich auf meine Reise vorbereitet. Ich weiß wahrscheinlich mehr über die Stadt als mein Cousin, der sein ganzes Leben hier verbracht hat." Sie zeigt abschätzig auf den Mann neben ihr.~ */
  IF ~~ THEN REPLY #10992 /* ~"Das ist aber ein Onkel! Kann ich dich noch was anderes fragen?"~ */ GOTO 7
  IF ~~ THEN REPLY #10993 /* ~"Das ist wirklich eine Gabe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 7.2
  SAY #10994 /* ~"Einem Sammler? Das Wort habe ich noch nie gehört, glaube ich..." Sie denkt kurz nach. "Sind das diese Totenschlepper? Diese armen Leute, die die unzähligen Toten des Stocks aufsammeln und Geld dafür kassieren?"~ */
  IF ~~ THEN REPLY #10995 /* ~"Ja."~ */ GOTO 13
  IF ~~ THEN REPLY #10996 /* ~"Es ist offensichtlich, daß du den Mann nicht kennst, also beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10997 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #10998 /* ~"Soviel ich weiß, halten sie sich eher in den Gebieten des Stocks auf, die weiter von der Leichenhalle entfernt sind, dort, wo es lebhafter zugeht und mehr Gewalt herrscht. Vielleicht solltest du dich in weiterer Entfernung von der Leichenhalle umsehen."~ */
  IF ~~ THEN REPLY #10999 /* ~"Vielleicht tu ich das wirklich, aber erst würde ich dir gern noch eine Frage stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #11000 /* ~"Guter Vorschlag. Vielen Dank, und leb wohl."~ */ EXIT
END
