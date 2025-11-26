// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~Zakolísal jsi pod zvukem stovek hlasů, mluvících jako jeden přímo v tvé mysli - v hlase je hloubka a naléhavost. "ŘEKNI, CO ZDE POHLEDÁVÁŠ, DVOJNOŽČE, A MLUV RYCHLE A PRAVDIVĚ. JSI V HALE MNOHOJEDNOHO. ODEJDEŠ POUZE DÍKY NAŠÍ MILOSTI. VĚZ, ŽE DOKÁŽEME ČÍST TVOU MYSL A VYCÍTIT TVÉ LŽI."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"Kdo jsi?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"Co je tohle za místo?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"Co je tohle za místo?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"Myslel jsem, že bys rád věděl toto: Tichý Král je jen pouhý mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"Myslel jsem, že bys rád věděl toto: Tichý Král je jen pouhý mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Blafuj: "Myslel jsem si, že bys rád věděl že Tichý Král je příliš silný než abys na něj zaútočil. Drž se dál od Mrtvých Národů, nebo tě mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"Přišel jsem za tebou, ty jež jsi Mnohojeden."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"Přišel jsem sem omylem."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"Když můžeš číst mou mysl, proč bych měl mluvit o svých úmyslech?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"JSME OČI V TEMNÝCH MÍSTECH. JSME MNOHO JEŽ MYSLÍ JAKO JEDEN. NEODPOVÍDÁME NA TVÉ OTÁZKY. TY ODPOVÍŠ NA NAŠE. CO POHLEDÁVÁŠ NA TOMTO MÍSTĚ, TAK DALEKO OD OSVĚTLENÝCH KORIDORŮ LIDSTVA?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"JSME OČI V TEMNÝCH MÍSTECH. JSME MNOHO JEŽ MYSLÍ JAKO JEDEN. NEODPOVÍDÁME NA TVÉ OTÁZKY. TY ODPOVÍŠ NA NAŠE. CO POHLEDÁVÁŠ NA TOMTO MÍSTĚ, TAK DALEKO OD OSVĚTLENÝCH KORIDORŮ LIDSTVA?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"JSME OČI V TEMNÝCH MÍSTECH. JSME MNOHO JEŽ MYSLÍ JAKO JEDEN. NEODPOVÍDÁME NA TVÉ OTÁZKY. TY ODPOVÍŠ NA NAŠE. CO POHLEDÁVÁŠ NA TOMTO MÍSTĚ, TAK DALEKO OD OSVĚTLENÝCH KORIDORŮ LIDSTVA?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"JSME OČI V TEMNÝCH MÍSTECH. JSME MNOHO JEŽ MYSLÍ JAKO JEDEN. NEODPOVÍDÁME NA TVÉ OTÁZKY. TY ODPOVÍŠ NA NAŠE. NECHŤ TVÁ MYSL PROMLUVÍ A PAMATUJ ŽE MŮŽEME SLYŠET TVÉ LŽI. CO POHLEDÁVÁŠ V TĚCHTO MÍSTECH, TAK DALEKO OD OSVĚTLENÝCH KORIDORŮ LIDSTVA?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"Myslel jsem, že bys rád věděl toto: Tichý Král je jen pouhý mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"Myslel jsem, že bys rád věděl toto: Tichý Král je jen pouhý mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Blafuj: "Myslel jsem si, že bys rád věděl že Tichý Král je příliš silný než abys na něj zaútočil. Drž se dál od Mrtvých Národů, nebo tě mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"Přišel jsem za tebou, ty jež jsi Mnohojeden."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"Přišel jsem sem omylem."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"Když můžeš číst mou mysl, proč bych měl mluvit o svých úmyslech?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~Hlasy ve tvé hlavě, ačkoliv nevydávají žádný zvuk, jsou téměř ohlušující. "NAŘIZUJEME TĚM JEŽ JSOU S TEBOU ABY MLČELI. JSI V MÍSTECH ROZJÍMÁNÍ. MNOHOJEDEN JE NEJVYŠŠÍ VLÁDCE. NECHŤ TVÁ MYSL PROMLUVÍ A PAMATUJ, ŽE MŮŽEME SLYŠET TVÉ LŽI. CO POHLEDÁVÁŠ V TEMNÝCH TUNELECH?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"Myslel jsem, že bys rád věděl, že Tichý Král je jen mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"Myslel jsem, že bys rád věděl toto: Tichý Král je jen pouhý mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Blafuj: "Myslel jsem si, že bys rád věděl, že Tichý Král je příliš silný než abys na něj zaútočil. Drž se dál od Mrtvých Národů, nebo tě mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"Přišel jsem tě navštívit."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"Přišel jsem sem náhodou."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"Když můžeš číst mou mysl, proč bych měl mluvit o svých úmyslech?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"POVAŽUJ MRTVÉ ZA MRTVÉ. JEJICH BEZMOCNÝ KRÁL JIŽ NÁM VÍCE NEBUDE STÁT V CESTĚ. UKÁZAL JSI SE BÝT UŽITEČNÝM. ZA TUTO INFORMACI ZLOMÍME ZÁBRANU V TVÉ MYSLI A ODHALÍME TĚ SOBĚ SAMÉMU. PŘIPRAV SE NA ODHALENÍ."~ */
  IF ~~ THEN REPLY #38686 /* ~"Počkej! Ještě ne!"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Informoval jsem Mnohojednoho, že Tichý král je jenom mrtvý kostlivec bez moci. Krysy nyní slíbily převzít katakomby pod Sigilem.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"Jsem připraven."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Informoval jsem Mnohojednoho, že Tichý král je jenom mrtvý kostlivec bez moci. Krysy nyní slíbily převzít katakomby pod Sigilem.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"TY SES OPOVÁŽIL UKÁZAT TADY ZNOVU SVOJI TVÁŘ? JSI NEROZVÁŽNÝ DVOJNOŽČE. PŘIPRAV SE."~ */
  IF ~~ THEN REPLY #38691 /* ~Bojuj.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"POVĚZ NÁM CO VÍŠ, DVOJNOŽČE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"Tichý Král je jenom mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"Tichý Král je jenom mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Lež: "Tichý Král je příliš silný, než abyste na něj mohli zaútočit. Držte se dál od Mrtvých Národů, nebo vás mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"Ještě nic nemám."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"Ghúlové zešíleli a řádí v Mrtvých národech."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"GHÚLOVÉ JSOU PŘÍLIŠ SILNÍ I PRO HORDY MÝCH KRYSODLAKŮ. TVOJE MISE SELHALA. JIŽ NEPOTŘEBUJEME TVÝCH SLUŽEB. IHNED ODEJDI, NEBO ČEL NÁSLEDKŮM."~ */
  IF ~~ THEN REPLY #38698 /* ~"Cože, snažíš se mě jen tak zbavit?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"Sbohem tedy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~Ghúlové si podmanili Mrtvé národy, a proto je pro kraniokrysy obtížné nalézt tam oporu. Vykázaly mne ze své přítomnosti a varovaly před strašlivými následky, pokud bych se vrátil.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"ANO. KDYŽ NEMUSÍME VYNALOŽIT NAŠI SÍLU NA TICHÉHO KRÁLE, MÁME JÍ VÍCE NEŽ DOST NA ROZDRCENÍ TVÉHO KŘEHKÉHO EGA. JDI. NEVRACEJ SE."~ */
  IF ~~ THEN REPLY #38859 /* ~"Ne."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"Sbohem, tedy."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"BYL JSI VAROVÁN, DVOUNOHÝ. PŘIPRAV SVOU MYSL NA VĚČNOU HRANICI."~ */
  IF ~~ THEN REPLY #38861 /* ~"Můžeme to udělat venku!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Bojuj.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"MNOHOJEDEN VYSLYŠEL TVOU ZPRÁVU. TICHÝ KRÁL JE PŘÍLIŠ SILNÝ, ŘÍKÁŠ. NEVIDÍME VE TVÉM SRDCI ŽÁDNOU LEŽ. OPUSŤ MÍSTO NEUSTÁLÉHO ROZJÍMÁNÍ SE SVÝM ŽIVOTEM JAKO DÁRKEM OD NÁS. POSLOUŽIL JSI SVÉMU ÚČELU."~ */
  IF ~~ THEN REPLY #38863 /* ~"Budeš se mě nyní chtít zbavit, že ano?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Řekl jsem Mnohojednomu, že Tichý král je pro něj příliš silný, než aby se k němu mohl přiblížit. Mysl kraniokrys si nevšimla klamu v mých slovech, ale zakázala mi vrátit se do Místa Rozjímání pod pohrůžkou smrti. No, uvidíme.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"Velmi dobře. Sbohem."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Řekl jsem Mnohojednomu, že Tichý král je pro něj příliš silný, než aby se k němu mohl přiblížit. Mysl kraniokrys si nevšimla klamu v mých slovech, ale zakázala mi vrátit se do Místa Rozjímání pod pohrůžkou smrti. No, uvidíme.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"BYL JSI VAROVÁN, DVOUNOHÝ. PŘIPRAV SVOU MYSL NA VĚČNOU HRANICI."~ */
  IF ~~ THEN REPLY #38865 /* ~"Můžeme to udělat venku!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Bojuj.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"MYSL MNOHOJEDNOHO ODHALILA TVÉ TAJEMSTVÍ. NYNÍ ZNÁME PRAVDU O TICHÉM KRÁLI. JSME VDĚČNI ZA TYTO INFORMACE..." Hlas ve tvé hlavě se stává více zlověstný a pokračuje, "... A TAK NEPOMSTÍME TY Z NÁS, KTERÉ JSI ZABIL. NYNÍ ODEJDI A NIKDY SE NEVRACEJ DO MÍSTA NEUSTÁLÉHO ROZJÍMÁNÍ. JDI, DVOUNOHÝ. TVÁ UŽITEČNOST JE U KONCE."~ */
  IF ~~ THEN REPLY #38867 /* ~"Budeš se mě nyní chtít zbavit, že ano? Po tom všem co jsem pro tebe udělal?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Řekl jsem Mnohojednomu, že Tichý král není hrozba, a protože jsem zabil kraniovou krysu nebo dvě, byl jsem odměněn mým životem a nic víc. Krysy. Nenávidím krysy.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"Velmi dobře. Sbohem."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Řekl jsem Mnohojednomu, že Tichý král není hrozba, a protože jsem zabil kraniovou krysu nebo dvě, byl jsem odměněn mým životem a nic víc. Krysy. Nenávidím krysy.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"MYSL MNOHOJEDNOHO ODHALILA TVÉ TAJEMSTVÍ. NYNÍ ZNÁME PRAVDU O TICHÉM KRÁLI. PROKÁZAL JSI SVOU UŽITEČNOST. ROZBIJEME PŘEKÁŽKY VE TVÉ MYSLI A PROZRADÍME TI NĚCO O TOBĚ."~ */
  IF ~~ THEN REPLY #38875 /* ~"Čekej! Ještě ne!"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"Jsem připraven."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~Cítíš vznikající tlak ve své hlavě, jako kdyby tisíce malých, titěrných těl bylo tlačeno proti zdi ve tvé mysli. Instinktivně odoláváš, ale po určité době, tlak vzrůstá příliš a vlna černé vzpomínky prorazí skrz tvou obranu.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Vzdej se.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Vzdej se.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~Sprintuješ skrz město celé postavené z řetězců - budovy, ulice, stoky a rozvody jsou všechno propojené železné články. Krvavě temná obloha nad tebou se zle třpytí, když zvoníš svými kroky přes hustou síť ze zčernalého stříbra. Letmo se podíváš přes rameno, doufáš, že ses zbavil pronásledovatelů a nevidíš nic. Podíváš se dopředu...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~... a tiše proti tobě stojí bytost ovinutá v řetězech od hlavy až k patě, maniakálně se šklebící pod svou maskou. Z její napřažené ruky vystřelí řetěz a ovine tě kolem kotníku. Další řetěz vyrazí ze zdi po tvé levé straně a sekne tě do ruky. Za letu ho chytíš a naučeným pohybem ho hodíš kolem krku nepřítele. Prudce trhneš řetězem a uslyšíš ostré prasknutí netvorovy páteře... dřív než chichotající horda podobných oblud natáhne cinkající síť z řetězů nad tvé tělo. Vymaníš se ze vzpomínky.~ */
  IF ~~ THEN REPLY #38883 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"DOSTAL JSI ODPOVĚDI." Masivní hlas se zdá podivně unavený ze své námahy. "NAŠE ZÁLEŽITOST BYLA UZAVŘENA. NEPOTŘEBUJEME ŽÁDNÝ DALŠÍ KONTAKT. JESTLIŽE SE SEM VRÁTÍŠ, ZNIČÍME TĚ."~ */
  IF ~~ THEN REPLY #38884 /* ~"Sbohem, tedy."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~... a tiše proti tobě stojí bytost ovinutá v řetězech od hlavy až k patě, maniakálně se šklebící pod svou maskou. Z její napřažené ruky vystřelí řetěz a ovine tě kolem kotníku. Další řetěz vyrazí ze zdi po tvé levé straně a sekne tě do ruky. Vytrhneš svou nohu a vyhneš se dalšímu řetězu. Pohybuješ se zdánlivě nekoordinovaně, ale vyhýbáš se všem dalším řetězům, které na tebe netvor vrhá. V mžiku ses dostal až k netvorovi, vrazil své prsty do jeho očí tak daleko, žes probodl jeho mozek. Tělo ti visí v náruči... a chichotající horda jemu podobných háže cinkající síť z řetězů nad tvé tělo. Vymaníš se ze vzpomínky.~ */
  IF ~~ THEN REPLY #38886 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~... a tiše proti tobě stojí bytost ovinutá v řetězech od hlavy až k patě, maniakálně se šklebící pod svou maskou. Z její napřažené ruky vystřelí řetěz a zamíří k tvému hrdlu - zastavíš ho v půli cesty vlnou ohně, která ho promění ve strusku a odhodí ho hořícího a ječícího do tmy. Chvíli se za ním díváš a pak uslyšíš dav podobných oblud hihňajících se za tebou. Háží na tvé tělo cinkající síť z řetězů a najednou vše kolem zčerná. Vymaníš se ze vzpomínky.~ */
  IF ~~ THEN REPLY #38887 /* ~(pokračování)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~Hlas zní jako tisíce mluvících najednou a rezonuje ve tvé hlavě. Neuvěřitelná zlost - a pocit čistého odporu - bublají pod povrchem proudu zuřivosti. "VRAHU. ŘEKNI CO ZDE POHLEDÁVÁŠ." ~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"Kdo jsi?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"Kdo jsi?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"Kdo jsi?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"Kdo jsi?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"Co je to za místo?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"Co je to za místo?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"Co je to za místo?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"Co je to za místo?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"Myslím, že by se ti mohlo líbit vědět toto: Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"Myslím, že by se ti mohlo líbit vědět toto: Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"Proč mě nazýváš 'vrahem'?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"Nemám zde žádný cíl. Právě jsem byl na odchodu."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~Hlas zní jako mučivá bolest tisíců, ozývajících se skrz tvou lebku. Hlas zní kuriózně tlumeně s podtextem neuvěřitelné zlosti. "VRAHU... ŽÁDÁME, ABYS OPUSTIL NAŠE SÍNĚ. NEPŘEJEME SI VÍCE BOJOVAT S TEBOU. KDYŽ PRO NÁS BUDEŠ PRACOVAT, MŮŽEME TI NABÍDNOUT SLUŽBU a MŮŽEME SE ROZEJÍT V MÍRU."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"Kdo jsi?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"Kdo jsi?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"Kdo jsi?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"Kdo jsi?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"Proč mě nazýváš 'vrahem'?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"Co mi chceš udělat?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"Ve skutečnosti jsem tady proto, abych tě zahubil."~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"Budu o tom přemýšlet."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~"ŘEKNI NÁM CO VÍŠ, VRAHU."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Bluf: "Tichý král je velmi silný při útoku. Drž se vždy od Mrtvých národů nebo tě ty žijící mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"Nic, ještě."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"Ghúlové zešíleli a řádí v Mrtvých národech."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"ŘEKNI NÁM CO VÍŠ, MASOVÝ VRAHU."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Bluf: "Tichý král je velmi silný při útoku. Drž se vždy od Mrtvých národů nebo tě ty žijící mrtvoly zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"Nic, ještě."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"Ghúlové zešíleli a řádí v Mrtvých národech."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"TICHÝ KRÁL JE PŘIPRAVEN SE NÁM POSTAVIT?" Hlas krysí mysli se na chvíli odmlčí. "NEVIDÍME V TVÉ MYSLI ŽÁDNOU LEŽ. NAŠE ODMĚNA JE TATO: NESRAZÍME TVOU ŽIJÍCÍ MRTVOLU NA PODLAHU SÍNĚ JAKO NEKONČÍCÍ ODPLATU ZA NAŠE MLADÉ. OPUSŤ NAŠE TUNELY A NEVRACEJ SE."~ */
  IF ~~ THEN REPLY #38918 /* ~"Budeš se mě chtít nyní zbavit, že ano?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Řekl jsem Mnohojednomu, že přiblížit se k Tichému králi je příliš těžké. Centrum mysli kraniokrysy nevidělo faleš v mých slovech, ale znemožnilo mi návrat do Místa neustálého rozjímání ve smrtelné bolesti. Uvidíme potom.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"Velmi dobře. Sbohem."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Řekl jsem Mnohojednomu, že přiblížit se k Tichému králi je příliš těžké. Centrum mysli kraniokrysy nevidělo faleš v mých slovech, ale znemožnilo mi návrat do Místa neustálého rozjímání ve smrtelné bolesti. Uvidíme potom.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"LŽEŠ, DVOUNOHÝ. 
