// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~Vidíš staršího muže v potrhaných šatech. Znuděně se na tebe dívá.~ */
  IF ~~ THEN REPLY #58402 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~Dál se tváří jako znuděný k smrti. Nakonec přikývl. "Nazdárek. Proč na mě klapeš hubou, kámo?"~ */
  IF ~~ THEN REPLY #58407 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"Žádnej důvod, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~Pomalu přikývl a pak se podíval stranou. "No, jsem v týhle stoce, protože jsem kradl, ne proto, abych odpovídal na nějaký pitomý otázky..." Dívá se na tebe naštvaně. "Vypadni."~ */
  IF ~~ THEN REPLY #58416 /* ~"Život tady musí být tvrdej. Bude ještě tvrdší, když budeš mrzák."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"No, tak to už asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~Zamračil se, zatímco uvažuje nad tvými slovy. Všiml sis, jak jeho oči sledují některé z tvých jizev, nakonec se ti podíval přímo do očí. "Vyhrožuješ mi, vole?"~ */
  IF ~~ THEN REPLY #58421 /* ~"Ano. Odpověz mi na otázky, nebo z tebe začnu odřezávat kousky."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~Pomalu přikývl. "Jaké otázky?"~ */
  IF ~~ THEN REPLY #58426 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"Hledám devu, prý je někde tady."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~Zaváhal. "Gib... jmenuju se Gib."~ */
  IF ~~ THEN REPLY #58435 /* ~"Proč jsi tady?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"Neposloucháš mě? Říkal jsem, že jsem byl zloděj. A jsem tady, protože mě chytili." Usmál se. "Pokud už ze mě chceš vymlátit odpovědi, ptej se alespoň na něco inteligentního."~ */
  IF ~~ THEN REPLY #58441 /* ~"Rýpat do mě, to taky není zrovna geniální..."~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~Pokrčil rameny.~ */
  IF ~~ THEN REPLY #58447 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"Vězení je rozdělený do tří prstenců, vnitřního, centrálního a vnějšího. Tohle je vnější prstenec, jsou tady malí kriminálníci, zloději a tak. V centrálním prstenci jsou tvrdší lumpové, grázlové a tak. Vnitřní kruh je pro nejhorší a nejnebezpečnější, vrahy, spiklence, nepřátelé státu a takový..."~ */
  IF ~~ THEN REPLY #58451 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~Ustaraně se na tebe podíval. "Deva... jo, je tady dole. Ale jestli ho hledáš, měl by sis to rozmyslet."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"Kvůli moru?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"A to proč?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~Přikývl. "Tak o tom víš... ano, mor. Zasáhlo nás to rychle a tvrdě, většina nakažených zdechla." Zamračil se na tebe. "Každej, kdo se dozví, že jdeš po devovi, se k tobě nepřiblíží..."~ */
  IF ~~ THEN REPLY #58466 /* ~"Kde je?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"Tam někde..." Mávl rukou. "Nakonec na něj narazíš."~ */
  IF ~~ THEN REPLY #58471 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"Povídá se, že roznáší mor." Podíval se na tebe a čeká na reakci. Pak pokrčil rameny. "Nevím, jestli to je pravda, ale mor vypuknul hned po tom, co ho našli."~ */
  IF ~~ THEN REPLY #58476 /* ~"Pověz mi o tom moru."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"Zasáhlo nás to rychle a tvrdě, většina nakaženejch skončila v knize mrtvejch." Zamračil se na tebe. "Každej, kdo bude vědět, že jdeš po devovi, se k tobě nepřiblíží..."~ */
  IF ~~ THEN REPLY #58483 /* ~"Kde ho můžu najít?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~Vidíš zloděje Giba. Zamračil se na tebe. "Zase zpátky... skvělý."~ */
  IF ~~ THEN REPLY #58490 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"Sbohem."~ */ EXIT
END
