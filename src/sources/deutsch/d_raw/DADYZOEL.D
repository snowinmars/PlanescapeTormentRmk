// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~Dieser etwas weiblich wirkende, gut gekleidete junge Mann beobachtet Passanten mit einem spöttischen Grinsen auf den Lippen. Seine Hand umschließt den reich mit Juwelen verzierten Griff eines Säbels. Mit seinen Seidenkleidern und Wildlederstiefeln wirkt er völlig fehl am Platz.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"Sei gegrüßt..."~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Geh an dem Mann vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Obwohl seine feinen Gesichtszüge und vollen Lippen sehr weiblich wirken, identifiziert ihn seine - wenn auch weiche - Stimme eindeutig als Mann: "Hmmm, ein Fremder. Noch ein 'Schleifer'..." Er spuckt das letzte Wort förmlich aus, als hätte es seinen Geschmackssinn beleidigt. "Willst du es mit meiner Klinge aufnehmen?"~ */
  IF ~~ THEN REPLY #15354 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"Warum nicht? Ja."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"Warum nicht? Ja."~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"Ja, und willst du wetten, wer gewinnt?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"Ja, und willst du wetten, wer gewinnt?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"Dann geh. Für deine Sorte habe ich keine Zeit." Mit einem Wink bedeutet er dir zu gehen.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"Dann hast du mich unterschätzt, mein 'Herr'. Wirst du dir meine Fragen anhören oder nicht?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"Nimm dir Zeit. Du wirst meine Fragen beantworten."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"Nimm dir Zeit. Du wirst meine Fragen beantworten."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"Dann werde ich deine Zeit nicht vergeuden, du Bastardköter."~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~Die Augen des jungen Mannes versprühen die Wärme zweier Eisklötze. Seine Lippen verformen sich zu einem frostigen Lächeln. "Na? Würdest du das bitte wiederholen, du Tier. Was hast du gesagt?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"Du hast mich gehört, Frau."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"Du hast mich gehört, Frau."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"Nichts. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~Du siehst nur einen Ansatz von Bewegung, und schon ist der Säbel gezückt. Er leckt sich die Lippen und lacht: "Paß auf, daß dein Blut nicht auf meine Stiefel tropft." Hinter ihm steht eine schmutzige, mit einer Robe bekleidete Gestalt, die dich mit gierigem Blick anschaut...~ */
  IF ~~ THEN REPLY #15368 /* ~Erwidere seinen Angriff.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Flieh.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"Nein, nein, nein... so einfach ist es nicht." Er schließt die Augen und schüttelt mit vorgespieltem Bedauern den Kopf. "Jetzt hast du nur noch die Wahl, diesen Ort entweder als Leiche oder als Feigling zu verlassen."~ */
  IF ~~ THEN REPLY #15370 /* ~"Gibt's denn wirklich keinen anderen Weg?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"Die einzige Leiche, die's hier gibt, bist du."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Dreh dich um und geh weg.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~Du siehst nur einen Ansatz von Bewegung, und schon ist der Säbel gezückt. "Du siehst dich bloß selbst in meinen Augen, du Bestie. Paß auf, daß dein Blut nicht auf meine Stiefel tropft." Hinter ihm steht eine schmutzige, mit einer Robe bekleidete Gestalt, die dich mit gierigem Blick anschaut...~ */
  IF ~~ THEN REPLY #15373 /* ~Erwidere seinen Angriff.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Flüchte.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~Als du gehen willst, sagt er: "Hab' ich mir gedacht. Feigling." Du hörst, wie hinter ihm jemand einen kaum hörbaren, enttäuschten Seufzer von sich gibt.~ */
  IF ~~ THEN REPLY #15375 /* ~Dreh dich um und greif ihn an.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Ignoriere die Bemerkung und geh weg.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Ignoriere die Bemerkung und geh weg.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~Er wirkt einen Moment lang überrascht. Dann nickt er. "Den gibt es *immer*, nicht wahr? Hmm... Ich glaube, du könntest mich um Verzeihung bitten und zu den Mächten beten, ich möge Gnade walten lassen."~ */
  IF ~~ THEN REPLY #15378 /* ~"Niemals. Wir werden kämpfen."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"Dann bitte ich dich um Verzeihung. Ich habe Blödsinn geredet."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"Das werde ich nicht tun. Leb wohl."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~Er runzelt die Stirn und rollt mit den Augen. "Gut, ich ver -" Plötzlich bricht er ab und greift sich verwirrt an die Schläfe.~ */
  IF ~~ THEN REPLY #15381 /* ~Warte ab, was passiert.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"Geht's dir nicht gut?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Greif ihn an, solange er noch verwirrt ist.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Geh weg, während er abgelenkt ist.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"Ich... äh... kann dir nicht verzeihen!" Er schüttelt den Kopf. Die Verwirrung in seinem Gesicht weicht einem Ausdruck wilder Entschlossenheit. "Flieh oder stirb!"~ */
  IF ~~ THEN REPLY #15385 /* ~Greif ihn an.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Geh weg.
