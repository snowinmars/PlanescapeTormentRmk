// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"Wache! Wache! Haltet diesen Mann auf! HALTET IHN AUF!"~ */
  IF ~~ THEN REPLY #5337 /* ~Fertig.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"Geh, Dussel. Komm ein andernmal vorbei. Vielleicht können wir dann reden."~ */
  IF ~~ THEN REPLY #5339 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"Ich... sagte... GEH. Laß dich erst wieder blicken, wenn du Anweisungen besser befolgst."~ */
  IF ~~ THEN REPLY #5341 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~Sie lächelt dich sarkastisch an: "Vielen Dank, daß du dich bereit erklärt hast, unsere Maschinen in Ordnung zu bringen. Deine Sorge um das Wohl unserer Gießerei ist richtig herzerweichend und erhebend, Dussel." Sie spuckt dir vor die Füße und geht.~ */
  IF ~~ THEN REPLY #5343 /* ~Greif sie an.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"Ich hätte da ein paar Fragen an dich."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"Was ist? Mach's kurz, Schlucker... bei Typen wie dir reißt mir schnell der Geduldsfaden, und wegen dir hab' ich im Moment sowieso viel zu tun."~ */
  IF ~~ THEN REPLY #5347 /* ~"Ich hab's mir überlegt. "Ich werde helfen, das Getriebe zu reparieren."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"Wo war doch gleich das Büro des Schreibers?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"Wie kann ich Mitglied bei den Göttermenschen werden?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"Wie kann ich das wieder gutmachen?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"Vergiß es einfach. Wollte sowieso grade gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"Aha, wenn du was brauchst, dann willst du uns plötzlich helfen, was? Deine Spielchen sind vielleicht nicht ganz uneigennützig, Dussel, aber das heißt noch lange nicht, daß sie mir gefallen müssen. Ich mag sie nicht. Und dich mag ich genauso wenig. Wir haben bereits jemanden, der daran arbeitet, die Maschinen wieder zum Laufen zu bringen. Also, pack ein." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #5353 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"Frag jemand anders, Dussel, oder find es selber raus." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #5355 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~Sie sieht für einen Moment unschlüssig aus... als ob sie abwägt, ob sie dich lieber zum Teufel jagen oder als neues Mitglied für ihren Bund anwerben soll. Mürrisch sagt sie: "Geh durch die Tür in der äußersten rechten Mauer der Gießerei in die Versammlungshalle. Suche dort nach Keldor von Durian. Er kann dir helfen."~ */
  IF ~~ THEN REPLY #5357 /* ~"Danke. Ich hätte noch eine andere Frage."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"Kannst du das irgendwie wieder gut machen? Ha! Ich glaube nicht, Schlucker. In die Irrgänge mit dir." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #5360 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"Sei gegrüßt, Suchender. Was kann ich für dich tun? Bitte mach's kurz... wir müssen unsere Termine einhalten."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"Ich muß was vom Schreiber abholen. Wo finde ich ihn?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"Ich würde gern die Schmiede benutzen."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"Ich würde gern die Schmiede benutzen."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"Wo kann ich die Dinge bekommen, die ich für die Arbeit in der Schmiede brauche?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"Ich glaube, ich brauche doch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"Siehst du den Raum da unten mit dem Tisch? Er sitzt an diesem Tisch. Du müßtest es eigentlich schaffen, deinen Gegenstand dort zu bekommen."~ */
  IF ~~ THEN REPLY #5377 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~Sie schaut sich einen Augenblick um, um sicherzugehen, daß sie niemand beobachtet. Dann streift sie ein goldenes Medaillon ab, das um ihren Hals hängt, und reicht es dir verstohlen. "Sag keinem, wo du das her hast", zischt sie.~ */
  IF ~~ THEN REPLY #5380 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"Ich würde dir sehr gern helfen, aber nur die hohen Tiere können das erlauben. Du müßtest darüber mit Keldor reden."~ */
  IF ~~ THEN REPLY #5383 /* ~"Gut. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"Besten Dank auch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"Sicher. Du mußt nur dafür sorgen, daß du die richtigen Gegenstände dabei hast: Flammenschutz, Zange, Hammer und natürlich dein Eisenerz."~ */
  IF ~~ THEN REPLY #5386 /* ~"Okay. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"Wo kann ich diese Gegenstände bekommen?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"Ich fürchte, wir müssen unseren übrigen Mitgliedern auch eine Chance in der Schmiede geben. Du hast lange genug allein Anspruch darauf erhoben, mein Freund."~ */
  IF ~~ THEN REPLY #5390 /* ~"Gut. Ich hätte da noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"Ich würde dir gern helfen, aber wie es scheint, habe ich das Zeichen verloren, das mir dort Eintritt verschafft hätte. Tut mir leid, Suchender."~ */
  IF ~~ THEN REPLY #5393 /* ~"Das ist in Ordnung. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"Was soll's. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"Noch mehr Fragen? Wie lauten sie?"~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"Ich muß was vom Schreiber abholen. Wo finde ich ihn?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"Ich muß in den bewachten Raum da hinten rein."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"Ich muß in den bewachten Raum da hinten rein, und ich hab' mein Zeichen verloren."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"Ich würde gern die Schmiede benutzen."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"Ich würde gern die Schmiede benutzen."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"Im Auftrag Keldors untersuche ich den Mord, der hier begangen wurde. Was hast du mir darüber sagen?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"Ich suche nach dem Ausgang."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"Ich suche das Abholbüro. Da soll ein Gegenstand für mich sein."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"Ich hätte gerne eine Führung."~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"Wer bist du?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"Was geht hier vor sich?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"Was vertreten die Göttermenschen eigentlich genau?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"Wo kann ich die Dinge bekommen, die ich für die Arbeit in der Schmiede brauche?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"Ich glaube, ich brauche doch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"Dann ist es ja gut, daß ich meins noch habe. Nimm's, aber sag niemandem, daß ich es dir gegeben habe, okay? Viel Glück."~ */
  IF ~~ THEN REPLY #5418 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"Ich habe auch keins mehr. Tut mir leid. Du wirst versuchen müssen, auf anderem Wege reinzukommen."~ */
  IF ~~ THEN REPLY #5421 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"Wenn du sie nirgendwo herumliegen siehst, dann mußt du sie dem Schreiber abkaufen... zu einem nominellen Preis natürlich."~ */
  IF ~~ THEN REPLY #5424 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"Also? Auf was wartest du noch? Fang an zu schmieden! Wir können die Schmiedeöfen nicht die ganze Zeit unter Feuer halten, während du hier herumtrödelst."~ */
  IF ~~ THEN REPLY #5427 /* ~"Nun, ich hätte da erst noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"Wo kann ich die Dinge doch gleich bekommen, die ich für die Arbeit in der Schmiede brauche?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"Schon gut, schon gut. Ich geh ja schon."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"Ich habe dir schon alles erzählt, was ich weiß! Was willst du noch von mir?"
