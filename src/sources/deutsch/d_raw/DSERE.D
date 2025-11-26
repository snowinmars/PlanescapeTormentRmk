// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~Als du näherkommst, dreht sich die ältere Frau um und starrt dich an. "Sieh mal einer an, wer Sere heute mit seinem Besuch beehrt... des Todes liebstes Kind." Sie mustert dich von Kopf bis Fuß und schüttelt dann ungläubig den Kopf. "Bei allen Mächten und ihren Müttern, Junge... aus welcher Krypta kommst *du* denn gekrochen?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"Ich bin aus keinem Grab gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"Ich bin aus keiner Krypta gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"Ich komme frisch aus der Leichenhalle."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~Witz: "Die Krypta war irgendwie nicht mehr so das Pralle, darum such ich jetzt den richtigen Ort zum Sterben. Kennst du einen?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"Tut mir leid, ich dachte, du wärst jemand anders. Leb wohl."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~Sere lächelt süffisant, als sie dich sieht. "Mensch, nee, wenn das nicht der Kryptakriecher is. Was bringt dich denn dieses Mal an Seres Tür, Jungchen?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"Ich bin aus keiner *Krypta* gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"Ich bin aus keiner *Krypta* gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~Witz: "Die Krypta war irgendwie nicht mehr so das Pralle, darum such ich jetzt den richtigen Ort zum Sterben. Kennst du einen?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"Nichts, wollte nur mal vorbeigucken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"Fragen, hä? Tja, du kannst fragen..." Sere sieht dich mit stählernem Auge an und lächelt dann. "...Kryptakriecher."~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"Ich bin aus keiner *Krypta* gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"Ich bin aus keiner *Krypta* gekrochen."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"Ich wollte dir vor allem ein paar Fragen über einige der Staubmenschen stellen..."~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"Bist du ein Staubmensch?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"Kannst du mir was über Hamrys erzählen?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"Ich wollte mit dir über deinen Glauben reden. Wieso glaubst du nicht mehr an die Philosophie der Staubmenschen?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"Sere, du bist kein Staubmensch mehr. Hättest du gern 'ne Alternative?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"Hast du in letzter Zeit ein Journal gesehen? Ich vermisse nämlich eins."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"Ich suche nach einem Mann namens Pharod. Hast du ihn gesehen?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"Is das so?" Sere hebt eine Augenbraue. "Das wärmt ja meine Ohren zu hören, daß du dem Ort was gegrinst hast. Is nich gerade ein Wasserloch für einen, der sich selbst nich erleichtert." Sie schnüffelt. "Tchhhh. Zu viele Spinnweben und staubige Hirne."~ */
  IF ~~ THEN REPLY #14360 /* ~"Du magst die Leichenhalle nicht? Bist du denn kein Staubmensch?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~Sie runzelt die Stirn, und ihr Gesicht legt sich in Falten wie zerknittertes Pergament. "Also gut. Und aus was für einem *Sarg* biste gekrochen?" Sie murmelt: "Höchstwahrscheinlich aus einem dieser armseligen, versplitterten Särge im Laden von Hamrys. Davon bekommen Leichen Spiltter, hab' ich gehört.." Sie schnüffelt. "Das Jungchen is nich mal'n beschnittenes Kupferstück wert, seit sein Vater tot is."~ */
  IF ~~ THEN REPLY #14364 /* ~"Ich bin auch nicht aus einem *Sarg* gekrochen."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"Wer ist Hamrys?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"Ich bin nicht aus einem Sarg gekrochen... ich komme frisch aus der Leichenhalle."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~Witz: "In dem Sarg, den er gebaut hat, hat's mir zu sehr gezogen. Darum such ich jetzt den richtigen Ort zum Sterben. Kennst du einen?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"Ich brauche ein paar Informationen. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"Entschuldige die Störung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~Sie lächelt, wobei sie eine Reihe ungleichmäßiger Zähne freilegt. "Also gut, Jungchen. Und aus was für einem *Sarkophag* biste nun gekrochen?" Sie hält inne und kichert vor sich hin. "Ich mach nur Spaß, Jungchen. Nimm's nich ernst. Du siehst allerdings aus wie der aufgewärmte Tod."~ */
  IF ~~ THEN REPLY #14371 /* ~"Wer ist dieser Hamrys, den du erwähnt hast?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"Kein Wunder... ich komme ja auch frisch aus der Leichenhalle."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~Witz: "Macht ja nichts. Ehrlich gesagt war der Sarkophag viel zu groß. Darum such ich jetzt den richtigen Ort, um mich hinzulegen und zu sterben. Kennst du einen?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"Ich brauche ein paar Informationen. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"Entschuldige die Störung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"Hamrys is'n Sargkaputtmacher... pardon, ein 'Sargmacher'... im Unteren Bezirk. Hat den Laden geerbt, als sein Vater starb, nich gerade zum Vorteil der Leichen in Sigil, die 'n Sarg, ne Krypta oder 'n Grabstein brauchen.."~ */
  IF ~~ THEN REPLY #14377 /* ~"Was ist mit seinem Vater passiert?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"Aha. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"Danke für die Auskunft... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"Sind deine Ohren nur Verzierung, Jungchen? Er is *gestorben*." Sie murmelt: "Sein Sohn hat ihn wahrscheinlich ins Grab geredet. Die Zunge dieses Jungchens is einfach nich ruhigzustellen. Bin überrascht, daß er sich nich noch den Kopf von den Schultern runterredet."~ */
  IF ~~ THEN REPLY #14381 /* ~"Es klingt, als hättet ihr beide viel gemeinsam."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~Witz: "In so einem Sarg möchte ich ja nun nicht begraben sein. Kannst du mir einen anderen Ort empfehlen, wo ich mich hinlegen und sterben kann?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"Ich brauche ein paar Informationen. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~Sie kneift die Augen zusammen. "Tu uns beiden 'nen Gefallen und mach deine Knochenschüssel dicht, Jungchen. Zieh bloß keinen Vergleich zwischen mir und diesem japsenden Welpen."~ */
  IF ~~ THEN REPLY #14386 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~Sie bellt ein Lachen, das deine Ohren erschüttert. "Ha! Nich hier... es sei denn, du willst vor Langeweile sterben."~ */
  IF ~~ THEN REPLY #14389 /* ~"Wieso denn nicht hier?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"Ich werd's mir merken. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"Ich muß jetzt gehen. Leb wohl, Sere."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"Tchhh. Hat dir jemand deinen Verstand *und* deine Augen gestohlen, Jungchen?" Sie wedelt mit ihrer Hand in der Bar herum. "Sieh dich mal um. Was sagen dir deine Äuglein?"~ */
  IF ~~ THEN REPLY #14393 /* ~"Staubmenschen."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"Eine Staubmenschen-Bar."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"Ein Haufen lustiger Staubmenschen, die fröhlich zusammen trinken und reden und das Leben so richtig genießen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*Sehr* gut!" Sere kichert trocken, aber sie scheint dir nicht gerade zuzulachen. "Wenn ich jetzt auch riskiere, daß ich mich dabei preisgebe, aber die Staubmenschen sind wirklich der langweiligste Haufen von Langweilern, die sich je in Sigil niedergelassen haben... sprechen vom Tod immer mit Ehrfurcht, als ob das ne heilige Vereinigung wär, nach der jedes Wesen im Multiversum streben sollte. Tccchhhh."~ */
  IF ~~ THEN REPLY #14399 /* ~"Aber du bist doch ein Staubmensch."~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"Da hast du aber ne kesse Lippe, Jungchen... vielleicht is deine Lippe ja kesser als du selbst?" Sere schielt dich an und schnaubt dann. "Das würd dann auch die Narben erklären."~ */
  IF ~~ THEN REPLY #14403 /* ~"Aber es erklärt nicht, warum hier ein Staubmensch steht, der sich über andere Staubmenschen lustig macht. Würdest du mir das vielleicht beantworten? *Bist* du ein Staubmensch?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"Sehr clever. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"Ich glaube, ich habe genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"Ein Staubmensch? Ich glaub' schon." Sere schnüffelt. "Tchhhh. Ich hab' genug Sand durch das Stundenglas laufen sehen, während ich diese Roben anhatte. Dieser Körper is fast so weit, den Fährmann zu bezahlen." Sie kichert, aber es klingt nicht gerade fröhlich.~ */
  IF ~~ THEN REPLY #14407 /* ~"Hast du Angst vor'm Sterben?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"Klar hab' ich das, Jungchen! Wer denn nich?" Sie runzelt die Stirn und sieht sich um. "Tja, außer Staubmenschen. Die haben keine Angst, weil die über die Jahrzehnte schon so viel von ihrem eigenen geistigen Durchfall geschluckt haben, daß sie blind geworden sind und jetzt glauben, der Tod sei eine Art 'Erlösung'. Tccchhh."~ */
  IF ~~ THEN REPLY #14411 /* ~"Es *ist* eine Art Erlösung."~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"Du klingst nicht gerade wie ein Staubmensch."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"
