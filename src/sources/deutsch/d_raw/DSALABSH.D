// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSALABSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSALABSH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48444 /* ~Der in schwere purpurrote Gewänder gekleidete große dünne Mann hat scharfe, vornehme Züge. Er verbeugt sich wie ein König, als du dich ihm näherst. "Ich bin Salabesh. Man nennt mich auch Salabesh, den Onyx. Ich bin der zukünftige Zauberlehrer der Städtischen Festhalle. Du willst etwas von mir, nehme ich an...?"~ */
  IF ~~ THEN REPLY #48445 /* ~"Nein,... bloß ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #48446 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #48447 /* ~"Worüber, hmmm? Nicht über den Bezirk und dergleichen, will ich hoffen... Es gibt genügend einfache Leute, die solche Fragen beantworten können, und ich würde dich sofort zu einem von ihnen schicken."~ */
  IF ~~ THEN REPLY #48448 /* ~"Warum nennt man dich 'den Onyx'?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48449 /* ~"Was hast du mit 'zukünftiger Zauberlehrer der Festhalle' gemeint?"~ */ JOURNAL #66221 /* ~Ich habe vor der Städtischen Festhalle einen Mann namens Salabesh getroffen. Er hat behauptet, daß er sich um die prestigeträchtige Position des 'Magierlehrers der Festhalle' bewirbt, daß er aber irgendwie beweisen muß, daß er ein besserer Lehrer als der derzeitige Lehrer ist.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67858 /* ~"Hast du schon deinen Antrag gestellt, zum Zauberlehrer der Festhalle ernannt zu werden?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67859 /* ~"Also... was ist aus deinen Plänen geworden, Zauberlehrer der Festhalle zu werden?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48450 /* ~"Du bist ein Meister der Flüche? Vielleicht solltest du - *hicks!* - mir helfen..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66247 /* ~"Kennst du einen verfluchten Mann namens Übelwind?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Man hat mir gesagt, daß Jumble Mördersinn Übelwind, den verfluchten, stinkenden Mann, den ich im Stock getroffen habe, zu dem gemacht hat, was er jetzt ist. Ich habe gehört, daß ich ihn in der Städtischen Festhalle finden kann.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48451 /* ~"Bist du der Magier, der den Pantomimen unten auf der Straße verflucht hat?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 10
  IF ~~ THEN REPLY #48452 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.1 5.1 6.2 7.1 8.2 10.1 11.1 12.0 14.1 15.1 16.0 17.0 18.0
  SAY #48453 /* ~Salabesh grinst. "Das überrascht mich nicht."~ */
  IF ~~ THEN REPLY #48454 /* ~"Warum nennt man dich 'den Onyx'?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48455 /* ~"Was hast du mit 'zukünftiger Zauberlehrer der Festhalle' gemeint?"~ */ JOURNAL #66221 /* ~Ich habe vor der Städtischen Festhalle einen Mann namens Salabesh getroffen. Er hat behauptet, daß er sich um die prestigeträchtige Position des 'Magierlehrers der Festhalle' bewirbt, daß er aber irgendwie beweisen muß, daß er ein besserer Lehrer als der derzeitige Lehrer ist.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67860 /* ~"Hast du schon deinen Antrag gestellt, zum Zauberlehrer der Festhalle ernannt zu werden?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67861 /* ~"Also... was ist aus deinen Plänen geworden, Zauberlehrer der Festhalle zu werden?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48456 /* ~"Du bist ein Meister der Flüche? Vielleicht solltest du - *hicks!* - mir helfen..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66249 /* ~"Kennst du einen verfluchten Mann namens Übelwind?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Man hat mir gesagt, daß Jumble Mördersinn Übelwind, den verfluchten, stinkenden Mann, den ich im Stock getroffen habe, zu dem gemacht hat, was er jetzt ist. Ich habe gehört, daß ich ihn in der Städtischen Festhalle finden kann.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48457 /* ~"Bist du der Magier, der den Pantomimen unten auf der Straße verflucht hat?"~ */ GOTO 10
  IF ~~ THEN REPLY #48458 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48459 /* ~"Das ist eine lange Geschichte. Kurz gesagt, in meiner Jugend hat man mich einst Salabesh den Goldenen genannt, denn es hieß, daß ich ein Herz aus Gold hätte... klein, hart und gelb. Nun, ich hab den Narren verflucht, der *damit* angefangen hat, so daß er nur noch mit seinem Hintern sprechen und durch seinen Mund scheißen konnte. Die Bezeichnung 'Onyx' - geht in die gleiche Richtung wie 'der Goldene,' obwohl zugegebenermaßen etwas weniger brilliant - folgte dann bald. Jedenfalls bin ich jetzt ein viel liebenswürdigerer Zeitgenosse... Ich neige viel seltener dazu, andere mit Flüchen zu belegen und dergleichen. Ich bin mir gar nicht sicher, ob ich den Namen noch länger verdiene."~ */
  IF ~  GlobalLT("Know_Salabesh","AR0600",2)
