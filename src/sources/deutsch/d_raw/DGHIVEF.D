// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~Die Augen der Frau werden vor Angst immer größer, als du dich ihr näherst. "Geh weg! Weg! Laß mich in Ruhe, oder ich fang an zu schreien, ich schwör's!"~ */
  IF ~~ THEN REPLY #33305 /* ~Laß sie los.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~Als du dich der Frau näherst, schaut sie sich nach allen Seiten um, als suchte sie etwas, hinter dem sie sich verstecken könnte. "Ich... ich weiß gar nichts, Schleifer. Bitte laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #33307 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"Geh und nerv jemand anders, du Schlucker! Ich habe keine Zeit für so was wie dich..."~ */
  IF ~~ THEN REPLY #33309 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~Die Frau weigert sich standhaft, auch nur ein einziges Wort mit dir zu sprechen.~ */
  IF ~~ THEN REPLY #33311 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~Als die Frau merkt, daß du auf sie zukommst, wird sie bleich und fängt an, nach ihrem Dolch zu tasten. "Ich will nichts mit dir zu tun haben! Geh weg!"~ */
  IF ~~ THEN REPLY #33313 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"Bist du der Dussel, der Pharod gesucht hat! Und, hast du ihn gefunden? Falls nicht, versuch's doch mal nördlich von hier, auf dem Lumpensammler-Platz."
~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"Wenn du irgendwann mal in die Bar 'Zum Staubfänger' gehst, Dussel, wundere dich nicht, wenn jemand von dir verlangt, den Kellner zu spielen!" Die Frau prustet los und fängt an, zu kichern.~ */
  IF ~~ THEN REPLY #33317 /* ~Geh.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~Die Frau beißt kleine Häppchen von etwas ab, das aussieht wie eine Ratte am Stiel. Als sie bemerkt, daß du sie beobachtest, kneift sie mißtrauisch die Augen zusammen. "Geh zu Creeden, wenn du eine haben willst. Und gaff mich nicht so an! Creeden steht draußen vorm Büro für Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #33319 /* ~Geh.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"Wenn du irgendwo heulende Verrückte rumrennen siehst, dann halt' dich von ihnen fern! Diese Ausgehungerten Bellenden Hunde jagen mir echt Angst ein..."~ */
  IF ~~ THEN REPLY #33321 /* ~Geh.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"Ich kann dir nichts sagen, was dir nützen könnte... also laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #33323 /* ~Geh.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~Die Frau zieht ihre Augenbrauen hoch, als du dich ihr näherst. "Ich laß mich nicht mit Fremden ein, Dussel... und du solltest das besser auch so halten.  Sieh zu, daß du dich mal eine Weile aus allem Ärger raushältst, ja? Leb wohl."~ */
  IF ~~ THEN REPLY #33325 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~Die Frau wirft dir einen finsteren Blick zu, als du auf sie zugehst. "Ich habe weder Zeit noch Lust, mit Fremden im Stock zu reden, Dussel... ist nämlich gefährlich. Leb wohl."~ */
  IF ~~ THEN REPLY #33327 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~Die Frau seufzt kläglich. "Es gibt nichts Schlimmeres als im Stock zu leben. Du kannst schon im Totenbuch landen, nur weil du so'n Dussel von der Seite angeguckt hast."~ */
  IF ~~ THEN REPLY #33329 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"Du siehst aus, als ob du'ne Runde Schlaf in der Spelunke gebrauchen könntest, Schleifer. Sie ist mitten drin, in diesem Teil vom Stock."~ */
  IF ~~ THEN REPLY #33331 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"Wenn du irgendwann mal in die Bar 'Zum Staubfänger' gehst, Dussel, wundere dich nicht, wenn jemand von dir verlangt, den Kellner zu spielen!" Die Frau prustet los und fängt an, zu kichern.