~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"Wenn du glaubst, daß dieses Leben ne Last is, Jungchen, vielleicht. Ich bin davon nich überzeugt."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"Du glaubst also nicht an das, was die Staubmenschen sagen? Bist du denn nicht ein Staubmensch?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~Sie zuckt die Schultern. "Das Leben, denk ich mal. Es... äh..." Sie runzelt die Stirn. "Ha! Mach dir nix draus. Ich will dich nich mit allen öden Einzelheiten langweilen."~ */
  IF ~~ THEN REPLY #14424 /* ~"Ich möchte sie aber gern hören."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"Okay. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~Nun, dank den Mächten dafür. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"Oh, *möchtest* du das?" Sie sieht dich skeptisch an. "Tchhhh. Für wie alt hältst du mich, Jungchen?"~ */
  IF ~~ THEN REPLY #14429 /* ~Wahrheit: "Alt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~Halbwahrheit: "Nicht sehr alt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~Höfliche Lüge: "Ziemlich jung."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"Keine Ahnung und ist mir auch egal."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~Sie schnaubt verächtlich. "Tja, da hast du nich recht. Ich bin *wirklich* alt. Hab' lange Jahre die Staubmenschen unterrichtet. Ich hab' mit angesehen, wie Staubmenschen-Welpen in unserem Orden wuchsen, hab' ihnen die Wege des Bundes beigebracht, hab' den Glauben gehütet, hab' die Grundsätze des Bundes gepredigt..." Sie runzelt die Stirn. "...und so weiter, und so weiter. Keine Fragen. Keine Zweifel. Dieses Leben war einfach nur ein Vorzimmer, das zum Wahren Tod führte."~ */
  IF ~~ THEN REPLY #14436 /* ~"Was ist passiert?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"Puh, ist das langweilig. Leb wohl."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"Aha. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~Sere blinzelt und lächelt dann. "Isser nich süß?" Sie kichert vor sich hin und hustet dann. "Tja, ich bin älter, als ich ausseh. Viel älter." Sie seufzt. "Ich hab' den Großteil meines Lebens Staubmenschen unterrichtet. Ich hab' mit angesehen, wie Staubmenschen-Welpen in unserem Orden wuchsen, hab' ihnen die Wege des Bundes beigebracht, hab' den Glauben gehütet, hab' die Grundsätze des Bundes gepredigt..." Sie runzelt die Stirn. "...und so weiter, und so weiter. Keine Fragen. Keine Zweifel. Dieses Leben war einfach nur ein Vorzimmer, das zum Wahren Tod führte."~ */
  IF ~~ THEN REPLY #14441 /* ~"Was ist passiert?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"Puh, ist das langweilig. Leb wohl."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"Aha. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~Sere runzelt die Stirn. "Tchhhh. *Du* warst es doch schließlich, der mich gebeten hat, mit meiner Knochenschüssel zu rasseln, Jungchen. Ich wär an deiner Stelle in Zukunft vorsichtiger, worum du die Leute so bittest."~ */
  IF ~~ THEN REPLY #14446 /* ~"Mach ich. Leb wohl."
