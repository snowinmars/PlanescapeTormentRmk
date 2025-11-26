// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~Vidíš muže s utrápeným výrazem. Jak se k němu blížíš, zamračeně se na tebe podívá.~ */
  IF ~~ THEN REPLY #64433 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~Povzdychne si a zaměří na tebe svojí pozornost. "Zdravím i já tebe... Co chceš?"~ */
  IF ~~ THEN REPLY #64436 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"Nic, nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~Zamračí se. "Otázky... Nesnáším je. Vypadni vodsuď pitomče." ~ */
  IF ~~ THEN REPLY #64439 /* ~"Zabere ti to jenom chviličku..."~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"Nevěnuju ti ani zlomek času." Odmlčí se, sáhne za opasek a vytáhne dýku. "Co by si řek' tomu, kdybych ti místo toho do těla vrazil kus baatorianské ocele?"~ */
  IF ~~ THEN REPLY #64442 /* ~Zaútoč na něj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~Jdi pryč.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~Vidíš mladého muže. Jak se k němu blížíš, zamračeně se na tebe podívá.~ */
  IF ~~ THEN REPLY #64445 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~Usměje se na tebe, ale vypadá nervozně. "Ano. Zdravím a vítej... Chceš něco?"~ */
  IF ~~ THEN REPLY #64448 /* ~"Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"Ne, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~Zamračí se a povzdychne si. "Když musíš."~ */
  IF ~~ THEN REPLY #64451 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"Co děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"Co víš o deva?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"Není důležité kdo jsem. Prostě se ptej." Věnuje ti netrpělivý pohled.~ */
  IF ~~ THEN REPLY #64457 /* ~"Výborně. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"Co dělám tě nemusí zajímat. Prostě se ptej."~ */
  IF ~~ THEN REPLY #64460 /* ~"Výborně. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"Curst..." Odmlčí se a letmo na tebe pohlédne. "Nikomu nevěř. To je všechno, co potřebuješ o Curstu vědět, abys přežil. Nikomu nevěř..."~ */
  IF ~~ THEN REPLY #64463 /* ~"Zahrnuje to i tebe?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"Jasně. Mám ještě několik otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~Usměje se. "Absolutně..."~ */
  IF ~~ THEN REPLY #64467 /* ~"Jasně. Mám ještě několik otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~Jak přemýšlí, mračí se. "Ne, nic o deva nevím." Krčí rameny. "Ptej se ve správní kanceláři v centru města."~ */
  IF ~~ THEN REPLY #64470 /* ~"Budu. Mám ještě několik otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"Díky, sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~Vidíš rozlobeně vypadajícího muže. Jak se k němu blížíš, zamračeně se na tebe podívá.~ */
  IF ~~ THEN REPLY #64473 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~Bojovně se na tebe dívá. "Oh... Ahoj. Cokoliv chceš koupit, nemám to. Cokoliv chceš prodat, nechci to. Teď mě nech být." Upře na tebe pohled.~ */
  IF ~~ THEN REPLY #64476 /* ~"Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"Výborně, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"Hmm... Jak pěkné. Ty máš otázky.  Dobrá, ale ať je to tak či tak, stejně se od tebe nechci nechat otravovat. Jdi pryč." Zamračí se.~ */
  IF ~~ THEN REPLY #64479 /* ~"Zabere ti to jenom chviličku..."~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"Výborně, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~Povzdychne si a popuzeně rozhodí rukama. "Nádhera, snažil jsem se ti po dobrém říci *ne* a ty mi nechceš rozumět... Mám ti to snad říct po zlém?"~ */
  IF ~~ THEN REPLY #64482 /* ~"Jo, udělej to."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~Usměje se. "Dobrá tedy... Strč si svoje otázky do prdele!" Hodí po tobě hrubé gesto. "Vypadni pitomče!"~ */
  IF ~~ THEN REPLY #64485 /* ~"Výborně, sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~Vidíš znuděně se tvářícího muže. Jak se k němu blížíš, zamračeně se na tebe podívá.. "Už tě mám plný zuby, vypadni..." Otočí se pryč a ignoruje tě.~ */
  IF ~~ THEN REPLY #64487 /* ~Jdi pryč.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~Tato osoba vypadá extrémě rozrušená ze svého pobytu ve vězení. Nemůžeš z ní dostat jakoukoliv odezvu, bezohledu na to, jak tvrdě se snažíš.~ */
  IF ~~ THEN REPLY #64489 /* ~Jdi pryč.~ */ EXIT
END