NEOBCHODUJEME S TVÝM DRUHEM.
NEPOTŘEBUJEME. NEPŘEJEME SI.
BYL JSI VIDĚN VE VESNICI SBĚRAČŮ, MLUVIL JSI S MRZÁCKÝM KRÁLEM. JSI ŠPEH. JSI VRAH."
~ */
  IF ~~ THEN REPLY #38920 /* ~"Dobře, ano. A jsem přístupný nejvyšší nabídce."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"Ne, nejsem."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"TO JE KRÁLOVSTVÍ MNOHOJEDNOHO.
JSI VETŘELEC.
NAŠE KRÁLOVSTVÍ JE TAJNÉ.
TVŮJ HLAS MUSÍ BÝT UMLČEN."
~ */
  IF ~~ THEN REPLY #38922 /* ~"Budu to držet v tajnosti."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"Líbilo by se mi dívat jak to zkoušíš."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"MŮŽEME ČÍST TVOU MYSL, DVOUNOHÝ. NEZKOUŠEJ NÁS."~ */
  IF ~~ THEN REPLY #38924 /* ~"Ne. Přemýšlím o jménu. Řekni mi co to je." Myslím: Pharod~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"Ne. Přemýšlím o jménu. Řekni mi co to je." Myslím: Dům pro sledování škůdců a nemocí~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"Ne. Přemýšlím o jménu. Řekni mi co to je." Myslím: Tichý král~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"Ne. Přemýšlím o jménu. Řekni mi co to je." Myslím: Chodící mrtvoly~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"Ne. Myslím jméno. Řekni mi co je to." Míní: Barra, strážce brány~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"PAK ODEJDI. NEMÁME PRO TEBE ŽÁDNÝ UŽITEK - ANI ODPOVĚDI - DOKUD NÁM NEPŘINESEŠ ODPOVĚDI CO HLEDÁME MY."~ */
  IF ~~ THEN REPLY #38928 /* ~"Velmi dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"ANO.
