// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~Muž s rovnýma očima a ostře tvarovanou tváří si prohlíží své okolí s viditelným nezájmem, občas si čistí nehty a ignoruje okolí. I když je oblečený v hedvábí a sametu, daří se mu nějakým způsobem vypadat nechutně a více než trochu nebezpečně.~ */
  IF ~~ THEN REPLY #31937 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~Nechej muže být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~Muž se dívá tvým směrem. Oči má jako dvě černé škvírky těsně pod obočím. I když je tak štíhlý, hlas má hluboký a nevrlý. "Odpal."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"Ještě ne. Jsi Eli Havelock?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"Ještě ne. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"Dával bych si bacha na hubu, být na tvým místě."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"Myslíš si, že procházím Čtvrtí a hledám cizince, kterým bych řekl nějaká tajemství? Odpal!"~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"Tak proč jsi teda tady? Prohlížet si kolemjdoucí?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"Tak proč jsi teda tady? Prohlížet si kolemjdoucí?"~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"Dával bych si bacha na hubu, být na tvým místě."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~Ignoruje tě.~ */
  IF ~~ THEN REPLY #31947 /* ~Popadni ho a vytřes z něj pár odpovědí.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"Heh." Chvíli stojí tiše a pak se křivě usmál. "To je dobrý, tohleto." Chvíli si tě prohlíží. "Jsem učitel v Městské hale. Jmenuju se Havelock - Eli Havelock. Jsem vysloužilý zvěd a učím umění úskoků a vytáček."~ */
  IF ~~ THEN REPLY #31949 /* ~"Tím myslíš zlodějnu?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"Mohl bys mě cvičit?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"Ty jsi tu v hale učitel zlodějů? Poslouchej... Qui-Sai mě nechce trénovat jako válečníka. Říká, že bych mohl ukradnout protivníkovi zbraň a znemožnit mu jakoukoliv obranu. Co myslíš?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"Ty jsi tu v hale učitel zlodějů? Poslouchej... Qui-Sai mě nechce trénovat jako válečníka... říká, že bych se mohl skrýt před nepřítelem, tím bych se stal nezranitelným. Co si o tom myslíš?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"Ano. Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~Jeho rty se zkroutily do znechuceného úšklebku. "*Zloději* a *zlodějina*! Pět cest jsem sloužil jako průzkumník ve Válce lží. Průzkumník je i mým titulem... *průzkumník.* Já vyučuji umění plížení a průzkumnictví, ne žádnou základní zlodějinu."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"Omlouvám se, nechtěl jsem tě urazit. Mohl bys mě cvičit?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"Mohl bys mě stejně trénovat?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"Aha. Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~Eli se kysele zamračil. "Nevím. Už mě nebaví učit nepatrné zlodějíčky a zvědavé Vnímavé." Téměř jen pro sebe mumlá dál: "Nejsem si vůbec jistej, proč jsem s tím vůbec souhlasil."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"Možná proto, že učením ostatních dáš najevo své vlastní schopnosti."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"Jak bych tě mohl přesvědčit?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"Sbohem, tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"Hmm..."~ */
  IF ~~ THEN REPLY #31958 /* ~"Zároveň bráníš ušlechtilost svých dovedností tak, že je ujistíš, že nejsi obyčejný zloděj, ale zvěd a špión, mistr tajnosti."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~Eli přikýl, přemítajíc co jsi mu řekl. "Jó... to se nedá popřít. Ale je to takový smutný, když se na to takhle díváš."~ */
  IF ~~ THEN REPLY #31959 /* ~"To si nemyslím. Lidé tvého řemesla jsou často nepochopeni, nespravedlivě strčeni do stejné kategorie s bandity a lupiči. Na rozptýlení falešných názorů není nic špatného."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"Máš pravdu, je to patetické."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~V překvapení pozdvihl obočí, ale hned se zlostně zamračil. "Hledáš problémy, co? Jdi si hrát někam jinam, pako - odpal!"~ */
  IF ~~ THEN REPLY #31961 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"Heh! Zase zpátky." Přátelsky tě plácl po rameni. "Díky, kámo." Náhle se zahleděl do dálky. "Ne... nemá smysl tady dál ztrácet čas. Jdu zpátky od Haly. Jestli budeš chtít dál trénovat, najdeš mě tam.""~ */
  IF ~~ THEN REPLY #31962 /* ~"Možná se tam potkáme, Eli. Sbohem."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"Nee... už mě nebaví učit neschopné kapsáře a rádoby zloděje."~ */
  IF ~~ THEN REPLY #31963 /* ~"Jak bych tě mohl přesvědčit?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~Stisknul rty a podíval se vzhůru. ""Hrmm... hodně věcí, řekl bych." Podíval se ti přímo do očí. "Ale řeknu ti to jednoduše: prachy. Jestli chceš trénovat, bude tě to něco koštovat. To spíš štípnu do zadku Paní Bolesti, než abych někoho trénoval zadarmo!"~ */
  IF ~~ THEN REPLY #31965 /* ~"Kolik?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~Eli pokrčil rameny. "Xakru, já nevím. Pět set měděnejch by mělo bejt akorát... Já *jsem* veterán, víš... pět tažení ve Válce Lží! To je spousta zkušeností...""~ */
  IF ~~ THEN REPLY #31971 /* ~"Dohodnuto."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"Co takhle tři sta?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"Co takhle tři sta?"~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"Co takhle dvě stě?"~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~Zavrtěl hlavou. "Ne. Chci pět a ty mi zaplatíš pět."~ */
  IF ~~ THEN REPLY #31979 /* ~"Tak dohodnuto."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"Tak na to zapomeň. Sbohem."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~Vytřeštil oči. "Jsi blázen, vole? Sakra ne! Pět, to je moje cena. Ani víc, ani míň."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"Dobře, co takhle tři sta?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"Dobře, co takhle tři sta?"~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"Tak na to zapomeň. Sbohem."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"Jestli se vrátíš, znáš cenu: pět set měďáků. Sbohem, kámo."~ */
  IF ~~ THEN REPLY #31984 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"Domluveno. Máš je tady?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"Ano... tady to je."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"Ne... teď zrovna ne."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"Ano... tady to je."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"Ne... teď zrovna ne."~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"Vlastně ještě nepotřebuju trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~Vzal si hromádku minci a schoval je ve své tunice. "Sejdeme se v Městské hale, tam tě budu trénovat. Čekám tě tam, kámo."~ */
  IF ~~ THEN REPLY #31990 /* ~"Potkáme se tam, Eli. Sbohem."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"Jestli se vrátíš, znáš cenu: tři sta měďáků. Sbohem, kámo."~ */
  IF ~~ THEN REPLY #31991 /* ~"Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~"Jo, to jsem já..."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"Qui-Sai mě nechce cvičit na válečníka... tvrdí, že mi stačí, když nepříteli ukradnu zbraň a on bude pak bezbranný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"Qui-Sai mě nechce cvičit na válečníka... říká, že se můžu před nepřáteli schovat, takže budu nezranitelný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"Můžeš mě vytrénovat na zloděje?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~Muž s ostrými rysy a rovnýma očima si prohlíží své okolí s nezájmem. Všiml si tvého příchodu a otočil se k tobě. "Pořád tady pobíháš, he?" Zamračil se. "Co chceš?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"Zajímalo by měl, jestli nejsi Eli Havelock."~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~Eli si všiml tvého příchodu, ale jeho výraz je nečitelný. Zajímalo by tě, jestli přes ty své rovné černé oči vůbec vidí. "Hmm?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"Qui-Sai mě nechce cvičit na válečníka... tvrdí, že postačí, když nepříteli ukradnu zbraň a on bude pak bezbranný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"Qui-Sai mě nechce cvičit na válečníka... říká, že se můžu před nepřáteli schovat, takže budu nezranitelný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... můžeš mě cvičit?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... můžeš mě cvičit?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"Jenom procházím. Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"Máš prachy?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"Pět set měďáků... tady jsou."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"Ne... teď zrovna ne."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"Tři sta měďáků... tady máš."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"Ne... teď zrovna ne."~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"Vlastně ještě nepotřebuju trénink. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"Jdu do tréninkové místnosti špehů v Městské hale, kámo. Jestli si chceš pokecat nebo zatrénovat, najdeš mě tam. Sbohem."~ */
  IF ~~ THEN REPLY #32008 /* ~"Sbohem, Eli."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"Hele koho nám to čerti přinesli!" Eli se na tebe zašklebil. "Vítej v mém pracovišti, kámo. Připravenej na trénink?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"Teď ne. Qui-Sai mě nechce cvičit na válečníka... tvrdí, že postačí, když nepříteli ukradnu zbraň, takže bude bezbranný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"Teď ne. Qui-Sai mě nechce cvičit na válečníka... říká, že se můžu před nepřáteli  schovat, takže budu nezranitelný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"Ano, jsem."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"Ano, jsem."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"Ne, teď zrovna ne, Eli. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"Tak, tak. Tady... zkus mi to vzít z ruky." Natáhl paži, na jeho dlani leží jedna měděná mince.~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~Chňapni minci.~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~Popadni minci.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~Popadni minci.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~Švihnul jsi rukou a popadl minci z jeho dlaně takovou rychlostí, že tě to šokovalo stejně jako Eliho. "U mocností! Jsi rychlejší, než vypadáš, kámo..."~ */
  IF ~~ THEN REPLY #32017 /* ~"Díky."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~Pohnul jsi rukou... ale Eli je příliš rychlý. "To nebylo tak zlý, kámo. Pokračujeme."~ */
  IF ~~ THEN REPLY #32018 /* ~"Dobře..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~Tvůj pokus o popadnutí mince byl směšný.  Eli se zamračil a smutně potřásl hlavou.~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"Co?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"Co?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"Sorry kámo... Nerad ti to říkám, ale jsi zkrátka moc pomalej, aby ses v týhle branži uchyt. Spíš uděláš štěstí někde jinde... sbohem."~ */
  IF ~~ THEN REPLY #32021 /* ~"Aha. Tak tedy sbohem, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"Sorry kámo... Nerad ti to říkám, ale jsi zkrátka moc pomalej, aby ses v týhle branži uchyt. Cítil bych se blbě, kdybych si nechal tvoje prachy, tady máš. Spíš uděláš štěstí někde jinde... sbohem."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"Aha. Tak tedy sbohem, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"Aha. Tak tedy sbohem, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"Můžeme začít, kámo. Naučím tě šest základních umění zloděje: Jak se pohybovat tiše, používat stíny k úkrytu, páčení zámků, vybírání kapes, detekce a odstranění pastí a jak přepadnout nepřítele, jak ho probodnout zezadu, když nic nečeká."~ */
  IF ~~ THEN REPLY #32024 /* ~"Pokračuj..."~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"Myslím, že jsem základy pochopil, Eli. Začněme s tréninkem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"Schopnost pohybovat se tiše, skrytě ve stínech má velkou cenu. Spoustě nepřátel se můžeš vyhnout jednoduše tak, že jim ani nepřijdeš na oči. Stejně tak útok ze zadu dává špehovi velkou výhodu, jak ti povím pozdějc. Ale zapamatuj si jedno, kámo: špeh se nemůže ukrýt, pokud už ho nepřítel vidí a pozoruje."~ */
  IF ~~ THEN REPLY #32026 /* ~"Pokračuj..."~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"Myslím, že jsem základy pochopil, Eli. Začněme s tréninkem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"Často špeh narazí na zamčenou bránu, která mu blokuje další cestu, či zjistí že předměty nebo dokumenty důležité pro misi někdo schoval do zamčených schránek. Schopnost vypáčit zámek se v takovým případě docela hodí. Doporučuju ale nejdřív zámek prozkoumat, jestli v něm není nějaká past, o kterých se zmíním později."~ */
  IF ~~ THEN REPLY #32028 /* ~"Pokračuj..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"Někdy má protivník nějaký předmět nebo dokument, který je pro špehův úkol smrtelně důležitý. V takovém případě musí špeh vybrat kapsy nepřítele tak, že se opatrně přiblíží a přímo dotyčnému pod nosem jej předmětu zbaví. Musí být vždycky připravený na útěk nebo boj, pokud by jeho pokus selhal."~ */
  IF ~~ THEN REPLY #32029 /* ~"Pokračuj..."~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"Myslím, že jsem základy pochopil, Eli. Začněme s tréninkem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"Špeh často zjistí, že jeho nepřátelé oblasti nebo schránky opatřili pastmi, které brání v průchodu nebo otevření. Takové nástrahy jsou dobře skryté a špeh si musí dát pozor a předmět nebo oblast opatrně prozkoumat, zda nenajde něco podezřelého. Buď trpělivý... někdy to chvíli trvá, než past najdeš."~ */
  IF ~~ THEN REPLY #32031 /* ~"Pokračuj..."~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"Myslím, že jsem základy pochopil, Eli. Začněme s tréninkem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"Pokud špeh past *najde*, musí si vybrat, jestli ji spustí, nebo se jí pokusí odpojit. Při demontáži pasti si ale musí dát zatracený pozor, protože vždycky existuje riziko, že ji neopatrnou manipulací spustí."~ */
  IF ~~ THEN REPLY #32033 /* ~"Pokračuj..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"Poslední věc, kterou tě naučím, je špehova finální schopnost...útok ze zadu. Pokud špeh narazí na nepřítele, když je stále ukryt, jeho první rána je přesnější a mnohem *silnější*. Jak špehovy zkušenosti narůstají, tak se zvyšuje síla jeho útoku. Zapamatuj si ale, že jakmile špeh vyleze z úkrytu a udeří, hned ho nepřátelé spatří."~ */
  IF ~~ THEN REPLY #32034 /* ~"Dobře, Eli. Začněme s tréninkem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~Eli přikývl."Dobře, kámo... zaprvé, uvolni se. Jsi moc ztuhlý. Musíš to nechat na instinktu, věř svým smyslům..."

