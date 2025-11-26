// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~Vidíš jakousi mladou ženu oblečenou v těsné kožené šněrovačce a kalhotách. Je slabě cítit levným parfémem a její tvář, ačkoliv docela hezká, je zmalovaná nápadným líčením. Ostýchavě se usmívá a dívá se na tebe. "Hledáš společnost, lásko?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"Nejsi, náhodou, Amarysse?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"Ne, ale měl bych nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"Promiň, drahoušku, nejsem tu proto, abych odpovídala na otázky kolemjdoucích. Určitě bys neocenil příjemnou společnost?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"Ne, ale nejsi, náhodou, Amarysse?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~Chvíli se na tebe upřeně dívá, pak promluví: "Byla jsem tak nazývána, kdysi, už je to dávno. Kdo ´si?"~ */
  IF ~~ THEN REPLY #22785 /* ~"Nodd, tvůj bratr, mě poslal, abych tě našel. Bál se o tebe a doufá, že mu budu schopen říct, kde by tě mohl najít."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"N... Nodd? On žije? Kde? Proč ke mně nepřišel sám?"~ */
  IF ~~ THEN REPLY #22787 /* ~"Myslím, že se stydí. Je teď Sběrač, žije v bídě na Hadrníkově náměstí. Víš, nemá to tak docela v pořádku... v hlavě, myslím."~ */ JOURNAL #22632 /* ~Amarysse mi řekla, že Noddovo dětské jméno bylo 'Thodus.'~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"Vím, on byl trochu ťuknutej, dokonce už jako dítě, když se jmenoval Thodus. Och, jak jsem ho postrádala! Zahanbenej, myslíš? Ha! Já na moji práci taky nejsem pyšná! Ach, no jo, přinejmenším dělám dobře sobě - dobře Úlanům, to v každý sazbě, co? Musím ho navštívit, brzo." Poprvé od doby, co jsi na ní promluvil, se na tebe přísně podívá. "Ty seš ňákej Noddův přítel nebo...?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"Jo, něco takovýho. Proč?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"Ne, opravdu ne."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"Ani ne. Dostanu za to zaplaceno."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Lež: "Jo, to jsem. Proč?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"Moh´ bys..." Zamračí se, kousne se do rtu, jako by nad něčím uvažovala. "Moh´ bys mu dát todle?" Postaví se těsně k tobě a podává ti váček, ve kterém je zhruba jedno sto měďáků.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"Ano, přísahám, že mu to doručím."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Odpřísáhl jsem Amarysse, že doručím měďáky jejímu bratru Noddovi, na Hadrníkovo náměstí.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"Ano, přísahám, že mu to doručím."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Odpřísáhl jsem Amarysse, že doručím měďáky jejímu bratru Noddovi, na Hadrníkovo náměstí.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"Ano, já mu to doručím."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"Ne, raději ne. Ačkoliv, řeknu mu, aby tě co nejdříve navštívil. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"Ne, raději ne. Ačkoliv, řeknu mu, aby tě co nejdříve navštívil. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~Vloží ti do ruky váček. "Děkan. Běž a řekni o mně Noddovi, a řekni mu, jak velký mám vo něj starosti!"~ */
  IF ~~ THEN REPLY #22799 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"Soráč, kámo, ale moh´ bys mi to vodpřísáhnout? Pro mě to je... docela dost peněz."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"Ano, přísahám, že mu to doručím."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Odpřísáhl jsem Amarysse, že doručím měďáky jejímu bratru Noddovi, na Hadrníkovo náměstí.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"Ano, přísahám, že mu to doručím."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Odpřísáhl jsem Amarysse, že doručím měďáky jejímu bratru Noddovi, na Hadrníkovo náměstí.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"Ne, raději ne. Řeknu mu, aby tě co nejdříve navštívil. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"Ne, raději ne. Řeknu mu, aby tě co nejdříve navštívil. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"Hmm. Dobře, všichni ´ste stejný. Prosím tě, běž a řekni o mně Noddovi, a řekni mu, jak velký mám vo něj starosti!"~ */
  IF ~~ THEN REPLY #22806 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Amarysse má na své tváři nadějný výraz. "Tak co, mluvil si s Noddem?"~ */
  IF ~~ THEN REPLY #22808 /* ~"Ne, ještě ne."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"Prosím, tak běž a řekni o mně Noddovi, a řekni mu, jak velký mám vo něj starosti!"~ */
  IF ~~ THEN REPLY #22811 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"Slyšela ´sem, že si mluvil s Noddem... děkan, kámo."~ */
  IF ~~ THEN REPLY #22813 /* ~"Samozřejmě... ale jak to víš?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"Já mám v Úlu spoustu přátel, víš." Mrkne na tebe. "Ještě jednou dík."~ */
  IF ~~ THEN REPLY #22816 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~Vidíš Amarysse. Zatím si tě nevšimla.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Mluv k ní.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Mluv k ní.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~V momentě, kdy tě zahlédla, vzplanuly její oči hněvem; zavřeští a dříve než stačíte otevřít ústa a promluvit, vrhne se na vás s čepelí v ruce. "Ty bastarde! Nemysli si, že sem neslyšela vo svým ubohým bratříčkovi... Já tě zabiju!"~ */
  IF ~~ THEN REPLY #22822 /* ~Jít do protiútoku.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Uprchnout.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~V momentě, kdy tě zahlédla, vzplanuly její oči hněvem; zavřeští a dříve než stačíte otevřít ústa a promluvit, vrhne se na vás s čepelí v ruce. "Ty zlodějskej bastarde! Slyšela jsem, co jsi udělal! Ukrást poctivě vydělaný prachy chudýho děvčete, který chce dát svýmu bratříčkovi... Já tě zabiju!"~ */
  IF ~~ THEN REPLY #22825 /* ~Jít do protiútoku.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Uprchnout.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
