// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~Von diesem weiblichen Ghul geht eine höhere Autorität aus als von denen um sie herum. Ihre Augen scheinen auch klarer und weniger wild. "Kann... ich... dir helfen, Fleisch?"~ */
  IF ~~ THEN REPLY #38438 /* ~"Wer bist du? Und was machst du hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"Wo bin ich hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"Ich? Ich bin... Alaina. Diess hier sind meine Ghulss. Wir ssind Späher und Jäger. Wir ssuchen nach neuen Gebieten... wir suchen mehr *Nahrung*. Und jetzzzt, wo ich deine Fragen beantwortet habe... wasss machst DU denn hier?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"Ich wandere nur so herum."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"Ich weiß nicht."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"Diess ssind die Ertrunkenen Nationen. Diess isst einer unsserer Jagdgründe. Diess... isst wo wir, die Jäger, herrschschen. Wass willsst du hier?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"Ich wandere nur so herum."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"Ich weiß nicht."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"Eine Bronze... kugel? Wir haben... sso etwass... nicht gefunden. Ssuch in den fernen Aussläufern diesess Gebietess, und du wirsst vielleicht finden, wass du suchsst."~ */
  IF ~~ THEN REPLY #38454 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"Wir haben die Quelle dess Wassssers hier nicht gefunden, aber im Ossten wirkt ess am feuchtessten. Ssuche dort, und du wirsst vielleicht fündig."~ */
  IF ~~ THEN REPLY #38457 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"Überall um unss herum gibt ess Gewölbe, und wir schschützzen ihre Bewohner... Ich werde nichtss ssagen."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"Es ist sehr wichtig für mich, daß ich sie finde."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"Es ist sehr wichtig, daß ich sie finde."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"Nun gut. Dann beantworte mir doch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"Also gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"Diess... isst kein guter Ort, um nur herumzzzuwandern. Viel Gefahr gibt esss hier. Wir haben die Ssicherheitssgrenzzen mit Totemss markiert... geh nicht darüber hinauss, und du ssolltesst ssicher ssein. Ssieh dich vor den Bewohnern hier vor - ssie ssind äußßersst gefährlich und schschwärmen in immer größßeren Zahlen auss."~ */
  IF ~~ THEN REPLY #38465 /* ~"Was sind denn das für Bewohner?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"Du weißßt nicht? Weißßt nicht? Vielleicht... ssolltesst du besssser gehen. Diesser Ort isst... gefährlich... für Fleischwesen."~ */
  IF ~~ THEN REPLY #38469 /* ~"Gefährlich? Inwiefern?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"Ich werde... dir Antwort geben sso gut ich kann."~ */
  IF ~~ THEN REPLY #38473 /* ~"Wer bist du? Und was machst du hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"Was kannst du mir über diesen Ort erzählen?~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"Ich suche eine Bronzekugel."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"Ich suche eine Karaffe mit Wasser."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"Ich suche eine Krypta voller Fallen."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~Die Ghulanführerin sieht dich kühl und abschätzend an. "Sssuch im Ssüden und Ossten. Sstör jedoch nicht die anderen Bewohner diesser Gewölbe, oder du wirsst *leiden*."~ */
  IF ~~ THEN REPLY #38480 /* ~"Vielen Dank. Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~Der Ghulhauptmann sieht dich wütend an. "Ess isst mir *EGAL*, wie wichtig dir dass ist, Fleischschwesen. Ich werde *NICHTSS* ssagen."~ */
  IF ~~ THEN REPLY #38483 /* ~"Ist gut. Dann beantworte mir doch einige andere Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"Sag es mir, oder du stirbst."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"Jedenfalls danke, daß du dir die Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"Diesser Ort wurde von... Trocopotocas überrannt, weißßen, gehörnten Kreaturen mit grenzzenlossem Appetit und einem Hang zzur Kriminalität. Und dann lassssen sich auch viele Vargouillennn hier nieder, ihre Zzahl nimmt ssständig zu durch diesse Verrückten, die ssich sso weit in die Katakomben hineinwagen."~ */
  IF ~~ THEN REPLY #38487 /* ~"Ich verstehe... Kannst du mir einige andere Fragen beantworten?"~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"Danke für die Tips. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"Du bist alsso wiedergekommen, wass? Wass willsst du denn?"~ */
  IF ~~ THEN REPLY #38490 /* ~"Ich hätte gern Antworten auf einige Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"Nichts. Leb wohl."~ */ EXIT
END
