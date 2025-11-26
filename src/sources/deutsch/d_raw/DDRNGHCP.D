// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~Von diesem weiblichen Ghul geht eine höhere Autorität aus als von denen um sie herum. Ihre Augen scheinen auch klarer und weniger wild. "Kann... ich... dir helfen, Fleisch?"~ */
  IF ~~ THEN REPLY #38516 /* ~"Wer bist du? Und was machst du hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"Was ist dies für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"Ich? Ich bin... Alaina. Diess hier sind meine Ghulss. Wir ssind Späher und Jäger. Wir ssuchen nach neuen Gebieten... wir suchen mehr *Nahrung*. Und jetzzzt, wo ich deine Fragen beantwortet habe... wasss machst DU denn hier?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"Ich wandere nur so herum."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"Ich weiß nicht."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"Eine Bronze... kugel? Wir haben... sso etwass... nicht gefunden. Ssuch in den fernen Aussläufern diesess Gebietess, und du wirsst vielleicht finden, wass du suchsst."~ */
  IF ~~ THEN REPLY #38520 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"Ich werde... dir Antwort geben sso gut ich kann."~ */
  IF ~~ THEN REPLY #38522 /* ~"Wer bist du? Und was machst du hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"Was kannst du mir über diesen Ort erzählen?~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"Diess ssind die Ertrunkenen Nationen. Diess isst einer unsserer Jagdgründe. Diess... isst wo wir, die Jäger, herrschschen. Wass willsst du hier?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"Ich wandere nur so herum."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"Keine Ahnung."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"Wir haben die Quelle dess Wassssers hier nicht gefunden, aber im Ossten wirkt ess am feuchtessten. Ssuche dort, und du wirsst vielleicht fündig."~ */
  IF ~~ THEN REPLY #38528 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"Überall um unss herum gibt ess Gewölbe, und wir schschützzen ihre Bewohner... Ich werde nichtss ssagen."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"Es ist sehr wichtig für mich, daß ich sie finde."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"Es ist sehr wichtig, daß ich sie finde."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"Nun gut. Dann beantworte mir doch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"Also gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~Die Ghulanführerin sieht dich kühl und abschätzend an. "Sssuch im Ssüden und Ossten. Sstör jedoch nicht die anderen Bewohner diesser Gewölbe, oder du wirsst *leiden*."~ */
  IF ~~ THEN REPLY #38534 /* ~"Vielen Dank. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~Der Ghulhauptmann sieht dich wütend an. "Ess isst mir *EGAL*, wie wichtig dir dass ist, Fleischschwesen. Ich werde *NICHTSS* ssagen."~ */
  IF ~~ THEN REPLY #38538 /* ~"Ist gut. Dann beantworte mir doch einige andere Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"Sag es mir, oder du stirbst."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"Jedenfalls danke, daß du dir die Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"Diess... isst kein guter Ort, um nur herumzzzuwandern. Viel Gefahr gibt esss hier. Wir haben die Ssicherheitssgrenzzen mit Totemss markiert... geh nicht darüber hinauss, und du ssolltesst ssicher ssein. Ssieh dich vor den Bewohnern hier vor - ssie ssind äußßersst gefährlich und schschwärmen in immer größßeren Zahlen auss."~ */
  IF ~~ THEN REPLY #38545 /* ~"Was sind denn das für Bewohner?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"Vielen Dank. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"Diesser Ort wurde von... Trocopotocas überrannt, weißßen, gehörnten Kreaturen mit grenzzenlossem Appetit und einem Hang zzur Kriminalität. Und dann lassssen sich auch viele Vargouillennn hier nieder, ihre Zzahl nimmt ssständig zu durch diesse Verrückten, die ssich sso weit in die Katakomben hineinwagen."~ */
  IF ~~ THEN REPLY #38547 /* ~"Ich verstehe... Kannst du mir einige andere Fragen beantworten?"~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"Danke für die Tips. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"Du weißßt nicht? Weißßt nicht? Vielleicht... ssolltesst du besssser gehen. Diesser Ort isst... gefährlich... für Fleischwesen."~ */
  IF ~~ THEN REPLY #38553 /* ~"Gefährlich? Inwiefern?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"Du bist alsso wiedergekommen, wass? Wass willsst du denn?"~ */
  IF ~~ THEN REPLY #38568 /* ~"Ich hätte gern Antworten auf einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"Ich hätte gern Antworten auf einige Fragen..."~ */ EXIT
END
