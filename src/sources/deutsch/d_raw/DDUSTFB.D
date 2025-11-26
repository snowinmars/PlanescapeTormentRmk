// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2305 /* ~Du siehst eine ernste, blasse Frau in einer schwarzen Robe. Sie starrt in die Ferne und scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #2306 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2307 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2308 /* ~Du siehst eine ernste, blasse Staubfrau in einer schwarzen Robe. Sie starrt in die Ferne und scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #2313 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2314 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2309 /* ~Sie dreht sich langsam zu dir um. "Ja?"~ */
  IF ~~ THEN REPLY #2315 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #2316 /* ~"Nichts, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2310 /* ~Sie hüllt die Arme in ihre Robe und wartet.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2317 /* ~"Kennst du jemanden namens Pharod?"~ */ JOURNAL #66588 /* ~Einer der Staubmenschen hat mir gesagt, wenn ich Pharod suche, sollte ich mit jemandem namens 'Emoric' in der Bar Zum Staubfänger sprechen, die sich südwestlich vom Eingangstor zur Leichenhalle befindet.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2318 /* ~"Ich suche nach einem verlorengegangenen Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #2319 /* ~"Nichts, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2311 /* ~Sie schüttelt den Kopf.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2320 /* ~"Ich suche nach einem verlorengegangenen Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #2321 /* ~"Trotzdem vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2312 /* ~Sie schüttelt den Kopf.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2322 /* ~"Weißt du, wo ich jemanden namens Pharod finden kann?"~ */ JOURNAL #66588 /* ~Einer der Staubmenschen hat mir gesagt, wenn ich Pharod suche, sollte ich mit jemandem namens 'Emoric' in der Bar Zum Staubfänger sprechen, die sich südwestlich vom Eingangstor zur Leichenhalle befindet.~ */ GOTO 6
  IF ~~ THEN REPLY #2323 /* ~"Trotzdem vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66589 /* ~"Pharod ist ein Sammler." Die Frau mustert dich einen Moment lang. "Wenn du mehr über ihn wissen willst, ich hab gehört, daß Eingeweihter Emoric in der Bar "Zum Staubfänger" ihn auch sucht. Vielleicht kann er dir helfen."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66591 /* ~"Wo befindet sich die Bar "Zum Staubfänger"?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66592 /* ~"Ich kenne diese Bar. Bevor ich dorthin gehe, habe ich aber noch ein paar Fragen an dich..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66593 /* ~"Die Bar "Zum Staubfänger"? Die befindet sich doch südwestlich von hier, stimmt's? Dann geh ich da hin."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66590 /* ~"Geh vom Eingangstor zur Leichenhalle in südwestliche Richtung. Sie liegt hinter dem Denkmal."~ */
  IF ~~ THEN REPLY #66594 /* ~"Gut. Ich müßte noch ein paar Fragen loswerden, bevor ich gehe..."~ */ GOTO 3
  IF ~~ THEN REPLY #66595 /* ~"Nun denn, dann will ich diese Bar mal aufsuchen."~ */ EXIT
END
