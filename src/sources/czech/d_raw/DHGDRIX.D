// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~Vidíš vysokého muže v plátovém brnění. To je neobvyklé konstrukce s hroty čnějícími z ramen, loktů, a předloktí. Přiblížíš se, a on kývne hlavou. "Zdravím, občane."~ */
  IF ~~ THEN REPLY #37413 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~Ignorovat ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"Jak ti mohu pomoci, občane?" Přátelsky se na tebe dívá.~ */
  IF ~~ THEN REPLY #37416 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"Myslím že ne. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~Směje se. "Zajisté, občane."~ */
  IF ~~ THEN REPLY #37419 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"Hledám někoho jménem Lothar, nebo Pána Kostí..."~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, kdo by to mohl být?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"Potřebuji nakoupit nějaké zbraně."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"Potřebuji nakoupit nějaké magické artefakty."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"Děkuji. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~Ukolní se. "Já jsem Dixel, stráž Harmonických, občane. Já tady na tržišti udržuji mír."~ */
  IF ~~ THEN REPLY #37425 /* ~"Řekni mi o Harmonických."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~Mírně zpozorní. "Naše idea je jednoduchá: My jsme světlo. My jsme cesta. My jsme řád. My jsme pravda." Udělá gesto rukama. "Nebyla tam dokonce otázka o mém spojenství s nimi. Víš, nějací troubové hovořili o tom, že my rozněcujeme pouze chaos, ale oni o tom nic neví. Harmoničtí jsou akční. My udržujeme ve sférách a na ulicích pořádek." Pokývá na tebe a hledá ve tvé tváři nadšení.~ */
  IF ~~ THEN REPLY #37428 /* ~"Jdi."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"Aha. Mám ještě otázku..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~Vypadá velmy smělý a říká. "A nedržíme řád slovy. Útočíme, a útočíme tvrdě pro vnucení a udržení tohoto řádu. Nestálí obchodníci, cizí rytíři, nezávislí, anarchisté, Chaotici, kamarádi nepřátel... na ty všechny dopadá moc Harmonických. S námi chaos nemůže existovat!"~ */
  IF ~~ THEN REPLY #37431 /* ~"Co mi můžeš říct o ostatních Společenstvech?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"Aha. Ještě bych chtěl vědět..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~Vypadá spíše znuděně, pak ale pokrčí rameny. "Nic. Oni nejsou část "Pravdy" u Harmonických. Nestudoval jsem je."~ */
  IF ~~ THEN REPLY #37434 /* ~"Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~Překvapeně a strnule na tebe pohlédne, na chvilku se zamyslí, a už chce mluvit, ale slova se mu zarazí s dalším zamyšlením. "Nu, dobře... nikdo neví přesně, kde Lothar je, občane. My Harmoničtí ho jako výjimku necháváme být. Uh... Radil bych ti, abys dělal to samé."~ */
  IF ~~ THEN REPLY #37436 /* ~"Proč?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"Stále ho potřebuji najít."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"Aha... Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"Pak se tedy s tebou loučím."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~Hodí na tebe nepříjemný pohled. "Protože, troubo. Nezahrávej si s někým tak mocným jako je Lothar bez setsakramentsky dobrého důvody a party ostrých hochů! To je vše."~ */
  IF ~~ THEN REPLY #37441 /* ~"Stále ho potřebuji najít."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"Aha... Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"Pak se tedy loučím. Měj ."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~Než odpoví, trošičku zahloubá... "Výborně. Je nutno najít jeho zničený dům tady v této čtvrti." Začíná si tě prohlížet od hlavy k patě.~ */
  IF ~~ THEN REPLY #37445 /* ~"Děkuji. Mám nějaké další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~Před odpovědí se zamyslí. "Něco na způsob těchto zvuků má rád Lothar, Pán Kostí, myslím." Znervózní a z lehka k tobě promluví. "Nu, ne Lothar samotný, ale jeden z jeho henchmenů. Lothar udržuje svůj nos čistý."~ */
  IF ~~ THEN REPLY #37448 /* ~"Kde mohu najít tohoto 'Lothara?'"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~Ukazuje na trh. "Spousty obchodníků, občane. To, co potřebuješ nalezneš s největší pravděpodobností u nich."~ */
  IF ~~ THEN REPLY #37450 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"Díky, ahoj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~Drixel se ukloní. "Vítej zpět, občane. Jak mohu pomoci?"~ */
  IF ~~ THEN REPLY #37455 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"Už nic. Ahoj."~ */ EXIT
END
