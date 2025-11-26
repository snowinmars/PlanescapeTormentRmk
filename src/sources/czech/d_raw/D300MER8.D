// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~Tato stará žena stojí tiše u stěny a nepřítomně hledí do dáli. Očividně nezaujatá okolním ruchem svírá v rukou dřevěnou tyč, na které visí tucty malých ryb.~ */
  IF ~~ THEN REPLY #17790 /* ~"Zdravím tě..."~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~Nechej ji být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"Brejden, pane, chtěl bys koupit nějaké..." Náhle tě poznala. "Ó, ty ses vrátil."~ */
  IF ~~ THEN REPLY #22136 /* ~"Ano, měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"Jenom jsem procházel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"Ó... brejden, pane." Chvíli na tebe pokukuje a snaží se rozeznat tvoji totožnost. "Ó panečku! Kdo by si pomyslel, že z tebe bude můj pravidelný zákazník." Nabízí svou rybí hůl. "Tuňáka, pane? Makrelu? Mořskou okurku?"~ */
  IF ~~ THEN REPLY #17794 /* ~"Žádné ryby, díky. Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"Hmmm..." Svraštila rty do zamračené grimasy, a zahleděla se někam přes tvoje rameno.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"Přinesl jsem korbel. Můžu do něj dostat ten inkoust z ryby?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"Slyšela jsi o *Brogota-fin?* Bylo mi řečeno, že ze svých žáber krvácí inkoust."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~Podívej se za sebe, abys zjistil na co hledí.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"Uh... Můžeš mi říct o této oblasti?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"Víš o muži jménem Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"Někde jsem ztratil deník. Neviděla jsi někde nějaký?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"Nevadí... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~Nemůžeš si za sebou všimnout ničeho zajímavého. Když ses otočil zpět na ni, přistihl jsi ji, jak se na tebe dívá... rychle se podívala jinam a znovu se zahleděla do dáli přes tvé rameno.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"Přinesl jsem korbel. Můžu do něj dostat ten inkoust z ryby?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"Slyšela jsi o *Brogota-fin?* Bylo mi řečeno, že ze svých žáber krvácí inkoust."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"Co? Zdám se ti povědomý?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"Můžeš mi říct o této oblasti?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"Víš o muži jménem Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"Někde jsem ztratil deník. Neviděla jsi někde nějaký?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"Hmmm... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"Ty má dobroto!" Na chvíli ztichla. "Jsi to opravdu ty."~ */
  IF ~~ THEN REPLY #17806 /* ~"Viděla jsi mne někdy předtím?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"Zajímavé. Sbohem, rybářko."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"Myslela jsem... ty, nebo muž velmi ti podobný, pane. Bylo to tak dávno."~ */
  IF ~~ THEN REPLY #17808 /* ~"Řekni mi..."~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"Zajímavé. Sbohem, rybářko."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"No, pane, víš... můj zrak není tak dobrý jako tehdy. Ale myslím, že jsem tě viděla procházet kolem ještě s malou skupinou."~ */
  IF ~~ THEN REPLY #17810 /* ~"Jak vypadali ti lidé?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"Zajímavé. Sbohem, rybářko."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"Těžko říci, pane... bylo to tak dávno, a ty jsi prošel tak rychle. Ale teď si vzpomínám, jak jsi šel se zdviženou hlavou... byla tam žena která tě následovala, chtěla tě zastavit. Chtěla, aby ses otočil a promluvil s ní... ale ty jsi ji odstrčil."~ */
  IF ~~ THEN REPLY #17812 /* ~"Co se stalo potom?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"Zajímavé. Sbohem, rybářko."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"Byla to nádherná žena... tak smutná a zlostná najednou. Chvilku tam zůstala stát, potom se rozběhla a snažila se tě dohnat."~ */
  IF ~~ THEN REPLY #17814 /* ~"Říkala jsi, že tam byla skupina? Kdo ještě tam byl?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"Zajímavé. Sbohem, rybářko."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~Pokrčila rameny. "Byli tu s tebou alespoň dva další pánové... ten jeden, na kterého si pamatuji velmi dobře, byl vysoký, hubený. Páchnul levným vínem; cítila jsem to přes celou ulici. Taky vypadal, že se nikdy nekoupal. Šel těsně za tebou a nikdy neřekl ani slovo. Choval se, jako by tam ta žena vůbec nebyla, i když do něj narazila snažíc se tě zastavit. To je všechno, na co si vzpomínám, pane."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~Dej jí nějaké peníze.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"Zajímavé. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~Kolik dáš rybářce?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~Jednu měděnou minci.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~Pět měděných mincí.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~Deset měděných mincí.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~Dvacet měděných mincí.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~Nic: "Zajímavé. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~Usmívá se a kývne na tebe. "Díky ti, pane."~ */
  IF ~~ THEN REPLY #17823 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"Ó můj pane! Děkuji ti za tvou laskavost. Ať tě stín Paní mine."~ */
  IF ~~ THEN REPLY #17824 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~Chvíli sleduje hrst mincí, jako by si nebyla jistá, co dělat. Podal jsi jí peníze a ona si je nakonec vzala. Úzkostně se zasmála. "Ó... ó! Ó můj bože! Díky, díky ti pane! Ať tě stín Paní vždy mine, ať tě štěstí vždy najde! Prosím, kdykoliv přijď a navštiv mne."~ */
  IF ~~ THEN REPLY #17825 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~Zatřepala hlavou, sevřela pevně rty a dál se dívala přes tvé rameno. Nemůžeš za sebou zjistit nic zajímavého. Když ses otočil zpět na ni, přistihl jsi ji, jak se na tebe dívá... rychle se podívala jinam a znovu se zahleděla do dáli přes tvé rameno.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"Přinesl jsem korbel. Můžu do něj dostat ten inkoust z ryby?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"Slyšela jsi o *Brogota-fin?* Bylo mi řečeno, že ze svých žáber krvácí inkoust."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"Co? Zdám se ti povědomý?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"Můžeš mi říct o této oblasti?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"Víš o muži jménem Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"Někde jsem ztratil deník. Neviděl jsi někde nějaký?" ~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"Ehmmm... sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"Ráda tě znovu potkávám, pane! Co pro tebe mohu udělat?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"Přinesl jsem korbel. Můžu do něj dostat ten inkoust z ryby?"~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"Slyšela jsi o *Brogota-fin?* Bylo mi řečeno, že ze svých žáber krvácí inkoust."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"Můžeš mi znovu říct, kdy jsi mne předtím viděla?"~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"Nic, jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"Ó, jistě, pane!"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~Zamrká, pak přikývne. "Víš, ta ryba... ta ryba je zvláštní, to je. Jen málo lidí o ní slyšelo a ještě míň ji chtělo jíst... těžko ji zabít a i po smrti vypadá pořád jako živá. Jen málo by chtělo zakousnout zuby kolem něčeho, co se ještě svíjí."~ */
  IF ~~ THEN REPLY #22120 /* ~"Máš jednu?"~ */ JOURNAL #21904 /* ~Meir'am měla rybu, ale jako *obvykle,* není to tak jednoduché. Potřebuji něco, v čem můžu inkoust přenášet, něco jako pohár, nebo korbel. Možná něco, co se mi bude hodit, najdu u některého z obchodníků na náměstí.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"Víš... ale inkoust, budeš potřebovat něco, v čem by si ho přenesl. Nemáš náhodou misku nebo pohárek?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"Skvěle... půjdu se po jednom podívat, a pak se vrátím zpátky."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"Hmmm. Nebo korbel... možná některý z obchodníků jeden prodává. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~Přikývne a strhne rybu z tyče... jak trhne, tak po ni chňapne, pak jí začne kroutit kolem dokola jako s hadrem. Kroutí s ní tak dlouho, dokud jí z žáber nezačne téct modro-černá tekutina. Když je tvůj korbel skoro plný, povolí sevření a vymačkanou rybu odhodí do pytle po straně.~ */
  IF ~~ THEN REPLY #22129 /* ~"Díky a sbohem."~ */ JOURNAL #21905 /* ~Konečně mám inkoust, plný korbel. Teď můžu tuhle hnusnou břečku odnést Mebbeth... kdo ví, možná dostanu napít.~ */ EXIT
END