~ THEN REPLY #66250 /* ~"Du hast ihn *warum* verflucht?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 14
  IF ~~ THEN REPLY #48460 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48461 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4 2.4 10.0 14.0
  SAY #48462 /* ~"Dir helfen?" Salabesh grinst höhnisch. "Unwahrscheinlich." Ehe du antworten kannst, seufzt er und schüttelt den Kopf. "Also... *vielleicht* könnte ich. Was hast du denn auf dem Herzen?"~ */
  IF ~~ THEN REPLY #48463 /* ~"Jumble Mördersinn hat mich verflucht."~ */ GOTO 5
  IF ~~ THEN REPLY #48464 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48465 /* ~"Jumble Mördersinn? Hah! Das stotternde Mondkalb könnte es *nie* mit mir aufnehmen! Oh, was für Auseinandersetzungen wir schon hatten..." Salabesh runzelt die Stirn. "Aber das hab ich jetzt alles hinter mir. Das ist nicht mehr mein Ding, verstehst du? Ich weiß wirklich nicht, was ich für dich tun könnte,... und außerdem ist es ja *sein* Fluch. Keiner von der Sorte, mit denen man zum Beispiel Gegenstände belegt und die man mit einfacher Magie wieder entschärfen kann... *Er* muß ihn entschärfen, und zwar bewußt."~ */
  IF ~~ THEN REPLY #48466 /* ~"Nun, könntest du mir dann vielleicht einen Fluch beibringen, den ich auf ihn anwenden könnte?"~ */ GOTO 6
  IF ~~ THEN REPLY #48467 /* ~"Dann hätte ich da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48468 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48469 /* ~"Hmm. Nun... Das tue ich normalerweise nicht. Ich behalte Flüche für mich, weißt du. Und außerdem kann es schon sehr, sehr lange dauern, auch nur einen einzigen Fluch zu lernen - mehr Zeit, als ich gerne dafür erübrigen würde."~ */
  IF ~~ THEN REPLY #48470 /* ~"Ich würde dich für deine Mühe bezahlen..."~ */ GOTO 7
  IF ~~ THEN REPLY #48471 /* ~"Vielleicht hast du bloß Angst, daß deine Flüche nicht mehr gut genug sind, um mit seinen mithalten zu können..."~ */ GOTO 8
  IF ~~ THEN REPLY #48472 /* ~"Dann hätte ich da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48473 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48474 /* ~"Nein, nein... Ich bin einfach nicht gewillt, es zu tun." Salabesh schaut dir tief in die Augen. "Und jetzt bitte Themawechsel, Junge, bevor du anfängst, mich zu nerven."~ */
  IF ~~ THEN REPLY #48475 /* ~"Vielleicht hast du bloß Angst, daß deine Flüche nicht mehr gut genug sind, um mit seinen mithalten zu können..."~ */ GOTO 8
  IF ~~ THEN REPLY #48476 /* ~"In Ordnung. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48477 /* ~"Also gut Themawechsel, Salabesh. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48478 /* ~"*Was*?! Also, so was Lächerliches hab ich noch nie... Jetzt paß mal auf, du knöchriger Narbensack! Salabesh, der Onyx, ist der *MEISTER* der Flüche, und es gibt keinen Besseren! Na, ich bräuchte dich nur einen einzigen Spruch lehren, und der reicht aus, um die Fluchkunst dieses Trottels völlig wirkungslos zu machen!"~ */
  IF ~~ THEN REPLY #48479 /* ~"Dann bring ihn mir bei..."~ */ GOTO 7
  IF ~~ THEN REPLY #48480 /* ~Schürz deine Lippen, und schau skeptisch.~ */ DO ~SetGlobal("Know_Salabesh_Curse","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #48481 /* ~"Da bin ich mir sicher. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48484 /* ~"Schon gut, schon gut... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #48485 /* ~"Das reicht! Jetzt *hast* du mich soweit!" Salabesh gibt eine kurze Reihe unverständlicher Silben von sich,... Worte mit Macht, die du dir gut einprägst, um sie später gegen Jumble einsetzen zu können. "So! Schau mal, wie ihm *das* bekommt, und jetzt erzähl mir nochmal, daß Salabesh, der Onyx nicht *der* Meister der Flüche ist!"~ */
  IF ~~ THEN REPLY #48486 /* ~"Danke, Salabesh. Das mache ich. Leb wohl."~ */ JOURNAL #48487 /* ~Ich habe einen kurzen Fluch von Salabesh, dem Onyx, gelernt, den ich gegen Jumble Mördersinn einsetzen können sollte.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.6 2.6
  SAY #48488 /* ~"Oh..." Salabesh's Augen verengen sich, und er kräuselt seine Lippen. "*Der*! Ja, den hab ich verflucht, und er hat es auch verdient! Sich über einen vorbeigehenden Magier lustig zu machen... Also, man muß schon ein Narr sein, um so was zu tun. Er hat regelrecht darum *gebeten*! Außerdem *bin* ich Salabesh, der Onyx, Meister der Flüche. Keine Sorge - der Fluch ist harmlos. Verbessert vielleicht noch seine dürftige kleine Darbietung... Der wird schon wieder."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #48489 /* ~"Meister der Flüche? Vielleicht könntest du mir - *hicks* - dann helfen..."~ */ GOTO 4
  IF ~~ THEN REPLY #48490 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48491 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1
  SAY #48492 /* ~"Es hat schon viel Prestige, die Stellung eines offiziellen Lehrers in einem der Ausbildungsräume der Festhalle zu bekleiden. Ich habe die Absicht, eines Tages den Posten des Zauberlehrers zu übernehmen, aber der Titel wird zur Zeit von Lady Dornenkamm geführt. Wenn ich nur irgendwie beweisen könnte, daß ich ein besserer Lehrer bin..."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",2)
