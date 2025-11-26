// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~Vidíš nemocnou githzeraiskou ženu. Je nahrbená, její neustálé kašlání jí zjevně způsobuje velkou bolest - kapesník, do kterého kašle, je nasáklý krví, kousky tkáně a hlenem. Podívala se na tebe a zasyčela.~ */
  IF ~~ THEN REPLY #3025 /* ~"Zdravím."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"Co mi můžeš říci o tomhle místě?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"Už se tě nemám na co zeptat. Sbohem."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~An'azi na tebe mrkla, její zahleněné oči se zaplnily trhlinkami, a zasyčela několik slov Dak'konovi.~ */
  IF ~~ THEN REPLY #42430 /* ~"Co říkala?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"Zabij ji, Dak'kone. A ať ji to nebolí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"Dak'kone, zbav ji jejího utrpení. Ona zřejmě příliš mnoho trpěla, a už dlouho nepřežije."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"Pojďme odtud, Dak'kone. Rozluč se."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Zbav ji jejího utrpení.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Z legrace do ní píchni.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~Zazírala na tebe, a zamumlala několik slov směrem k Dak'konovi.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~Vidíš nemocnou githzeraiskou ženu. Je shrbená a pokřivená, a její stálý kašel je zřejmě zdrojem její bolesti - drží si před tváří kapesník, který je v podstatě nasáklý krví, tkání, a hleny. Zkoumá tě a syčí.~ */
  IF ~~ THEN REPLY #42468 /* ~"Zdravím."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"Co mi můžeš říci o tomto místě?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"Chtěla bys nějaká léčiva? Je něco, co bych pro tebe mohl udělat?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"Co ti je?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"Nemám na co bych se tě zeptal. Sbohem."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~Starší githzeraiská žena vypadá, pokud je to vůbec možné, ještě hůře než předtím. Pokouší se na tebe syčet, ale přešel ji záchvat krvavého kašle.~ */
  IF ~~ THEN REPLY #42475 /* ~"Chtěla bys nějaká léčiva? Je něco, co bych pro tebe mohl udělat?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"Co ti je?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"Je možné, abys mi odpověděla na nějaké otázky?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"Sbohem, stařeno."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~Kašle a kašle, vyplňujíc svůj vlhký kapesník nasáklý tkání. Její oči na tebe zlostně září.~ */
  IF ~~ THEN REPLY #42480 /* ~"Chtěla bys nějaká léčiva? Je něco, co bych pro tebe mohl udělat?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"Co ti je?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~Kašle. Mává na tebe odmítavě rukou. Schoulila se do svých hadrů, čímž jasně vyjadřuje přání, abys ji nechal zemřít o samotě.~ */
  IF ~~ THEN REPLY #42484 /* ~"Máš bolesti? Je *něco* co bych pro tebe mohl udělat?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Dej jí nějaké peníze.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"Podívej, jen mi odpověz na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"Pak tedy dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~Vykašlala několik frází v jazyce, kterému nerozumíš, a ohnula se v utrpení, jak další kašel zazmítal jejím tělem.~ */
  IF ~~ THEN REPLY #42489 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~Vyrazila ti minci z ruky, takže odrotovala přes celou ulici. Znovu na tebe slabě zasyčela.~ */
  IF ~~ THEN REPLY #42491 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~Slabě zagestikulovala ve vzduchu před sebou. Ukázala směrem ke Slévárně, směrem k odpadkům, směrem k hromadě uhlí, a pak na svůj hrudník. Jakoby na zdůraznění jejích slov, roztřásl ji další záchvat kašle a zanechal jí krev na rtech.~ */
  IF ~~ THEN REPLY #42493 /* ~"Je to smog?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"Existuje nějaký lék, který bych ti mohl nabídnout?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~Kývla hlavou a zazmítala se dalším záchvatem kašle.~ */
  IF ~~ THEN REPLY #42496 /* ~"Existuje nějaký lék, který bych ti mohl nabídnout?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"Pak pro tebe nemohu nic udělat. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Její oči potemněly, jak ukázala na tvoji zbraň a pak na sebe.~ */
  IF ~~ THEN REPLY #42499 /* ~"Chceš, abych tě zabil?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"Nemohu to pro tebe udělat. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~Potřásla hlavou tak prudce, jak to jen dokázala, a zaplatila za to silným záchvatem kašle. Ukázala odhodlaně k tvojí zbrani. Její zažloutlé oči neukazují žádný strach.~ */
  IF ~~ THEN REPLY #42502 /* ~"Pak tedy dobrá. Přeji ti hodně štěstí v příštím životě."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"Nemohu to pro tebe udělat."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~Jakmile jsi se od ní otočil, odplivla krvavou hromádku hlenu k tvým nohám.~ */
  IF ~~ THEN REPLY #42505 /* ~Nech ji o samotě.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Zabij ji.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~Dívá se na tebe statečně, bez obav, očekávající smrtící úder.~ */
  IF ~~ THEN REPLY #42508 /* ~Zbav ji jejího utrpení.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"Nemohu to pro tebe udělat."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~Usmrtil jsi ji rychlým úderem. Její tělo se zhroutilo na ulici - ale ona vypadá tak nějak vděčně.~ */
  IF ~~ THEN REPLY #42511 /* ~"Sbohem, githzeraiko."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~Dnes jsem v Dolní Čtvrti zabil nemocnou ženu githzerai. Měla dýchací problémy, hustý vzduch Čtvrti jí zjevně dělal problémy. Nebála se smrti, naopak vypadala, že ji vítá.~ */ EXIT
END