~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~Er ruft dir nach, als du gehst: "Komm zurück, du feiger Hund!"~ */
  IF ~~ THEN REPLY #15387 /* ~Dreh dich um und seh ihn an.
~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Geh weiter.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~Als du dich zu ihm umdrehst, zückt er mit einer kaum merklichen Bewegung seinen Säbel. "Gut - dann kämpfen wir! Paß aber auf, daß dein Blut nicht auf meine Stiefel tropft." Hinter ihm steht eine Gestalt in einer schmutzigen Robe, die dich mit gierigem Blick beobachtet...~ */
  IF ~~ THEN REPLY #15389 /* ~Erwidere seinen Angriff.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Flüchte.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~Er lacht bitter. "Mir kannst du keine Angst einjagen, du Tier. Ich würde dir vorschlagen, du fängst schon mal an, um dein Leben zu laufen, bevor ich es in den Rinnstein fließen lasse."~ */
  IF ~~ THEN REPLY #15391 /* ~Wahrheit: "Ich geb dir noch eine einzige Chance zu reden, bevor ich dich und dein hübsches Schwert in zwei Teile zerlege."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Täuschung: "Ich geb dir noch eine einzige Chance zu reden, bevor ich dich und dein hübsches Schwert in zwei Teile zerlege."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Geh weg.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"Ach, *hab'* ich das? Hmm... deine Frechheit amüsiert mich, Stockbewohner. Was möchtest du mich fragen?"~ */
  IF ~~ THEN REPLY #15394 /* ~"Wer bist du?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"Was machst du hier?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"Ich will ein Duell ausfechten."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"Ich will ein Duell ausfechten."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"Ich suche einen Mann namens Pharod."
~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"Die Namen der ... 'Leute'... hier interessieren mich nicht. Ich hätte diesen Pharod nicht mal erkannt, wenn er mir begegnet wäre."~ */
  IF ~~ THEN REPLY #15401 /* ~"Ich hätte noch ein paar Fragen..."