~ THEN REPLY #48493 /* ~"Du könntest immerhin anführen, daß sie süchtig nach Sinnessteinen ist. Sie scheint gar nicht mehr unterrichten zu wollen..."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",3)
~ JOURNAL #48496 /* ~Ich habe Salabesh gesagt, daß Lady Dornenkamm ihre gesamte Zeit im Sinnsorium verbringe und nicht länger unterrichten wolle. Er war sehr daran interessiert, ihre Position selbst zu übernehmen, aber ich zweifle an seinen Qualitäten als Lehrer. Vielleicht sollte ich Lady Dornenkamm davon in Kenntnis setzen und ihr eine letzte Gelegenheit geben, Prioritäten zu setzen.~ */ GOTO 12
  IF ~~ THEN REPLY #48494 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48495 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #48497 /* ~Salabeshs feste Lippen formen sich zu einem hämischen Grinsen. "*Tatsächlich*? Und sie hat nicht vor, noch länger zu unterrichten? Ausgezeichnet..." Eifrig reibt er seine Hände aneinander. "Dann werde ich in Kürze beantragen, mich zum neuen Zauberlehrer zu ernennen."~ */
  IF ~~ THEN REPLY #48498 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #48499 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #48500 /* ~Du triffst auf Salabesh, den Onyx. Er macht eine kurze, aber anmutige halbe Verbeugung. "Hmm. Du schon wieder..."~ */
  IF ~~ THEN REPLY #48501 /* ~"Ja. Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #48502 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0
  SAY #66236 /* ~"Oh, ja... Du hast schon richtig gehört." Salabesh seufzt glücklich und kichert in sich hinein. "Deshalb werde ich Meister der Flüche genannt, verstehst du."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66237 /* ~"Meister der Flüche? Vielleicht könntest du mir - *hicks* - dann helfen..."~ */ GOTO 4
  IF ~~ THEN REPLY #66238 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #66239 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.5
  SAY #66240 /* ~"Übel...? Hmmm." Salabeshs Augenbrauen schnellen plötzlich hoch. "Oh, ja... Jumble Mördersinn hat diesen Mann verflucht, wenn ich mich recht erinnere. Warum? Willst du den Fluch rückgängig machen? Viel Glück dabei... Das kann nur Jumble tun."~ */
  IF ~  Global("Jumble","GLOBAL",0)
~ THEN REPLY #66241 /* ~"Wo finde ich diesen Jumble Mördersinn?"~ */ GOTO 16
  IF ~~ THEN REPLY #66243 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #66244 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66242 /* ~"In der Städtischen Festhalle, nehme ich an. Ein kleingewachsener, beleibter Kerl mit einem spöttischen Lächeln. Redet nie. Also wirst du's ganz schön schwer haben, etwas aus ihm herauszubekommen."~ */
  IF ~~ THEN REPLY #66245 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #66246 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2 2.2
  SAY #67852 /* ~Salabeshs Ausdruck verfinstert sich. "Nein... Ich habe neulich schon den Vorsitzenden des Hohen Rats der Magier der Festhalle verärgert, und ich sollte besser ein Weilchen warten, bevor ich mein Anliegen vortrage. Außerdem glaube ich nicht, daß 'Lady' Dornenkamm so bald ihr Sinnsorium verlassen wird..." Er lacht böse in sich hinein.~ */
  IF ~~ THEN REPLY #67853 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #67854 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3 2.3
  SAY #67855 /* ~"Verdammt! Dieses hohle, hirnrissige Kind von einer Frau... Dornenkamm war schließlich bereit, ihr Sinnsorium zu verlassen und ihre Lehren wieder aufzunehmen, also ist meine Chance vorbei. Ich will nicht mehr davon reden!" Salabesh murmelt weiter böse Flüche in sich hinein.~ */
  IF ~~ THEN REPLY #67856 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #67857 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
