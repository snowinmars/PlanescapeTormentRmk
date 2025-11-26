// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~Du schielst auf die Figur hinter der Trennwand und kannst im Dunkeln gerade eben eine wohlgeformte weibliche Figur ausmachen. Sie dreht sich zu dir um, aber du kannst ihr Gesicht überhaupt nicht sehen.~ */
  IF ~~ THEN REPLY #2959 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~Die Figur antwortet in einer Stimme, die langsam und tödlich ist, wie ein Stahldolch, der über Stein gezogen wird. "Ja? Bist wohl gekommen, um mit Marissa zu sprechen, was? Ganz schön unverschämt von dir, einen verdunkelten Raum zu betreten und hier so hinter meine Trennwand zu stürmen... unverschämt und tollkühn." Du kannst ein leises, flüsterndes Geräusch hören, wie ein leichter Windhauch... oder das Zischen von Schlangen.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"Ich entschuldige mich... Ich war nicht sicher, ob hier jemand ist."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~Die Frau räuspert sich abfällig. "Aber es scheint so, als ob jemand in diesem Raum *ist*, nicht wahr? Also gehst du jetzt endlich?"~ */
  IF ~~ THEN REPLY #40456 /* ~"Noch nicht... Ich hätte da ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"Ja... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"Ach *wirklich*?" Du hörst ein leises Zischen, und als die Frau wieder spricht, trieft ihre Stimme vor Sarkasmus. "Oooh, ich kann's kaum erwarten..."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"Frag."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"Ich habe deinen Purpurschleier gefunden..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"Ich habe deinen Purpurschleier gefunden..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"Warum bleibst du hinter dieser Trennwand?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"Warum bleibst du hinter dieser Trennwand?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"Warum ist es hier drin so dunkel?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"Warum ist es hier drin so dunkel?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"Was machst du hier?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ JOURNAL #66743 /* ~Ich habe eine der Prostitierten gefragt, ob sie weiß, ob Kesai-Serris nun wirklich Ravels Tochter ist. Sie hat gesagt, ich solle mit Juliette reden. Anscheinend waren die beiden eng befreundet, bevor Juliette Montague traf.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"Ich habe gehört, daß du neulich gesehen wurdest, wie du dich aus Vivians Gemächern weggeschlichen hast... Steht das in irgendeinem Zusammenhang mit ihrem verlorengegangenen Duft?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Ich habe Marissa darüber befragt, daß sie gesehen wurde, wie sie sich aus Vivians Kammer geschlichen hat, aber sie hat sich geweigert, mit mir darüber zu reden.~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"Ich habe gehört, daß du neulich gesehen wurdest, wie du dich aus Vivians Gemächern weggeschlichen hast... Steht das in irgendeinem Zusammenhang mit ihrem verlorengegangenen Duft?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Ich habe Marissa darüber befragt, daß sie gesehen wurde, wie sie sich aus Vivians Kammer geschlichen hat, aber sie hat sich geweigert, mit mir darüber zu reden.~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~Du hörst einen leisen Zischlaut. "Weil ich etwas verloren habe und statt dessen etwas Unerwünschtes auf meiner Schwelle aufgetaucht ist."~ */
  IF ~~ THEN REPLY #40480 /* ~"Was ist dir denn verlorengegangen?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, eine der Prostituierten aus dem Bordell zum Befriedigen Intellektueller Lüste, hat ihren Purpurschleier verloren. Sie hat mich nicht gebeten, ihn wiederzufinden, aber ich kann mich ja mal umhören - Vielleicht hat er sich ja irgendwo angefunden.~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"Na gut, dann gehe ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"Mein Schleier... mein Purpurschleier. Hast du ihn vielleicht zufällig gesehen?"~ */
  IF ~~ THEN REPLY #40484 /* ~"Nein... wozu ist der gut? Ist das einfach nur ein normaler Schleier?"~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"Nein. Ich habe da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"Hab ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~Marissa seufzt leise. "Nein, nicht ganz. Er ist mir bei der Kommunikation behilflich... bei der Kommunikation von Angesicht zu Angesicht, meine ich."~ */
  IF ~~ THEN REPLY #40488 /* ~"Warum mußt du denn dein Gesicht verstecken?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"Genug von deinen idiotischen Fragen! Wie schrecklich langweilig du doch bist! Also, was *willst* du?"~ */
  IF ~~ THEN REPLY #40492 /* ~"Einfach nur Antworten auf ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"Um irgendwelche unerwünschten... und peinlichen... Vorfälle zu vermeiden. Und was willst du jetzt?"~ */
  IF ~~ THEN REPLY #40495 /* ~"Ich möchte, daß du ins Licht kommst."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"Einfach nur Antworten auf ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"Ich sitze hier mit meinen Gedanken. Und höre, wie du deine vorbringst. Die Stille von beiden - buchstäblich, dann im übertragenen Sinne - ist ohrenbetäubend."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"Warum hast du denn so eine gräßliche Laune?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"Ich bin neugierig darauf, deine Gedanken zu hören..."~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"Oh, das glaube ich nicht. Du würdest sie in diesem Moment wenig schmeichelhaft finden. Was *willst* du denn nun?"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"Warum hast du denn so eine gräßliche Laune?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"Einfach nur Antworten auf ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"Ist es dein Wunsch, daß ich hinter der Trennwand hervortrete, in einen Flecken Licht, und von Angesicht zu Angesicht mit dir spreche?" Marissa lacht, und es gibt ein Geräusch von Schuppen, die über Schuppen gleiten. "Nein, das glaube ich nicht. Die Dunkelheit steht mir, und zweifellos steht sie auch dir."~ */
  IF ~~ THEN REPLY #40508 /* ~"Warum ist es hier drin so dunkel?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"Komm doch bitte ins Licht..."~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"Dann habe ich noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"Nein, und ich würd's selbst dann nicht tun, wenn du mich darum bitten würdest. Also, was *willst* du denn jetzt? Sicher bist du nicht den ganzen Weg gekommen, um mich zu *sehen*."~ */
  IF ~~ THEN REPLY #40513 /* ~"Ich *möchte* aber sehen, wie du aussiehst..."~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"Dann habe ich noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"Du hast keinen solchen Wunsch."~ */
  IF ~~ THEN REPLY #40517 /* ~"Oh, doch, tu ich."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"Dann habe ich noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"Wie siehst *du* denn aus? Die Dunkelheit verbirgt uns beide. Sollen wir ein Spiel daraus machen? Ich habe scheckliche Langeweile. Laß mich raten... bist du ein männlicher Mensch?"~ */
  IF ~~ THEN REPLY #40521 /* ~"Ja."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"Ich glaube schon..."~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"Keine Spiele. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"Ich habe jetzt gerade keine Lust auf ein Spiel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"Bist du... am Hals verwundet?"~ */
  IF ~~ THEN REPLY #40526 /* ~"Ja."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"Ich kann's nicht sehen, aber ich glaube schon, ja."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"Keine Spiele mehr. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"Ich habe jetzt gerade keine Lust auf ein Spiel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"Du 'glaubst' es? Wie kann es sein, daß du das nicht weißt?"~ */
  IF ~~ THEN REPLY #40531 /* ~"Das ist ziemlich kompliziert."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"Ich hab wirklich keine klare Idee, was ich eigentlich bin."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"Vergiß es. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"Ach, ist nicht so wichtig. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"Wirklich? Das muß wohl zu hoch für ein Hirn wie meines sein, um es zu verstehen."~ */
  IF ~~ THEN REPLY #40536 /* ~"Ich hab wirklich keine klare Idee, was ich eigentlich bin."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"Vergiß es. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"Ach, ist nicht so wichtig. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"Wirklich? Das ist ja beinahe... interessant..." Es gibt einen Zischlaut in der Dunkelheit.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"Hmm... Beschreib dich für mich."~ */
  IF ~~ THEN REPLY #40541 /* ~Wahrheit: "Ich bin groß, muskulös und schrecklich vernarbt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~Lüge: "Ich bin groß, athletisch gebaut... sehr gutaussehend..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"Du zuerst, Marissa."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"Nein danke. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"Ich bin nicht in Stimmung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"Wirklich? Hmmm..." Sie hält einen Augenblick lang inne. "Wie bist du an so schrecklich viele Narben gekommen? Warte... Vergiß es. Ich möchte es nicht wissen."~ */
  IF ~~ THEN REPLY #40547 /* ~"Und jetzt beschreib dich für mich."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"Also gut. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"Gut. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"Oh, wirklich? Dann komm vor - *ganz* dicht zu mir, damit wir einander sehen können ..." Der Zischlaut scheint von ihr auszugehen...~ */
  IF ~~ THEN REPLY #40551 /* ~Geh dichter an sie heran.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~Halt dich zurück.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~Du machst einen Schritt nach vorn, so daß dein Gesicht beinahe das von Marissa berührt, und kneifst die Augen zusammen, um ihr Gesicht zu erkennen. Ihre Gesichtszüge sind schön, ihre Haut ist blaß und makellos, aber ihr Haar ist eine Masse sich windender, zischender Nattern. Marissas Augen - von brilliantem Blau - scheinen dir irgendwie seltsam, bis du bemerkst, daß es eigentlich Tätowierungen auf ihren geschlossenen Augenlidern sind. "Bist du bereit für eine Überraschung?" fragt sie, und ihre Lippen kräuseln sich zu einem bösen Lächeln...~ */
  IF ~~ THEN REPLY #40554 /* ~Dreh dich weg.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"Klar, überrasch mich."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"Sollen wir Adjektive austauschen? Dann fange ich mit 'kurvenreich' an. Jetzt mußt du ein Adjektiv sagen."~ */
  IF ~~ THEN REPLY #40557 /* ~"Groß."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"Sehr muskulös."~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"Vernarbt."~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"Nein... keine Spiele. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"Ich habe jetzt gerade keine Lust auf ein Spiel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"Mmm-hmm. Dann sage ich... blaßhäutig." Ihr werft euch auf diese Weise gegenseitig Adjektive zu, bis sie sich schließlich als eine kurvenreiche, blaßhäutige, schöne Frau mit einer Schlangenzunge, Haaren aus sich windenden Nattern und glühenden Augen beschrieben hat... von denen du annimmst, daß sie sie geschlossen halten muß.~ */
  IF ~~ THEN REPLY #40563 /* ~"Bist du ein Scheusal?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - eine der Prostituierten im Bordell im Kuratorenviertel - behauptet, sie habe die Macht, mit nur einem Blick lebende Dinge in Stein zu verwandeln.~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"Du klingst... als ob du sehr exotisch aussiehst, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - eine der Prostituierten im Bordell im Kuratorenviertel - behauptet, sie habe die Macht, mit nur einem Blick lebende Dinge in Stein zu verwandeln.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~Marissa lacht leise, und der Klang wird von einem leichten Zischen begleitet. "Nein, kaum... obwohl ich über Kräfte verfüge, die manche scheusalhaft *nennen* könnten. Mein Blick beispielsweise verwandelt lebende Dinge in Stein. So werden durch einen einzigen Wimpernschlag Wesen aus Fleisch und Blut zu Statuen..."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, eine der Prostituierten aus dem Bordell zum Befriedigen Intellektueller Lüste, hat ihren Purpurschleier verloren. Sie hat mich nicht gebeten, ihn wiederzufinden, aber ich kann mich ja mal umhören - Vielleicht hat er sich ja irgendwo angefunden.~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, eine der Prostituierten aus dem Bordell zum Befriedigen Intellektueller Lüste, hat ihren Purpurschleier verloren. Sie hat mich nicht gebeten, ihn wiederzufinden, aber ich kann mich ja mal umhören - Vielleicht hat er sich ja irgendwo angefunden.~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"Interessant. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"Ach so. Dann geh ich jetzt mal. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"Findest du? Das muß der Grund sein, weshalb ich hier allein im Dunkeln sitze und mich hinter einer Trennwand verstecke." Obwohl du Marissa nicht sehen kannst, bist du sicher, daß sie höhnisch lächelt. Plötzlich seufzt sie. "Wenn ich nur wüßte, wo mein Purpurschleier hin ist. Hast du ihn vielleicht zufällig gesehen?"~ */
  IF ~~ THEN REPLY #40575 /* ~"Nein... wozu ist der gut? Ist das einfach nur ein normaler Schleier?"~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"Nein. Ich habe da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"Hab ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"Findest du? Das muß der Grund sein, weshalb ich hier allein im Dunkeln sitze und mich hinter einer Trennwand verstecke." Obwohl du Marissa nicht sehen kannst, bist du sicher, daß sie höhnisch lächelt. Plötzlich seufzt sie. "Wenn ich nur wüßte, wo mein Purpurschleier hin ist."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"Ich habe deinen Schleier hier bei mir, Marissa..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"Ich habe deinen Schleier hier bei mir, Marissa..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"Mit meinem Purpurschleier kann ich umherziehen, ohne viel Gefahr zu laufen, daß so etwas passiert, also ist es nicht ganz so schlimm."~ */
  IF ~~ THEN REPLY #40584 /* ~"Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"Würdest du ihn mir dann bitte geben?"~ */
  IF ~~ THEN REPLY #40587 /* ~"Natürlich. Hier hast du..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Ich habe Marissa ihren Purpurschleier zurückgebracht, weil ich ein guter Mensch bin.~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"Ich will aber erst etwas dafür haben..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~Du hältst den Purpurschleier vor dich und fühlst, wie sie ihn dir aus der Hand nimmt. "Ah. Ja, viel besser." Zwei scheinende Punkte roten Lichts erscheinen vor dir, als sie ihre Augen öffnet. "So siehst du also aus... Vielleicht wäre ich mit geschlossenen Augen besser dran gewesen."~ */
  IF ~~ THEN REPLY #40590 /* ~"Hüte deine Schlangenzunge, Marissa."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"Bringe mich nicht dazu loszulegen."~ */
  IF ~~ THEN REPLY #40594 /* ~"Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"Natürlich... wie schrecklich *geldgierig* von dir. Hier... Greif zu, nimm mein Handgelenk... Da findest du ein Goldarmband. Nimm es, es gehört dir. Es wird dir mehr nützen als mein Schleier, glaub mir."~ */
  IF ~~ THEN REPLY #40597 /* ~"Eigentlich... ach, vergiß es. Hier, nimm einfach deinen Schleier."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Ich habe Marissa ihren Purpurschleier zurückgebracht, weil ich ein guter Mensch bin.~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~Nimm das Armband.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~Ich habe Marissa ihren Purpurschleier zurückgebracht, aber erst, nachdem ich klargemacht habe, daß ich dies nur gegen eine Belohnung tun würde.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~Du nimmst das Goldarmband von Marissas zartem Handgelenk...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~Marissa lacht leise, und der Klang wird von einem leichten Zischen begleitet. "Oh, das tue ich, tatsächlich. Nur ein Blick von mir verwandelt lebende Dinge in Stein... So werden durch einen einzigen Wimpernschlag Wesen aus Fleisch und Blut zu Statuen."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"Lebende Dinge in Stein? Könntest du, sagen wir mal, ein Lim-Lim in eine Statue verwandeln?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"Das muß manchmal ziemlich unpraktisch sein."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"Interessant. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"Ach so. Dann geh ich jetzt mal. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~Marissa beschreibt sich als kurvenreiche, blaßhäutige, schöne Frau mit einer Schlangenzunge, Haaren aus sich windenden Nattern und glühenden Augen... von denen du annimmst, daß sie sie geschlossen halten muß.~ */
  IF ~~ THEN REPLY #40610 /* ~"Bist du ein Scheusal?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - eine der Prostituierten im Bordell im Kuratorenviertel - behauptet, sie habe die Macht, mit nur einem Blick lebende Dinge in Stein zu verwandeln.~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"Du klingst... als ob du sehr exotisch aussiehst, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - eine der Prostituierten im Bordell im Kuratorenviertel - behauptet, sie habe die Macht, mit nur einem Blick lebende Dinge in Stein zu verwandeln.~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"Bezweifelst du etwa meine Beurteilung deines Aussehens? Könnte es sein, daß du nicht das bist, was du zu sein scheinst?"~ */
  IF ~~ THEN REPLY #40613 /* ~Geh dichter an sie heran.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"Also gut... Ich bin groß, muskulös und schrecklich vernarbt."~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"Vergiß es einfach. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"Das ist jetzt nicht so wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"Nein, ich bin nicht in Stimmung. Ich bin sicher, eins der Mädchen hier wäre glücklich, dir alles über Meisterin Graces kleine Schule für angehende Sinnsaten zu erzählen... Geh doch und such dir eins von ihnen."~ */
  IF ~~ THEN REPLY #40618 /* ~"Sinnsaten?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"Noch nicht - Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"Vielleicht werde ich das tun. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"Ja, ja... eine dumme kleine Gruppe, die sich Erfahrungen und solchen Dingen widmet. Ich muß wirklich kein Sinnsate sein, um ein Sinnsate zu *sein*... Und wenn ich erst einmal in die Festhalle gekommen bin und ihrer Sinnsorien müde bin, ziehe ich einfach weiter."~ */
  IF ~~ THEN REPLY #40622 /* ~"Erzähl mir über die Sinnsorien."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"Das sind Hallen, wo Empfindungen in Objekten gespeichert werden, die Sinnessteine genannt werden. Es gibt zwei: Ein öffentliches Sinnsorium in der Städtischen Festhalle, das jedem offensteht, und ein Privates Sinnsorium, das nur den Mitgliedern der Gesellschaft der Empfindung, den Sinnsaten, offensteht."~ */
  IF ~~ THEN REPLY #40626 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"Ich weiß es nicht... Aber ich für meinen Teil wäre nicht überrascht. Um Heras Willen, *schau* dir das Mädchen an! Aber frag Juliette - die beiden waren mal Freundinnen... Bevor Montague auftauchte."~ */
  IF ~~ THEN REPLY #40629 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"Ich verbringe viel Zeit hier in meinen Gemächern, aber ich glaube, daß selbst *ich* es wissen müßte, wenn eine zehnte Schülerin angekommen wäre. Zur Zeit gibt es keine."~ */
  IF ~~ THEN REPLY #40632 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"Nein. Du?" Du hörst ein ärgerliches Seufzen aus der Dunkelheit kommen. "Frag Yves. Sie sammelt Geschichten und kann dir wahrscheinlich etwas Brauchbares erzählen."~ */
  IF ~~ THEN REPLY #40635 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"Nein, ich habe keine Ahnung."~ */
  IF ~~ THEN REPLY #40638 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~Marissa sagt nichts, wenn auch ein wütendes Zischen aus der Dunkelheit um sie herum dringt. "Ja, es ist schon vorgekommen, daß ich wegen ihrer Parfüms in Vivians Zimmer geschlichen bin... Aber ich bezweifle, daß du hier eine finden wirst, die das noch nicht getan hat. Wenn du aber andeuten möchtest, daß ich ihren *persönlichen* Duft habe, tja... Nur zu, schnüffel herum, wenn du willst. Du wirst ihn nicht an mir oder in meinen Gemächern finden, das versichere ich dir."~ */
  IF ~~ THEN REPLY #40641 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~Marissas kalte, grausame Stimme zischt aus der Dunkelheit heraus. "Es kommt zurück! Du hast doch sicher dieses Mal einen guten Grund für dein Kommen? Oder willst du mir nur wieder sinnlose Fragen stellen?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"Eigentlich habe ich dir deinen Purpurschleier gebracht..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"Eigentlich habe ich dir deinen Purpurschleier gebracht..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"Noch mehr 'sinnlose' Fragen, Marissa."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~Marissas rote Augen glänzen dich aus der Finsternis an. "Ja?" Ein leichtes Zischen begleitet ihre Frage.~ */
  IF ~~ THEN REPLY #40649 /* ~"Ich hätte da ein paar Fragen, Marissa..."~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"Nichts, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~Du wendest deine Augen in genau dem Augenblick ab, als Marissa ihre öffnet. Aber du wirst eines roten, kalten Lichts gewahr, das sie in deinen Augenwinkel werfen. "Oh..." Sie seufzt enttäuscht. "Du hast dich weggedreht! Und du siehst wirklich *überhaupt nicht* aus wie du behauptet hast... Was für eine Schande. Mach schon, sieh mich an. Ich habe meine Augen wieder geschlossen."~ */
  IF ~~ THEN REPLY #40652 /* ~"Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"Das ist schon in Ordnung... Ich geh einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~Marissas Augen gehen plötzlich auf und baden dich in ihrem kalten roten Licht... Das ist das Letzte, was deine Augen je wahrnehmen, bevor sie - wie dein restlicher Körper - für immer zu Stein werden.~ */
  IF ~~ THEN REPLY #40655 /* ~"Gaaah..."~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~Marissa ist eine Weile still, bevor sie antwortet. "Zuerst, weil ich meinen Purpurschleier verloren hatte... aber jetzt... Ich weiß nicht. Vielleicht habe ich mich daran gewöhnt, auf diese Weise mit meinen Kunden umzugehen, und habe es mit der Zeit gelernt zu genießen. Irgendwann werde ich es wahrscheinlich langweilig finden und wieder nach Sigil hinausgehen, aber im Moment... geht es mir hier eigentlich gut."~ */
  IF ~~ THEN REPLY #40657 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"Das ist alles, was ich wissen wollte. Leb wohl, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~Marissa sagt nichts, obwohl ein wütendes Zischen aus der Dunkelheit um sie herum dringt. "Ja, es ist schon vorgekommen, daß ich wegen ihrer Parfüms in Vivians Zimmer geschlichen bin... Aber ich bezweifle, daß du hier eine finden wirst, die das noch nicht getan hat. Wenn du aber andeuten möchtest, daß ich ihren *persönlichen* Duft habe, tja... Nur zu, schnüffel herum, wenn du willst. Du wirst ihn nicht an mir oder in meinen Gemächern finden, das versichere ich dir. Vielleicht hat die Person, die meinen Purpurschleier genommen hat, ja auch Vivians Duft genommen."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"Dein Schleier ist gestohlen worden?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, eine der Prostituierten aus dem Bordell zum Befriedigen Intellektueller Lüste, hat ihren Purpurschleier verloren. Sie hat mich nicht gebeten, ihn wiederzufinden, aber ich kann mich ja mal umhören - Vielleicht hat er sich ja irgendwo angefunden.~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"Ja... 'Ecco'. Ich kannte auch einmal eine Ecco, aber ihr Name schrieb sich anders. Aber von diesem Mädchen weiß ich nichts. Frag Dolora nach ihr. Sie hat sich mit einem ehemaligen Geliebten von Ecco angefreundet, wie ich gehört habe."~ */
  IF ~~ THEN REPLY #40664 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"Ich nehme an, das könnte ich... wenn du ein Lim-Lim hättest und ich dazu in der Laune wäre. Und ich *könnte* in der Laune dazu sein, wenn ich meinen Purpurschleier hätte... Aber ich weiß nicht, wo er hin ist. Hast du ihn vielleicht zufällig gesehen?"~ */
  IF ~~ THEN REPLY #40667 /* ~"Nein... wozu ist der gut? Ist das einfach nur ein normaler Schleier?"~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"Nein. Ich habe da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"Hab ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"Ich nehme an, das könnte ich... wenn du ein Lim-Lim hättest und ich dazu in der Laune wäre. Und ich *könnte* in der Laune dazu sein, wenn ich meinen Purpurschleier hätte."~ */
  IF ~~ THEN REPLY #40671 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"Ich nehme an, das könnte ich... warum? Hast du zufällig ein Lim-Lim bei dir?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"Ja."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"Nein, im Moment nicht."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"Ach, weißt du, vergiß es. Ich hätte da eine Frage."~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"Vergiß, daß ich das gefragt habe, Marissa... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"Dann gib es mir her..." Marissa nimmt das glückliche kleine Wesen aus deinen Händen... Es zirpt glücklich - 'Piyo! Piyo!' - ohne zu ahnen, was ihm bevorsteht. ~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~Mit einem unheimlichen Blitz kränklichen roten Lichts kommt das fröhliche Zirpen des Lim-Lims zu einem abrupten und beunruhigenden Ende. Marissa legt dir das Lim-Lim - jetzt ein Ding aus kaltem und schwerem Stein - in die Hände.~ */
  IF ~~ THEN REPLY #40680 /* ~"Danke, Marissa. Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"Ich danke dir, Marissa. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"Na, dann ist es ohnehin sinnlos." Sie seufzt laut. "Ich bin nicht ganz sicher, warum du mich überhaupt damit belästigt hast."~ */
  IF ~~ THEN REPLY #40683 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
