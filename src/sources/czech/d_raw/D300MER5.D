// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"Skoč, Lim-Lime, skoč!" Zdá se, že si tě obchodník náhle povšiml. "Vítej! Budeš si přát koupit jednoho z těchto hravých, dovádivých Lim-Limů, můj pane?"~ */
  IF ~~ THEN REPLY #17537 /* ~"Ne, ale mám několik otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"Ještě ne. Jenom bych chtěl vědět, co jsou zač ti Lim-Limové?'"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"Ano."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"Ne díky. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"Sledujte jak... ó, opět ty, můj pane? Jsi zde, abys koupil Lim-Lima?"~ */
  IF ~~ THEN REPLY #17542 /* ~"Ne, ale mám několik otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"Ještě ne. Jenom bych chtěl vědět, co jsou zač ti Lim-Limové?'"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"Ano."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"Ne díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"Obávám se, že jediné otázky, na něž odpovím, jsou ty o Lim-Limech, můj pane."~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"Pak mi možná můžeš říct, proč ten můj utekl."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"Co jsou zač?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"Chtěl bych jednoho koupit."~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"Jsou z Pustiny, můj pane, ani hmyz, ani zvíře. Jsou přátelští, hraví, a docela oddaní." Kouknul bokem na Lim-Limy, potom se k tobě naklonil a zašeptal: "V nouzi také docela chutní."~ */
  IF ~~ THEN REPLY #17550 /* ~"Zajímavé. Mám ještě několik jiných otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"Chtěl bych jednoho koupit."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"Lim-Limové si obstarají vlastní potravu žraním hmyzu, malých hlodavců a tak. Budou tě následovat kamkoliv půjdeš, nemusíš po nich uklízet, nemusíš je venčit, jsou tiší, a to nejlepší ze všeho - skočí přes patnáct stop, když je dloubneš žhavým uhlíkem! Jeden tě bude stát pouze čtyřicet měděných, můj pane, pouhá troška za takového zábavného miláčka a přítele!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"Morte? Co myslíš?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"Co myslíš, Annah?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"Tak já si jednoho vezmu."~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"Nechce se mi utrácet. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"Raději si nechám měďáky. Sbohem."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"Nemám dost, ale mám několik otázek..."~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"Zapomeň na to; Nemám na něj peníze. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"Jak milé, můj pane! Tady máš..."~ */
  IF ~~ THEN REPLY #17563 /* ~"Můj vlastní Lim-Lim..."~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"Sledujte jak... ó, opět ty, můj pane? Kde je tvůj Lim-Lim?"~ */
  IF ~~ THEN REPLY #17565 /* ~"Někde mi utekl. Říkal jsi, že mne bude následovat kamkoliv."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"Nechci o tom mluvit. Mám několik dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"Neptej se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"Opravdu? To je zvláštní!"~ */
  IF ~~ THEN REPLY #17569 /* ~"Očekávám vyrovnání."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"Zapomeň na to. Mám několik dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"Nedělej si s tím potíže. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"Ale můj pane... to není moje chyba! Nevycvičený Lim-Lim, možná byl ukraden..."~ */
  IF ~~ THEN REPLY #17573 /* ~"Prostě mi vrať mých čtyřicet měďáků."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"Vrať mých čtyřicet měďáků a dvacet navrch za to, že jsi mne podvedl."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"Vrať mých čtyřicet měďáků a čtyřicet navrch za způsobené potíže."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"Sledujte jak... ó, opět zde, můj pane?"~ */
  IF ~~ THEN REPLY #17730 /* ~"Ano. Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Null Node)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"A-a-ale to nemůžeš! Nemůžeš mne za to vinit, to prostě nemůžeš udělat!"~ */
  IF ~~ THEN REPLY #17576 /* ~"Můžu a udělám; je to pouze spravedlnost. Říkal jsi, že mne bude následovat kamkoliv."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Pravda: "Buď zaplatíš mně nebo peklu, vyber si."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Bluf: "Buď zaplatíš mně nebo peklu, vyber si."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"Pak tedy na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"No, tak dobrá, já -hej! Co je to támhle?" začal bleskurychle prchat.~ */
  IF ~~ THEN REPLY #17581 /* ~"Co to sak..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"Skoč, Lim-Lime, vy - a sakra!" Obchodník tě spatřil a začal prchat.~ */
  IF ~~ THEN REPLY #17582 /* ~"Zatraceně..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