~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"Na dann leb wohl."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"Na dann leb wohl."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"Kannst du *lesen*?" Er kichert in sich hinein. "Also... Hast du es hier verloren? Zweifellos ist es gestohlen worden, wurde wahrscheinlich von den örtlichen Degenerierten als Bettzeug oder Anzündholz verwendet. Ich würde an deiner Stelle vergessen, daß du es jemals hattest. Ich bin sicher, daß du das Ding jetzt nicht mehr haben wolltest, wenn du es finden würdest."~ */
  IF ~~ THEN REPLY #15405 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"Na dann leb wohl."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"Na dann leb wohl."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"Du kannst mich Adyzoel nennen, aus dem Hause Eriane-Ard."~ */
  IF ~~ THEN REPLY #15409 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"Vielleicht reden wir ein anderes Mal, Adyzoel. Leb wohl."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"Vielleicht reden wir ein anderes Mal, Adyzoel. Leb wohl."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"Vielleicht reden wir ein anderes Mal, Adyzoel. Leb wohl."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~Er grinst böse. Seine makellosen, schneeweißen Zähne blitzen wie geschärfte Messer. "Ach, dies und jenes. Meine Fähigkeiten prüfen, mir Ärger einhandeln. Was man im Stock halt so tut."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"Ich denke, ich werde ein guter Prüfstein für deine Fähigkeiten sein."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"Ich denke, ich werde ein guter Prüfstein für deine Fähigkeiten sein."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"Dann hoffe ich, daß du dir deinen Ärger einhandelst. Leb wohl."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"Dann hoffe ich, daß du dir deinen Ärger einhandelst. Leb wohl."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"Dann hoffe ich, daß du dir deinen Ärger einhandelst. Leb wohl."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~Die Augen des jungen Mannes versprühen die Wärme zweier Eisklötze. Seine Lippen verformen sich zu einem frostigen Lächeln. "Wie du willst..." Mit einer kaum merklichen Bewegung zückt er seinen Säbel. "Paß aber auf, daß dein Blut nicht auf meine Stiefel tropft." Hinter ihm steht eine schmutzige, mit einer Robe bekleidete Gestalt, die dich mit gierigem Blick anschaut...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"Warte..."~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Erwidere seinen Angriff.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Flieh.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~Seine Augen glänzen. "Ja, genau. Das ist eine hervorr-" Plötzlich bricht er ab und faßt sich verwirrt an die Schläfe.~ */
  IF ~~ THEN REPLY #15422 /* ~Warte ab, was passiert.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"Geht's dir nicht gut?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Greif ihn an, solange er noch verwirrt ist.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Geh weg, während er abgelenkt ist.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"Ich... äh... nein, wetten geht nicht! Wer siegt, lebt; wer verliert, stirbt. So einfach ist das."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"Na gut. Laß uns kämpfen."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"Na gut. Laß uns kämpfen."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"Dann vergiß es einfach. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"Nun, nichts für ungut. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"Schön, schön. Mach weiter."~ */
  IF ~~ THEN REPLY #15430 /* ~"Wer bist du?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"Was machst du hier?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"Ich will ein Duell ausfechten."
~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"Ich will ein Duell ausfechten."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"Ich suche nach einem Journal, das ich verloren hab'."
~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"Vergiß es. Leb wohl."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"Vergiß es. Leb wohl."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Adyzoel nickt mit dem Kopf, als er dich sieht. "Du schon wieder. Sollen wir diesmal die Schwerter kreuzen oder willst du mich wieder mit deinen Fragen belästigen?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"Ich bin hier, um zu kämpfen."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"Ich bin hier, um zu kämpfen."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"Weder noch. Leb wohl."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"Weder noch. Leb wohl."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~Er sagt kurz angebunden: "Leb wohl. Und belästige mich nie wieder, es sei denn, du willst mich herausfordern."~ */
  IF ~~ THEN REPLY #15444 /* ~Geh weg.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Als du dich zum Gehen umdrehst, sagt Adyzoel in verächtlichem Ton: "Ich hab' dir doch gesagt, du sollst dich hier erst wieder blicken lassen, wenn du mich herausfordern willst, sonst wird die Sache ausgefochten, ob's dir paßt oder nicht."~ */
  IF ~~ THEN REPLY #15445 /* ~Geh weg.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~Du erinnerst dich an Adyzoels Aufforderung, ihn nie wieder zu belästigen, es sei denn, um ihn herauszufordern.~ */
  IF ~~ THEN REPLY #15446 /* ~Rede trotzdem mit ihm.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~Du erinnerst dich an Adyzoels Warnung, bei eurer nächsten Begegnung würde er dich auf den ersten Blick angreifen.~ */
  IF ~~ THEN REPLY #15448 /* ~Rede trotzdem mit ihm.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"Da schau an. Der Angsthase ist wieder da!"~ */
  IF ~~ THEN REPLY #15450 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"Hör ich da einen Hund bellen? Ich bin gekommen, um zu kämpfen, du räudiger Köter."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"Hör ich da einen Hund bellen? Ich bin gekommen, um zu kämpfen, du räudiger Köter."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Dreh dich um und geh weg.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~Höhnisch grinsend wendet er sich ab. "Einem Feigling wie dir habe ich nichts zu sagen. Kämpf oder flieh."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"Dann werde ich mit dir kämpfen."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"Dann werde ich mit dir kämpfen."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"Ich gehe. Leb wohl."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"Ich werde nicht zulassen, daß du mich weiter belästigst, Feigling. Laß dich hier erst wieder blicken, wenn du mich herausfordern willst. Wenn ich dich je wieder zu Gesicht bekomme, werden wir es ausfechten, ob's dir paßt oder nicht."~ */
  IF ~~ THEN REPLY #15457 /* ~Geh weg.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Adyzoel macht ein ehrlich überraschtes Gesicht. "Du schon wieder? Wo kommst du denn her? Ich war mir sicher, ich hätte dich erledigt."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"Nicht ganz. Ich will wieder mit dir kämpfen."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"Nicht ganz. Ich will wieder mit dir kämpfen."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"Nein, haste nicht. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"Falsch gedacht. Leb wohl."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~Erstaunt starrt der junge Mann Morte an. "Und wer bist *du*?"~ */
  IF ~~ THEN REPLY #15462 /* ~"Ignoriere ihn einfach, er ist harmlos."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Laß Morte sprechen.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~Alles, was der Mann zustande bringt, ist ein knurrender, Speichel versprühender Laut: "Grrrr!" Blitzschnell und vor Wut bebend zückt er seinen Säbel. "Jetzt reicht's! Ich *VERLANGE* Genugtuung!"~ */
  IF ~~ THEN REPLY #15464 /* ~"Ich kann dich nur bitten, meinem Gefährten zu verzeihen."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"Nun, Morte? Wirst du dich mit ihm duellieren?"~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"Na gut... aber du wirst gegen uns beide kämpfen müssen."
