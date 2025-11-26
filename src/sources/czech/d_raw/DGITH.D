// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~Muž se pomalu otočil. Jeho oči jsou jako černé kameny, rychle přejely po tvé postavě, potom se ti zadíval do očí. I když je muž humanoid, má žlutou kůži a ostré rysy. Má tenkou, pravidelnou postavu, jeho paže vypadají, jakoby byly pouze z uzlíků svalu omotaných kolem kosti. Jeho oblečení tvoří podivná směs ostrých barev a matné, zašpiněné hnědi.~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"Zdravím."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"Zdravím."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~Nechej muže samotného.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~Na chvíli se odmlčel, prohlížejíce si tě, pak odpověděl lámanou obecnou. "Ty jsi *znám* mě." Jeho přízvuk způsobuje, že je jeho řeč nepříliš srozumitelná - jakoby bral každé slovo, zlomil ho a pak důkladně vytlačil každou hlásku. Důraz, který klade na slovo *znát* ti připadá podivný. "Já vyslyším tě."~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"Já... jsem ti 'znám'? Ty víš, kdo jsem?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"Já... jsem ti 'znám'? Ty víš, kdo jsem?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"Já... jsem ti 'znám'? Ty víš, kdo jsem?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"Aha. Hele, mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"Není nic, co bych od tebe chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"Tvé jméno je mi *známo*. Tvé činy jsou mi *známy*. Tvá povaha je *známá*skrze tvé činy. Ty jsi *znám* jako přítel Lidu." Jeho oči tě znovu přejely, jakoby tě ještě jednou oceňovaly. "Já vyslyším tě."~ */
  IF ~~ THEN REPLY #2362 /* ~"Velmi dobře. Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"Tvé jméno je mi *známo*. Nechal jsi zemi pít krev githyanki. Tvá povaha je *známa* skrze tvé činy." Jeho oči tě znovu přejely, jakoby tě ještě jednou oceňovaly. "Já vyslyším tě."~ */
  IF ~~ THEN REPLY #2364 /* ~"Velmi dobře. Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"Tvé jméno je mi *známo*. Dal jsi pomoc jednomu z Lidu, který byl nemocen z jedů města tohoto. Tvá povaha je *známa* tímto činem. Ty jsi *znán* jako přítel Lidu." Jeho oči tě znovu přejely, jakoby tě ještě jednou oceňovaly. "Já vyslyším tě."~ */
  IF ~~ THEN REPLY #2367 /* ~"Velmi dobře. Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~Muž zůstal potichu. Nijak nereaguje na tvůj pozdrav, jenom na tebe zírá.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"Ty jsi Githyanki, že? Mám pro tebe nějaké otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"Řekl jsem, 'Ahoj.'"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"Řekl jsem, 'Ahoj.'"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"Řekl jsem, 'Ahoj.'"~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"Řekl jsem, 'Ahoj.'"~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"Řekl jsem, 'Ahoj.'"~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"Řekl jsem, 'Ahoj.'"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"Mám nějaké otázky..."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"Nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~Chvíli to vypadá, jako by tě Gith neslyšel. Pak je slyšet šepot ocele a z jeho ruky vyskočila čepel. Se zasyčením protínaného vzduchu se na tebe vrhl!~ */
  IF ~~ THEN REPLY #8718 /* ~"Dobře tedy..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~Gith zůstal potichu, ale jeho černé oči tě neustále sledují.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"Ty jsi Githyanki, viď? Mám pro tebe nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"Řekl jsem, 'Ahoj.'"~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"Rozumíš mi?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~Na chvíli se odmlčel, prohlížejíc si tě a pak odpovídá lámanou obecnou. "Ty mi nejsi *znám*." Jeho přízvuk způsobuje, že je jeho řeč nepříliš srozumitelná - jako by bral každé slovo, zlomil ho a pak důkladně vytlačil každou hlásku. Důraz, který klade na slovo *znát* ti připadá podivný. "Co chceš?"~ */
  IF ~~ THEN REPLY #8724 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"Já tě nevyslyším." Vypadá to, že chce kolem tebe projít.~ */
  IF ~~ THEN REPLY #8726 /* ~Zablokuj mu cestu.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~Nechej ho odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~Zastavil se a znovu se ti zadíval do očí. Než stačíš promluvit, ozvalo se zašeptání oceli a z jeho ruky vyskočila dlouhá čepel. "Ty bokem postav se."~ */
  IF ~~ THEN REPLY #8728 /* ~"Můžeš nejdřív odpovědět na pár otázek?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"Ne. Nejdřív odpověz na pár otázek."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"Já neustoupím. Navrhuju, aby sis to píchátko strčil někam, dřív než ti ho narvu do těla."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~Zaútoč na něj první.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~Ustup stranou a nechej ho projít.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~Jeho výraz se nezměnil. "Ustup."~ */
  IF ~~ THEN REPLY #8733 /* ~"Měl jsem jen nějaké otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"Odpověz mi tedy nejdřív na pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"Já neustoupím. Navrhuju, aby sis to píchátko strčil někam, dřív než ti ho narvu do těla."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~Zaútoč na něj první.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~Stoupni stranou a nechej ho projít.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~Se zasyčením na tebe útočí!~ */
  IF ~~ THEN REPLY #8737 /* ~"Připrav se zemřít..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~Prázdný uzel.~ */
  IF ~~ THEN REPLY #8738 /* ~Žádná odezva.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"K'atzn'ii-u-Brány."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~Zkus to a připomeň si překlad...~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~Zkus to a připomeň si překlad...~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"Promiň?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"Oh... znamená to, že mě slyšíš?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"Výborně. Budeš mě poslouchat?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~Nechej ho o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~K'atzn'ii-u-Brány: "Ptej se a odpovíš na obě naše otázky."