DOBŘE."
~ */
  IF ~~ THEN REPLY #38929 /* ~"Co to mělo znamenat?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"Pouze, jestli mi uděláš..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~Najednou nastane pauza, jak jeho mysl vstřebává tyto informace.
"VYSVĚTLI."
~ */
  IF ~~ THEN REPLY #38931 /* ~"Co míním je to, že bychom mohli pomoc jeden druhému."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"Víš co míním. Mám zkušenosti, které můžeš použít. A ty máš moc, která mi může pomoci." ~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"TAKOVÉ DOHODY MAJÍ CENU. 
TAKOVÉ DOHODY POTŘEBUJÍ DŮVĚRU.
NEDŮVĚŘUJEME TI.
PŘESVĚDČI NÁS, DVOUNOHÝ."
~ */
  IF ~~ THEN REPLY #38933 /* ~"Jak tě můžu přesvědčit?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"Přesvědčit tě? Já tě nepotřebuji přesvědčovat. Buď mě budeš důvěřovat, nebo ne."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"Zapomeň na to, že jsem něco nabízel. Odcházím."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"DOVOLÍME TI NÁS OPUSTIT? NEMYSLÍME."~ */
  IF ~~ THEN REPLY #38938 /* ~"Mohl bych zabít všechny z vás právě teď a ty bys mě nezastavil. Nemůžu zemřít."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"Zkus mě zastavit."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"DOKAŽ, ŽE JSI HODEN DŮVĚRY. 
