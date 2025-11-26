// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUST~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #300 /* ~Der Staubmensch scheint dich nicht zu bemerken. Er scheint dich wohl für eine dieser lebenden Leichen zu halten, die hier arbeiten.~ */
  IF ~~ THEN REPLY #302 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #303 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~~ THEN REPLY #304 /* ~"Wo bin ich hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #305 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #306 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #307 /* ~Der Staubmensch zuckt zusammen und wirft seinen Kopf zu dir herum. Er wirkt schockiert - deine Verkleidung muß wohl ganz gut sein.~ */
  IF ~~ THEN REPLY #310 /* ~Nutze seine Überraschung aus und brich ihm das Genick, bevor er rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #312 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #1332 /* ~Geh. Und zwar schnell.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
  SAY #309 /* ~Der Staubmensch geht einen Schritt zurück und klatscht dann dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.~ */
  IF ~~ THEN REPLY #313 /* ~"Nun gut..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #314 /* ~Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.~ */
  IF ~~ THEN REPLY #315 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #316 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #317 /* ~"Wo bin ich hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #319 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #382 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #321 /* ~Der Staubmensch blickt langsam auf und dreht sich zu dir um. "Hast du dich verirrt?"~ */
  IF ~~ THEN REPLY #322 /* ~"Ja."~ */ GOTO 5
  IF ~~ THEN REPLY #323 /* ~"Nein."~ */ GOTO 6
  IF ~~ THEN REPLY #324 /* ~"Nein, ich habe mich nicht verirrt. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #325 /* ~"Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3 6.4 16.2 51.1
  SAY #326 /* ~"Ich rufe einen Wächter, der dich hinausführen wird. Warte einen Augenblick."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #327 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #328 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #329 /* ~Geh. Und zwar schnell.~ */ GOTO 2
  IF ~~ THEN REPLY #1333 /* ~Warte.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #330 /* ~"Was hast du hier zu suchen, wenn du dich nicht verirrt hast?"~ */
  IF ~~ THEN REPLY #331 /* ~"Das geht dich nichts an."~ */ GOTO 7
  IF ~~ THEN REPLY #332 /* ~"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."~ */ GOTO 8
  IF ~~ THEN REPLY #333 /* ~"Ich bin hier, um jemandem zu treffen."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #334 /* ~"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."~ */ GOTO 16
  IF ~~ THEN REPLY #337 /* ~Geh. Und zwar schnell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #335 /* ~"Das geht mich leider sehr wohl etwas an. Vielleicht können dir die Wächter ja die Zunge lösen." Der Staubmensch geht einen Schritt zurück; er sieht aus, als würde er jeden Moment die Wachen rufen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #344 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3887 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #3888 /* ~"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #336 /* ~"Du machst wohl Witze? Vielleicht würdest du das gerne den Wachen erzählen." Er sieht aus, als würde er jeden Moment die Wachen rufen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #358 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3885 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #3886 /* ~"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #338 /* ~"Wen möchtest du hier treffen?"~ */
  IF ~~ THEN REPLY #3922 /* ~"Das geht dich nichts an."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #342 /* ~"Ich bin gekommen, um Dhall zu sehen."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #343 /* ~"Ich bin gekommen, um Dhall zu sehen."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33183 /* ~"Ich bin gekommen, um Deionarra zu sehen."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33185 /* ~"Ich bin gekommen, um Deionarra zu sehen."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33186 /* ~"Ich bin gekommen, um Soego zu sehen."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33187 /* ~"Ich bin gekommen, um Soego zu sehen."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33189 /* ~Lüge: "Äh... Adahn. Arbeitet er noch hier, oder...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33190 /* ~Lüge: "Äh... Adahn. Arbeitet er noch hier, oder...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33191 /* ~"Äh, niemanden. Ich hab' mich versprochen."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #345 /* ~"Dhall ist im Empfangsraum auf diesem Stockwerk. Ich warne dich... er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."~ */
  IF ~~ THEN REPLY #347 /* ~"Also gut. Danke für die Auskunft."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #346 /* ~"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. Er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."~ */
  IF ~~ THEN REPLY #348 /* ~"Also gut. Danke für die Auskunft."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #349 /* ~"Deionarra? Ich weiß, daß in der Gedenkhalle im Erdgeschoß eine Frau bestattet ist. Ob sie das ist?"~ */
  IF ~~ THEN REPLY #352 /* ~"Höchstwahrscheinlich. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #350 /* ~"Deionarra? Ich weiß, daß im Nordwesten der Gedenkhalle eine Frau bestattet ist. Ob sie das ist?"~ */
  IF ~~ THEN REPLY #353 /* ~"Höchstwahrscheinlich. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #351 /* ~"Ich glaube, Soego ist am Haupttor im Erdgeschoß. Er arbeitet hier während des Tiefstands als Führer."~ */
  IF ~~ THEN REPLY #354 /* ~"Also gut. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #355 /* ~"Ich glaube, Soego ist am Haupttor. Er arbeitet hier während des Tiefstands als Führer."~ */
  IF ~~ THEN REPLY #356 /* ~"Also gut. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #357 /* ~"Wer sollte bestattet werden? Vielleicht finden die Feierlichkeiten woanders in der Leichenhalle statt."~ */
  IF ~~ THEN REPLY #359 /* ~"Du verstehst mich falsch... ICH sollte bestattet werden."~ */ GOTO 8
  IF ~~ THEN REPLY #360 /* ~"Das könnte sein. Wo finden diese anderen Zeremonien statt?"~ */ GOTO 17
  IF ~~ THEN REPLY #361 /* ~"Kannst du mir den Weg hier raus zeigen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #362 /* ~"Mehrere Grabkammern umgeben die Leichenhalle. Sie folgen dem Verlauf der Mauer im Erdgeshoß und im ersten Stock. Kennst du den Namen des Verstorbenen?"~ */
  IF ~~ THEN REPLY #363 /* ~"Nein."~ */ GOTO 18
  IF ~~ THEN REPLY #364 /* ~"Ja."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #365 /* ~"Frag doch einfach einen der Führer am Haupttor. Sie können dir bestimmt helfen."~ */
  IF ~~ THEN REPLY #366 /* ~"Also gut. Vielen Dank."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #367 /* ~Der Staubmensch wartet.~ */
  IF ~~ THEN REPLY #369 /* ~"Entschuldigung... Ich hab' mich versprochen. Ich kenne den Namen des Verstorbenen nicht."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #370 /* ~"Ihr Name ist Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #371 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #372 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #373 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1335 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 45
  IF ~~ THEN REPLY #1336 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #374 /* ~"Ah ja. Und was hast du hier zu suchen?"~ */
  IF ~~ THEN REPLY #375 /* ~"Geht dich nichts an."~ */ GOTO 7
  IF ~~ THEN REPLY #376 /* ~"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."~ */ GOTO 8
  IF ~~ THEN REPLY #377 /* ~"Ich bin hier, um jemandem zu treffen."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #378 /* ~"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."