~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"Tja... vor nem halben Monat hab' ich das Fieber bekommen." Sie seufzt. "Ich dachte, das wär das Ende. Es... äh, hat meinen Käfig gerüttelt."~ */
  IF ~~ THEN REPLY #14448 /* ~"Wie jetzt?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"Puh, ist das langweilig. Leb wohl."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"Aha. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~Ihr Gesicht versteinert sich. "Da is was Seltsames dran, wenn die Mitglieder deines Bundes um dein Totenbett rumschleichen wie ne Horde bleichgesichtiger Ghule, wenn sie nicken und übereinkommen, daß dein Leiden und Sterben nur fürs Beste is. 'Oh, Sere hat so'n Glück! Sie wird bald von der Last des Lebens befreit!' *Last des Lebens?* Da isses mir wie Schuppen von den Augen gefallen..."~ */
  IF ~~ THEN REPLY #14453 /* ~"Daß...?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"Puh, ist das langweilig. Leb wohl."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"Aha. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"Daß da was..." Ein seltsamer Ausdruck breitet sich auf ihrem Gesicht aus. "...Hohles dran is, wenn man das *Leben* nich schätzt. Die Staubmenschen sagen immer, daß das Leben Elend und Leid is... aber isses das wirklich? Daß wir glücklich sein sollten, wenn wir in Vergessenheit hinübergleiten... aber sollten wir das wirklich?" Sie schüttelt ihren Kopf. "Fragen, Fragen... und ganz schön wenig Antworten."~ */
  IF ~~ THEN REPLY #14458 /* ~"Das klingt, als ob du nicht mehr an die Philosophie der Staubmenschen glaubst."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"Was wirst du tun?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"Ich verstehe. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"Ich glaub, ich hab' einen Schwarm von Zweifeln, die alle in meinem Schädel rumschwirren.." Sie reibt sich die Schläfen. "Manchmal isses hart, die alle ruhigzustellen. Die wollen mit Antworten gefüttert werden, und ich hab' sie noch nich alle rausbekommen."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"Was wirst du tun?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"Ich verstehe. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"Um ehrlich zu sein, Jungchen, ich weiß es nich." Sere seufzt. "Das is das Problem mit Zweifeln. Ich kann nich mal drauf vertrauen, daß das, was ich fühle, wahr is, oder ob ich vielleicht nur vorm Tod Angst hab', weil ich ihm mit meinem Fieber so nah gekommen bin, oder was ich machen soll. Is das was Vorübergehendes? Ich weiß es nich."~ */
  IF ~~ THEN REPLY #14467 /* ~"Sere, wenn du wirklich an die Staubmenschen-Philosophie geglaubt hättest, dann hätte dieses Fieber nicht solche Zweifel bei dir ausgelöst."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"Sere, ich würde es als Prüfung deines Glaubens betrachten. Es klingt, als ob diese Gefühle vorübergehen werden. All die Jahre der Hingabe an die Staubmenschen, das kann nicht falsch gewesen sein."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"Die Philosophie der Staubmenschen ist, daß dieses Leben von Schmerz geprägt ist. Eine Waffe, die das Leben gegen eine Seele einsetzt, um sie an dieses Dasein zu ketten. Laß deinen Glauben an die Staubmenschen nicht durch dieses Fieber zerstören. Die Zeit wird diese Zweifel heilen."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"Das ist eine schwierige Frage. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~Sere starrt dich an und nickt dann langsam. "Vielleicht... vielleicht." Sie runzelt die Stirn, und ihr Gesicht wird vor Konzentration ganz faltig. "Ich muß das halt noch ne Weile durchkauen."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"Tu das. Es ist keine Kleinigkeit."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"Mehr will ich ja gar nicht. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"Mensch, nee... genug davon, daß ich über meinen Kummer rassle!" Sere starrt deine Narben an. "Du siehst auch so aus, als hättest du dem Tod ein paarmal die Hand geschüttelt. Hat das deine Ansichten nich 'n bißchen geändert? Läßt dich das nich das Leben ein bißchen mehr wertschätzen?"~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"Meine Situation ist einzigartig... ich bin in der Leichenhalle aufgewacht. Ich vermute, sie hielten mich für eine Leiche und wollten mich begraben. Das Seltsame ist, daß ich glaube, wirklich gestorben zu sein... und dann wieder 'gesund' geworden bin."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"Ich bin dem Tod viel näher gekommen als viele andere Menschen. Ich scheine nicht sterben zu können... jedenfalls nicht, soweit ich weiß."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~Wahrheit: "Ja."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~Wahrheit: "Nö."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"Ich will da nicht drüber reden. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~Sere blinzelt. "Du bringst meinen Sarg zum Klappern."~ */
  IF ~~ THEN REPLY #14484 /* ~"Stimmt."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"Ja, war nur'n Scherz."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"Nö."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"Ich will da nicht drüber reden. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"Ich glaube, ich hab' genug gesagt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"Seltsam sind die Wege der Ebenen, und ich hab' schon zuviel gesehen, um *irgendeine* Geschichte gleich mit der Wäsche rauszuschmeißen." Sie betrachtet prüfend dein Gesicht. "Wenn das wahr is, warum passiert das dann?"~ */
  IF ~~ THEN REPLY #14490 /* ~"Ich weiß es nicht."~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"Alles, was ich weiß, ist, daß ich in der Leichenhalle aufgewacht bin und mich an nichts erinnern konnte. Und mein Körper war mit genügend Wunden übersät, um dreimal zu sterben."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"Keine Ahnung. Du, ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"Ich glaube, ich hab' genug gesagt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~Sie scheint einen Moment lang nachzudenken und zuckt dann die Schultern. "Dann sind wir schon zwei. Sehr seltsam. Hab' sowas noch nie gehört. Schade um die Erinnerungen."~ */
  IF ~~ THEN REPLY #14495 /* ~"Weißt du vielleicht, wieso das passiert?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"Jetzt sag das bloß nich zu laut." Sie sieht sich um. "Sehr seltsam. Hab' sowas noch nie gehört. Schande um die Erinnerungen."~ */
  IF ~~ THEN REPLY #14499 /* ~"Weißt du vielleicht, wieso das passiert?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"Nee, nich eine. Hab' nie einen gekannt, den der Tod nich haben wollte... bis jetzt."~ */
  IF ~~ THEN REPLY #14503 /* ~"Vielleicht könnte ich dir noch ein paar andere Fragen stellen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~Sie runzelt die Stirn. "Ich würd an deiner Stelle auf deinen Verstand aufpassen. Der is scharf genug, dich umzubringen." Sie dreht sich weg, macht eine abweisende Geste mit der Hand. "Laß mich in Ruhe."
