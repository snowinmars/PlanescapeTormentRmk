// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"Tak si zlikvidoval tu kurvu Krystall, eh? Si myslíš, že to znamená, že nebudeš platit, jo? Je hodně blbý, že máš pravdu. Jdi."~ */
  IF ~~ THEN REPLY #3797 /* ~"Díky. Sbohem."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"Zdravím, cizinče. Vypadá to, že jsi teď na území Shivů. Vypadá to, že máš móc těžkou peněženku a my jsme se rozhodli, že ti s tím píchnem. Doufej, že máš dost."~ */
  IF ~~ THEN REPLY #3799 /* ~"Potřebuju si promluvit s vaším vůdcem."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"Kolik chceš?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"Chtěl bych vidět, jak si to vezmeš s dírou v těle."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"Už jsem zaplatil."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Blafuj: "Už jsem zaplatil."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~"Prohnilej William? Jo, nechám tě s ním promluvit, jakmile  mě necháš podívat se do svý peněženky."~ */
  IF ~~ THEN REPLY #34441 /* ~"V žádném případě. Ty budeš krvácet první."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"Kolik potřebuješ?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"Ne. Není to tak důležité."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"Není to moc," řekl velkodušně. "Akorát zaplatíš pětku a můžeš projít."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"Dohodnuto."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"V žádném případě."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"Zjistíš, že to není důležitý, když začneš krvácet."~ */
  IF ~~ THEN REPLY #34448 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~Vzal si tvé peníze, schoval je a řekl: "Vypadni odtud."~ */
  IF ~~ THEN REPLY #34451 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"Tak to se odtud nedostaneš živej." Vytáhl nůž a útočí!"~ */
  IF ~~ THEN REPLY #34453 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~Podíval se do stínu, pohnul rukou a pak se vrátil pohledem k tobě. "Fajn. Jdi. Vole."~ */
  IF ~~ THEN REPLY #34456 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~Podíval se do stínu, pohnul rukou a pak se vrátil pohledem k tobě. "Ne. Umřeš."~ */
  IF ~~ THEN REPLY #34458 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"Co, zas ty? Pořád tě baví platit: Asi jo, jelikož seš zase tady. Pětku a můžeš přijít i příště."~ */
  IF ~~ THEN REPLY #34461 /* ~"Potřebuju si promluvit s tvým šéfem."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"Kolik potřebuješ?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"Chtěl bych vidět, jak si to vezmeš s dírou v těle."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"Už jsem zaplatil."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Blafuj: "Už jsem zaplatil."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"Slyšel sem, že tě Prohnilej William poslal zabíjet, he? Dokud to neuděláš, budeš muset platit. Bude tě to stát pětku."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"Dobře. Tady máš."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"Tolik nemám."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"Ale já pracuju pro Prohnilýho Williama!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"To opravdu nepotřebuješ."~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"Zkus si to vzít z mého mrtvého těla. Jestli si troufneš."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"Už jsem zaplatil."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Blafuj: "Už jsem zaplatil."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"Ještě jsi pro Prohnilýho Williama nevyřídil ty mrtvoly? Za takový zpoždění zaplatíš. Deset měďáků a můžeš jít dál svou veselou cestou."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"Dobře. Tady máš."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"Tolik nemám."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"Ale já pracuju pro Prohnilýho Williama!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"To opravdu nepotřebuješ."~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"Zkus si to vzít z mého mrtvého těla. Jestli si troufneš."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"Už jsem zaplatil."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Blafuj: "Už jsem zaplatil."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"Bylo mi potěšením. Až přijdeš zpátky, hledej mě osobně, jo?" Mrknul na tebe.~ */
  IF ~~ THEN REPLY #34484 /* ~"Zábavný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"To je smůla. Prohnilej William bude fakt nešťastnej, až uslyší, že jsi uklouzl a pořezal je." Vytáhl zbraň a útočí.~ */
  IF ~~ THEN REPLY #34486 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"Já taky. Tak co? Zaplatíš a zůstaneš, nebo budeš krvácet?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"Zaplatím."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"Tolik nemám."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"Už jsem zaplatil."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Blafuj: "Už jsem zaplatil."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"To opravdu nepotřebuješ."~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"Zkus si to vzít z mého mrtvého těla. Jestli si troufneš."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~Pozorně si tě prohlíží a pečlivě váží slova. "Tentokrát," říká, "tě nechám jít. Vypadni odtud."~ */
  IF ~~ THEN REPLY #34498 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"Nedovedeš si představit, jak moc jsem chtěl tohle slyšet.." Vytáhl nůž a zaútočil.~ */
  IF ~~ THEN REPLY #34500 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
