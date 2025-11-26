// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"Neměl bys už vypadnout? Stráže!  Odveďte toho parchanta pryč!"~ */
  IF ~~ THEN REPLY #4730 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"Pomoc! Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #4732 /* ~Zaútoč.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"Mocnosti nad námi! Stroje jsou zničeny! Kde teď vezme factol peníze na naše platy! Ještěže jsme tak oddáni naší věci. No, zpátky do práce... dvakrát tak těžší než obvykle. Zatraceně těžká zkouška."~ */
  IF ~~ THEN REPLY #4735 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"Hajl, bratře! Rád bych s tebou hodil řeč, ale roztavená ocel nepočká. Pokud něco potřebuješ, hoď řeč támdle s dohližitelama... ti maj času fůry."~ */
  IF ~~ THEN REPLY #4737 /* ~"Dobře. Hodně štěstí."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"Tak vyšetřuješ vraždu, jo? Nemůžu říct, že by mi toho bastarda bylo nějak zvlášť líto, ale von tady v okolí asi nebyl nikdo, kdo by ho měl rád. Kde a koho hledat? Nemám tušáka."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"Ale máš toho víc, co bys mi rád řekl, že?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"Ale máš toho víc, co bys mi rád řekl, že?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"Dobře. Můžeš mi ještě jednou říct, jak pracovat u pece?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"Dobře. Díky za tvůj čas."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"Jo, no..." Kovář se rozhlédl kolem. " Měl bys začít s dohlížitelkou, mojí nadřízenou. Poslední dobou je pěkně mimo. Nemyslím, že to udělala, ale mohla by tušit, kdo v tom má namočené pařáty."~ */
  IF ~~ THEN REPLY #4744 /* ~"Nadřízená? Kde ji najdu?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"Díky za tvůj čas. Nashledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"Ne, to je vše, co jsem ti chtěl říct."~ */
  IF ~~ THEN REPLY #4747 /* ~"Dobře. Můžeš mi ještě jednou říct, jak pracovat u pece?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"Dobře. Díky za tvůj čas."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"Chceš dělat u pece. Nejdřív potřebuješ ochranej oblek. Pak si musíš obstarat kleště, kladivo a volnou kovadlinu. Pak popadneš kus železa, narveš ho do vohně, dokaď se nerozžhaví a pak do něj tlučeš na kovadlině. Až ho dobiješ do tvaru, který po něm chceš, strčíš ho do kýble s vodou. Ale tohle byl jenom rychlokurs... budeš potřebovat trochu tréninku, než to budeš zvládat."~ */
  IF ~~ THEN REPLY #4750 /* ~"Jak těžké to může být?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"Dobře. Mám ještě nějaké další otázky."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"Dobře. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"Většinou ji najdeš u úřednické místnosti... hlídá nás. Kčertu, je to sice její práce, ale snad by mi mohli důvěřovat."~ */
  IF ~~ THEN REPLY #4754 /* ~"Díky. Mám ještě otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"Kdyby ti mohli důvěřovat, nepotřeboval bys nadřízeného. Nashledanou."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"To si dovedu představit. Nashledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"Divil by ses, vole. Zmizni vocaď. Mám práci."~ */
  IF ~~ THEN REPLY #4758 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"Jo? Co? Urychli to. Nemám čas."~ */
  IF ~~ THEN REPLY #4761 /* ~"Kdo jsi?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"Kde najdu úředníka?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"Kdo je tvůj nadřízený?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"Co tady děláš?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"Zapomeň na to."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"Mám spoustu práce s tím, jak tady postávám a vykecávám se. Potřebuješ něco"~ */
  IF ~~ THEN REPLY #4767 /* ~"No, ano."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"Ne. Vlastně ne."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"Tak přestaň plýtvat mým časem. Musím plnit normy. Dobrý den."~ */
  IF ~~ THEN REPLY #4770 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"Vidíš tamdle tu místnost se stolem a starým dědkem, co za ním sedí? Tak to je vono, místo, kde sedí úředník. Potřebuješ ještě něco, nebo se můžu vrátit k práci?"~ */
  IF ~~ THEN REPLY #4772 /* ~"Mám víc otázek."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"No, tak takhle. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"Oh, celej den sedím, s nohama nahoře. Hele, nechci bejt sprostej, ale je docela jasný, co tady dělám - kovám ocel. A jestli se k tomu rychle nevrátím, budu muset začít od začátku."~ */
  IF ~~ THEN REPLY #4775 /* ~"Dobře, dobře. Mám ještě pár otázek."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"Díky za tvůj čas. Nashle."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"Takové chování není nutné, 'příteli'. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~Kovář přestal pracovat a podíval se na tebe, jako by tě odhadoval. "Boží člověk je tvrďák, který si myslí, že všichni se mohou stát bohy. Dokonce i ty. Nezáleží na tom, jestli z toho bude dobro nebo zlo - všichni procházíme existencí a učíme se, jak se povýšit do lepších forem. Další definice Božího člověka je někdo, koho naštvou lidi, kteří mu dávají otázky, na které by už měli znát odpovědi."~ */
  IF ~~ THEN REPLY #4779 /* ~"Takže mi říkáš, že máme zkoušky, kterými musíme projít a díky tomu se staneme mocnějšími?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"Takže mi říkáš, že nejsi ta nejlepší osoba, s kterou bych si o tom mohl teď promluvit?"~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"Díky. Už půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"Co říkám je, že by sis měl promluvit z někým z factotumů za těmi dveřmi ve východní zdi - nemají nic lepšího na práci. Já mám. Na shledanou."~ */
  IF ~~ THEN REPLY #4783 /* ~"Mám ještě pár otázek."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"Příteli, myslím, že už ses u kovadliny napracoval dost. Všichni věří, že máš... grrrr... dost schopností. Ustup a nechej pracovat někoho, kdo to opravdu potřebuje.~ */
  IF ~~ THEN REPLY #4786 /* ~"Dobře, fajn."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"Mocnosti nad námi! Stroje jsou zničeny! Kde teď vezme factol peníze na naše platy! Ještěže jsme tak oddáni naší věci. No, zpátky do práce... dvakrát tak těžší než obvykle. Zatraceně těžká zkouška."~ */
  IF ~~ THEN REPLY #4788 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"Mocnosti nad námi! Stroje jsou zničeny! Kde teď vezme factol peníze na naše platy! Ještěže jsme tak oddáni naší věci. No, zpátky do práce... dvakrát tak těžší než obvykle. Zatraceně těžká zkouška."~ */
  IF ~~ THEN REPLY #4790 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~Věnuje ti spěšný pohled a přesoustředí svojí pozornost na mluvčího. "Kurv-! Pokouším se poslouchat Keldora. Chci se učit a ty mě rušíš."~ */
  IF ~~ THEN REPLY #64515 /* ~"Promiň. Sbohem."~ */ EXIT
END