A tak začal tvůj trénink na zloděje.
~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Trénoval jsem se na zloděje u muže jménem Havelock, zlodějským - nebo 'skautským',' jak tomu říká on - cvičitelem Haly.~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Trénoval jsem se na zloděje u muže jménem Havelock, zlodějským - nebo 'skautským',' jak tomu říká on - cvičitelem Haly.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Trénoval jsem se na zloděje u muže jménem Havelock, zlodějským - nebo 'skautským',' jak tomu říká on - cvičitelem Haly.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Trénoval jsem se na zloděje u muže jménem Havelock, zlodějským - nebo 'skautským',' jak tomu říká on - cvičitelem Haly.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~Eli přikývl. "Musíš pochopit, že se vzdáš své momentální profese, jasný? Jsi na to připravený?"~ */
  IF ~~ THEN REPLY #32039 /* ~"Ano, jsem."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"Ne, raději ne.. Možná jindy... sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~;Po dlouhé době tréninku na tebe Eli spokojeně kývl. "Musím říct, kámo, že jsem nikdy nenarazil na někoho, kdo by se učil tak rychle, jako ty. Skoro bych řekl, že už jsi to někdy dělal!"~ */
  IF ~~ THEN REPLY #32041 /* ~"Možná ano, Eli, a prostě jsem zapomněl. Díky, a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~Po dlouhé době tréninku na tebe Eli spokojeně kývl. "Musím říct, kámo, že jsem nikdy nenarazil na někoho, kdo by se učil tak rychle, jako ty. Skoro bych řekl, že už jsi to někdy dělal!" Jak Eli promluvil, uvědomil sis, že ty už jsi to *dělal* dříve... že už jsi jednou tyto dovednosti ovládal a že trénink je v tobě znovu oživil.~ */
  IF ~~ THEN REPLY #32042 /* ~"Možná ano, Eli, a prostě jsem zapomněl. Díky, a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~Po dlouhé době tréninku na tebe Eli spokojeně kývl. "Musím říct, kámo, že jsem nikdy nenarazil na někoho, kdo by se učil tak rychle, jako ty. Skoro bych řekl, že už jsi to někdy dělal!" Jak Eli promluvil, uvědomil sis, že ty už jsi to *dělal* dříve... že už jsi jednou tyto dovednosti ovládal.~ */
  IF ~~ THEN REPLY #32043 /* ~"Možná ano, Eli, a prostě jsem zapomněl. Díky, a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~Jak se tak vzpomínky na procházení temnými chodbami a vyhýbání se smrtícím pastím mihnou v tvé mysli, podařilo se ti připomenout si dost na to, aby ses 'naučil' více, než ti ukázal Eli.~ */
  IF ~~ THEN REPLY #32044 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"Je toho málo, co bych tě mohl naučit, jestli už jsi prošel výcvikem, kámo. Pokud jsi ale z cesty špeha sešel, můžu ti ukázat cestu znovu."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"Rád bych se zase věnoval cestě úskoků, Eli."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"Rozumím. Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"Musíš pochopit, že se tak vzdáš svého momentálního zaměstnání. Jsi na to připravený?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"Ano, už nechci být válečník."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"Ano, už nechci být mág."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"Vlastně teď zrovna ne. Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"Dobře, dobře! Tak pojďme trénovat... trochu oprášíme tvoje zapomenuté znalosti!"~ */
  IF ~~ THEN REPLY #32050 /* ~Staň se znovu zlodějem.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"Učíš se rychle, kámo, to ti musím říct." Zvědavě si tě prohlíží a pak zatřásl hlavou. "Ne, je to hotovo - jsem s tebou hotový."~ */
  IF ~~ THEN REPLY #32051 /* ~"Díky, Eli. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~Eli ti pokynul. "Nazdar kámo. Potřebuješ něco?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"Qui-Sai mě nechce cvičit na válečníka... říká, že mi stačí, když nepříteli ukradnu zbraň a on bude pak bezbranný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"Qui-Sai mě nechce cvičit na válečníka... říká, že se můžu před nepřáteli schovat, takže budu nezranitelný. Co si o tom myslíš ty?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"Ano... Chtěl jsem to zkusit a trénovat s tebou znovu."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"Ano... Chtěl jsem to zkusit a trénovat s tebou znovu."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"Ne... jenom procházím. Sbohem, Eli."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~Muž na tebe ukázal prstem. "Dej si bacha, vole... většina lidí by tě za to zabila nebo ti aspoň pocuchala tělo. A teď odpal, než si to rozmyslím a vytáhnu na tebe železo."~ */
  IF ~~ THEN REPLY #32055 /* ~"Ne tak pojď, vytáhni meč. Zarazím ti ho do lebky."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~Odejdi.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~Eli se hořce zasmál a zatřásl hlavou. "To nebyl špatnej pokus, kámo... vůbec to nebylo špatný."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"Uh... díky."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"Uh... díky."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"Uh... díky."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"Tvé ruce se musí pohybovat rychleji. Do kapsy a ven, bleskově... nebo tě dostanou."~ */
  IF ~~ THEN REPLY #32060 /* ~"Díky, Eli. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"Ano, ano... a teď zmiz, než mě to tvoje otravování naštve."~ */
  IF ~~ THEN REPLY #32061 /* ~"Sbohem, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~Zatřásl hlavou. "To není pravda, kámo. Dokonce i já musím přiznat, že bitvy se musí vybojovat. Spoléhat se jenom na kradení je chyba."~ */
  IF ~~ THEN REPLY #32062 /* ~"Díky, Eli. Sbohem."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~Qui-Sai mě odmítnul cvičit na válečníka, tvrdíc, že zloděj může nepříteli ukrást zbraň a tak se bitvě vyhnout. Ale já si promluvil s Elim Havelockem, zlodějským cvičitelem Haly a ten mi vysvětlil, že některé bitvy si stejně musím vybojovat, spoléhat se jenom na zlodějinu je chyba. Pak mi vysvětlil, že skrývání a plížení tě neuchrání před každou bitvou, zvláště proto, že před některými protivníky se ani skrýt nedá. To by měl být dobrý protiargument pro Qui-Saie.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~Zatřásl hlavou. "Žádný špeh, ani já, nedokázal dostat umění skrývání tak daleko. A před některými nepřáteli se neschováš. Tvůj pach nebo pouhé myšlenky tě prozradí."~ */
  IF ~~ THEN REPLY #32063 /* ~"Díky, Eli. Sbohem."~ */ JOURNAL #66576 /* ~Qui-Sai mě odmítnul cvičit na válečníka, tvrdíc, že zloděj se před nepřítelem může skrýt a tak se stát vlastně nezranitelným. Ale já si promluvil s Elim Havelockem, zlodějským cvičitelem Haly a ten mi vysvětlil, že některé bitvy si stejně musím vybojovat, spoléhat se jenom na zlodějinu je chyba. Pak mi vysvětlil, že skrývání a plížení tě neuchrání před každou bitvou, zvláště proto, že před některými protivníky se ani skrýt nedá. To by měl být dobrý protiargument pro Qui-Saie.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~"Počkej: Když Qui-Sai dělá to, co si myslím, že dělá, nepustí tě s něčím takovým jak tohle. Jestli tě bude popichovat ke skrývání a podobně, řekni mu, že žádný zvěd - ba ani já sama - tak nezvládá zlodějské řemeslo. A před nepřáteli nemůžeš být stále skryt; tvá vůně nebo i myšlenky tě prozradí."~ */
  IF ~~ THEN REPLY #65167 /* ~"Mám to. Znova díky a sbohem."~ */ EXIT
END