JDI DO HALY ŽIVÝCH MRTVÝCH.
ZABIJ TICHÉHO KRÁLE.
ZABIJ HO."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Bluf: "Kdo?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"Kdo?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"To si nemyslím. Odcházím."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"Proč to neuděláš sám?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"Velmi dobře. Udělám to."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Mnohojeden, centrum mysli kraniokrys, mě žádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Po návratu jsem hlásil Mnohojednomu, že čin je dokonán.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"Už jsem tu byl."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"Už jsem tu byl."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"Už jsem tu byl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"ŽIVÍ MRTVÍ JSOU OVLÁDÁNI KRÁLEM, KTERÝ BYDLÍ V MÍSTĚ, KTERÉ NEMŮŽEME VIDĚT.
MUSÍME HO ZNIČIT, NEŽ ZNIČÍ ON NÁS.
JE PRO NÁS ZÁHADOU.
NIKDY JSME HO NEVIDĚLI.
MUSÍ ZEMŘÍT."
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"Co bys mi mohl nabídnout?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"To si nemyslím. Odcházím."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"Proč to neuděláš sám?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"Velmi dobře. Udělám to."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Mnohojeden, centrum mysli kraniokrys, mě žádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Po návratu jsem hlásil Mnohojednomu, že čin je dokonán.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"Už jsem tu byl."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"Už jsem tu byl."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"Už jsem tu byl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"MÁME MNOHO CO NABÍDNOUT.
BEZPEČNÝ ODCHOD.
ŽIVOTY TVÝCH PŘÁTEL."
~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"Tohle že je nějaká motivace? Budeš mi muset nabídnout něco víc."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"Velmi dobře. Jestli je tohle to, co mi můžeš dát, tak já si to vezmu. Co mám udělat?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"To by byla práce... jen abych se postaral o tyto lidi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"Obávám se, že nemohu přijmout. Odcházím."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"Dobře. Co mám udělat?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Mnohojeden, centrum mysli kraniokrys, mě žádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Po návratu jsem hlásil Mnohojednomu, že čin je dokonán.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"Znám tajemství Tichého Krále."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"Znám tajemství Tichého Krále."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"Znám tajemství Tichého Krále."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"NEMŮŽEME TI VĚŘIT.
JESTLIŽE TVÁ SLOVA JSOU PRAVDIVÁ, PAK PROZRAĎ TY, KTEŘÍ TĚ PLATÍ"
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"To může být. Ještě jsi mi stále neřekl, co mi můžeš nabídnout za mé služby."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"To může být. Ještě jsi mi stále neřekl, co mi můžeš nabídnout za mé služby."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"MŮŽEME NABÍDNOUT BEZPEČNÝ ODCHOD. 
SVOBODU.
MOŽNÁ VÍCE."
~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"Ano, samozřejmě víc. Mluv dál."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"Obávám se, že nemohu přijmout. Odcházím."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"Proč to neuděláš sám?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"Dobře. Co mám udělat?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Mnohojeden, centrum mysli kraniokrys, mě žádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Po návratu jsem hlásil Mnohojednomu, že čin je dokonán.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"JSI MOUDRÝ, ŽE PŘIJÍMÁŠ NAŠE PODMÍNKY.
PUTUJ DO SÍNÍ MRTVÝCH.
ZABIJ JEJICH TICHÉHO VLÁDCE.
VRAŤ SE SEM a BUDEME SE BAVIT O ODMĚNĚ."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"Už jsem tam byl."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"Už jsem tu byl."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"Už jsem tu byl."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"MÁME JEŠTĚ MNOHO CO NABÍDNOUT.
TAJEMSTVÍ.
BOHATSVÍ.
MAGII.
MRTVÍ UVNITŘ TĚCHTO HROBEK MĚLI U SEBE MNOHO, KDYŽ ZEMŘELI."
~ */
  IF ~~ THEN REPLY #38967 /* ~"To si nemyslím. Odcházím."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"Proč to neuděláš sám?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"Velmi dobře. Co mám udělat?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Mnohojeden, centrální mysl kraniokrys, mě požádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Vrátím se zpět za Mnohojedním, až bude skutek dokonán.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"MÝLÍŠ SE. ŽIJEŠ DÍKY NAŠÍ SCHOVÍVAVOSTI.