~ */
  IF ~~ THEN REPLY #5431 /* ~"Ich würde deine Geschichte gerne nochmal hören... ganz langsam."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"Nichts. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"Du willst also wissen, was ich in der Mordnacht gesehen habe? Also gut... ich habe noch lange in die Nacht hinein gearbeitet, da hörte ich ein Schlurfen. Als ich hinausging, sah ich einen Schatten, der durch die Tür in die Versammlungshalle huschte, und dann habe ich Alarm geschlagen."~ */
  IF ~~ THEN REPLY #5435 /* ~"Kannst du mir noch mehr Einzelheiten sagen?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"Ist das alles?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"Woher soll ich wissen, daß du's nicht getan hast?"
~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"Ich kenne nur drei Leute, die in dieser Nacht Zugang zu diesem Gebäude hatten. Das waren Thildon, Saros und Bedai-Linh. Alle drei haben einen völlig unterschiedlichen Körperbau, aber im Dunst der Schmiedeöfen konnte ich nichts erkennen."~ */
  IF ~~ THEN REPLY #5441 /* ~"Woher soll ich wissen, daß du's nicht getan hast?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"Die drei sind also die einzigen Verdächtigen? Das scheint mir zu einfach."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"Okay. Wo kann ich Thildon finden?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"Gut. Wo kann ich Saros finden?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"Welch glücklicher Zufall. Wo kann ich Bedai-Lihn finden?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"Gut. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~Ich hätte noch ein paar Fragen."
~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"Ich habe ein Alibi, ganz zu schweigen davon, daß Keldor meine Aussage bestätigt hat. Ich habe nichts zu verbergen... ganz im Gegensatz zu Thildon, Saros und Bedai-Lihn, von denen keiner im Bann von Keldors Zauber stand."~ */
  IF ~~ THEN REPLY #5449 /* ~"Okay. Ich hab' da noch ein paar Fragen."
