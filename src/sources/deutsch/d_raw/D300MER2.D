// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17378 /* ~Dieses zahnlose alte Weib riecht nach Fisch und Salzwasser. Als sie dich erblickt, schenkt sie dir ein breites, rosafarbenes Lächeln. "Fisch, mein Kind? Oder vielleicht Fischköpfe?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22064 /* ~"Mebbeth hat gesagt, du würdest Tinte verkaufen. Sie hat mich geschickt, um welche für sie zu kaufen."~ */ GOTO 8
  IF ~~ THEN REPLY #17386 /* ~"Kind? Daß ich nicht lache."~ */ GOTO 2
  IF ~~ THEN REPLY #17387 /* ~"Nein, keinen Fisch für mich, aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #17388 /* ~"Was genau bietest du an?"~ */ GOTO 6
  IF ~~ THEN REPLY #17389 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17379 /* ~Die alte Frau schenkt dir ihr zahnloses Lächeln. "Fisch, mein Kind? Fischköpfe?" Ein fauliger Fischgeruch umgibt sie.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22069 /* ~"Mebbeth hat gesagt, du würdest Tinte verkaufen. Sie hat mich geschickt, um welche für sie zu kaufen."~ */ GOTO 8
  IF ~~ THEN REPLY #17390 /* ~"Nein, keinen Fisch für mich, aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #17391 /* ~"Nein danke, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #17380 /* ~"Oh ja, ja! Aber im Vergleich zu mir bist du ein Kind! Hi-hi, Kleiner..."~ */
  IF ~~ THEN REPLY #17392 /* ~"Ich glaube, du irrst dich. Sieh genauer hin."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17381 /* ~Schlurfend kommt sie auf dich zu; der Fischgeruch raubt dir fast die Sinne. Die alte Frau kneift die Augen zusammen, mustert dein Gesicht, runzelt die Stirn und schaut dir in die Augen. Sie zuckt überrascht zusammen: "Meine Güte! Wieviele Jahre *haben* diese Augen wohl gesehen?"~ */
  IF ~~ THEN REPLY #17394 /* ~"Ich weiß nicht... was meinst du denn, wie viele?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17382 /* ~"Ich weiß nicht, ich weiß nicht. Zu viele, würd ich sagen. Aber macht nichts!" Sie rückt näher heran, um dir ins Ohr zu flüstern. "Aber das müssen die andern ja nicht wissen - es soll unser kleines Geheimnis bleiben." Dann spricht sie normal weiter. "Fisch, mein Kind? Hi-hi!" Sie piekst dich in den Bauch.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22076 /* ~"Mebbeth hat gesagt, du würdest Tinte verkaufen. Sie hat mich geschickt, um welche für sie zu kaufen."~ */ GOTO 8
  IF ~~ THEN REPLY #17395 /* ~"Nein, keinen Fisch für mich, aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #17396 /* ~"Was genau bietest du an?"~ */ GOTO 6
  IF ~~ THEN REPLY #17397 /* ~"Nein, danke. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.1 4.1 6.2 7.1
  SAY #17383 /* ~Sie schüttelt ihren kleinen, runzeligen Kopf. "Bei mir gibt's keine Antworten... nur Fisch."~ */
  IF ~~ THEN REPLY #17401 /* ~"Na gut. Was genau hast du anzubieten?"~ */ GOTO 6
  IF ~~ THEN REPLY #17402 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 4.2 5.0
  SAY #17384 /* ~"Fische eben, Dummerchen! Fische aller Art - und Fischköpfe, für die, die sich keinen ganzen leisten können. Süße kleine Fischköpfe! Hi-hi!"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22077 /* ~"Mebbeth hat gesagt, du würdest Tinte verkaufen. Sie hat mich geschickt, um welche für sie zu kaufen."~ */ GOTO 8
  IF ~~ THEN REPLY #17403 /* ~"Wo kommt der Fisch her?"~ */ GOTO 7
  IF ~~ THEN REPLY #17404 /* ~"Ich brauche keinen Fisch, aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #17405 /* ~"Ich brauche keinen Fisch und auch keine Fischköpfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #17385 /* ~"Sie werden aus allen Ebenen nach Sigil gebracht, Kleiner! Willst du einen? Kannst auch nur einen Kopf haben, falls du knapp bei Kasse bist..."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22078 /* ~"Mebbeth hat gesagt, du würdest Tinte verkaufen. Sie hat mich geschickt, um welche für sie zu kaufen."~ */ GOTO 8
  IF ~~ THEN REPLY #17406 /* ~"Ich brauche keinen Fisch, aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #17407 /* ~"Ich brauche keinen Fisch und auch keine Fischköpfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0 4.0 6.0 7.0
  SAY #22065 /* ~"Tinte?" Sie kichert. "Nein, ich verkauf' keine Tinte, nur Fisch..."~ */
  IF ~~ THEN REPLY #22070 /* ~"Bist du sicher? Mebbeth... die Hebamme vom Lumpensammler-Platz... hat mir genau deinen Namen genannt."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",7)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #22066 /* ~"Heh! Nun, Kossah-Jai war der Name meiner Mutter, und der Name meiner Großmutter, es könnte also jede von uns sein... doch stehen beide im Totenbuch, also zählt nur noch *diese* Kossah-Jai. Keine Ahnung, was sie meint... eine Hebamme vom Lumpensammler-Platz, sagst du?" Sie überlegt kurz. "Kenne ich nicht, wirklich nicht."~ */
  IF ~~ THEN REPLY #22071 /* ~"So... du hast also keine Tinte? Naja, das wundert mich NICHT WIRKLICH. Ich wette, Mebbeth läßt mich hier mit Absicht im Kreis laufen."~ */ GOTO 10
  IF ~~ THEN REPLY #22072 /* ~"Na gut. Sie hatte mir gesagt, daß du mir helfen könntest, aber wenn das nicht der Fall ist, dann eben nicht."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22067 /* ~"Moment mal... deine Hebamme da hat nicht ganz unrecht. Ich weiß, wie du an Tinte kommen kannst... aber es ist vielleicht nicht die Tinte, die du suchst... die Tinte, an die ich denke, kommt aus den Kiemen von *Brogota-Flossenfischen*, ja."~ */
  IF ~~ THEN REPLY #22073 /* ~"Dieser *Brogota-Flossenfisch*... blutet Tinte?"~ */ GOTO 11
  IF ~~ THEN REPLY #22074 /* ~"Aber ich schätze mal, du hast diesen *Brogota-Flossenfisch* nicht im Angebot, was?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #22068 /* ~Sie runzelt die Stirn. "Ja... das Problem ist, man kann den Fisch nicht *essen*, er schmeckt fürchterlich, versengt die Zunge... Du kannst Meir'am fragen, sie hat ihren Fischstand nach Süden die Straße runter." Sie lacht gackernd. "Sie hat vielleicht einen der Fische, die du brauchst, in *ihrem* Angebot..."~ */
  IF ~~ THEN REPLY #22075 /* ~"Dann werd ich mal sehen, was sie hat. Leb wohl."~ */ JOURNAL #21903 /* ~Kossah-Jai, eine der Fischfrauen auf dem Markt, hat mir erzählt, daß die einzige Quelle für Mebbeths Tinte, die sie kennt, ein *Brogota-Flossenfisch* sei, den sie aber nicht verkaufe. Sie sagte, ich solle einmal Meir'am versuchen, eine Fischfrau, die ihre Waren eine Straße südlich vom Markt verkauft.~ */ EXIT
END
