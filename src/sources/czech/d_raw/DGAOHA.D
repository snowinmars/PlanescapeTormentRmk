// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~Vidíš vyzáblého humanoida se žlutou kůží, pokrytou velkou škálou různých tetování. Obočí má zdůrazněno černým uhlím a jeho zuby jsou zabroušené do špičky. Všiml si tě a zamával ti, v dlani mu zachrastily kostky.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"Ahoj..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"Zdravím..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~Ukázal temné špičaté zuby, jeho oči jsou jako blýskavé černé koule. Jeho hlas je nízký a chraptivý. "Gaoha tě vítá... přišel sis zahrát, ano?"~ */
  IF ~~ THEN REPLY #34026 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"Ano, Zahraju si."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"Ne... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~Téměř promluvil, když náhle jeho oči - blýskavé a černé, jako kuličky z onyxu - padly na Dak'kona. Chvíli na sebe tiše zírají, než se pohled tetovaného githzeraie vrátil na tebe. Jeho hlas je nízký a chraptivý. "Gaoha tě vítá... přišel sis zahrát, ano?"~ */
  IF ~~ THEN REPLY #34030 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"Ano, Zahraju si."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"Ne... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Gaohův úsměv okamžitě zmizel, zavrtěl hlavou. "Otázky mne nezajímají. Jenom hra... otáčení kostky, záblesk mince vyhrané či ztracené, ano?" Zatřásl kostkami, které drží v hrsti. "Ty... nemáš zájem o věci takové?"~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"Dobře... Zahraju si."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"Dobře... Zahraju si."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Gaoha sáhl do své tuniky a vylovil minci. "Tahle mince? Tvá mince." Položil ji před tebe a vytáhl další. "Tahle mince? Gaohova." Dal si ji před sebe, pak uchopil mezi prsty dvě kostky. "Kostky... my oba jednou hodíme, ano?"~ */
  IF ~~ THEN REPLY #34038 /* ~"Pokračuj..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"Ty více hodíš, obě mince..." Popadl ze země obě mince a nabídl ti je. "...tvoje. Gaoha více hodí?" Rychle strčil měďáky zpět do své tuniky. "Moje. Nikdo větší nehodí? Mince zůstávají pro hod další. Takže: Kolik mincí před tebou ležet bude?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"Jeden měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"Celý jeden měďák."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"Celkem pět měďáků."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"Celkem pět měďáků."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"Celkem deset měďáků."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"Celkem deset měďáků."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"Celkem dvacet pět měďáků."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"Celkem dvacet pět měďáků."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"Celkem padesát měďáků."~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"Celkem padesát měďáků."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"Celkem jedno sto měďáků."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"Celkem jedno sto měďáků."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"Žádné, nechci pokoušet štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~Oba jste hodili kostkami a Gaohaovi padlo víc. Shrábl tvé peníze a schoval je v tunice. Na okamžik se zarazil a pak řekl. "Ještě jednou, ano?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"Počkat - není něco špatně?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"Ano, znova."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Gaoha si tě chvíli pozorně prohlížel a pak kývl. "Nikdy se nepoddávám nerozumu Hashmanovu - nikdy se neuchyluji k *podvodu*, člověče. Ale vidím štěstí, čtu je, *rozeznám* je v lidské tváři. Nicméně, v tvé... ve tvé nevidím nic. *Nerozeznávám* nic. Ty... jsi smolař? Žádné štěstí, vůbec nic dobrého, nebo nic špatného? Nebo sis to způsobil sám, asi. Nevím." Ukryl kostky zpátky do tuniky. "Možná si zahrajeme později, ale teď už ne."~ */
  IF ~~ THEN REPLY #60421 /* ~"Dobře... sbohem."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"A kolik mincí ti bude ležet u nohou?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"Celý jeden měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"Celý jeden měďák."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"Celkem pět měďáků."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"Celkem pět měďáků."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"Celkem deset měďáků."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"Celkem deset měďáků."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"Celkem dvacet pět měďáků."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"Celkem dvacet pět měďáků."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"Celkem padesát měďáků."~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"Celkem padesát měďáků."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"Celkem jedno sto měďáků."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"Celkem jedno sto měďáků."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"Vlastně žádné. Sbohem."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Gaoha na tebe zablýskal svým znepokojivým zubatým úsměvem a zachrastil kostkami v dlaních. "Vrátil ses hrát hru, ano?"~ */
  IF ~~ THEN REPLY #60437 /* ~"Ne, ale mám pár otázek..."~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"Ano, budu hrát."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"Ano, budu hrát."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"Ne... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~Oba jste vrhli kostkami a Gaohaovi padlo víc. Shrábl tvé peníze a než je skryl v tunice, na moment se zamračil. "To postačí, nyní. Ale snad bychom mohli hrát znovu později, ty a já."~ */
  IF ~~ THEN REPLY #60442 /* ~"Proč? Něco se děje?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"Tak dobře. Sbohem."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~Oba jste vrhli kostkami a tobě padlo víc. Sebral jsi peníze a schoval je. Gaoha zamračen přikývl. "To postačí, nyní. Ale snad bychom mohli hrát znovu později, ty a já."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"Počkej - něco je špatně?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"V pořádku. Sbohem."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Gaoha na tebe zablýskal svým znepokojivým zubatým úsměvem. "Jsi nedočkavý hry, ano? Ale vrátil moc brzo. Vrať později a budem znovu hrát."~ */
  IF ~~ THEN REPLY #60448 /* ~"Tak sbohem."~ */ EXIT
END
