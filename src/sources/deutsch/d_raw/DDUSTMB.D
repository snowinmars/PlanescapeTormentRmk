// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2324 /* ~Du siehst einen ernsten, blassen Mann in einer schwarzen Robe. Er scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #2330 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2331 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2325 /* ~Du siehst einen ernsten, blassen Staubmenschen in einer schwarzen Robe. Er scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #2332 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2333 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2326 /* ~Er dreht sich langsam zu dir um. "Ja?"~ */
  IF ~~ THEN REPLY #2334 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #2335 /* ~"Nichts, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2327 /* ~Er hüllt die Arme in seine Robe und wartet.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2336 /* ~"Weißt du, wo ich jemanden namens Pharod finden kann?"~ */ JOURNAL #66588 /* ~Einer der Staubmenschen hat mir gesagt, wenn ich Pharod suche, sollte ich mit jemandem namens 'Emoric' in der Bar Zum Staubfänger sprechen, die sich südwestlich vom Eingangstor zur Leichenhalle befindet.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2337 /* ~"Ich suche nach einem verlorengegangenen Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #2338 /* ~"Nichts, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2328 /* ~Er schüttelt den Kopf.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2339 /* ~"Ich suche nach einem verlorengegangenen Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #2340 /* ~"Trotzdem vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2329 /* ~Er schüttelt den Kopf.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2341 /* ~"Weißt du, wo ich jemanden namens Pharod finden kann?"~ */ JOURNAL #66588 /* ~Einer der Staubmenschen hat mir gesagt, wenn ich Pharod suche, sollte ich mit jemandem namens 'Emoric' in der Bar Zum Staubfänger sprechen, die sich südwestlich vom Eingangstor zur Leichenhalle befindet.~ */ GOTO 6
  IF ~~ THEN REPLY #2342 /* ~"Trotzdem vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66581 /* ~"Pharod ist ein Sammler." Der Mann mustert dich einen Moment lang. "Wenn du mehr über ihn wissen willst, ich hab gehört, daß Eingeweihter Emoric in der Bar "Zum Staubfänger" ihn auch sucht. Vielleicht kann er dir helfen."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66582 /* ~"Wo befindet sich die Bar "Zum Staubfänger"?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66586 /* ~"Ich kenne diese Bar. Bevor ich dorthin gehe, habe ich aber noch ein paar Fragen an dich..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66583 /* ~"Die Bar "Zum Staubfänger"? Die befindet sich doch südwestlich von hier, stimmt's? Dann geh ich da hin."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66584 /* ~"Geh vom Eingangstor zur Leichenhalle in südwestliche Richtung. Sie liegt hinter dem Denkmal."~ */
  IF ~~ THEN REPLY #66585 /* ~"Gut. Ich müßte noch ein paar Fragen loswerden, bevor ich gehe..."~ */ GOTO 3
  IF ~~ THEN REPLY #66587 /* ~"Nun denn, dann will ich diese Bar mal aufsuchen."~ */ EXIT
END
