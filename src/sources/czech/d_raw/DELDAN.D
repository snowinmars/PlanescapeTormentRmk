// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~Vidíš staršího plešatějícího muže s bílými vlasy. Jeho šaty nejsou nové, ale nejsou to hadry, které nosí ostatní vězni. Všiml sis, že ho obklopují svitky a knihy.~ */
  IF ~~ THEN REPLY #57546 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~Prohlédl si tě od hlavy k patě a usmál se. "No... copak to tady máme? Vypadáš hrozně, mladíku..." Ještě chvíli si tě prohlíží, pak pokrčil rameny. "Co pak ode mně chceš?"~ */
  IF ~~ THEN REPLY #57549 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"Možná ti budu moct pomoct. Ptej se." Usmál se.~ */
  IF ~~ THEN REPLY #57552 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"Prý je tady dole deva. Nevíš o tom něco?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"Jsem Eldan. Muž malého významu, na kterého dolehly zlé časy..."~ */
  IF ~~ THEN REPLY #57557 /* ~"Proč jsi tady?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~Zamračil se. "Můj zaměstnavatel už dál nepotřeboval mé služby. Než aby ukončil mé zaměstnání a můj život, raději mě dal zavřít sem."~ */
  IF ~~ THEN REPLY #57561 /* ~"Proč by to dělal?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"Byl zapletený do podezřelých obchodních praktik a já vedl jeho záznamy. Strčil mě sem, aby udržel svá tajemství v bezpečí... a aby mě udržel daleko od těch, kdo by chtěli znát jeho tajemství." Povzdychl si. "řekl bych, že je to lepší, než smrt, ale ne o moc."~ */
  IF ~~ THEN REPLY #57565 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~Pokrčil rameny. "Nevím nic jiného, kromě faktu, že je to vězení. Jsem v téhle cele od svého příchodu a neviděl jsem důvod, proč prozkoumávat toto nebezpečné místo."~ */
  IF ~~ THEN REPLY #57568 /* ~"Nikdy neopouštíš svou celu?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"Ne..." Podíval se stranou.~ */
  IF ~~ THEN REPLY #57572 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~Zamračil se a tázavě se na tebe podíval. "Deva? Nedovedu si to představit... co by tady deva dělal?" Pokrčil rameny. ~ */
  IF ~~ THEN REPLY #57576 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~Vidíš Eldana. Usmál se na tebe. "Opět jsi mě poctil svou přítomností. Proč?"~ */
  IF ~~ THEN REPLY #57578 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"To nic, sbohem."~ */ EXIT
END