~ */
  IF ~~ THEN REPLY #14506 /* ~"Leb wohl."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"Hä? Red' Klartext, Jungchen."~ */
  IF ~~ THEN REPLY #14508 /* ~"Ich hab' ein paar Freunde, die glauben, daß Institutionen wie die Staubmenschen abgeschafft werden sollten."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"Ich habe Blödsinn geredet. Ich wollte dir noch ein paar andere Fragen stellen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"Oh?" Sie lächelt süffisant. "Du spielst nich zufällig auf die *Liga* an?"~ */
  IF ~~ THEN REPLY #14512 /* ~"Ja."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"Vielleicht..."~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"Ich habe Blödsinn geredet. Ich wollte dir noch ein paar andere Fragen stellen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"Tccchhh! Diese heißsporigen Aufrührer sind noch übergeschnappter als die Staubmenschen, Jungchen. Das is nix für ne alte Frau wie mich."~ */
  IF ~~ THEN REPLY #14517 /* ~"Nein? Ich glaube, du könntest ein wertvolles Mitglied sein."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"Bevor du nein sagst, denk mal hierüber nach: Als du dem Tod gerade so entkommen bist, hast du gedacht, daß das Leben vielleicht doch lebenswert ist. Die Staubmenschen verderben neue Mitglieder, bringen sie dazu, zu glauben, daß der Tod dem Leben vorzuziehen ist. Glaubst du, daß das stimmt?"~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"Es schien, als hättest du eine Veränderung gebraucht."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"Na gut. Ich werde jetzt gehen... laß mich wissen, falls du es dir anders überlegst."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"Ich glaub, da irrst du dich." Sere lächelt leise; sie wirkt amüsiert. "Ich hab' vielleicht meine Zweifel, aber *so* weit bringen die mich nun doch nich vom Weg ab."~ */
  IF ~~ THEN REPLY #14522 /* ~"Dann denk mal hierüber nach: Als du dem Tod gerade so entkommen bist, hast du gedacht, daß das Leben vielleicht doch lebenswert ist. Die Staubmenschen rekrutieren neue Mitglieder, indem sie sie dazu bringen, zu glauben, daß der Tod dem Leben vorzuziehen ist. Glaubst du, daß das stimmt?"~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"Na gut, eine letzte Frage: Was hältst du vom Todesvertrag?"~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"Na gut. Ich werde jetzt gehen... laß mich wissen, falls du es dir anders überlegst."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"Der Todesvertrag?" Sie wirkt überrascht. "Was is damit?"~ */
  IF ~~ THEN REPLY #14527 /* ~"Glaubst du, daß es eine *gute* Sache ist, die Leiche eines Menschen als Sklavenarbeit zu kaufen? Eine momentane Schwäche des Geistes einer Person auszunutzen, um ihre Körper zu versklaven, nachdem sie vondannen gegangen sind? Sollten die Staubmenschen etwa darauf stolz sein?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"Das bezweifle ich, Jungchen."~ */
  IF ~~ THEN REPLY #14529 /* ~"Kann ich dir noch ein paar andere Fragen stellen...?"~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"Tja, nein... aber..."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"Und was ist mit dem Todesvertrag? Glaubst du, daß es eine *gute* Sache ist, die Leiche eines Menschen als Sklavenarbeit zu kaufen? Eine momentane Schwäche des Geistes einer Person auszunutzen, um ihre Körper zu versklaven, nachdem sie vondannen gegangen sind? Sollten die Staubmenschen etwa darauf stolz sein?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"Hör dir nur mal selbst zu, Sere. Selbst in deinen Antworten schweben Zweifel. Du glaubst die Staubmenschen-Philosophie nicht. Du weißt, daß sie falsch ist."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~"Äh... also..." Sere runzelt die Stirn. "Hmmmm. Also, ich sag jetzt nich, daß ich mit allen Praktiken der Staubmenschen *übereinstimme*, aber was würden deine Freunde da schon tun können?"~ */
  IF ~~ THEN REPLY #14535 /* ~"Wir würden die Mauern niederreißen. Wir werden neu anfangen. Und alle werden frei von diesen Heucheleien sein, die sie Philosophien nennen."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"Also gut, ich bin ganz Ohr für deine Freunde." Sere scheint über sich selbst überrascht zu sein. "Und vielleicht noch mehr." Sie lacht. "Ich fühl mich schon lebendiger.... muß der Reiz an dem allen sein."~ */
  IF ~~ THEN REPLY #14537 /* ~"Du wirst es nicht bereuen. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"Danke, Sere. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"Wie sieht das aus?"~ */
  IF ~~ THEN REPLY #14540 /* ~"Keine Ahnung."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"Es ist nicht wichtig. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"Wenn du nich weißt, wie es aussiehst, wie willste's denn dann finden?"~ */
  IF ~~ THEN REPLY #14544 /* ~"Das frage ich mich langsam auch. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"Es ist nicht wichtig. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~Seres Stirn legt sich in Falten. "Dieser *Hund*... das is der Schlimmste von der ganzen Sammler-Horde. Ich hab' gehört, daß er seine Absteige irgendwo am Lumpensammler-Platz hat, viele Straßen westlich vom Tor der Leichenhalle. Gefährlicher Ort allerdings. Einige Sammler sind nich geduldig genug zu warten, bis die Leute sterben, damit sie sie für Klimper verkaufen können."~ */
  IF ~~ THEN REPLY #14547 /* ~"Sammler?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"Das is Ungeziefer, das sich aus den Eingeweiden des Stocks von Leichen ernährt, die es den Staubmenschen verkauft. Die Toten sind ihr Lebensunterhalt. Ne bunte Horde. Man schämt sich direkt, mit sowas in derselben Stadt zu wohnen." Sie seufzt. "Tcchhh. Wenigstens helfen sie, die Straßen sauberzuhalten."~ */
  IF ~~ THEN REPLY #14551 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"Is ja nix Schlimmes. An wen denkste denn?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"Was kannst du mir über Den-Tod-Erwartend erzählen?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"Kannst du mir was über Mortai erzählen?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"Was kannst du mir über den Adlaten Emoric erzählen?"
