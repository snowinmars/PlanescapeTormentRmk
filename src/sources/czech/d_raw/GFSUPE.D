// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"Stráže! Stráže! Zastavte tohoto muže! ZASTAVTE HO!"~ */
  IF ~~ THEN REPLY #5337 /* ~Hotovo.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"Vypadni, troubo. Přijď někdy jindy a možná si promluvíme."~ */
  IF ~~ THEN REPLY #5339 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"Já... řekla... ODEJDI. Doufám, žes to konečně pochopil."~ */
  IF ~~ THEN REPLY #5341 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~Zasmála se na tebe se sarkasmem: "Děkuji ti velmi pěkně za tvou ochotu opravit nám ten stroj. Tvoje starost o prosperitu slévárny je skutečně úžasná. Blbče." Odplivla si před tebe a odvrátila se.~ */
  IF ~~ THEN REPLY #5343 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"Chtěl bych se tě na něco zeptat."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"Co? Ale jen velmi krátce... nemám náladu se vybavovat s někým jako jsi ty. Vždyť mám kvůli tobě plno práce."~ */
  IF ~~ THEN REPLY #5347 /* ~"Zvážil jsem to. Pomohu ti opravit poruchu na hnacím stroji."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"Kde je úřednická kancelář?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"Jak se můžu přidat k Božím lidem?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"Jak ti to můžu nahradit?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"Zapomeň na to. Jdu pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"Oh, takže, když něco potřebuješ, zničehonic chceš pomáhat? Tvoje testy můžou být zaměřené na tvé sobecké chování, hlupáku, ale to neznamená, že se mi líbí. Skutečně ne. A nelíbíš se mi ani ty. Sehnali jsme si někoho jiného, kdo to udělá. Ty se na to vybodni." Odchází pryč.~ */
  IF ~~ THEN REPLY #5353 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"Než se mě ptát na něco jiného, radši si to najdi sám, hlupáku." Otočila se a jde pryč.~ */
  IF ~~ THEN REPLY #5355 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~Vypadala na chvíli, že zvažuje, zda ti pomoct stát se členem její frakce, nebo říct ti ať se na to vybodneš. S nechutí řekla, "Jdi do dveří, které jsou na pravé straně, ve shromažďovací místnosti ve slévárně. Najdi tam Keldora Duriana. On ti pomůže."~ */
  IF ~~ THEN REPLY #5357 /* ~"Díky. Mám jinou otázku."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"Nějaký způsob jakým bys mi to nahradil? Ha! Tak s tímto jdi do prdele, blbečku." Otočila se a jde pryč.~ */
  IF ~~ THEN REPLY #5360 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"Vítej, co hledáš?. Můžu ti s něčím pomoct? Jenom to, prosím tě, zkrať... musíme dodržovat náš rozvrh."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"Potřebuji si něco vyzvednout od úředníka. Kde je?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"Potřebuji použít tavící pec."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"Potřebuji použít tavící pec."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"Kde můžu sehnat věci potřebné ke kování?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"Myslím, že nic nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"Vidíš tu místnost, tam dole, s psacím stolem uvnitř? Sedí za ním. Tam můžeš dostat potřebné věci."~ */
  IF ~~ THEN REPLY #5377 /* ~"Díky. Mám jinou otázku."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~Rozhlédla se kolem, aby se ujistila, že ji nikdo nevidí, pak si sundala zlatý medailon, který měla kolem krku a nenápadně ti ho podala. "Neříkej nikomu, kde jsi k tomu přišel," zasyčela.~ */
  IF ~~ THEN REPLY #5380 /* ~"Díky. Mám jinou otázku."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"Ráda bych ti pomohla, ale jen nějaký hlavoun to může schválit. Budeš si muset o tom promluvit s Keldorem."~ */
  IF ~~ THEN REPLY #5383 /* ~"Dobře. Mám jiné otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"Díky za nic. Čau."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"Prosím. Prověř si zda máš všechny potřebné věci: Ochranu před ohněm, kleště, kladivo a no zajisté, přece železnou rudu."~ */
  IF ~~ THEN REPLY #5386 /* ~"Dobře. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"Kde můžu sehnat tyhle věci?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"Obávám se, že musíš dát šanci na práci u tavící pece i jiným členům. Už ji tu okupuješ příliš dlouho, příteli."~ */
  IF ~~ THEN REPLY #5390 /* ~"Dobře. Mám tedy další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"Ráda bych ti pomohla, ale potřebuji nějaké povolení, abych ti mohla umožnit vstup. Promiň."~ */
  IF ~~ THEN REPLY #5393 /* ~"To je v pořádku. Mám jinou otázku."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"Dobře tedy. Za chvíli jsem zpět."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"Další otázky? Pojďme na ně?"~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"Potřebuji si něco vyzvednout od úředníka. Kde je?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"Potřebuji se dostat do hlídané místnosti tam vzadu, ale ztratil jsem zplnomocnění."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"Potřebuji použít tavící pec."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"Potřebuji použít tavící pec."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"Jsem pověřen Keldorem, abych prozkoumal vraždu, která se tu stala. Co mi o tom můžeš říct?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"Hledám cestu ven."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"Hledám kancelář. Čekají tam na mne."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"Potřeboval bych, aby mě tu někdo provedl."~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"Kdo jsi?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"Co se tu děje?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"Co jsou zač ti Boží lidé?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"Kde můžu sehnat potřebné věci na práci u tavící pece?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"Myslím, že již nic nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"Je tedy dobře, že mám vlastní. Vezmi si ho, ale neříkej nikomu, že ho máš ode mne, dobře? Hodně štěstí."~ */
  IF ~~ THEN REPLY #5418 /* ~"Díky, mám další otázky."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"Díky, sbohem."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"Nemůžu tě pustit dovnitř. Lituji, ale musíš se dostat dovnitř jinudy."~ */
  IF ~~ THEN REPLY #5421 /* ~"Díky, mám další otázky."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"Díky, sbohem."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"Když nemůžeš najít ty, co se tu někde povalují, můžeš si je koupit u úředníka... za nepatrnou cenu, samozřejmě "~ */
  IF ~~ THEN REPLY #5424 /* ~"Vím. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"Díky, sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"V pořádku? Na co ještě čekáš? Běž kout! Pec může vychladnout, zatímco ty tu lelkuješ."~ */
  IF ~~ THEN REPLY #5427 /* ~"Dobře, ale nejprve se tě chci na něco zeptat..."~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"Kde můžu najít věci k práci s tavící pecí?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"V pořádku, v pořádku. Už jdu."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"Řekla jsem ti všechno, co vím! Co chceš ode mě ještě?"~ */
  IF ~~ THEN REPLY #5431 /* ~"Chci abys mi řekla svůj příběh znovu... pomalu."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~"Mám jiné otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"Nic, tak se tedy měj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"Chceš vědět, co jsem viděla v noci, když se stala vražda? Tak tedy... dělala jsem přesčas, když jsem uslyšela ten zvuk, jako by se někdo s někým pral. Když jsem se šla podívat, uviděla jsem temný stín, jak proklouzl přes dveře do shromažďovací haly a spustila jsem alarm."~ */
  IF ~~ THEN REPLY #5435 /* ~"Vzpomínáš si na nějaké detaily?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"Nevíš, kdo to mohl být?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"Jak můžu vědět, že jsi to neudělala ty?"~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"Díky. Mám ještě nějaké otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"Vím jen o třech lidech, kteří měli přístup do budovy takhle v noci. Jsou to Thildon, Saros a Bedai-Lihn. Každý z nich sice vypadá úplně jinak, ale kvůli oparu z tavící pece jsem na útočníka pořádně neviděla."~ */
  IF ~~ THEN REPLY #5441 /* ~"Jak můžu vědět, že jsi to neudělala ty?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"Tedy oni jsou jedinými podezřelými? Vypadá to příliš jednoduše."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"V pořádku. Kde mohu najít Thildona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"Dobře. Kde bych mohl najít Sarose?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"Jo to je jasné. Kde bych mohl najít Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"Dobře. Mám ještě nějaké otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~"Mám pár otázek."~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"Mám alibi. Jak možná víš, Keldor už ode mne ví celou pravdu. Já nemám co skrývat. Thildon, Saros a Bedai-Lihn očividně mají, protože se odmítli podrobit Keldorovu kouzlu." ~ */
  IF ~~ THEN REPLY #5449 /* ~"V pořádku. Mám jiné otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"Kde bych mohl najít Thildona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"Kde bych mohl najít Sarose?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"Kde bych mohl najít Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"Děkuji ti. To jistě pomůže. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"Obyčejně se nachází mezi touto hlavní slévárnou a experimentální komorou vzadu. Nemůžeš ho minout."~ */
  IF ~~ THEN REPLY #5455 /* ~"Kde najdu Sarose?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"Kde najdu Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"Měl bych jiné otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"Probereme to. Neslyšela jsi o mne naposledy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"Obyčejně se zdržuje v hlavní hale. Nemůžeš ho minout."~ */
  IF ~~ THEN REPLY #5458 /* ~"Kde najdu Thildona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"Kde najdu Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"Měl bych jiné otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"Jsem si tím jist. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"Najdeš ji někde ve Slévárně. Je jedním z hlavních techniků, proto běhá po celé fabrice. Poznáš ji, když ji uvidíš."~ */
  IF ~~ THEN REPLY #5461 /* ~"Kde najdu Thildona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"Kde najdu Sarose?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"V pohodě. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"V pohodě. Sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"Děkuji ti za tvou práci na hnacím stroji. Už to zvládneme i bez tebe, jenom to zabere trochu času. Jsme ti za to vděční. Mohu pro tebe ještě něco udělat?"~ */
  IF ~~ THEN REPLY #5464 /* ~"Mám nějaké otázky."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"Už vážně nic. Sbohem."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"Zase ty? Co chceš teď? Promiň mi mou nevrlost, ale máme tu jistý rozvrh."~ */
  IF ~~ THEN REPLY #5467 /* ~"Mám na tebe nějaké otázky."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"Jsem pověřen Keldorem, abych prozkoumal vraždu, která se tu stala. Co mi o tom můžeš říct?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"Teď zrovna nic, ale vrátím se."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~Vidíš malou ženu. Na jejím čele se rýsují nepatrné rohy a uši se jí ostře stáčejí k lebce. Trochu smrdí sírou, asi načuchla dýmem ze slévárenských ohňů. "Zdravím. Co mohu pro tebe udělat?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"Jsem pověřen Keldorem, abych prozkoumal vraždu, která se tu stala. Co mi o tom můžeš říct?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"Hledám východ."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"Hledám kancelář. Čekají tam na mě."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"Chtěl bych, aby mě tu někdo provedl."~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"Kdo jsi?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"Co se tu děje?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"Za čím vlastně Boží lidé stojí?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"Nic, děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"Podívej se semhle. Vidíš ten dlouhý tunel? Jednoduše jím půjdeš, až se objevíš u Hlavní brány."~ */
  IF ~~ THEN REPLY #5480 /* ~"Dík."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"Je to ta místnost se stolem. Měl by sedět za ním."~ */
  IF ~~ THEN REPLY #5482 /* ~"Dík. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"Obyčejně je to činnost, kterou dělám strašně ráda, jenže právě teď tu máme takový shon. Vrať se někdy jindy a já ti ráda pomůžu."~ */
  IF ~~ THEN REPLY #5485 /* ~"Co se stalo?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"V pořádku. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"Jsem Alissa Tield, dozorkyně nad tímhle úsekem - tento úsek je hlavním a nejdůležitějším v celé Velké slévárně, tady se uskutečňuje větší část všech prací. Slévárna je samozřejmě větší než tohle, jenže my máme velký kontrakt, na kterém pracujeme, museli jsme přísahat na utajení projektu a většina pracovišť pracuje na hranici svých možností. Omlouvám se."~ */
  IF ~~ THEN REPLY #5489 /* ~"Rozumím. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"Utajení? Směšné! Sbohem!"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"Vím. Dík za tvůj čas."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"Máme velký - a velmi, velmi tajný - kontrakt, takový, který nám úplně vytěžuje zdroje. Většinou denodenně pracujeme i na jiných menších kontraktech, jenže teď se soustřeďujeme na plnění toho hlavního. Neobtěžuj mě otázkami o tom, protože ti i tak nic neprozradím."~ */
  IF ~~ THEN REPLY #5493 /* ~"Vypadáš v tom velmi neochvějně. V pořádku. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"Vypadáš v tom velmi neochvějně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"Je to frakce společenská i jednotlivců, záleží na tom s kým právě mluvíš, ale podstatou je, že život, nikoliv existence jako taková, je testem druhů. Všechny věci, které se stanou, nás testují a podle toho jak reagujeme, určujeme jak blízko budeme k porozumění všeho. Vidíme pravdu v mnohovesmíru a je zjevné, že naše cesta je ta pravá."~ */
  IF ~~ THEN REPLY #5496 /* ~"Já... vím. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"Jak se k vám můžu přidat?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"Hm. Děkuji ti za všechno."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"Běž si promluvit s Keldorem Durianem, je v místnosti, která je vpravo od shromažďovací haly."~ */
  IF ~~ THEN REPLY #5500 /* ~"Dík. Mám další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"Dík. Sbohem."~ */ EXIT
END
