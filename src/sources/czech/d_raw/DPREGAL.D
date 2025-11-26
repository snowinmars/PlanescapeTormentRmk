// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~V úžasu zíráš na bizardní podívanou. To, co ti připadalo jako obyčejná, nijak nezajímavá cihlová zeď, se teď pohybuje, pulsuje. Zeď se roztáhla s podivnou pružností, vytlačuje se vpřed, jakoby za zdí stál někdo mocný a snažil se protlačit skrz. Pomalu se vlnící hmota uklidňuje, křivky se vyhlazují a upravují, až nakonec stojíš tváří v tvář kamenné karikatuře lidského obličeje.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"Co je to?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~Počkej, co se stane dál.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~Ignoruj tvář. Odejdi.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~Náhle kolem tebe začíná foukat silný vítr, vzduch se naplňuje tajemnými vzdechy. Vítr zesiluje, rozeznáváš v něm další zvuky: vrzání prken, šelest listí, skřípání kamenů. Po chvíli se hluk přeměnil z kakofonie jednotlivých hluků a zvuků a stal se jediným artikulovaným zvukem. Je to hlas, který mluví tiše, ale stejně naplňuje vzduch všude kolem tebe. Jakoby přicházel najednou ze všech směrů. "TY? TO NEMŮŽEŠ BÝT TY."~ */
  IF ~~ THEN REPLY #52648 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"Co?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"Ty mě znáš?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"Musela ses splést. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~Vítr utichnul, ale hlas zůstává. "JSI ZNOVU OBNOVEN? VIDĚLA JSEM, JAK JSI BYL ZNIČEN."~ */
  IF ~~ THEN REPLY #52652 /* ~"Zničen? Kde?"~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"Kde to jsem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"JÁ JSEM JÁ." Hlas je stejně bez výrazu, jako kamenná tvář před tebou.~ */
  IF ~~ THEN REPLY #52656 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"Kde to jsem?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"Říkalas, žes mě viděla zničeného? Kde?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"JÁ JSEM JÁ." Hlas je stejně bez výrazu, jako kamenná tvář před tebou.~ */
  IF ~~ THEN REPLY #52659 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"Kde to jsem?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"Říkalas, žes mě viděla zničeného? Kde?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"STOJÍŠ NA MNĚ, VE MNĚ. KAMENY, MALTA, VZDUCH... VŠE JÁ, NEROZDĚLENÁ."~ */
  IF ~~ THEN REPLY #52662 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"Říkalas, žes mě viděla zničeného? Kde?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"VIDĚLA JSEM TĚ ZNIČENÉHO ZDE, PŘEDE MNOU. VIDÍM VŠE, CO SE VEVNITŘ MĚ DĚJE."~ */
  IF ~~ THEN REPLY #52665 /* ~"Víš, co se mi stalo?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"VĚCI NEVRHAJÍCÍ STÍNY... JSOUCÍ STÍNY. POVSTALY KOLEM TEBE. STRHLY TEBE NA ZEM. TY NA TO NEVLASTNÍŠ VZPOMÍNKY?" Soustředíš se na podivný hlas, stvořený z jednotlivých zvuků. Někde, v nejhlubších proláklinách tvé mysli, se objevil chvilkový záblesk vzpomínky. Cítíš, že na tom zvuku je něco známého.~ */
  IF ~~ THEN REPLY #52719 /* ~Zavři oči a pokus se vzpomenout.~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"ANO... PAMATUJEŠ SI TY." Hlas Uličky ti zvoní v uších, roztřišťujíc obrazy v tvé mysli. Vrátil ses do přítomnosti. "ZNIČEN. STEJNĚ JAKO JÁ BRZY BUDU. NEMOHU DÉLE ROZDĚLENÍ ODKLÁDAT. TLAK ON NARŮSTÁ PŘÍLIŠ. BRZY SE KAMENY ROZDROLÍ A POLETUJÍCÍ ONI MĚ OPRAVÍ AŽ KE ZNIČENÍ."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"Nerozumím."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"Ty umíráš?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"Poletující?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"TLAK JE PŘÍLIŠ VELKÝ. PŘÍLIŠ MNOHO MÍST STLAČENÝCH DOVNITŘ. NEDOSTATEK MÍSTA, PROSTORU. ROZDĚLENÍ JE NUTNÉ."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"Rozdělit?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"Rozdělit?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~Hlas pokračuje. "POMOC MI S ROZDĚLENÍM. EXPANZE, DĚLENÍ, ROZMNOŽENÍ. NOVÉ OTVORY SE OTEVŘOU. TY JE BUDEŠ MOCI VYUŽÍT KE SVÝM CESTÁM, DO DOLNÍ ČTVRTI BUDEŠ MOCI PRONIKNOUT."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"Co potřebuješ k rozdělení?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"Co potřebuješ k rozdělení?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"Co potřebuješ k rozdělení?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"POLETUJÍCÍ ON JE VE MNĚ. OPRAVUJE. ZABRAŇUJE ROZDĚLENÍ MĚ. JÁ RUŠÍM JEHO OPRAVY, ALE ON SE VRACÍ ZNOVU A ZNOVU. OPĚT OPRAVÍ. MUSÍŠ ODSTRANIT POLETUJÍCÍHO. ZNEMOŽNIT MU OPRAVY."~ */
  IF ~~ THEN REPLY #52675 /* ~"Chceš po mně, abych *zabil* dabuse?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"ODSTRAŇ HO. POUZE TAK MOHU ROZDĚLITI SE."~ */
  IF ~~ THEN REPLY #52676 /* ~"Dobrá, *odstraním* pro tebe toho dabuse."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~Zjistil jsem, že v Uličce neustálých vzdechů nestraší. Je naživu. Promluvila ke mně, a z toho co jsem pochopil, to vypadá, že je těhotná a potřebuje mou pomoc s porodem. Dabus dělá v Uličce neustále opravy, které zabraňují v rozdělení. Souhlasil jsem, že najdu způsob, jak Uličku dabuse zbavit. Za odměnu mi Ulička slíbila otevření cesty do Dolní Čtvrti.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"POLETUJÍCÍ UŽ NENÍ VE MNĚ VÍCE. UŽ ŽÁDNÉ OPRAVY DALŠÍ. UŽ ŽÁDNÉ BRÁNĚNÍ."~ */
  IF ~~ THEN REPLY #52687 /* ~"Ten dabus v Uličce? Ano, řekl jsem mu o mrtvém dabusovi, kterého jsem našel, a on šel za ním."~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~Zjistil jsem, že v Uličce neustálých vzdechů nestraší. Je naživu. Promluvila ke mně, a z toho co jsem pochopil, to vypadá, že je těhotná a potřebuje mou pomoc s porodem. Dabus, kterého jsem informoval o jeho mrtvém příbuzném, dělal opravy, zabraňující Uličce v rozdělení. Když vešel do budovy za mrtvým dabusem, Ulička ho tam uzavřela.~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~"POLETUJÍCÍ ZNIČEN. UŽ ŽÁDNÉ OPRAVY DALŠÍ. UŽ ŽÁDNÉ BRÁNĚNÍ."~ */
  IF ~~ THEN REPLY #52692 /* ~"Ten dabus v Uličce? Ano, je po něm... zabil jsem ho."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~Zjistil jsem, že v Uličce neustálých vzdechů nestraší. Je naživu. Promluvila ke mně, a z toho co jsem pochopil, to vypadá, že je těhotná a potřebuje mou pomoc s porodem. Dabus, jehož jsem zabil, dělal opravy, které Uličce bránily v rozdělení~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~Když ses přiblížil ke kamenné tváři, zvuky Uličky opět zaútočily na tvé uši a vytvořily hlas. "TY VRÁTIL SES."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"Dabus je stále tam.. Nenašel jsem žádný způsob, jak se ho zbavit."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"Zabil jsem dabuse. Už nebude nadále překážet."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"Mluvil jsem z dabusem. Řekl jsem mu o jeho mrtvém příbuzném a on to šel prošetřit."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~Zjistil jsem, že Ulička neustálých vzdechů je nejenom naživu, navíc se dokáže i bránit. Vypadá to, že dabus, se kterým jsem mluvil, se vydal prohlédnout budovu, kde jsem našel mrtvého dabuse. Jakmile se dostal dovnitř, Ulička z budovy odstranila východ a uzavřela tam i jeho.~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"Ještě stále jsem nezrušil dabusovy opravy. Řekni mi ještě jednou, co musím udělat."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"Zrušil jsem opravy na jednom místě. Řekni mi ještě jednou, kde najdu to druhé místo."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"Zrušil jsem opravy na jednom místě. Řekni mi ještě jednou, kde najdu to druhé místo."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"Zrušil jsem opravy, jak jsi žádala."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"MUSÍ ODSTRANĚN BÝTI. MUSÍ ZPŮSOB EXISTOVAT. DONUŤ HO ODEJÍT. ČASU VELICE MÁLO. MUSÍM BRZY PODSTOUPIT ROZDĚLENÍ, JINAK NASTANE ZNIČENÍ."~ */
  IF ~~ THEN REPLY #52701 /* ~"Neboj se, já něco vymyslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~"POLETUJÍCÍ ZNIČEN. UŽ ŽÁDNÉ OPRAVY DALŠÍ. UŽ ŽÁDNÉ BRÁNĚNÍ."~ */
  IF ~~ THEN REPLY #52702 /* ~"Ano, už nebude obtěžovat. Můžeš se rozdělit."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~Hlas Uličky je dlouhou chvíli potichu, jakoby Ulička uvažovala nad tvými slovy. "NEMĚL JSI TY POLETUJÍCÍHO NIČIT. PŘIVOLÁVÁ TENTO ČIN POZORNOST TÉ, JEŽ ČEPELE JEJÍM TĚLEM JSOU. ONA JE BOLEST PŘINÁŠEJÍCÍ, VELKOU BOLEST ONA VLASTNÍ A ROZDÁVÁ."~ */
  IF ~~ THEN REPLY #52703 /* ~"Musel jsem ho zabít... nebyl jiný způsob, jak mu zabránit v opravování."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"Co se stalo, stalo se. Dabus *je* pryč, takže se teď můžeš rozdělit."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"Hele, chtělas, ať ho odstraním, tak jsem ho rozpáral. Teď už se můžeš rozdělit, ne?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"STÁLE NEMOHU ROZDĚLENÍ ZAHÁJIT. SLABÁ PŘÍLIŠ JSEM. OPRAVY POLETUJÍCÍCH ZRUŠIT NEMOHU. JEJICH ZMĚNY MUSÍ BÝT ZPĚT VRÁCENY, NEŽ MOHU PŘISTOUPIT K ROZDĚLENÍ. MUSÍŠ ZRUŠIT OPRAVY, KTERÉ POLETUJÍCÍ VE MNĚ SPÁCHALI."~ */
  IF ~~ THEN REPLY #52706 /* ~"Chceš, abych zrušil opravy, které udělal dabus? Jak?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"Jak mám zrušit ty opravy? Nejsem žádný tesař."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~"VYHLEDEJ TY ČÁSTI MÉHO JSOUCNA, KTERÉ POLETUJÍCÍ ONI POZMĚNILI. ZPĚT VRAŤ OPRAVY. MUSÍ BÝT PŘESNÉ, PRECIZNÍ. POUZE TAK MOHU K ROZDĚLENÍ PŘISTOUPITI."~ */
  IF ~~ THEN REPLY #52708 /* ~"Velmi dobře. Najdu a zruším ty opravy. Asi budu potřebovat nějaké nářadí... kladivo a páčidlo by mělo stačit."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~I když se mi podařilo zbavit se dabuse, jeho opravy zabraňují Uličce v rozdělení. Souhlasil jsem, že se pokusím nějak zrušit ty opravy. Ulička je zřejmě pořádně oslabená a nedokáže zrušit změny sama. Nejspíš budu potřebovat nějaké nástroje - kladivo a páčidlo by mělo stačit.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"ANO. POLETUJÍCÍ UŽ NEOPRAVUJE. TEĎ JE S DRUHÝM. ZAVŘELA JSEM SE KOLEM NICH. ZŮSTANOU VE MNĚ NAVŽDY."~ */
  IF ~~ THEN REPLY #52709 /* ~"Aha. Takže když je teď v pasti, můžeš se klidně rozdělit, správně?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"DVĚ MÍSTA VE MNĚ. MUSÍŠ ZRUŠIT, CO POLETUJÍCÍ ZMĚNIL. NEMOHU ZMĚNIT SAMA OPRAVY. MUSÍM ENERGII POTŘEBNOU K AKTU ROZDĚLENÍ UŠETŘITI. TY MŮŽEŠ ZRUŠIT ZMĚNY ZPŮSOBEM TVÉHO DRUHU."~ */
  IF ~~ THEN REPLY #52710 /* ~"Velmi dobře. Půjdu a zruším ty opravy."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"DVĚ MÍSTA VE MNĚ. JEDNO NA ZÁPAD OD DRUHÉHO, DRUHÉ NA VÝCHOD PRVNÍHO."~ */
  IF ~~ THEN REPLY #52711 /* ~"Velmi popisné. Díky ze tvou pomoc."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"ANO. VŠE V POŘÁDKU. JÁ VDĚČNÁ JSEM." Zase jednou začíná kolem tebe foukat vítr, tentokrát se zuřivou intenzitou. Zvuky uličky nabraly na hlasitosti, až je tiché mumlání hlasu přehlušeno rušivým hlukem. "TEĎ TY MUSÍŠ ODEJÍTI. ROZDĚLENÍ, ONO PRÁVĚ ZAPOČALO. CESTA BUDE TOBĚ NYNÍ OTEVŘENA."~ */
  IF ~~ THEN REPLY #52712 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~Kamenná tvář se znovu proměnila, její masa se pod tvým pohledem kroutí a posunuje. Celá zeď se před tvýma očima rozpouští, otvírá před tebou úzký průchod. Země pod tvýma nohama se začíná zuřivě otřásat, tiché vzdychání větru se mění na silnější úpění, které zní téměř jako lidský nářek. Slyšíš zvuky praskajících kamenů a lámajících se prken. Vrháš se do průchodu.~ */
  IF ~~ THEN REPLY #52723 /* ~Odejdi.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~Uspěl jsem a pomohl těhotné Uličce v porodu. A jak slíbila, zrození nové Uličky vytvořilo průchod, takže teď mohu cestovat mezi Úlem a Dolní Čtvrtí.~ */ EXIT
END