~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~" Was kannst du mir über Altes Kupferauge erzählen?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"Ich habe bei der Leichenhalle einen Schreiber getroffen, Dhall. Kennst du ihn?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"Ich habe bei der Leichenhalle einen Führer getroffen, Soego. Kennst du ihn?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"Eine der Einbalsamiererinnen in der Leichenhalle... Ei-Vene. Kennst du sie?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"Ach vergiß es. Ich weiß gar nicht, wie sie heißen."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"Vergiß es. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"Dieses Jungchen war hier mal Stammkunde. Weiß nich, was mit ihm passiert is. Vielleicht is er 'n bißchen von der Rolle, seit sein Freund gestorben is."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"Erklär das mal"~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"Erklär das mal"~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"Ist Soego schon immer ein Führer bei der Leichenhalle gewesen?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"Einer seiner Freunde wurde vor 'n paar Wochen im Stock getötet, von Ratten zerrissen." Sie schüttelt den Kopf. "Schmutzige Geschichte."~ */
  IF ~~ THEN REPLY #14572 /* ~"Ist Soego schon immer ein Führer bei der Leichenhalle gewesen?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"Nein, nur die letzten paar Monate... und zuletzt hab' ich gehört, daß er auf irgendeine Mission losgeschickt wurde, aber ich weiß nich wohin."~ */
  IF ~~ THEN REPLY #14577 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"Tchhhh. Dhall? Das war mein Lehrer in den Philosophischen Künsten während meiner frühen Ausbildung in der Leichenhalle; 'n verkrusteter alter Narr. Hab' gehört, daß er krank is. Ich wette, der langweilt selbst den Tod zu Tode."~ */
  IF ~~ THEN REPLY #14581 /* ~"Stirbt er?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"Tchhhh. Der is kranker als 'n scheckiger Hund. Für den is nich mehr viel Sand im Stundenglas."~ */
  IF ~~ THEN REPLY #14586 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"Den-Tod-Erwartend? Tchhh! Das Jungchen hat gerade mal *halb* so viel Intelligenz wie 'n Esel. Der *will* tatsächlich sterben, und das, wo er noch so jung is. Ich wünscht, der Tod *würde* seinen Käfig mal schütteln. Das würd ihm das Eine oder Andere beibringen..."~ */
  IF ~~ THEN REPLY #14594 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"Der steingesichtige alte Narr. Ich hab' ihn unterrichtet, weißte, und ich hab' den Adlaten immer geehrt, und dann bin ich aufgewacht. Er is 'n verkrusteter alter Ghul, der hier in seiner Freizeit hockt, um dafür zu sorgen, daß die jüngeren Staubmenschen immer 'n Autoritätssymbol vor Augen haben in dieser Bar." Sie murmelt: "Alter Aasgeier."
