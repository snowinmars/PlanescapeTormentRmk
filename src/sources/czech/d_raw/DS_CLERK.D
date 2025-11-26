// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~Mužův jemný hlas doplňuje jeho klidné a úhledné vzezření. "Zdravím. Přišel jsi sem použít senzorický kámen?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"Ano."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"Ano."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~Muž přikývl. "Toto je veřejné senzorium, kde jsou komnaty se senzorickými kameny. Každý kámen obsahuje nějaký vjem - který může uživatel sám prožít. Vnímaví mají použití zdarma, návštěvníci musí zaplatit malý poplatek. Odpovědělo to na tvé otázky?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"Z větší části. Rád bych použil některý ze senzorických kamenů."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"Z větší části. Rád bych použil některý ze senzorických kamenů."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"Ne..."~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"To bude stačit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"Tak to ti nemohu pomoci. Pokud pochopitelně nechceš použít některý kámen...?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"Ano."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"Ano."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"Ne, děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~Muž se usmál a popsal ti některé z vjemů, které jsou momentálně dostupné.

"Budou ti tyto vyhovovat?"
~ */
  IF ~~ THEN REPLY #46372 /* ~"'Nevyhnutelná bolest' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"'Něžná láska' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"'Ohlupující nuda' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"'Čirý úžas' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"'Sžíravá netrpělivost' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"'Vyčerpané odevzdání' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"'Nadpřirozená touha' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"Hm, jaké jsou další?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~Muž přikývl a popsal ti některé z vjemů, které jsou momentálně dostupné.

"Budou ti tyto vyhovovat?"~ */
  IF ~~ THEN REPLY #46382 /* ~"'Psychóza' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"Sžíravá žárlivost' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"'Hořká nenávist' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"'Čisté veselí' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"'Vylekaná radost' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"'Ponuré odhodlání' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"'Úplné zmatení' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"Vlastně, jaké to byly ty předchozí?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"Jsou ještě nějaké?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~Muž přikývl a popsal ti poslední z vjemů, které jsou momentálně dostupné.

"Budou ti tyto vyhovovat?"~ */
  IF ~~ THEN REPLY #46393 /* ~"'Hrozná lítost' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"'Šok a povznesení bouřlivé pomstychtivosti' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"'Pomalu vycházející hrůza' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"'Naprostý zmatek' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"'Neuvěřitelně důležité tajemství' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"'Lykantropie' bude akorát."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"Vlastně, jaké to byly ty předchozí?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"Momentálně je přístupných tucet obyčejných vjemů a šest 'extravagantních'. Cena za standardní kámen je deset měďáků, za extravagantnější stojí stopadesát měďáků. Chceš standardní nebo lepší vjemy?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"Standardní..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"Extravagantní..."~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"Ani jedno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~Muž se usmál a popsal ti některé z vjemů, které jsou momentálně dostupné.

"Budou ti tyto vyhovovat?"
~ */
  IF ~~ THEN REPLY #46406 /* ~"'Nevyhnutelná bolest' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"'Něžná láska' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"'Ohlupující nuda' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"'Čirý úžas' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"'Sžíravá netrpělivost' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"'Vyčerpané odevzdání' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"'Nadpřirozená touha' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"Pověz mi o ostatních..."~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"Vlastně, jaké jsou ty extravagantní?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~Muž přikývl a popsal ti některé z vjemů, které jsou momentálně dostupné.

"Budou ti tyto vyhovovat?"~ */
  IF ~~ THEN REPLY #46417 /* ~"'Psychóza' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"Sžíravá žárlivost' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"'Hořká nenávist' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"'Čisté veselí' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"'Vylekaná radost' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"'Ponuré odhodlání' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"'Naprostý zmatek' bude akorát."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~"Počkej... popiš mi znovu ty předchozí..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"Vlastně, jaké jsou ty extravagantní?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~Muž s úsměvem pokynul a popsal ti složitější vjemy.

"Budou ti tyto vyhovovat?"~ */
  IF ~~ THEN REPLY #46428 /* ~"'Hrozná lítost' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"'Šok a povznesení bouřlivé pomstychtivosti' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"'Pomalu vycházející hrůza' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"'Naprostý zmatek' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~"'Neuvěřitelně důležité tajemství' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"'Lykantropie' bude akorát."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"Vlastně, co mi můžeš říct o těch standardních?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z větších místností, tři místnosti proti směru ručiček od schodů. Má červenooranžovou barvu."~ */
  IF ~~ THEN REPLY #46437 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"Vynikající. Kámen, který chceš použít, je v jedné z větších místností, dvě místnosti proti směru ručiček od schodů. Má fialovou barvu."~ */
  IF ~~ THEN REPLY #46439 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"Skvělé. Kámen, který chceš použít, je v jedné z větších místností, jednu místnost proti směru ručiček od schodů. Má modrofialovou barvu."~ */
  IF ~~ THEN REPLY #46441 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"Dobře. Kámen, který chceš použít, je v jedné z menších místností, jednu místnost od schodů ve směru hodinových ručiček. Má žlutozelenou barvu."~ */
  IF ~~ THEN REPLY #46443 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, dvě místnosti po směru hodinových ručiček od schodů. Je světle modrý."~ */
  IF ~~ THEN REPLY #46445 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, tři místnosti po směru hodinových ručiček od schodů. Má fialovou barvu."~ */
  IF ~~ THEN REPLY #46447 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, čtyři místností po směru hodinových ručiček od schodů. Má žlutozelenou barvu."~ */
  IF ~~ THEN REPLY #46449 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, pět místností po směru hodinových ručiček od schodů. Má červenooranžovou barvu."~ */
  IF ~~ THEN REPLY #46451 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, šest místností po směru hodinových ručiček od schodů. Má fialovou barvu."~ */
  IF ~~ THEN REPLY #46453 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"Dobrý výběr. Kámen, který chceš použít, je v jedné z menších místností, sedm místností po směru hodinových ručiček od schodů. Má světlomodrou barvu."~ */
  IF ~~ THEN REPLY #46455 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"Doufám, že sis užil svou senzorickou zkušenost. Mohu pro tebe ještě něco udělat?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"Chtěl bych ještě jednou."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"Chtěl bych ještě jednou."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"Mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"Nic. Sbohem."~ */ EXIT
END