~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"Wie ihr wollt! Dann seid ihr beide des Todes!" Während er sich zum Angriff rüstet, siehst du hinter ihm eine schmutzige, mit einer Robe bekleidete Gestalt, die dich mit gierigem Blick anschaut...~ */
  IF ~~ THEN REPLY #15467 /* ~Erwidere seinen Angriff.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Flüchte.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"Was?" Der junge Mann schielt ungläubig zu Morte hinüber. "Ein *seltsamer* Mimir, um es gelinde zu sagen!"~ */
  IF ~~ THEN REPLY #15469 /* ~"Mimir?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"Kannst du ihm seine Beleidigungen verzeihen?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"Wir werden kämpfen... aber du mußt es mit uns beiden aufnehmen."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"Still, du Dummschwätzer!" Dann zückt er seinen Säbel und sagt gelassen: "Kämpft oder flieht. Das gilt für euch beide. Ihr habt keine andere Wahl." Obwohl er seine Wut im Zaum hält, bemerkst du ein kaltes, haßerfülltes Funkeln in seinen Augen.~ */
  IF ~~ THEN REPLY #15472 /* ~Greif ihn an.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Dreh dich um und geh weg.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"Hey, laß ihn! Er ist erbärmlich genug. Du mußt ihn nicht noch mehr runtermachen."~ */
  IF ~~ THEN REPLY #15474 /* ~"Das geht dich überhaupt nichts an."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"Paß auf, was du sagst, sonst bist du als nächstes dran."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"Das ist meine Sache. Und jetzt laß diese bedauernswerte Kreatur in Ruhe, sonst kriegst du's mit mir zu tun."~ */
  IF ~~ THEN REPLY #15477 /* ~"Sag mir erst, warum es dich überhaupt interessiert."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"Ich krieg's mit dir zu tun? Das will ich erst mal sehen."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"Weil... weil..." Er bricht ab und greift sich verwirrt an die Schläfe. Er steht ein wenig neben sich.~ */
  IF ~~ THEN REPLY #15480 /* ~"Geht's dir nicht gut?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Warte.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Geh weg, während er abgelenkt ist.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~Er schüttelt seine Verwirrung ab. "Das geht dich nichts an. Ich hab' dir ein Ultimatum gestellt; entweder, wir fechten es aus, oder du gehst, und zwar sofort."~ */
  IF ~~ THEN REPLY #15483 /* ~"Das ist einzig und allein meine Sache. Red' schon."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~"Wir werden kämpfen."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~"Wir werden kämpfen."~ */ EXTERN ~DMORTE~ 169
END