~ */
  IF ~~ THEN REPLY #14598 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"Mortai? Ha! Ich dachte, du würdest mich was über 'n Staubmenschen fragen." Sie spuckt. "Es gibt keinen Staubmenschen, der noch weniger Staubmensch is als dieser nach Klimper riechende, Knochenschüssel-rasselnde Hohlkopf!"~ */
  IF ~~ THEN REPLY #14602 /* ~"Wie meinst du das?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"
~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"Mortai is so eifrig, seine Vorgesetzten zu beeindrucken, indem er die meisten Todesverträge unterschrieben bekommt, daß ich mich frage, ob aus dem je ein Staubmensch wird."~ */
  IF ~~ THEN REPLY #14607 /* ~"Ich verstehe nicht."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"Er is *eifrig*, seine Verträge unterschrieben zu bekommen, Jungchen. Er macht sich Sorgen um seinen Ruf. Er denkt an seine *Karriere* bei den Staubmenschen. Das sagt doch eigentlich schon alles."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"Ich verstehe immer noch nicht."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"Ich verstehe immer noch nicht."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~"Man sagt, daß Leidenschaften einen umbringen." Sere schnaubt. "Tchhh. Bei den Staubmenschen is das Gegenteil der Fall. Leidenschaften halten einen am Leben. Und wenn man die Leidenschaften nich ablegen kann, Eifer, Raffgier, Ehrgeiz, dann is man dazu verdammt, niemals richtig zu sterben, weil das Leben immer einen Teil von einem festhält."~ */
  IF ~~ THEN REPLY #14618 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"Wer?"~ */
  IF ~~ THEN REPLY #14622 /* ~"Eine merkwürdige junge Frau... sie sieht schlecht, ist fast taub und hat Krallen als Hände?"~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"Vergiß es. Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~Sere schüttelt den Kopf. "Vielleicht is sie ein Neuling. Ich hab' noch nie von ihr gehört."~ */
  IF ~~ THEN REPLY #14627 /* ~"Na gut. Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."
