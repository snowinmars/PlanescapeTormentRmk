// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~Vidíš muže v dlouhé černé róbě. Má velmi bledý obličej. Vypadá jako ti lidé, co jsi je potkal v Márnici, ale narozdíl od nich vypadá tenhle zmateně a neustále se rozhlíží. Když tě uviděl, zvedl ruku, aby připoutal tvou pozornost.~ */
  IF ~~ THEN REPLY #2180 /* ~"Zdravím."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Ignoruj muže.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~Vidíš Spalovače s bledou tváří, navlečeného do dlouhého černého roucha. Na rozdíl od Spalovačů, které jsi potkal v Márnici, se tváří zmateně a rozhlíží se, jako by něco hledal. Když si tě všiml, zvedl ruku, aby připoutal tvou pozornost.~ */
  IF ~~ THEN REPLY #2182 /* ~"Zdravím."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Ignoruj muže.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~Muž je zřejmě velice rád že s ním mluvíš. Lehce se uklonil. "Děkuji ti, cestovateli, že mě vyslyšíš. Jsem znám jako Popelplášť, člen sekty Spalovačů. Doufal jsem, že bys mi mohl poradit... neznám příliš podrobně tuto oblast a hledám jisté zařízení, bar, kde se často vyskytují členové mé sekty. Znáš takové místo?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"Víš, povídá se o kapsáři, který se maskuje jako Spalovač a pohybuje se někde tady. Možná ho znáš?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"'Sekta'? Nemyslel jsi náhodou společenstvo?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"'Sekta'? Jsi přece Spalovač. Nemyslel jsi náhodou společenstvo?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"Spalovačská hospoda? Je u Márnice. Jdi od přední brány Márnice přímo na jihozápad. Nemůžeš to minout."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"Slyšel jsem o tom místě. Pomůžu ti... ale něco za něco."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"Slyšel jsem. Chci ti pomoci... pokud mi ale odpovíš na pár otázek."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Lež: "Eh, jo... slyšel jsem o tom místě. Pomůžu ti... ale něco za něco."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Lež: "Eh, jo... slyšel jsem o tom místě. Pomůžu ti... pokud mi nejprve odpovíš na pár otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"Ne, je mi líto, ale nevím kde to je."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Lež: "Ne, je mi líto, ale nevím kde to je."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"Nemůžu ti pomoct. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"Nemůžu ti pomoct. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~Spalovač přikývl. "Ano, ano, *společenstvo*, myslel jsem společenstvo. Společenstvo, sekta, to je opravdu to samé. Neznáš náhodou ten bar, kde se schází mé společenstvo?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"Víš, povídá se o kapsáři, který se maskuje jako Spalovač a pohybuje se někde tady. Možná ho znáš?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"Bar, který hledáš, je u Márnice. Jdi od přední brány Márnice přímo na jihozápad. Nemůžeš to minout."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"Slyšel jsem o tom místě. Pomůžu ti... ale něco za něco."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"Slyšel jsem o tom místě. Pomůžu ti... jestli mi odpovíš na pár otázek."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Lež: "Slyšel jsem o tom místě. Pomůžu ti... jestli mi odpovíš na pár otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Lež: "Eh, jo... slyšel jsem o tom místě. Pomůžu ti... pokud mi nejprve odpovíš na pár otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"Ne, je mi líto, ale nevím kde to je."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Lež: "Ne, je mi líto, ale nevím kde to je."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"Nemůžu ti pomoct. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"Nemůžu ti pomoct. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~Povzdychl si a zvedl ruce. "Lituji, ale musím říct, že nemám žádné peníze navíc."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"Tak na to zapomeň. Bar, který hledáš, je u Márnice. Jdi od přední brány Márnice přímo na jihozápad. Nemůžeš to minout."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"Co takhle mi odpovědět na pár otázek a budeme vyrovnáni?"~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"Tak to ti nemůžu pomoct. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~Spalovač přikývl a uklonil se. "Děkuju ti za tvůj čas."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"Určitě. Sbohem."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"Určitě. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"Určitě. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"Určitě... Sbohem."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"Určitě. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~Spalovač se usmál. "Děkuji ti velice, velice, cestovateli. Oceňuji tvou dobrotu. Lidé z Úlu jsou... málokdy nápomocní v takovýchto případech."~ */
  IF ~~ THEN REPLY #2620 /* ~"Můžu se tě na něco zeptat?"~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"Bez problému. Sbohem, Popelplášti."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~Přikývl. "Tvá žádost je pochopitelná. Řekni mi, kde mohu nalézt Bar Zapomnění a já ti velice rád odpovím na jakoukoli otázku, na kterou budu znát odpověď."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"Bar, který hledáš, je blízko Márnice. Jdi přímo na jihozápad od Přední brány Márnice, nemůžeš to minout."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Lži: "Jo, od Márnice jdi... tři bloky na západ... a pak je to první ulička napravo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"Vlastně si zrovna nemůžu vzpomenout, kde přesně to je. Vrátím se, jestli si vzpomenu. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"Jaké jsou tvé otázky?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"Hledám muže jménem Pharod. Znáš ho?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"Hledám ztracený deník. Nevíš, kde by se dalo něco takového najít?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"Můžeš mi říct něco málo o okolí?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"Můžeš mi říct něco málo o Spalovačích?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"To nic. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"Je mi líto, ale to jméno mi není známé."~ */
  IF ~~ THEN REPLY #2656 /* ~"Velmi dobře. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"Bez problému. Sbohem, Popelplášti."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"Nevím, kde by se mohla nacházet taková věc. Lituji tvou ztrátu."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"Vážně? Já myslel, že Spalovačům na vlastnictví nezáleží."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"Díky za zájem. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~Pokrčil rameny. "Je mi líto tvé ztráty. V životě je však mnoho cenných věcí..."~ */
  IF ~~ THEN REPLY #2662 /* ~"Na Spalovače máš...*nezvyklé* názory."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"Díky za informace. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"Tato oblast... no, je zde trh, směrem na severozápad, alespoň doufám. A na jihozápadě je nějaká vládní budova..." Chvíli přemýšlí. "Něco s kontrolou škůdců, mám takový dojem."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"Myslel jsem, že to tady moc neznáš."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"Vypadá to, že *tuhle* oblast znáš velmi dobře."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"Vypadá to, že *tuhle* oblast znáš velmi dobře."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"Díky za informace. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~Pokrčil rameny. "Úl je velké místo. Znám některé oblasti, ale ne všechny."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"Připadá mi divné, že by Spalovač nevěděl, kde je bar Zapomnění - je to hned vedle Márnice."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"Díky za informace. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~Muž zamrkal. "No... já nejsem jen tak obyčejný Spalovač."~ */
  IF ~~ THEN REPLY #2673 /* ~"Hmmm. Kdo jsi?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"Díky za informace. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~Na chvíli se odmlčel... a pak přikývl. "Bude mi potěšením. My Spalovači... uznáváme tento život pro to, čím je: příležitost užívat si a prožívat své vášně, než přejdeme do dalšího života. Procházíme prachem svých minulých životů a spalujeme své vášně, než přejdeme do dalšího."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"Uh... to je na Spalovače *nezvyklý* názor."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"O tom jsem nikdy neslyšel. Kdo jsi?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"Díky za informace. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~Muž přikývl, zřejmě se cítí nepříjemně. "No, já jsem Popelplášť, jeden z devátého kruhu."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"Devátý Kruh? Nic takového neexistuje."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"Aha. Mám nějaké otázky..." ~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"Dobrá tedy. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~Náhle ztuhl. "Nemám čas debatovat s tebou o praktikách a hodnostech sekty Spalovačů. Takže jestli mě omluvíš..."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"Kdo jsi ve skutečnosti?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"Tak to nic. Omlouvám se za urážku."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~Muž se na tebe nevinně dívá, ale všiml sis, že trochu ztuhl. "Promiň?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"Ty nejsi spalovač. Jsi kapsář."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"Mě je taky líto. Připrav se na smrt."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"Nic, kašli na to. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~Přikývl. "Souhlasím. Už se nesejdeme. Najdu si jiného koře... najdu si jinou práci."~ */
  IF ~~ THEN REPLY #2698 /* ~"Velmi dobře. A teď jdi."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~Už ses skoro otočil, když sis najednou uvědomil, že něco chybí. Podezřívavě ses podíval na Popelpláště a zaznamenal jsi, že si něco schovává do rukávu... a to něco ti připadá jako součást tvého majetku.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"Hej! Co si myslíš, že děláš?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Ignoruj to a raději jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~Kdybys už nebyl tak podezřívavý, tak by sis toho asi nevšiml, ale postřehl jsi, jak během jedné své úklony Popelplášť hrábl rukou k tvému měšci.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"Hej! Co si myslíš, že děláš?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Ignoruj to a raději jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~Kdyby tě už nevarovali před spalovačským kapsářem, asi by sis toho nevšiml, ale postřehl jsi, jak během jedné své úklony Popelplášť hrábl rukou k tvému měšci.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"Hej! Co si myslíš, že děláš?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Dovol Popelplášti, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Ignoruj to a raději jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~Možná je to díky tvým vlastním zlodějským schopnostem, ale když ses otáčel, instinktivně jsi zkontroloval měšec... a všiml sis, jak z něj Popelplášť vytahuje ruku. Zřejmě neví, že jsi to zaregistroval.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"Hej! Co si myslíš, že děláš?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Navnaď Popelpláště, ať tě zkusí znovu obrat a sleduj jeho techniku.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Ignoruj to a raději jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Pod záminkou, že mu vysvětlíš, kde je co v Úlu, jsi Popelpláště vlákal do delší konverzace a přitom tajně sleduješ jeho pohyby. Popelplášť se spoléhá především na svou spalovačskou masku, aby odlákal pozornost své oběti a své časté úklony používá jako zakrytí kapsářských pokusů. Udělal sis mentální poznámku o jeho technice... právě, když učinil další pokus o odlehčení tvého měšce.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Popadni ho za ruku.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Popadni ho za ruku.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"Hej! Co si myslíš, že děláš?"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Zaútoč na něj. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Ignoruj to a raději jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~Popadl jsi ho za zápěstí a sevřel ho drtivým stiskem. Jeho spalovačský výraz zmizel v jediném zášlehu bolesti. Zavřeštěl a snaží se ti vytrhnout. "Pusť mě, ty pse, nebo zavolám stráže!"~ */
  IF ~~ THEN REPLY #2780 /* ~"*Až* mi odpovíš na nějaké otázky,'Spalovači.'"~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"Dej mi všechno, co máš, zloději, a nechám tě jít."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"Stráže? Jen si je zavolej. Jsem si jistý, že jich je kolem spousta."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Nechej ho jít.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Chňapl jsi po něm, ale Popelplášť se prudce stáhl. Minul jsi ho o několik palců. Spalovačský výraz mu zmizel z tváře a Popelplášť se vyděšeně dál na útěk.~ */
  IF ~~ THEN REPLY #12071 /* ~"Zatraceně..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Popelplášť se najednou rozběhl a prchá!~ */
  IF ~~ THEN REPLY #12072 /* ~"Zatraceně..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"Pche." Tváří se podrážděně. "Co mě prozradilo?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"Varovali mě před někým jako jsi ty. Oblečený jako Spalovač a vybírá kapsy."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"Tvoje ignorance, neznáš ani základní spalovačské filozofie. Než se budeš pokoušet dělat něco takového, měl by ses nejdřív trochu poučit. Teď pro tebe mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"Tvé schopnosti ve vybírání kapes potřebujou trénink. Spoustu tréninku. Teď pro tebe mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"Přijdi si na to sám. Teď pro tebe mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"Nebudeš žít dost dlouho na to, aby to zjistil. Připrav se na smrt."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"Tak co chceš tedy vědět?"~ */
  IF ~~ THEN REPLY #12078 /* ~"Co tady děláš, převlečený za Spalovače?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"Hledám někoho jménem Pharod. Znáš ho?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"Hledám deník."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Pravda: "Dej mi všechno co máš, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Bluf: "Dej mi všechno co máš, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Pravda: "Tak... a teď mi dej *všechno*, co máš, jinak tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Bluf: "Tak... a teď mi dej *všechno*, co máš, jinak tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"Má otázka zní, jak dlouho mi bude trvat, než tě zabiju... připrav se na smrt.  Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~Pokrčil rameny. "Spalovače nikdo nepodezírá." Uchechtl se. "Dají se tak vydělat slušný prachy, než tě někdo čapne."~ */
  IF ~~ THEN REPLY #12088 /* ~"Zajímavé. Mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"To je vše, co jsem chtěl vědět. Připrav se na smrt.  Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"Aha. Hele, tlučhubo, řeknu ti jak to bude: Už tě tady nikdy nechci vidět, nebo tě rozpářu a uškrtím tě tvými krvácejícími střevy. A teď vypadni, nebo ti utrhnu ucho. Nebo pár prstů."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"Jo, fakt chytrý. Hele, nechci, abys to na někoho v Sigilu ještě zkoušel. Jasný?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~Zúžil oči. "Nemám u sebe nic. Jsi dneska moje první kořist."~ */
  IF ~~ THEN REPLY #12092 /* ~Bluf: "Tak nejenom že si hraješ na blbce, ty jsi *blbec*. Dej mi všechno, co máš, nebo budou mít Sběrači další hromadu sraček na seškrábnutí z ulice."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Pravda: "Tak nejenom že si hraješ na blbce, ty jsi *blbec*. Dej mi všechno, co máš, nebo budou mít Sběrači další hromadu sraček na seškrábnutí z ulice."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"Špatná odpověď. Připrav se na smrt. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"Jo tak? No, zatřesu s tebou a uvidím, jestli to byla pravda."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~Zavrčel a přemýšlí nad svými šancemi, pak si to ale rozmyslel a dotkl se lemu svého roucha. Odtrhl kus róby a vytáhl hromádku měděných  mincí. Kdyby ti svůj úkryt neodhalil, asi bys na něj nikdy nepřišel.~ */
  IF ~~ THEN REPLY #12096 /* ~"Jo tak? Doufám, že pro mě ještě něco máš, tlučhubo, nebo se brzy skamarádíš velice blízce s jednou mou známou. Říká si smrt."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"Dobrá tedy. Teď pro tebe mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"To je všechno, co jsem chtěl. Připrav se na smrt. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho. A uškrtím tě tvýma vlastníma střevama, aby ses moc dlouho netrápil.""~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~Vycenil zuby. "Už nic víc nemám."~ */
  IF ~~ THEN REPLY #12101 /* ~"Dobrá tedy. Teď pro tebe mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"Jo tak? No, zatřesu s tebou a uvidím, jestli to byla pravda."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"Špatná odpověď. Připrav se na smrt."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~Už se ho chystáš prohledat, když z jeho rukávu náhle vyskočí dýka. Se zuřivým zachrochtáním na tebe útočí!~ */
  IF ~~ THEN REPLY #12106 /* ~"Dobrá tedy..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~Muž se zamračil. "Tak? Myslíš, že jsem viděl něco takovýho? Já se starám jenom o prachy, vole."~ */
  IF ~~ THEN REPLY #12107 /* ~"Dobrá tedy, mám pro tebe ještě dalších pár otázek..."~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"To je vše, co jsem chtěl vědět. Připrav se na smrt. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"Co s ním?"~ */
  IF ~~ THEN REPLY #12111 /* ~"Kdo je to?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"To nic. Mám nějaké otázky..."~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"Zapomeň na to. Připrav se na smrt."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"Pustíš mě, když ti to řeknu?"~ */
  IF ~~ THEN REPLY #12116 /* ~"Ne."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Přísaha: "Máš mé slovo, že tě nechám jít... jestli mi odpovíš na pár otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Pravda: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Lež: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Pravda: "Nechám tě *žít*, jestli mi to povíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Bluf: "Nechám tě *žít*, jestli mi to povíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~Plivl na zem. "Tak to ti toho nemám moc co říct."~ */
  IF ~~ THEN REPLY #12122 /* ~Přísaha: "Velmi dobře. Máš mé slovo, že tě nechám jít... jestli mi odpovíš na pár otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Pravda: "Dobrá, nechám tě jít."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Lež: "Dobrá, nechám tě jít."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Pravda: "Nechám tě *žít*, jestli mi to povíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Bluf: "Nechám tě *žít*, jestli mi to povíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"Špatná odpověď. Připrav se na smrt. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"Pharod je šéf Sběračů. Má spoustu chlapů a povídá se, že maj rozjetou velkou a bezpečnou akci. Ale nic víc o tom nevím. Na tvým místě bych si na něj dával majzla."~ */
  IF ~~ THEN REPLY #12128 /* ~"Kde ho můžu najít?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"Má bejvák někde na Hadrníkově náměstí... to je ta velká kupa hadrů a bordelu na severozápad vocaď. Jdi severní branou a pak jdi furt na sever, až se tam dostaneš. Povídá se, že Pharod je zahrabanej někde v tý hromadě bordelu, možná dokonce pohřbenej pod ním. A teď mě nechá jíš?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"Ne. Mám pro tebe ještě další otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"Ne. Mám pro tebe ještě další otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"To je všechno, co jsem potřeboval vědět. Připrav se na smrt. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~Vypadá rozzuřeně. "*Říkal* jsi, že mě pustíš."~ */
  IF ~~ THEN REPLY #12134 /* ~"A tys *řekl*, že jsi Spalovač. A teď k mým otázkám..."~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"Ale jo, řekl jsem spoustu věci, ale teď už mě unavuje vykecávat se s tebou. Připrav se, seznámím tě s kamarádkou smrtí. Když nebudeš uhýbat, nebude to bolet."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"Zmizni odsud. Jestli tě tu ještě uvidím, rozpářu ti břicho."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"Teď jdi. Nechci ani *slyšet*, že bys to znovu na někoho v Sigilu zkoušel. Rozumíš?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~Zase vidíš Popelpláště... ještě pořád vypadá ztraceně a něco si tiše mumlá, zatímco si prohlíží jednotlivé budovy na ulici.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"Zdravím."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"Zdravím."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"Obávám se, že jsem zapomněl tvé instrukce, pane. Mohu tě požádat, abys mi je zopakoval?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"Víš, slyšel jsem něco o kapsáři maskovaném jako Spalovač. Možná ho znáš?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"Oh, Spalovačská hospoda? Je to u Márnice. Přímo na jihozápad od přední brány Márnice. Nemůžeš to minout."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"Slyšel jsem o tom. Pomůžu ti... za nějakou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"Slyšel jsem o tom. Pomůžu ti... jestli mi odpovíš na nějaké otázky."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Lež: "Eee... jo, slyšel jsem o tom. Pomůžu ti... za nějakou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Lež: "Eee... jo, slyšel jsem o tom. Pomůžu ti... jestli mi odpovíš na nějaké otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"Nemůžu ti pomoct. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"Nemůžu ti pomoct. Sbohem."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"Už jdu! Nech mě být!"~ */
  IF ~~ THEN REPLY #12149 /* ~"Doporučuju ti pospíchat."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"Vím, že dříve jsi mi nemohl pomoci, pane. Možná že tentokrát už víš, kde najdu bar své sekty?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"Víš, slyšel jsem něco o kapsáři maskovaném jako Spalovač. Možná ho znáš?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"'Sekta'? Nemyslíš společenství? Nebo frakci?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"'Sekta'? Jsi přece Spalovač. Nemyslíš společenství? Nebo frakci?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"Oh, Spalovačská hospoda? Je to u Márnice. Přímo na jihozápad od přední brány Márnice. Nemůžeš to minout."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"Slyšel jsem o tom. Pomůžu ti... za nějakou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"Slyšel jsem o tom. Pomůžu ti... jestli mi odpovíš na nějaké otázky."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Lež: "Eee... jo, slyšel jsem o tom. Pomůžu ti... za nějakou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Lež: "Eee... jo, slyšel jsem o tom. Pomůžu ti... jestli mi odpovíš na nějaké otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"Nemůžu ti pomoct. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"Nemůžu ti pomoct. Sbohem."~ */ GOTO 5
END
