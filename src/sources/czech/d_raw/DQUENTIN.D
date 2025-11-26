// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~Muž stojící před tebou dosáhl středního věku i výšky. Jeho býčí šíje na tebe působí dojmem houževnatosti, nicméně ramena nosí skleslá, jako by nesla ohromnou tíhu. V očích se mu usídlí nedůtklivý pohled kdykoliv spatří černý monolit.~ */
  IF ~~ THEN REPLY #7411 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~Zanechej toho muže o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~Muž ti věnuje pohled. "Kámo, je tu dost místa. Nemusíš mě odsud vyhazovat, když se chceš semhle postavit."~ */
  IF ~~ THEN REPLY #7414 /* ~"Vlastně jsem se chtěl dozvědět, proč tady ten monolit stojí."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"Fajn. Nezlob se, že jsem tě vyrušil."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"Je to náhrobní kámen Sfér," ušklíbl se. "Hřbitov pro ména, co sou vyškrábaný na tom šutru. Já můžu akorát tak doufat, že zrovna moje méno bude to, kvůlivá kterýmu se ten balvan rozsype." Ukázal prstem na základnu pomníku. "'Quentin', pořádně hluboko vytesané přímo zde, aby ten zatracenej prevít sebou švihl na zem."~ */
  IF ~~ THEN REPLY #7417 /* ~"Náhrobek Sfér?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"Jo jo," pousmál se kajícně Quentin. " Spalovači ryjou ména mrtvejch tady na ten pomník..." Přímo na něj ukázal. "A vlastně taky na zdi. Ani tak tu podle mýho není dost místa, ale to spral ďas... fakt se snažej o maximum. Přečtu s bídou tak polovinu men."~ */
  IF ~~ THEN REPLY #7420 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"Pročítám si nové přírůstky. Každý den se snažím nacházet další a další; případně si vzpomenout, zdali jsem je znal. Nic jiného."~ */
  IF ~~ THEN REPLY #7423 /* ~"Spalovači zaznamenávají jména všech zemřelých tady na pomník?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"Jasně, vyrejvaj je přímo do toho balvanu... a taky na zdi kolem." Na ta slova se Quentin ušklíbl. "Fakt nevím, proč se tak namáhaj s počítáním mrtvejch... Spalovače přece mnohem více zajímají živí."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"Živí?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"Živí?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"Takže... víš o těch truchlících Spalovačích, co sem chodí? Oni nedrží smutek za mrtvé, rozumíš, oni oplakávají živé. Je dost těžké z nich vyrazit kloudné slovo aniž by nezačali s tím, že za tebe budou truchlit pro  nějaký *živý* pako."~ */
  IF ~~ THEN REPLY #7430 /* ~"A proč by někdo, u všech čertů, truchlil nad živými lidmi?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~"Tos mě dostal brácho," pokrčil rameny. "Zkus se zeptat rovnou jich. Podle mýho je každý mrtvý mnohem vhodnější cíl smutku než kterýkoliv ubožák v téhle díře." Pohnul hlavou směrem k monumentu. "Každé jméno na něm je v mé knize velebeno, tak jest."~ */
  IF ~~ THEN REPLY #7433 /* ~"Poznal jsi někoho, kdo se vrátil zpět potom, co sem vepsali jeho jméno?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"Můžeš mi říct, který z bláznivých Spalovačů je na druhé straně monolitu?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"Chápu. Díky, že sis se mnou promluvil. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~Vidíš Quentina. Neustále si prohlíží kámen, jako by ho mohl pohledem převrhnout.~ */
  IF ~~ THEN REPLY #7437 /* ~"Zdravím, Quentine."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~Opusť ho.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"Ej?" Quentin na tebe pohlédl, pak pokývl. "Tak se znova setkáváme, člověče. Přišel jsi požádat o kousek tohohle kamene pro své jméno?"~ */
  IF ~~ THEN REPLY #7440 /* ~"Zatím ne. Chci se tě na něco zeptat..."~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"Ne, jen procházím. Sbohem, Quentine."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~Quentin se ušklíbl. "To není zrovna ten nejzdravější ptáček v tomhle ukecaném domě. Ten pojašenec je 'Smrt-Jmen'." Quentin se pousmál. "Jenže 'Smrt-Rozumu' by mu slušelo líp." ~ */
  IF ~~ THEN REPLY #7443 /* ~"Co tu dělá?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"Chápu. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"Je opatrovníkem památníku. Ví o všech jménech všude kolem a může ti kterékoliv ukázat, kdybys to snad potřeboval. Drobet mu straší ve věži, ale už mi několikrát pomohl." Pokrčil rameny. "Má taky povinnost vytesat nová jména, když jejich vlastníci skonají."~ */
  IF ~~ THEN REPLY #7446 /* ~"Trochu bych změnil téma a zeptal se na..."~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"Chápu. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"Myslíš vstát z mrtvých?" Quentin zavrtěl hlavou. "Žádného, kámo. Všechno, co je živé, umírá, tak už to na světě chodí." Pokrčil rameny. "Ale když uvážím, že Sféry budou existovat věčně, myslím, že se může stát cokoliv."~ */
  IF ~~ THEN REPLY #7449 /* ~"Také si to myslím. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"Rozumím. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"Ptej se bez obav, brachu."~ */
  IF ~~ THEN REPLY #7452 /* ~"Můžeš mi znova říct, co je zač tenhle pomník?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"Neslyšels o někom, kdo se vrátil zpět potom, co sem vepsali jeho jméno?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"Můžeš mi říct, který z bláznivých Spalovačů je na druhé straně monolitu?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"Chápu. Díky."~ */ EXIT
END