MOŽNÁ TĚ NEMŮŽEME ZABÍT PŘÍMO.
MŮŽEME TĚ DONUTIT VOLAT PO SMRTELNÉM UVOLNĚNÍ.
MŮŽEME TĚ POHŘBÍT V NEKONEČNÉ ZEMI.
MŮŽEME TĚ ZAPUDIT DO VĚČNÉHO OHNĚ.
MŮŽEME ZNIČIT VŠECHNO, CO MÁŠ RÁD.
JSME VŠUDE.
NEMŮŽEŠ NÁS VŠECHNY ZASTAVIT."
~ */
  IF ~~ THEN REPLY #38971 /* ~"Pak samozřejmě můžeme dojít k nějaké dohodě."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"Jsem připraven dát ti za vyučenou. Zhyň, havěti!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"BUDEŠ PUTOVAT DO SÍNÍ MRTVÝCH.
ZABIJEŠ JEJICH TICHÉHO VŮDCE.
VRÁTÍŠ SE SEM, AŽ SPLNÍŠ SVÉ POSLÁNÍ."
~ */
  IF ~~ THEN REPLY #38973 /* ~"Přijímám."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Mnohojeden, centrální mysl kraniokrys, mě požádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Vracím se zpět za Mnohojedním, když je skutek dokonán.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"Proč to neuděláš sám?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"Nebudu."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"PAK, DVOUNOHÝ, ZEMŘEŠ."~ */
  IF ~~ THEN REPLY #38978 /* ~"Zkus mě zabít."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"LŽEŠ!"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"Podívej se do mé mysli a řekni mi, že lžu. Nebo se nemůžeš podívat do mé mysli?"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"Jak můžu dokázat, že nelžu?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"Ne, nejsem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"ALE ANO. NEMŮŽEŠ SE PŘEDE MNOU SKRÝT. VÍM, PROČ JSI ZDE. BRAŇ SE, DVOUNOHÝ, PROTOŽE ZEMŘEŠ."~ */
  IF ~~ THEN REPLY #38982 /* ~"Čekej! Můžeme se dohodnout!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"Jsem připraven pokaždé když jsi ty..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"Podívej se do mé mysli a řekni mi, že lžu. Nebo se nemůžeš podívat do mé mysli?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~Najednou nastane pauza a pak: "TICHÝ KRÁL TĚ POSLAL."~ */
  IF ~~ THEN REPLY #38985 /* ~"Máš pravdu. Vidím, že se nemohu před tebou ukrýt."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"Nemáš pravdu."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"Nemůžeš číst mou mysl. Proč ne?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"Tichý král? Kdo?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Bluf: "Tichý král? Kdo?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"JE TO JAK JSME ŘEKLI, DVOUNOHÝ. ZDI VE TVÉ MYSLI MOHOU BÝT VYSOKÉ, ALE MY MŮŽEME PŘELÉZT KAŽDOU BARIÉRU. NYNÍ: MÁME UŽITEK PRO TEBE."~ */
  IF ~~ THEN REPLY #38990 /* ~"Co je to?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"Nebudu."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"PŘEDSTÍRÁŠ, ŽE NIC NEVÍŠ O SVÉM PÁNU? ZEMŘEŠ, DVOUNOHÝ."~ */
  IF ~~ THEN REPLY #38992 /* ~"Nemůžeš číst mou mysl, že ne?"~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"Zvládni to."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~Hlas zní poplašeně: "TVÁ MYSL MŮŽE BÝT PRO NÁS OPEVNĚNÁ, ALE MŮŽEŠ ZEMŘÍT JAKO KAŽDÁ BYTOST."~ */
  IF ~~ THEN REPLY #38994 /* ~"Ne, nemohu. Mohl bych vás zabít všechny a nemůžete mě zastavit."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"Proč nemůžeš číst mou mysl?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"NEVÍME.