~ */ GOTO 16
  IF ~~ THEN REPLY #379 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #368 /* ~"Nie gehört. Frag doch einfach einen der Führer am Haupttor... sie können dir vielleicht mehr sagen."~ */
  IF ~~ THEN REPLY #380 /* ~"Also gut. Das mach ich. Leb wohl."~ */ GOTO 48
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #294 /* ~Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.~ */
  IF ~~ THEN REPLY #295 /* ~"Sei gegrüßt."~ */ GOTO 23
  IF ~~ THEN REPLY #297 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #381 /* ~Er dreht sich langsam um; seine Augen gleiten auf deine Robe. "Sei gegrüßt, Mitwisser."~ */
  IF ~~ THEN REPLY #383 /* ~"Wer bist du?"~ */ GOTO 24
  IF ~~ THEN REPLY #384 /* ~"Wo bin ich hier?"~ */ GOTO 25
  IF ~~ THEN REPLY #391 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #392 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #393 /* ~"Das möchte ich auch gerne von dir wissen. Ich kenne dein Gesicht nicht. Wer bist du?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #450 /* ~Lüge: "Sein Name ist... äh, Adahn."
~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1337 /* ~Lüge: "Sein Name ist... äh, Adahn."
~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3904 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3905 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #394 /* ~"Dies ist die Leichenhalle..." Der Staubmensch schaut dich an, als müßte er erst verdauen, was du gesagt hast. "Wie war doch gleich dein Name?"
~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #399 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #3906 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3907 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3908 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."
~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #400 /* ~Der Staubmensch wartet geduldig darauf, daß du fortfährst.~ */
  IF ~~ THEN REPLY #401 /* ~"Kannst du mir sagen, wie ich hier rauskomme?"~ */ GOTO 27
  IF ~~ THEN REPLY #402 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 28
  IF ~~ THEN REPLY #403 /* ~"Ich vermisse ein Journal. Hast du es zufällig gesehen?"~ */ GOTO 39
  IF ~~ THEN REPLY #404 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #405 /* ~"Am besten du gehst einfach durch das Haupttor. Es ist im Erdgeschoß."~ */
  IF ~~ THEN REPLY #406 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #407 /* ~Vielen Dank. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #408 /* ~"Dieser Name..." Der Staubmensch hält kurz inne. "Dieser Name kommt mir irgendwie *bekannt* vor... ich glaube, es gab da mal einen Sammler, der so hieß. Dhall, der Schreiberling, könnte ihn kennen."~ */
  IF ~~ THEN REPLY #409 /* ~"Sammler?"~ */ GOTO 29
  IF ~~ THEN REPLY #410 /* ~"Dhall?"~ */ GOTO 30
  IF ~~ THEN REPLY #411 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #425 /* ~"Danke, daß du dir für mich Zeit genommen hast. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #412 /* ~"Sammler... lesen Tote von den Straßen Sigils auf und schaffen sie in die Leichenhalle..." Der Staubmensch zögert, dann runzelt er die Stirn. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #413 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3918 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3919 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3920 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."