~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"Wo kann ich Thildon finden?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"Wo kann ich Saros finden?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"Wo kann ich Bedai-Lihn finden?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"Danke. Das hilft mir schon weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"Normalerweise hält er sich zwischen der Hauptschmiede und der Versuchskammer im hinteren Teil auf. Du dürftest keine Schwierigkeiten haben, ihn zu finden."~ */
  IF ~~ THEN REPLY #5455 /* ~"Wo finde ich Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"Wo finde ich Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"Das werde ich mit ihm besprechen. Du wirst wieder von mir hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"Er bleibt normalerweise in der Haupt-Versammlungshalle. Du kannst ihn gar nicht verfehlen."~ */
  IF ~~ THEN REPLY #5458 /* ~"Wo finde ich Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"Wo finde ich Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"Ich hätte noch andere Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"Ich werde mich darum kümmern. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"Sie kann in jedem der Gießereibereiche sein. Sie ist eine unserer Chefingenieure und hat deshalb dort das Sagen. Du wirst sie gleich erkennen."~ */
  IF ~~ THEN REPLY #5461 /* ~"Wo finde ich Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"Wo finde ich Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"Das sollte ich wohl. Ich habe noch mehr Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"Das sollte ich wohl. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"Danke, daß du dich um das Getriebe gekümmert hast. Wir hätten es vielleicht auch ohne dich reparieren können, aber es hätte viel länger gedauert. Wir schulden dir unseren Dank. Kann ich noch etwas für dich tun?"~ */
  IF ~~ THEN REPLY #5464 /* ~"Ich hätte ein paar Fragen."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"Naja, nicht grade viel. Leb wohl."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"Du schon wieder? Was willst du denn jetzt? Entschuldige meine Ungeduld, aber wir müssen unsere Termine einhalten."~ */
  IF ~~ THEN REPLY #5467 /* ~"Ich hätte ein paar Fragen an dich."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"Im Auftrag Keldors untersuche ich den Mord, der hier begangen wurde. Was hast du mir darüber sagen?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"Im Moment: Nichts. Ich komme wieder."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~Du siehst eine Frau von kleiner Statur mit winzigen Hörnern auf der Stirn. Ihre Ohren liegen eng am Schädel an und reichen weit nach hinten. Sie umgibt ein leichter Schwefelgeruch, den sogar der Gestank der Schmiedefeuer nicht überdecken kann. "Sei gegrüßt, was kann ich für dich tun?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"Im Auftrag Keldors untersuche ich den Mord, der hier begangen wurde. Was hast du mir darüber sagen?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"Ich suche nach dem Ausgang."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"Ich suche das Abholbüro. Da soll ein Gegenstand für mich sein."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"Ich hätte gerne eine Führung."~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"Wer bist du?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"Was geht hier vor sich?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"Was vertreten die Göttermenschen eigentlich genau?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"Schau zurück in diese Richtung. Siehst du den langen Tunnel dort? Geh einfach hindurch, und schon bist du am Haupttor."~ */
  IF ~~ THEN REPLY #5480 /* ~"Vielen Dank."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"Es ist das Büro mit dem Tisch. Der Schreiber müßte an diesem Tisch sitzen."~ */
  IF ~~ THEN REPLY #5482 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"Danke. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"Eigentlich gibt es nichts, was ich lieber täte. Leider haben wir zur Zeit ziemlich viel zu tun. Komm in einem Jahr oder so wieder her, und ich werde dich gerne herumführen."~ */
  IF ~~ THEN REPLY #5485 /* ~"Was ist los?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"Okay. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"Ich bin Alissa Tield, die Aufseherin für diesen Bereich, den Haupt-Gießereibereich der Großen Gießerei, wo zur Zeit ein großer Teil der öffentlichen Arbeiten durchgeführt wird. Natürlich ist die Gießerei noch größer, aber wir arbeiten an einem Großauftrag und haben Geheimhaltung geschworen, so daß der größte Teil des Arbeitsbereichs für Außenstehende gesperrt ist. Tut mir leid."~ */
  IF ~~ THEN REPLY #5489 /* ~"Versteh schon. Ich hätte aber noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"Gesperrt? Lächerlich! Leb wohl!"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"Ich verstehe. Vielen Dank für deine Zeit."
~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"Wir haben einen großen - und streng geheimen - Auftrag angenommen, einen, der praktisch all unsere Ressourcen beansprucht. Nebenbei halten wir noch kleinere Reserven für die Abwicklung der täglichen Bestellungen bereit, aber im Moment konzentriert sich in der Gießerei alles auf die Erfüllung unseres Vertrags. Du kannst versuchen, mich darüber auszufragen, aber erwarte keine Antwort."~ */
  IF ~~ THEN REPLY #5493 /* ~"Du wirkst da sehr bestimmt. Also gut. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"Du wirkst da ziemlich bestimmt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"Dies ist sowohl ein gemeinschaftlicher als auch ein individueller Bund und es gibt, je nachdem, mit wem man spricht, Abwandlungen des Themas, aber der Grundgedanke ist, daß das Leben - oder besser, jegliche Daseinsform - eine Art Prüfung ist. Alle Dinge, mit denen wir konfrontiert werden, stellen uns auf die Probe, und die Art und Weise, wie wir reagieren, bestimmt, wie wir uns dem wahren Verständnis nähern. Wir suchen die Wahrheit hinter dem Multiversum, und wir sind überzeugt, daß wir uns auf dem richtigen Weg befinden."~ */
  IF ~~ THEN REPLY #5496 /* ~"Ich... verstehe. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"Hm. Danke, daß du dir für mich Zeit genommen hast."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"Geh und sprich mit Keldor von Durian in der Versammlungshalle. Durch die Tür in der rechten Wand kommst du dorthin."~ */
  IF ~~ THEN REPLY #5500 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"Danke. Lebe wohl."~ */ EXIT
END