~ */
  IF ~~ THEN REPLY #33333 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~Die Frau beißt kleine Häppchen von etwas ab, das aussieht wie eine Ratte am Stiel. Als sie bemerkt, daß du sie beobachtest, kneift sie mißtrauisch die Augen zusammen. "Geh zu Creeden, wenn du eine haben willst. Und gaff mich nicht so an! Creeden steht draußen vorm Büro für Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #33335 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"Wenn du irgendwo heulende Verrückte rumrennen siehst, dann halt' dich von ihnen fern! Diese Ausgehungerten Bellenden Hunde jagen mir echt Angst ein..."~ */
  IF ~~ THEN REPLY #33337 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"Bist du der Dussel, der Pharod gesucht hat! Und, hast du ihn gefunden? Falls nicht, versuch's doch mal nördlich von hier, auf dem Lumpensammler-Platz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"Geh nicht zur ausgebrannten Gasse, die südwestlich von hier ist, außer natürlich, du bist scharf auf Ärger."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"Da bin ich schon gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Geh.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"Hier gibt's 'nen armen Tropf namens Übelwind... solange du den Atem anhältst und ihm ein paar Kupfermünzen gibst, wird er dir ein paar nette Geschichtchen erzählen."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"Warst du schon in der Bar 'Zur Schwelenden Leiche'? Nette Taverne, aber den verkokelnden Mann finde ich ein bißchen anstößig."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"Er ist jetzt nicht mehr dort. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"Ja, ich bin da schon mal gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Geh.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"Grüß dich, Vollblut." Die Frau schenkt dir ein scheues Lächeln. "Mm... ich wollte vielleicht nachher einen Fusel trinken gehen... hättest du Lust, mitzukommen?"~ */
  IF ~~ THEN REPLY #33354 /* ~"Vielleicht ein anderes Mal... im Moment habe ich leider zu viel zu tun."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"Schreckliche Vorstellung, hier meine Kinder großziehen zu müssen. Vielleicht kann meine Familie diesen furchtbaren Ort ja irgendwann mal verlassen."~ */
  IF ~~ THEN REPLY #33356 /* ~Geh.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~Die Frau lächelt dich an. "Nein, ich kann dir nicht helfen... aber ich wünschte mir, ich könnt's."~ */
  IF ~~ THEN REPLY #33358 /* ~"Trotzdem vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"Du siehst aus, als ob du'ne Runde Schlaf in der Spelunke gebrauchen könntest, Schleifer. Sie ist mitten drin, in diesem Teil vom Stock."~ */
  IF ~~ THEN REPLY #33360 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"Bist du der Dussel, der Pharod gesucht hat! Und, hast du ihn gefunden? Falls nicht, versuch's doch mal nördlich von hier, auf dem Lumpensammler-Platz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"Ich bin hier letztens mal einem tätowierten Mann begegnet. Porphiron hieß er. Er hat gesagt, er ist 'ne Art Mönch und ein Krieger... aber er kämpft nicht."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"Wenn du dich hier zurechtfinden willst, Schleifer, dann richte dich nach dem Posten da draußen vor der Bar 'Zum Staubfänger'."~ */
  IF ~~ THEN REPLY #33368 /* ~Geh.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"Geh nicht zur ausgebrannten Gasse, die südwestlich von hier ist, außer natürlich, du bist scharf auf Ärger."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"Da bin ich schon gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Geh.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"Viele Leute kommen hierher, um ihren verstorbenen Verwandten und Bekannten die letzte Ehre zu erweisen... am Staubmenschen-Denkmal treibt sich ein Staubmensch rum, der den Namen der/des Toten für dich auf das Denkmal setzen und der dir auch sagen kann, ob eine bestimmte Person gestorben ist."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"Das stimmt. Der Mann heißt 'Tod-der-Namen'. Leb wohl."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Geh.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"Die Staubmänner gehen eigentlich nie in die Tavernen im Stock... außer in die Bar 'Zum Staubfänger'. Und da gehen eigentlich *nur* die Toten hin."~ */
  IF ~~ THEN REPLY #33376 /* ~Geh.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~Die Frau beißt kleine Häppchen von etwas ab, das aussieht wie eine Ratte am Stiel. Als sie bemerkt, daß du sie beobachtest, kneift sie mißtrauisch die Augen zusammen. "Geh zu Creeden, wenn du eine haben willst. Und gaff mich nicht so an! Creeden steht draußen vorm Büro für Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #33378 /* ~Geh.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"Hier gibt's 'nen armen Tropf namens Übelwind... solange du den Atem anhältst und ihm ein paar Kupfermünzen gibst, wird er dir ein paar nette Geschichtchen erzählen."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"Hast du ein bißchen Zeit auf dem Markt verbracht, Schleifer? Da kriegt man wirklich alles, was man so braucht."~ */
  IF ~~ THEN REPLY #33383 /* ~Geh.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"Ich hoffe inständig, das sich Prophyra irrt... falls du die Prophezeiungen von der Frau nicht kennst, dann geh auf den Markt. Dort schreit sie sie normalerweise raus..."~ */
  IF ~~ THEN REPLY #33386 /* ~Geh.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"Geh nicht zur ausgebrannten Gasse, die nordöstlich von hier ist, außer natürlich, du bist scharf auf Ärger."