TOTO TEBE DĚLÁ PRO NÁS NEBEZPEČNÝM.
HROZBA/NEBEZPEČÍ/VRAH... NEVIDITELNÝ."
~ */
  IF ~~ THEN REPLY #38996 /* ~"Pak samozřejmě můžeme dojít k nějakému plánu."~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"Pojď se mnou a nebudeš mít více problémy."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"MRTVÍ... JSOU OPEVNĚNI. TĚŽKO POŠKODITELNÍ. JEJICH TICHÝ KRÁL: ON JE ZÁHADA. NEMÁME RÁDI TAKOVÉ ZÁHADY. UDEŘÍME, KDYŽ MŮŽEME USPĚT BEZ POCHYBNOSTÍ. TICHÝ KRÁL NÁM DĚLÁ POCHYBNOSTI."~ */
  IF ~~ THEN REPLY #38998 /* ~"Přijímám."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Mnohojeden, centrální mysl kraniokrys, mě požádal o zabití Tichého krále v Mrtvých národech. Souhlasil jsem. Vracím se zpět za Mnohojedním, když je skutek dokonán.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"Nebudu."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT." 
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT." 
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT." 
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT." 
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"Proč mě nazýváš 'vrahem'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"Nemám zde žádný cíl. Právě odcházím."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"JSI V MÍSTĚ NEUSTÁLÉHO ROZJÍMÁNÍ. JSI V DOMOVĚ MNOHOJEDNOHO. ZEMŘEŠ, VRAHU."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"Ale přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"Ale přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"Proč? A proč mě nazýváš 'vrahem'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"Ale já jsem přišel náhodou."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"TICHO! MLUVÍME KE ZJIZVENÉMU.
ZNIČÍME TĚ, JESTLI VYSLOVÍŠ JEŠTĚ JEDNO SLOVO. VĚZ, ŽE JSI V MÍSTĚ NEUSTÁLÉHO ROZJÍMÁNÍ... A VĚZ, ŽE JSI PŘIVODIL NAŠI ROZMRZELOST. ŘEKNI SVŮJ CÍL, VRAHU."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"Proč mě nazýváš 'vrahem'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~"Nemám zde žádný cíl. Vstoupil jsem náhodou."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"TICHÝ KRÁL LEŽÍ TIŠE? VEDL SIS DOBŘE, VRAHU." Hlasy na chvíli ztichly. "NECHŤ NENÍ ŘEČENO, ŽE MNOHOJEDEN JE BEZ VDĚČNOSTI."~ */
  IF ~~ THEN REPLY #39022 /* ~"Co si myslíš?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"PUCH LŽÍ SE KOLEM TEBE ŠÍŘÍ. VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI NÁS POBÍJEL. VĚZ, ŽE JSME CÍTILI BOLEST, JAK JSI NIČIL NAŠI MYSL. ZABIL JSI MNOHO Z NÁS. ZAPÍRÁŠ TO?"~ */
  IF ~~ THEN REPLY #39024 /* ~"Samozřejmě ano."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"Ne všechno."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"Nevěděl jsem, že byli součástí tebe."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"Zaútočili na mě první."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"BUDIŽ. DOZNÁVÁŠ SVŮJ ZLOČIN.
