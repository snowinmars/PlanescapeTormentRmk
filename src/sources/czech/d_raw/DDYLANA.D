// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~Vidíš ženu středního věku v potrhaných šatech. Nepřátelsky se na tebe dívá.~ */
  IF ~~ THEN REPLY #57456 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"Odpal, vole." Vztekle na tebe zírá.~ */
  IF ~~ THEN REPLY #57459 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~Zamračila se na tebe. "Seš magor, nebo zkrátka pitomec? Řekla jsem ti odpal. Nezajímáš mě ty ani tvoje otázky!"~ */
  IF ~~ THEN REPLY #57462 /* ~"Pokud mi odpovíš na otázky, půjdu pryč..."~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"Nelíbí se mi tvůj přístup. Možná bych z tebe měl ty odpovědi vymlátit..."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~Vztekle na tebe zírá. "Fajn. Pohni sebou."~ */
  IF ~~ THEN REPLY #57466 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"Hledám devu, prý je tady dole."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"Nevím, proč by tě to mělo zajímat..." Odmlčela se. "Dylana."~ */
  IF ~~ THEN REPLY #57471 /* ~"Proč jsi tady?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~Povzdychla si. "Dělala jsem s pašerákem, kterej do města vozil pivo. Jednu noc nás chytli stráže. On se z problému vykoupil a mě tady nechal hnít..." Pokrčila rameny. "A jsem tady."~ */
  IF ~~ THEN REPLY #57475 /* ~"Má u tebe vroubek..."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~Usmála se. "Ano, to jo. Mimochodem, jmenuje se Voorsha. Jestli ho někdy potkáš, hlídej si záda."~ */
  IF ~~ THEN REPLY #57479 /* ~"Ano. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"Co říct? Je to zatracené vězení. Žiješ v cele a modlíš se za den, kdy zase uvidíš denní světlo."~ */
  IF ~~ THEN REPLY #57482 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~Zamračila se a přemýšlí. "Ne, to si nemyslím. Nikoho tady neznám, ale devy bych si všimla. Kdyby byl v tomhle prstenci, věděla bych o tom."~ */
  IF ~~ THEN REPLY #57485 /* ~"Tomhle prstenci?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"Ano, vězení je rozdělené do tří prstenců, vnějšího, centrálního a vnitřního. Čím horší zločin, tím hlouběji jdeš."~ */
  IF ~~ THEN REPLY #57489 /* ~"Který prstenec je tohle?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"Tohle je centrální prstenec. Horší než vnější, ale ne tak zlej jako vnitřní."~ */
  IF ~~ THEN REPLY #57493 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~Začíná něco říkat, pak se ale odmlčela. "Ano... ty vypadáš na týpka, kterej by to asi udělal."~ */
  IF ~~ THEN REPLY #57496 /* ~"Takže, odpovíš mi na mé otázky?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~Vidíš Dylanu. není zrovna šťastná, že tě zase vidí. "Zase zpátky... proč?"~ */
  IF ~~ THEN REPLY #57499 /* ~"Mám nějaké otázky..."~ */ GOTO 3
END