~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #414 /* ~"Dhall ist eines der angesehensten Mitglieder unseres Bundes. Ich kenne niemanden, der mehr über das Wesen des Wahren Todes nachgedacht oder sich mehr darum verdient gemacht hätte als er. Er kann viel Wissen weitergeben. Wenn du ihn nicht kennst, solltest du die erste Gelegenheit nutzen, mit ihm zu reden. Er wird nicht mehr lange im Schatten dieser Existenz verweilen."~ */
  IF ~~ THEN REPLY #415 /* ~"'Er wird nicht mehr lange im Schatten dieser Existenz veweilen'?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #416 /* ~"Wo kann ich Dhall finden?"
~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #417 /* ~"Wo finde ich Dhall?"~ */ GOTO 33
  IF ~~ THEN REPLY #418 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #33204 /* ~"Danke für die Information. Ich werde mit ihm reden."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #419 /* ~Nickt. "Dhall ist krank. Er ist alt, selbst für einen Githzerai. Der Tod ist ihm gewiß nach diesem Siechtum. Er ist wirklich gesegnet."~ */
  IF ~~ THEN REPLY #420 /* ~"Für einen Githzerai?"
~ */ GOTO 34
  IF ~~ THEN REPLY #421 /* ~"Was ist ein 'Githzerai'?"~ */ GOTO 35
  IF ~~ THEN REPLY #422 /* ~"Gesegnet?"~ */ GOTO 36
  IF ~~ THEN REPLY #423 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #424 /* ~"Danke, daß du dir für mich Zeit genommen hast. Ich muß jetzt gehen."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #427 /* ~"Dhall ist im Empfangsraum in der nordwestlichen Winkel dieses Stockwerks. Ich warne dich... Dhall ist ziemlich beschäftigt... wenn er nicht gerade seiner Arbeit nachgeht, wird ein Großteil seiner Zeit von seiner Krankheit beansprucht."~ */
  IF ~~ THEN REPLY #428 /* ~"Ist Dhall krank?"~ */ GOTO 31
  IF ~~ THEN REPLY #429 /* ~"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #426 /* ~"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. An deiner Stelle würde ich ihn nicht allzu lang aufhalten, da er alle Hände voll zu tun hat... wenn er nicht gerade seinen Pflichten nachkommt, schlägt er sich die meiste Zeit mit seiner Krankheit herum."~ */
  IF ~~ THEN REPLY #430 /* ~"Ist Dhall krank?"~ */ GOTO 31
  IF ~~ THEN REPLY #431 /* ~"Danke, daß du mir ein wenig Zeit geopfert hast. Ich muß mich jetzt von dir verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #432 /* ~"Ja, die Githzerai leben wesentlich länger als die Menschen."~ */
  IF ~~ THEN REPLY #433 /* ~"Was ist ein 'Githzerai'?"~ */ GOTO 35
  IF ~~ THEN REPLY #437 /* ~"Wieso bezeichnest Du Dhalls Tod als Segen? Er ist wohl nicht sehr beliebt?"~ */ GOTO 36
  IF ~~ THEN REPLY #438 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #440 /* ~"Vielen Dank für deine Zeit. Auf bald."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #435 /* ~"Die Githzerai sind..." Der Staubmensch zögert; dann runzelt er die Stirn und starrt dich durchdringend an. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #436 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3909 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3910 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3911 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #439 /* ~"Er ist  gesegnet, weil er den Wahren Tod erlangen wird. Dann braucht er nicht mehr im Schatten dieser Existenz zu verweilen."~ */
  IF ~~ THEN REPLY #441 /* ~"Und... das ist gut?"~ */ GOTO 37
  IF ~~ THEN REPLY #442 /* ~"Ich verstehe. Wirklich ein Segen. Ich hätte da noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #443 /* ~"Ich verstehe. Nun, ich muß mich jetzt von dir verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #444 /* ~Der Staubmensch nickt. "Ja." Er runzelt die Stirn, dann mustert er dich prüfend. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #445 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #446 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3912 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3913 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #447 /* ~"Du bist keiner von uns, oder? Was hast du hier zu suchen? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Wachen! Wachen!"~ */
  IF ~~ THEN REPLY #448 /* ~"Verdammt!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #449 /* ~"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1339 /* ~"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #398 /* ~"Ein Journal? Ich habe keines gesehen."~ */
  IF ~~ THEN REPLY #451 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #452 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1419 /* ~Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #1420 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 61
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #1421 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 63
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #1422 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1423 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #1424 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1425 /* ~Bevor der Staubmensch auch nur ein Wort sagen kann, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #1426 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1427 /* ~Es macht *Knacks*, und der Staubmensch fällt dir erschlafft in die Arme.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1428 /* ~"Besser du als ich, Staubie."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1429 /* ~"Besser du als ich, Staubie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1430 /* ~Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #3882 /* ~Laß die Leiche liegen, geh weiter.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #3883 /* ~Du bist nicht schnell genug. Der Staubmensch weicht deinem Angriffsversuch aus. Er geht einen Schritt zurück und klatscht dreimal fest in Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.~ */
  IF ~~ THEN REPLY #3884 /* ~"Nun gut..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #3889 /* ~Als du dich vorbeugst, um ihm etwas 'zuzuflüstern', beugt der Staubmensch seinen Kopf auch nach vorn. Als er in Reichweite kommt, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #3890 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #3891 /* ~Der Staubmensch wirkt mißtrauisch. Er sieht aus, als würde er jeden Moment etwas sagen, doch dann schüttelt er nur kurz den Kopf und wendet sich wieder seiner Arbeit zu.~ */
  IF ~~ THEN REPLY #3892 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #3893 /* ~Der Staubmensch mustert dich aufmerksam. "Du bist keiner von uns, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Ich glaube, dies ist ein Fall für die Wache..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #3914 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3915 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #3916 /* ~"Nein, nein... das stimmt nicht, äh... Ich meine, ich bin kein Spitzel... weißt du, ich bin hier auf einer der Totenbänke aufgewacht... und..."~ */ GOTO 2
  IF ~~ THEN REPLY #3917 /* ~Geh. Und zwar schnell.~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #3894 /* ~Der Staubmensch nickt, bevor er sich wieder seiner Arbeit zuwendet.~ */
  IF ~~ THEN REPLY #3895 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #3896 /* ~Der Staubmensch runzelt die Stirn. "Dieser Name kommt mir nicht bekannt vor."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3898 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."
~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3899 /* ~"Ich... bin hier neu. Ich... bin dabei, mich einzuarbeiten."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3900 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3901 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #3897 /* ~Der Staubmensch runzelt weiter die Stirn und sagt mit einem leichten Nicken: "Sehr gut. Was kann ich für dich tun, Eingeweihter?"~ */
  IF ~~ THEN REPLY #3902 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #3903 /* ~"Heute grade nicht. Leb wohl."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66674 /* ~Der Staubmensch sieht dich mit versteinerter Miene an. "Hast du dich verlaufen?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66675 /* ~"Nein, ich bin Mitglied des Bundes. Ich seh mir nur ein bißchen die Leichenhalle an."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66676 /* ~"Ja."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66677 /* ~"Nein."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66678 /* ~"Nein, ich hab mich nicht verlaufen. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66679 /* ~"Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66681 /* ~Der Staubmensch starrt dich einen Moment lang an und nickt dann. "Nun denn. Sag mir bescheid, wenn du Hilfe brauchst."~ */
  IF ~~ THEN REPLY #66682 /* ~"Mach ich. Leb wohl."~ */ EXIT
END