BUDEŠ TRPĚT
JAKO JSME TRPĚLI MY."~ */
  IF ~~ THEN REPLY #39028 /* ~"Proč mě trápíš, koušeš jako blecha krycí vrstvu vlastní hlouposti?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"LŽI!
VĚZ, ŽE BUDEŠ TRPĚT JAKO JSME TRPĚLI MY."~ */
  IF ~~ THEN REPLY #39029 /* ~"Proč mě trápíš, koušeš jako blecha krycí vrstvu vlastní hlouposti?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"Žádám o slitování."~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"Je tady nějaká cesta, jak se mohu s tebou usmířit?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"NENAJDEŠ SLITOVÁNÍ, VRAHU. MUSÍŠ ZAPLATIT ZA SVŮJ ZLOČIN."~ */
  IF ~~ THEN REPLY #39032 /* ~"Proč mě trápíš, koušeš jako blecha krycí vrstvu vlastní hlouposti?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"Jak se mohu s tebou usmířit?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"K ČEMU NÁM JSI?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"Je těžké mě zabít a umím kouzlit."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"Je těžké mě zabít."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"Jsem nenápadný a těžce zpozorovatelný."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"Je těžké mě zabít a jsem zuřivý válečník."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"NESTARÁME SE O KOUZLA. MAGOVÉ NEJSOU VZÁCNÍ... ZATÍM..."~ */
  IF ~~ THEN REPLY #39038 /* ~"Ještě?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"TOTO SE MŮŽE UKÁZAT BÝT UŽITEČNÉ... ANO..."~ */
  IF ~~ THEN REPLY #39039 /* ~"Ano?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"TYTO ZKUŠENOSTI SE MOHOU UKÁZAT BÝT UŽITEČNÉ... ANO..."~ */
  IF ~~ THEN REPLY #39040 /* ~"Ano?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"TYTO ZKUŠENOSTI SE MOHOU UKÁZAT BÝT UŽITEČNÉ... ANO..."~ */
  IF ~~ THEN REPLY #39041 /* ~"Ano?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"TICHÝ KRÁL PRO NÁS NEPŘEDSTAVUJE ŽÁDNOU HROZBU? JSI SI TÍM JISTÝ? VIDĚL JSI JEHO MRTVOLU?"~ */
  IF ~~ THEN REPLY #39042 /* ~"Ano."~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT. NEMÁME TOUHU BOJOVAT, ALE KDYŽ BUDEŠ STÁT NA SVÉM, BOJOVAT BUDEME." ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT. NEMÁME TOUHU BOJOVAT, ALE KDYŽ BUDEŠ STÁT NA SVÉM, BOJOVAT BUDEME." ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT. NEMÁME TOUHU BOJOVAT, ALE KDYŽ BUDEŠ STÁT NA SVÉM, BOJOVAT BUDEME." ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"JIŽ JSME SE SETKALI V TEMNÝCH SÍNÍCH.