*(K'atzn'ii byla githzeraiský poutník, který procházel domovskou sféru githzerai Limbo a 'zkoušel' disciplínu Lidu. Objevila se u brány každého githského města a zadala sérii otázek. Odpovědi, které ji měšťané dali jí umožnily poznat povahu githů, kteří žili za zdmi. Ale, což  bylo K'aztn'ii neznámo, stejně tak její otázky umožnily githzerai poznat její povahu.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"Uvidíme. Budeš mě poslouchat?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~Nechej ho o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~Gith se odmlčel a pak znovu promluvil. "Ptej se. Já tě vyslyším."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"Hledám někoho jménem Pharod. Znáš ho?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"Ztratil jsem deník. Neviděl jsi nějaký?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"Můžeš mi říct o Dak'konovi?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"Znáš githzeraie jménem Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"Můžeš mi říct o tomhle městě?"~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"Můžeš mi říct o Sigilu?"~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"Mám nějaké... určité... otázky o tomto městě."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~Nechej muže o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"Tento není mě *znám*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"Mám nějaké další otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"Mám nějaké další... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~Nechej muže o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"Tento předmět mě není *znám*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"Mám nějaké další otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"Mám nějaké další... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~Nechej muže o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"Ach'ali utopená."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~Zkus to a připomeň si překlad...~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~Zkus to a připomeň si překlad...~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"Promiň?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"Oh... znamená to, že odpovíš na otázku, nebo...?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~Ach'ali-Topící se: V podstatě "Otázka, jejíž odpověď neposlouží žádnému účelu." Většinou je to žádost k mluvčímu, aby blíže specifikoval nejasnou nebo zbytečnou otázku.

*(Githzerai sídlí ve Vnější sféře Limbo, sféře chaosu. Stability se dá dosáhnout pouze tvarováním chaotické látky sféry vlastní myslí, soustředění a disciplína jsou pro to velice důležité. "Ach'ali" je hloupá mýtická githzerai, která se na Limbu ztratila a taktak se jí podařilo kolem sebe vytvořit ostrov. Zatímco plula chaotickou hmotou, potkala sféraře, který jí nabídl pomoc. Ach'ali mu dala tolik zbytečných a nesoustředěných otázek jak se dostat domů, že se ostrov hmoty kolem ní rozpadl a ona se utopila v Limbu.)*~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct o Paní Bolesti?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct o společenstvích?"~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, kde to město leží?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, kde bych mohl najít práci?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, co je tady kolem zajímavého?"~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"Nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"Tvá otázka, to je pouze bodnutí do tmy. Šíp vystřelený bez míření. Odpověď na otázku tuto by naplnila mysl Anarcha. Není čas na otázku takovouto. Pověz mi přímo, co si přeješ *znát*."~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct o Paní Bolesti?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct o společenstvích?"~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, kde to město leží?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, kde bych mohl najít práci?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"Dovol mi specifikovat. Takže: Můžeš mi říct, co je tady kolem zajímavého?"~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"Nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~Gith se odmlčel, ale po chvíli znovu promluvil. "Vyslov své otázky. Já tě vyslyším."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"Hledám někoho jménem Pharod. Znáš ho?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"Ztratil jsem deník. Neviděl jsi nějaký?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"Můžeš mi říct o Dak´konovi?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"Víš něco o githzeraiovi jménem Dak´kon?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"Můžeš mi říct o Paní Bolesti?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"Můžeš mi říct něco o společenstvích?~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~"Můžeš mi říct, kde se toto město nachází?"~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~"Můžeš mi říct, kde bych mohl najít práci?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~"Můžeš mi říct co je tady kolem zajímavého?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"Už nemám žádné otázky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"Je řečeno, že ona je královnou tohoto města. Její mysl, ta mě *známa* není."~ */
  IF ~~ THEN REPLY #8801 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"Nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"Jsou to ti, kdož město mezi sebe rozdělují." Jeho tón se poněkud změnil, je v něm vycítit náznak znechucení.~ */
  IF ~~ THEN REPLY #8838 /* ~"Nezdá se, že bys měl ta společenství v lásce."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"Nevadí. Nezlob se, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"V rozdělení, tam není síla. Rozdělené město padne."~ */
  IF ~~ THEN REPLY #8841 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"Toto město se dotýká všech míst."~ */
  IF ~~ THEN REPLY #8843 /* ~"Můžeš to upřesnit?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"Toto město je klec, která má mnoho dveří. Každé dveře ony dotýkají se místa jiného."~ */
  IF ~~ THEN REPLY #8846 /* ~"Proč tomu městu říkáš klec?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"Kde bych tyto dveře našel?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"Každá budova se zamčenými dveřmi je klec."~ */
  IF ~~ THEN REPLY #8850 /* ~"Zamčené dveře?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"Každé dveře v této kleci jsou zamčené. Každé dveře svůj vlastní klíč mají. Pouze s klíčem ty můžeš klec opustit."~ */
  IF ~~ THEN REPLY #8853 /* ~"Kde bych tyto dveře našel?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"Všude. Je jich tolik, kolik je míst, jež se ony dotýkají."~ */
  IF ~~ THEN REPLY #8856 /* ~"Nerozumím."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"Místa? Jako kde?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"Je to složité na pochopení. Není to složité přijmout."~ */
  IF ~~ THEN REPLY #8860 /* ~"Kam vedou ty dveře, o nichž jsi mluvil?" ~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"To nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"Dveře této klece vedou všude. Do každé sféry. Každého světa."~ */
  IF ~~ THEN REPLY #8863 /* ~"Nerozumím."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"Ty mi nejsi *znám*. Co tě zajímá, mě zajímat nemusí."~ */
  IF ~~ THEN REPLY #8866 /* ~"Mám zájem o práci."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"Nevadí. Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"Nevadí. Promiň, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"Je zde málo práce. Můžeš lovit krysy za odměnu. Můžeš sbírat mrtvé."~ */
  IF ~~ THEN REPLY #8870 /* ~"Odměny za krysy?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"Shromažďovat mrtvé?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"To vidím. Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"Město platí za krysí ocásky. Vezmi je do jednoho z úřadů pro dohled nad škůdci."~ */
  IF ~~ THEN REPLY #8875 /* ~"Co byla ta druhá práce, o níž jsi mluvil? Shromažďování mrtvých?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"To vidím. Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"Mnoho zemře každou noc v tomto městě. Vezmi mrtvé k Mužům Spalování. Oni zakoupí tělo."~ */
  IF ~~ THEN REPLY #8878 /* ~"Spalovači platí za mrtvé? Proč?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"Co byla ta druhá práce, o které jsi mluvil? Odměny za krysy?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"To vidím. Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"Muži Spalování starají se o mrtvé. Provádějí poslední obřady s každým tělem."~ */
  IF ~~ THEN REPLY #8882 /* ~"Dobrá... jdeme."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"To vidím. Co byla ta druhá práce, o které jsi mluvil? Odměny za krysy?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"Nevadí. Ještě mám jiné... určité... otázky o tomto městě..."~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"Co byla ta druhá práce, o které jsi mluvil"~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"Mnoho zemře. Muži Spalování nemohou je sbírat sami. Nechtějí, aby mrtví na ulicích zůstali. Platí ostatním, aby oni přinesli jim mrtvé."~ */
  IF ~~ THEN REPLY #8886 /* ~"Co byla ta druhá práce, o které jsi mluvil? Odměny za krysy?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"Co byla ta druhá práce, o které jsi mluvil"~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"On chodí s tebou." Zamračil se. "Jak je možné, že on ti není *znám*?"~ */
  IF ~~ THEN REPLY #8889 /* ~"Doufal jsem, že mi o něm něco povíš."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"Nevadí. Mám pár dalších otázek..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"Nevadí. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"Nevadí. Omlouvám se za obtěžování."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"On není bez jazyka. Jestli ho chceš *znát*, dej jemu otázky. Neurážej nás oba, že chováš se k němu jako k soše kamenné."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"Nevadí. Ještě bych měl pár otázek..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"Nevadí. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"Nevadí. Omlouvám se, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"Jméno je mi *známo*. Dak'kon je *zerth* kdo není jeden z Lidu."~ */
  IF ~~ THEN REPLY #8896 /* ~"*Zerth?*"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"To vidím. Ještě bych měl jiné otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"To vidím. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"Díky... to je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"Ten, kdo *zná* slova Zerthimona. *Poznáním* jeho slov, oni *poznávají* sebe."~ */
  IF ~~ THEN REPLY #8900 /* ~"Zerthimon?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"To vidím. Ještě bych měl jiné otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"To vidím. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"Díky... to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"Zerthimon *znal* githzerai dříve, než znali oni sebe." Githzerai je chvíli potichu, než znovu promluví. "Definoval náš Lid. Dal jim jednu mysl. Ti, kteří *znají* jeho slova jsou nazývání *zerth.*"~ */
  IF ~~ THEN REPLY #8904 /* ~"A Dak'kon je *zerth?*"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"To vidím. Ještě bych měl jiné otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"To vidím. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"Díky... to je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"Dak'kon je *zerth*..." Vypadá to, že se githzerai ztratil, neví jak dál. Odmlčel se, jakoby hledal správná slova.~ */
  IF ~~ THEN REPLY #8908 /* ~"Ano?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~Počkej, až to vysvětlí.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"Nevadí. Mám nějaké další otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"Nevadí. Mám nějaké další... specifické... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"Nevadí. Omlouvám se, že jsem obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"Dak'kon je *zerth* který prý *neznal* slova Zerthimona. Je řečeno, že se jeho mysl rozdělila. Je řečeno, že on se *neznal*. Tyto věci jsou pro githzerai jedem. Pokud jsou tato slova pravdivá, on není jeden z Lidu."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"To vidím. Ještě bych měl jiné otázky..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"To vidím. Ještě mám jiné... určité... otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"Díky... to je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~Jak se blížíš, gith se k tobě obrátí tváří. Jeho oči jsou jako dva černé kameny; bystře tě přelétnou od hlavy k patě, pak se zaklesnou do tvých. Třebaže vypadá jako člověk, má žlutý odstín kůže a vyzáblé rysy. Postavu má hubenou, kostnatou; jeho údy vypadají jako by byly vyrobeny z nicoty, ale každý z nich je omotán provazci svalů. Jeho oděv je zvláštní směsicí ostrých barev a matné, blátem poskvrněné hnědi.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"Zerchaiovi příbuzní se ti klaní."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"Zdravím, držiteli meče."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"Zdravím."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"Zdravím."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~Githovy oči se zaklesnou do tvých. Na okamžik se zastaví, studuje tě, pak lámaně a prostě odpoví. Jeho přízvuk je těžko srozumitelný - zní, jako kdyby každé slovo vzal, zlomil a každou souhlásku pak dál protáhl. Pokud jsi správně rozuměl, řekl jen "A cestovatel je vítán."~ */
  IF ~~ THEN REPLY #8922 /* ~"A poutník je potěšený."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"Chtěl bych poznat tohle město. Slyšíš mě?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~Githovy oči se zaklesnou do tvých. Na okamžik se zastaví, studuje tě, pak lámaně a prostě odpoví. Jeho přízvuk je těžko srozumitelný - je to, jako kdyby každé slovo vzal, zlomil a každou souhlásku pak dál protáhl. Pokud jsi správně rozuměl, pronesl jen, "Nejsi nikdo, koho bych *znal*." Na slovo *znal* položil zvláště silný důraz. ~ */
  IF ~~ THEN REPLY #8925 /* ~"Chtěl bych poznat tohle město. Slyšíš mě?"~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~Githova kamenná tvář nepatrně změkne a jeho vyzývavý pohled se změní ve zvědavý. "Nejsi nikdo, koho bych *znal*." Jeho upřený pohled tě opět přelétne, přeměří. "Poslouchám tě." ~ */
  IF ~~ THEN REPLY #8927 /* ~"Výborně. Ještě mám další otázky..."~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~Opusť ho.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~Jak se blížíš, gith se k tobě obrátí tváří. Stejně jako Dak'kon, má žlutý odstín kůže a vyzáblé rysy. Jeho oděv je zvláštní směsicí ostrých barev a matné, blátem poskvrněné hnědi. Githovy mrtvolně-černé oči kmitnou na Dak'kona, potom na tebe.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"Zerchaiovi příbuzní se ti klaní."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"Zdravím, držiteli meče."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"Zdravím."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"Zdravím."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~Muž tě ignoruje a otáčí se místo toho na Dak'kona. Pronáší několik úsečných slov v hlubokém jazyce, kterému nemůžeš rozumět. Jeho výraz se během mluvy nemění, stejně jako jeho ruce nevytváří žádná gesta, takže si nemůžeš ani tipnout, co říká. Dak'kon odpoví několika ráznými slovy v tomtéž jazyce a githzerai upadá v ticho.~ */
  IF ~~ THEN REPLY #8934 /* ~"Oh... co říkal, Dak'kone?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~Jak mluvíš, githzerai se k tobě otočí, pak se vrátí zpátky k Dak'konovi a mluví znovu, tentokrát mnohem déle. Dak'kon odpovídá - zní to jako stejná slova, která řekl před chvílí. Githzerai znovu ztichne. Dak'kon znovu něco říká a githzerai na to reaguje dalším zdlouhavým proudem slov.~ */
  IF ~~ THEN REPLY #8936 /* ~"Dak'kone, můžeš se ho za mě zeptat na pár věcí?"~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Prázdný uzel.~ */
  IF ~~ THEN REPLY #8938 /* ~Žádná odpověď.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"Tvá slova jsou mi *známá*," přeruší tě githzerai. "Podívej se na mě a mluv. Poslouchám tě."~ */
  IF ~~ THEN REPLY #8939 /* ~"Výborně. Ještě mám další otázky..."~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~Githzerai tě ignoruje a otáčí se místo toho na Dak'kona. Pronáší několik úsečných slov v cizím, hlubokém jazyce -- pokud jsi správně rozuměl jeho skloňování, říkal: "Všichni zavázaní, *zerthe.*"~ */
  IF ~~ THEN REPLY #8941 /* ~Počkej a poslechni si Dak'konovu odpověď.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~Jak mluvíš, githzerai se k tobě otočí, pak se vrátí zpátky k Dak'konovi a mluví znovu, tentokrát mnohem déle. ~ */
  IF ~~ THEN REPLY #8943 /* ~Pokus se přeložit...~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~Větnou konstrukci luštíš s obtížemi, nicméně myslíš že řekl: "Je tam jeden Dak'konova jména, kdo není jedním z Lidí. Říká se, že jeho mysl je rozdělena. Říká se, že je *zerth*, který *nezná* slova Zerthimonova."~ */
  IF ~~ THEN REPLY #8945 /* ~Počkej a poslechni si Dak'konovu odpověď.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~Githova odpověď je tak rychlá, že za ní téměř cítíš sílu útoku. Nemáš jistotu, jestli si pochopil plný význam, zdá se, jako by gith směrem k Dak'konovi vydal jen určitý druh výzvy ve formě otázky: "*Zerthe,* *podrobíš* se slovům tohoto člověka?"  ~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~Přeruš: "Dak'kon poslouchá. Je můj otrok."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~Přeruš: "Ano, Dak'kon ode mě dostává příkazy. Je můj sluha."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~Přeruš: "Jsem jeho nadřízený. Dak'kon mě doprovází na mém putování."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~Počkej co Dak´kon řekne...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~Počkej co Dak´kon řekne...~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~Na chvíli gith upadne v ticho. "Kolem této věci se vznáší puch illithida." Jeho oči se přeženou přes Dak'konovu tvář. "Nevidím na tobě žádná pouta. Mluvíš sám za sebe. Jak ses mohl začít takhle rouhat?"~ */
  IF ~~ THEN REPLY #8953 /* ~Poslouchej.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~Gith se nedívá na tebe. Jeho pozornost je soustředěna na Dak'kona. "Může mluvit. Poslouchám." ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~Gith se k tobě otočí a jeho oči se zaklesnou do tvých. Dak'konův upřený pohled se stále soustředí na githa.~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"To tvoje civění mě začíná štvát. Takže teď mluv. Zodpovíš mi mé otázky nebo ne?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"Byl bych rád, kdybys se mnou mluvil. Zodpovíš mi mé otázky, nebo ne?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"Je něco špatně?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"Zapomeň na to Dak'kone. Jdeme pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~Githovo ostří zmizí a on ustoupí. Dak'konova čepel poklesne. Gith na Dak'kona zasyčí. "Jako není Vilquarovo oko jasné, ani Selqantovo srdce černé. Toto nebude zapomenuto." Vypadá, že chce odejít.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"Máš strach, ty githyanský pse? Zaútoč, jestli si troufáš."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"Máš strach, githský pse? Zaútoč, jestli si troufáš."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~Nechej ho odejít.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~Zaútoč na githa když se chystá odejít.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~Gith se otočí k Dak'konovi. "Slova tohoto člověka otravují mé uši. Musím ho poslouchat?" ~ */
  IF ~~ THEN REPLY #8963 /* ~"Mluv se mnou, ne s ním, githe."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"Je něco špatně?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~Počkej co Dak'kon řekne.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"Zapomeň na to Dak'kone. Odcházíme."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~Ani po špetičku času se nezdá, že by tě gith poslouchal. Pak se ozve svist oceli a v githových rukou se objeví čepel. V tom okamžiku je Dak'konův meč v plné pohotovosti: Vypadá to, že má v úmyslu zaútočit na githa, pokud se ten jen pohne směrem k tobě.~ */
  IF ~~ THEN REPLY #8967 /* ~"Tak dělej. Zaútoč, githe. Uvidíš, co se stane."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"Jestli se ke mně přiblíží, Dak'kone, chci ho zabít." ~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"Všichni se uklidněte. Chci jen odpovědi na pár otázek."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~Navzdory Dak'konovu připravenému ostří se od tebe githovy oči neodpoutávají. Jeho další otázka zřejmě směřuje na Dak'kona. "Rozchází se tvá mysl, pokud jde o tuto věc?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"Tato záležitost v sobě má ozvěnu illithidií, *zerthe.* Vytasil jsi zbraň proti jednomu z Lidí kvůli němu. Ve jménu Zerthimona, nemohu tvému duchu dovolit tento útok, ani umožnit jeho slovům, aby upadla v zapomnění, aniž by byla potřísněna jeho krví."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~Gith se otočí tváří k tobě, ale jeho pozornost se stále soustředí na Dak'kona. "Jak ses mohl začít takhle rouhat, *zerthe?*"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~Počkej co  Dak'kon řekne...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~Počkej co  Dak'kon řekne...~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~Zaútoč na gith dokud nedává pozor.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~Gith vyčkává. Zdá se zmatený. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"Tak dělej, githský pse. Zaútoč jestli si troufáš."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"Tak dělej, githský. Zaútoč jestli si troufáš."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~Počkej, jak to skončí...~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~Počkej, jak to skončí...~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~Zaútočit na githa dokud nedává pozor.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~Jak se blížíš, gith se k tobě obrátí tváří. Jeho oči jsou jako dva černé kameny; bystře tě přelétnou od hlavy k patě, pak se zaklesnou do tvých. Třebaže vypadá jako člověk, má žlutý odstín kůže a vyzáblé rysy. Postavu má hubenou, kostnatou; jeho údy vypadají jako by byly vyrobeny z nicoty, ale každý z nich je obmotán provazci svalů. Jeho oděv je zvláštní směsicí ostrých barev a matné, blátem poskvrněné hnědi.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"Zerchaiovi příbuzní se ti klaní."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"Zdravím, držiteli meče."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"Zdravím."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~Ozve se svist oceli a v githových rukou se objeví čepel. "Nejsi nikdo, koho bych *znal*. Zaútočil jsi na jednoho z Lidí. Umožním kamenům, aby se zhluboka napili tvé krve." ~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~Lež: "Ty ses zeptal muže co cestuje s githzeraiem *zerthem* jestli zabil githzeraie? Máš špatnou osobu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~Lež: "To musí být omyl. Nikdy jsem nenapadl nikoho z tvých lidí."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~Lež: "Nikoho jsem nenapadl. Musel sis mě splést s někým jiným."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~Zaútoč na něj první.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~Ignorouj githa a odejdi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~Gith váhá. "Není to omyl. Popis -- zjizvený člověčí muž -- souhlasí." ~ */
  IF ~~ THEN REPLY #8987 /* ~Lež: "Podívej, tohle je velké město. Já nejsem ten, koho hledáš. Nemám v úmyslu ublížit ani tobě, ani tvým lidem."~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~Zaútoč na něj první.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~Na githově čele naběhnou vrásky, chvíli poté skloní ostří své zbraně. "Odpusťte. V budoucnu si dám na svá slova větší pozor." Vypadá stále podezřívavě.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"Skutečně, po prvé máš pravdu. Čekal jsem jenom na tebe, abychom dali strážím co proto..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"Skutečně, po prvé máš pravdu. Čekal jsem jenom na tebe, abychom dali strážím co proto..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"Prosím udělej to. Sbohem."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~Gith váhá. "Není to omyl. Popis -- zjizvený člověčí muž -- souhlasí." Letmo se podívá na Dak'kona. "Mluvíš za tohoto muže, *zerthe?*"~ */
  IF ~~ THEN REPLY #8992 /* ~"Řekni mu, že se mýlí, Dak'kone."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~Zaútoč na něj, dokud se dívá na Dak'kona.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