~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"Über den weiß ich nich viel... das is'n seltsames Vollblut. Er bewegt sich nie von der Stelle, ißt nie, trinkt nie, wartet einfach nur." Sie erschauert leise. "Macht mir 'n ganz unbehagliches Gefühl."~ */
  IF ~~ THEN REPLY #14631 /* ~"Kann ich dich nach ein paar anderen Staubmenschen fragen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"Und das solltest du auch. Der Tod hat nichts Tröstendes."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"Meine Situation ist einzigartig... ich bin in der Leichenhalle aufgewacht. Ich vermute, sie hielten mich für eine Leiche und wollten mich begraben. Das Seltsame ist, daß ich glaube, wirklich gestorben zu sein... und dann wieder 'gesund' geworden bin."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"Ich bin dem Tod viel näher gekommen als viele andere Menschen. Ich scheine nicht sterben zu können... jedenfalls nicht, soweit ich weiß."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"Da hast du wohl recht. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"Mensch, nee, das is ne Schande, Jungchen." Sere räuspert sich hörbar. "Wenn das Grinsen eines Totenschädels nich ausreicht, dich ans Leben zu klammern, gibt es wahrscheinlich überhaupt keine Kraft auf den Ebenen, die etwas Verstand in dich reinprügeln könnte."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"Meine Situation ist einzigartig... ich bin in der Leichenhalle aufgewacht. Ich vermute, sie hielten mich für eine Leiche und wollten mich begraben. Das Seltsame ist, daß ich glaube, wirklich gestorben zu sein... und dann wieder 'gesund' geworden bin."
~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"Also, ich habe dem Tod viel häufiger als andere Menschen ins Auge geblickt. Ich scheine nicht sterben zu können... jedenfalls nicht, soweit ich weiß. Man wird irgendwie tot gegenüber dem Tod."~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"Das ist deine Meinung. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"Mensch, nee, ich erspar dir die Vorstellung." Sere schnüffelt. "Das is n bunter Haufen. Wenn du etwas über einen von ihnen wissen willst, finde erst den Namen raus und komm dann wieder zu mir."~ */
  IF ~~ THEN REPLY #14645 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"Dann werde ich mal losziehen und mit einigen von ihnen reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~Sie zuckt die Schultern. "Ich denke mal, die Staubmenschenroben passen mir nich mehr so gut wie früher mal."~ */
  IF ~~ THEN REPLY #14648 /* ~"Was ist passiert?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"Was hat denn diese Glaubenskrise ausgelöst?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~Sere runzelt die Stirn, als sie dich sieht. "Spring lieber wieder zurück in deine Krypta, Jungchen. Ich hab' nich mehr viel Zeit in diesem Leben, um jetzt mit dir einen Plausch abzuhalten."~ */
  IF ~~ THEN EXIT
END