VIDĚLI JSME TVŮJ OBLIČEJ, KDYŽ JSI PROLIL NAŠI KREV. ŘEKNI SVŮJ CÍL ZDE, VRAHU. JESTLI JSI PŘIŠEL ZABÍT NÁS VŠECHNY, NEMŮŽEŠ USPĚT. NEMÁME TOUHU BOJOVAT, ALE KDYŽ BUDEŠ STÁT NA SVÉM, BOJOVAT BUDEME." ~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"Přišel jsem ti říct, že Tichý král je pouze mrtvý kostlivec. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"Proč mě nazýváš 'vrahem'?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"Vlastně jsem zde, abych tě zahubil."~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"Nemám zde žádný cíl. Právě odcházím."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"DVOUNOHÝ, ZMASAKROVAL JSI MNOHO Z NAŠEHO DRUHU. CÍTILI JSME SVĚTLA ŽIVOTA MIZEJÍCÍ V BLESCÍCH BOLESTI. PŘINESL JSI UTRPENÍ DO MÍSTA NEUSTÁLÉHO ROZJÍMÁNÍ a PROTO TO MUSÍŠ NAPRAVIT. NAPRAVÍŠ TO, NEBO TĚ ZNIČÍME."~ */
  IF ~~ THEN REPLY #39048 /* ~"Nebudu."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"Co mám udělat?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"Nevěděl jsem, že to byli tvoji druzi."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"NENAPADL JSI NÁS DOST, TY PRIMITIVE? NENASYTIL SES DOST SVÝCH VRAŽD? NEVIDÍME SOUHLAS VE TVÉ MYSLI. ZABIJEME TĚ PRVNÍHO, DVOUNOHÝ."~ */
  IF ~~ THEN REPLY #39051 /* ~"Jsem připraven pro tebe..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"UDĚLÁŠ TO PRO NÁS NEBO UTRATÍME NÁŠ POSLEDNÍ ŽIVOT, ZASVĚCENÍM SE K TVÉMU VYPUZENÍ Z MNOHOVESMÍRU. DLUŽÍŠ NÁM ZA BOLEST, KTEROU JSI ZPŮSOBIL."~ */
  IF ~~ THEN REPLY #39052 /* ~"Co chceš, abych udělal?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"Rád bych se na tebe díval, jak to zkusíš."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"NÁŠ UŽITEK PRO TEBE SKONČIL.
NYNÍ JE ČAS NA TVOJE UTRPENÍ, TAK JAKO JSI TY ZAPŘÍČINIL NAŠE UTRPENÍ.
JE ČAS SFOUKNOUT TVOU KRÁTKOU JISKRU.
ZEMŘEŠ, HUMANOIDE.
*ZEMŘEŠ BOLESTIVĚ*."
~ */
  IF ~~ THEN REPLY #39054 /* ~"Je to díky za to, že jsem připraven?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"Vyzývám tě, abys to zkusil."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~"ŽÁDÁME, ABY TVÍ SPOLEČNÍCI MLČELI. PŘINESL JSI NÁM BOLEST, MNOHO BOLESTI, A MY OD TEBE POŽADUJEME NÁPRAVU."~ */
  IF ~~ THEN REPLY #39056 /* ~"Jsem zde, abych tě zahubil."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"Co chceš, abych udělal?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"Neuspokojil jsem tě."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"ŠKODA VZNIKLA. MINULOST NEBUDE ZMĚNĚNA POUHOU OMLUVOU. PROVEĎ PRO NÁS TUTO SLUŽBU, NEBO TĚ ELIMINUJEME."~ */
  IF ~~ THEN REPLY #56040 /* ~"Co mám udělat?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"Neudělám to."~ */ GOTO 76
END