~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"Da bin ich schon gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Geh.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"Wenn du irgendwo heulende Verrückte rumrennen siehst, dann halt' dich von ihnen fern! Diese Ausgehungerten Bellenden Hunde jagen mir echt Angst ein..."~ */
  IF ~~ THEN REPLY #33392 /* ~Geh.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"Warst du schon in der Bar 'Zur Schwelenden Leiche'? Nette Taverne, aber den verkokelnden Mann finde ich ein bißchen anstößig."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"Er ist jetzt nicht mehr dort. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"Ja, ich bin da schon mal gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Geh.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"Letztens bin ich einem Mann namens 'Der um die Bäume trauert' begegnet... er scheint es sich in den Kopf gesetzt zu haben, Leute zu mobilisieren, die sich um die Bäume kümmern. Vielleicht sollte er sich lieber darauf konzentrieren, sich um die Leute hier zu kümmern."~ */
  IF ~~ THEN REPLY #33396 /* ~Geh.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"Die einzige Hilfe, die ich dir geben kann, ist, dich vor den Dieben hier zu warnen, Schleifer... soll viele Taschendiebe in diesem Teil des Stocks geben."~ */
  IF ~~ THEN REPLY #33398 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"Letztens habe ich ein armes übergeschnapptes Mädel schreiend durch die Gegend rennen sehen. Ein Wunder, daß sie nicht verhungert ist oder getötet wurde, so hohlköpfig wie die ist."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"Ja... sie müßte jetzt bald zu Hause oder zumindest auf dem Weg dorthin sein. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"Ich bin ihr begegnet. Sie heißt Ingress. Leb wohl."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Geh.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"Halt' dich von Gaoha auf dem Markt fern! Mein Mann verliert jedesmal sein Klimper, wenn er mit diesem dreimal verdammten Gith wettet!"~ */
  IF ~~ THEN REPLY #33404 /* ~Geh.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"Was für merkwürdige Tätowierungen! Manche sehen ein bißchen wie die aus, die sie in dem Laden hier im Stock machen. Das ist der Laden von Dabus. Kennst du den?"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"Ja, den kenne ich. Er heißt Fell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"Ja, den Laden kenne ich."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"Nein, da bin ich noch nie gewesen."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"Dame, schlag mich mit Blindheit! Ich hab' dich schon mal gesehen, Schleifer, aber ich hätte nie gedacht, daß ich dich noch mal wiedersehen würde! Sigil ist doch wirklich ein Dorf."~ */
  IF ~~ THEN REPLY #33411 /* ~"Du kennst mich?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"Vielleicht ist dem so. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~Sie lächelt nervös. "Dich kennen? Nein, aber wie ich schon sagte, ich habe dich schon mal gesehen. Letztes Jahr... spät in der Nacht, um Tiefstand... ich war auf der Suche nach meiner Schwester, da kamst du wie ein Verrückter angerannt. Bist gestolpert und hast das hier verloren, genau vor meinen Füßen, und dann bist du weitergerannt. Ich hab's als Glücksbringer behalten, wenn das Schicksal schon beschlossen hatte, es mir vor die Füße fallen zu lassen." Sie hält ein heimtückisch aussehendes Kampfmesser hoch. "Hier... da du wieder zurückgekommen bist, geb ich's dir wieder, Schleifer. Leb wohl."~ */
  IF ~~ THEN REPLY #33414 /* ~"Danke... Leb wohl."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~Die Frau scheint dich sofort zu erkennen und weicht entsetzt zurück. "Nach all dieser Zeit... du *Mistkerl*! Sollen dich alle Scheusale von Baator holen! Eines Tages wird es dir leid tun, was du Aerin angetan hast... das *schwör* ich bei allen Mächten!" Sie dreht sich um und flüchtet.~ */
  IF ~~ THEN REPLY #33416 /* ~"Warte..."~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Laß sie los.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"Na, wenn das nicht mein Erlöser ist! Hast dir wirklich Zeit gelassen, mit dem Zurückkommen... ich habe schon gedacht, du kommst überhaupt nicht mehr, Vollblut." Sie beginnt in ihrer Gürteltasche zu kramen.~ */
  IF ~~ THEN REPLY #33421 /* ~"Warte... ich glaube, du verwechselst da was..."~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Warte geduldig.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"Erledigt und tot, genau wie du's gesagt hast... so gefällt er mir. Hier ist deine Belohnung, Schleifer... der Ring, den ich dir versprochen habe. Leb wohl."~ */
  IF ~~ THEN REPLY #33425 /* ~"Moment mal... ich hätte da ein paar Fragen..."~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Laß sie laufen.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"Nein, Schleifer... es ist zwar alles schon 'ne Weile her, aber ich will trotzdem nicht, daß mich irgendwer mit dir reden sieht. Er hatte Freunde, verstehst du, und ich glaube, die sind nicht besonders glücklich über das, was passiert ist. Ich werde nie wieder mit dir sprechen."~ */
  IF ~~ THEN REPLY #33427 /* ~"Aber..."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"Dann leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~Sie wirft dir einen erstaunten Blick zu und betrachtet dann mit zusammengekniffenen Augen die Tätowierungen auf deinem Oberarm. Schließlich zuckt sie die Schultern. "Wenn du meinst, Schleifer. Leb wohl..."~ */
  IF ~~ THEN REPLY #33432 /* ~Laß sie gehen.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~Diese Person kann dir nichts weiter erzählen.~ */
  IF ~~ THEN REPLY #33428 /* ~Geh.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~Diese Person kann dir nichts Wichtiges erzählen.~ */
  IF ~~ THEN REPLY #33451 /* ~Geh.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~Diese Person kann dir nichts weiter erzählen, was für dich interessant ist.~ */
  IF ~~ THEN REPLY #33471 /* ~Geh.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~Diese Person kann dir nichts weiter erzählen.~ */
  IF ~~ THEN REPLY #33480 /* ~Geh.~ */ EXIT
END
