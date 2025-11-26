// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~Diese attraktive junge Frau lächelt allen Passanten zu und versucht sie anzulocken, indem sie ihre Ware preist. "Teller! Krüge! Tassen! Humpen! Trinkt aus den Kelchen der feinsten Herren!" Als sie dich sieht, winkt sie dich wie einen alten Bekannten heran.~ */
  IF ~~ THEN REPLY #17433 /* ~"Darf ich sehen, was du hier verkaufst?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~Tu so, als ob du ihr Winken nicht siehst und geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~Die Frau lächelt herzlich, als du näherkommst. "Seid gegrüßt, mein Herr. Was darf's denn heute sein, hmmm?"~ */
  IF ~~ THEN REPLY #17436 /* ~"Was verkaufst du gerade?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"Nichts, aber ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"Nichts, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"Ich verkaufe Teller, Tassen, Krüge, Humpen, Messer und dergleichen, mein Herr. Alles von erlesenster Qualität, mein Herr." Sie geht einen Schritt zurück und öffnet den Deckel einer Kiste, die auf dem Wagen hinter ihr steht. "Schaut Euch meine Ware an... Ihr könnt auch gerne Fragen stellen."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"Ich brauche ein Gefäß für Tinte... hast du vielleicht einen Krug oder einen Kelch?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~Geh näher heran und schau dir den Inhalt der Kiste genau an.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"Im Moment nicht. Ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~Du schaust in die Kiste. Sie ist voller... Teller, Tassen, Krüge, Humpen, Messer und dergleichen, alles von unterschiedlichster Qualität, wie es scheint. Aber es sind durchaus ein paar nette Sachen dabei. Während du die Ware begutachtest, drängt sie sich an dich heran: "Ist was dabei, mein Herr? Hmmm?" Ihr langes, welliges Haar streift deine Schulter. Es duftet leicht nach Vanille.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"Ich brauche ein Gefäß für Tinte... hast du vielleicht einen Krug oder einen Kelch?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"Wo kommt das alles her?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"Nein, es ist nichts dabei, was ich gebrauchen könnte. Aber ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"Nein, da ist nichts dabei, was ich gebrauchen könnte. Leb wohl."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"Nein, es ist nichts dabei, was ich gebrauchen könnte. Aber ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"Nein, da ist nichts dabei, was ich gebrauchen könnte. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~Sie grinst vielsagend. "Meine Liebhaber sind allesamt Einbrecher, mein Herr - sie haben diese Waren aus den Adelshäusern Sigils geklaut." Als sie dein verdutztes Gesicht sieht, lacht sie. "Ach, Unsinn, mein Herr! Mein Vater und meine Brüder sind Kesselflicker. Was Ihr seht, sind alles ausgemusterte Waren von den Adligen, die sie wieder brauchbar gemacht haben."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"Ich brauche ein Gefäß für Tinte... hast du vielleicht einen Krug oder einen Kelch?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"Oh, mein Herr, wartet doch!" Sie legt ihre Hand auf deinen Unterarm. Sie fühlt sich samtweich an. "Und Ihr seid *sicher*, daß Ihr nichts braucht? Für zu Hause oder zum Verschenken..." Kokett beißt sie sich auf die Lippe und neigt den Kopf leicht zur Seite.~ */
  IF ~~ THEN REPLY #17454 /* ~"Nun... der Teller da ist hübsch..."~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"Äh... nein, nichts, was ich gebrauchen könnte. Meine Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"Tut mir leid... nichts, was ich gebrauchen könnte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"Oh, mein Herr, wartet doch!" Sie legt ihre Hand auf deinen Unterarm. Sie fühlt sich samtweich an. "Und Ihr seid *sicher*, daß Ihr nichts braucht? Für zu Hause oder zum Verschenken..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"Was, mein Herr... Das hier?"~ */
  IF ~~ THEN REPLY #17459 /* ~"Nein, äh, der... warte. Das ist lächerlich, ich brauche keine Teller. Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"Tut mir leid, aber ich brauche wirklich keine Teller. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~Ihr trauriger Blick macht dir fast ein schlechtes Gewissen. Langsam schließt sie die Kiste. "Tut mir leid, mein Herr, ich habe keine Zeit für Fragen. Ich muß verkaufen, soviel ich kann, bevor der Tag zu Ende geht, denn zu Hause gibt es viele hungrige Mäuler zu stopfen."
~ */
  IF ~~ THEN REPLY #17461 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~Ihre verletzte Miene macht dir fast ein schlechtes Gewissen. Langsam schließt sie die Kiste. "Dann lebt wohl, mein Herr. Falls Ihr irgendwann etwas brauchen solltet, könnt Ihr gerne wieder zu mir kommen. Nirgendwo anders findet Ihr so feine Ware zu so günstigen Preisen." Sie winkt traurig.~ */
  IF ~~ THEN REPLY #17462 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~"Tut mir leid, mein Herr, ich habe keine Zeit für Fragen. Ich muß verkaufen, soviel ich kann, bevor der Tag zu Ende geht, denn zu Hause gibt es viele hungrige Mäuler zu stopfen." Sie hält den Deckel der Kiste hinter ihr auf. "Und Ihr wollt *sicher* nicht sehen, was ich anzubieten hätte? Hmmm?"~ */
  IF ~~ THEN REPLY #17463 /* ~"Na gut. Ich schau mal."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~Die Händlerin rümpft ihr süße Stupsnase. "Hmpf! Bist du so eifersüchtig, daß du sogar eine arme Händlerin um ihre Einnahmen bringen würdest? Der gute Herr ist ein Kunde, ein Ebenenreisender, und nicht irgendein Stück Fleisch, um das wir uns streiten können." Dabei nickt sie dir zu.~ */
  IF ~~ THEN REPLY #17465 /* ~Warte...~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~Sie nickt. "Oh, ja... viele Verschiedene. Ihr Preis reicht von ein paar Kupfermünzen bis zu mehreren hundert..."~ */
  IF ~~ THEN REPLY #22236 /* ~"Ich suche, ehrlich gesagt, nach dem billigsten, den du hast."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~Sie zieht eine Augenbraue hoch. Dann greift sie in die Kiste neben ihr und wirft dir einen zerbeulten Krug zu. Er ist überall eingedellt, und sein Griff sieht aus, als ob er jeden Moment abfallen würde.~ */
  IF ~~ THEN REPLY #22237 /* ~"Hmm... der hier sieht aus, als habe man jemandem eins damit übergebraten."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~Sie lächelt ein wenig.~ */
  IF ~~ THEN REPLY #22238 /* ~"Naja, wird schon gehen. Danke, und einen schönen Tag noch."~ */ JOURNAL #21909 /* ~Ich habe von einem der Kaufleuten einen zerbeulten Humpen bekommen. Ich kann ihn zu Meir'am mitnehmen und ihn ihr zeigen.~ */ EXIT
END
