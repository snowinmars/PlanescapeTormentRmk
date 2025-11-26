// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~Vidíš krychli, která má čtyři ruce a dvě nohy. I když vypadá mechanicky, předek krychle tvoří podivný zelený organický obličej, se dvěma velkýma eliptickýma očima. Krychle si tě nevšimla, protože zírá na dvě kuše ve svých rukou. Z levého horního rohu vyčnívá nějaký optický systém, vypadá to, že se dá sklopit před oko krychle jako dalekohled.~ */
  IF ~~ THEN REPLY #2853 /* ~"Uh... zdravím...?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~Ignoruj... kostku.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"Definice: Pomoc, vyžadována."~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"Žádám tě, abys pomohl Truchlícímu postarat se o stromy, co zde rostou."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"Žádám tě, abys pomohl Truchlícímu postarat se o stromy, co zde rostou."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"Nordome: Soustřeď se a přej si, aby všechny stromy ve čtvrti 'Úl' města Sigilu se ozdravily a začaly opět růst a kvést."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"Jakým způsobem o ně mám pečovat?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"Umm... ne, měl jsem na mysli 'postarat se' ve smyslu pečovat, dbát."~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"Uhm... ne, měl jsem na mysli 'postarat se' ve smyslu pečovat, dbát."~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"Nic se neděje. Rozhodně mě ale Truchlící ještě zajímá..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"Nech to plavat. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"Požadavek: Pomoci Truchlícímu (alias Truchlící za Stromy) [Záleží mu na stromech]. Neplatný příkaz/označení předmětu."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"Nevadí. Morte, jaký je tvůj názor?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"Nic se neděje. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"Nic se neděje. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"Nevadí. Grace, zvážila bys to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"Nevadí. Dak'kone, dokázal bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"Nic se neděje. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"O nic nejde. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"Nevadí. Mám ještě pár dotazů, Truchlící..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"Zapomeň na to. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"Příkaz byl přijat. Paramety přípustné. K jakému účelu bude řečené přání použito?" ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"Úl, to je místo Chaosu a rozkladu. Přitom máme naději, že přítomnost znovu oživených stromů může přinést aspoň náznak pořádku do těchto míst."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"Úl, to je místo zmatku a rozkladu. Přitom máme naději, že přítomnost znovu oživených stromů může přinést alespoň náznak pořádku do těchto míst."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"Popsané přání neprodleně začne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"Pravil, že proces přání začne okamžitě."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"Děkuji ti, Nordome. Morte, co si o tom myslíš?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"Děkuji ti, Nordome. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"Děkuji ti, Nordome. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"Děkuji ti, Nordome. Grace, zvážila bys to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"Děkuji ti, Nordome. Dak'kone, dokázal bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"Děkuji ti, Nordome. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"Děkuji ti, Nordome. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"Děkuji ti, Nordome. Truchlící, ještě jsem na něco zvědav..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"Jsem ti vděčný, Nordome. Nashle, Truchlící za Stromy."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~Nordom vypadá, že se zratil ve svých myšlenkách. Doslova. Vydává zvuky jako *cvakcvakcvak* a *vrrrrrh*, jako stroj.~ */
  IF ~~ THEN REPLY #34007 /* ~"Nordome, potřebujou tvou pomoc. Budeš se mnou cestovat?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~Nech Nordoma jeho "myšlenkám."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~Nordomova 'ústa' vytvořila bizarní kružnici. "Potvrzeno! Přístup povolen, povolení vyměněna." Jeho dvě kuše začínají divoce cvakat a brnkat, skoro jako by chtěly vyskočit z jeho rukou. "Status: Vše připraveno. Čekám."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"Tak tedy pojďme."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"Tak tedy pojďme."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~Nordom soustředěně zírá na své kuše. Vydávají mnoho cvakajících zvuků, nejprve jedna, potom druhá, jako by si povídaly.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"Nordome, můžeš mi říct, jaké povinnosti má tvůrčí ředitel?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"Nordome, zopakuj mi, jaké jsou povinnosti tvůrčího ředitele?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"Jako tvůj tvůrčí ředitel pro tebe mám nějaké rozkazy."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"Co to děláš se svými kušemi?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"Zajímalo by mě, Nordome, jak jsi skončil v Rubikonu?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"Nordome, co *jsou* modroni?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"Pověz mi o Mechanu, Nordome."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"Uh... jak se máš, Nordome?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"Jak se máš, Nordome?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"Nordome, ty ses mě ptal, jak se mám, že?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"Můžeme si znovu promluvit o mé smrtelnosti?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"Slyšel jsi někdy o někom jménem Ravel Puzzlewell, Nordome?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"Nordome, víš něco o Válce Krve?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~Nechej Nordoma a jeho zbraně o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"V obratu číslo 13.7 nám byl zadán úkol opravit převody a zuby podčásti třicet jedna pátého prstence sféry Mechanus. Odtranili jsme závadu a ozubené kolo se začalo otáčet standardní rychlostí. Po splnění našeho úkolu jsme se vrátili k Prameni."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"To byl... zajímavý příběh, Nordome."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"Tak se doopravdy stalo. Je to samozřejmě trochu přikrášlené."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"Přikrášlené?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"Myslel jsem, že návrat k Prameni bude naprosto ideálním zakončením příběhu."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"Mám rozumět, že jsou mé služby předávány k nákupu? Transfer autority z tebe na Vrischiku je založen na monetární výměně?"~ */
  IF ~~ THEN REPLY #50713 /* ~"Ano, tak je to správně. Bereš ho, Vrischiko?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"Ano, ale zapomeň na to. Měl bych jinou otázku, Vrischiko..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"Ano... ale rozmyslel jsem si to. Jdeme, Nordome."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"Nordom připravuje přijetí Vrischiky - alu-fienda, importérky, majitelky obchodu s kuriozitami - jako primární autoritativní osobu."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"Dotaz: Jak Nordom definuje /výběr/? Definice: VÝBĚR: akt výběru, selekce; právo nebo příležitost k výbě-"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"Nordome, dost. Tohle je mezi Ravel a mnou. Podívej, Ravel---"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"Nordome, dost. Tohle je mezi Ravel a mnou. Podívej, Ravel---"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"Nordome, dost. Tohle je mezi Ravel a mnou. Podívej, Ravel---"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"Nordome, dost. Tohle je mezi Ravel a mnou. Podívej, Ravel---"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"Nordome, dost. Tohle je mezi Ravel a mnou. Podívej, Ravel---"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"Dotaz: Přijat. Odpověď: Nordom je připraven. Očekávám další direktiryvy."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Vhailore?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Ignusi?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Fall-From-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Dak'kone?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Dak'kone?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"Vlastně jsou to 'direktivy'... no na tom nezáleží. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"Pilíř Lebek: skládá se z živých hlav smrtelníků, kteří lhali a jejich lži způsobily smrt jiných smrtelníků. Pilíř slouží jako úschovna znalostí. Nejméně v devadesáti sedmi procentech případů ale Pilíř požaduje za znalosti platbu. Požadavky Pilíře jsou na úrovni, kterou by typický smrtelník nazval 'neuvěřitelně drahé'. Logika radí, aby Pilíř nebyl tázán, pokud není požadovaný kousek znalosti pro příjemce 'neuvěřitelně drahý'. ~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~Kostka *zacinkala*, pak se ozvalo *klik-klik-klik*, jak oči divoce zamrkaly. Kostka se k tobě natočila, oči má rozšířené, pak vymrštila dvě volné ruce do vzduchu, jako by se vzdávala... ale dvě kuše se v jejích rukou natočily a zamířily na tebe. Všiml sis, že každý kloub tohoto podivného stvoření tvoří série vrčících koleček a převodů.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"Uh..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~Chvíli na tebe zírá, pak se krychlovité tělo přetočilo zády k tobě a začíná poskakovat nahoru a dolů, jako by utíkalo pryč - ale nohy stále stojí pevně na zemi, směrem k tobě. Jak "běží", mechanismus kuší začal cvakat a brnkat.~ */
  IF ~~ THEN REPLY #55106 /* ~"Uh... víš, že jsi otočený nazpátek?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~Stvoření přestalo poskakoval a přetočilo se k obličejem k tobě. "Nazpátek modron = 'Nordom'?" Kostka má kovový cvrlikavý hlas, jakoby každé slovo vyskakovalo na pérku a dopadalo... no, někde jinde. Ústa kostky vytvořily bizarní polokruh, který má zřejmě představovat úsměv. "Vděčnost! Vděčnost!"~ */
  IF ~~ THEN REPLY #55108 /* ~"Uh... promiň?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Zjistil jsem, jaké nebezpečí sebou nesou jména. Při procházení Rubikonem jsem narazil na podivného modrona - když jsem k němu promluvil, myslel si, že ho pojmenovávám. Jeho nové jméno je 'Nordom,' a na modrona vypadá docela... vyšinutý.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~"Nazpátek modron = 'Nordom?'" Kostka má kovový cvrlikavý hlas, jako by každé slovo vyskakovalo na pérku a dopadalo... no, někde jinde. Ústa kostky vytvořila bizarní polokruh, který má zřejmě představovat úsměv. "Vděčnost! Vděčnost!"~ */
  IF ~~ THEN REPLY #55111 /* ~"Uh... promiň?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Zjistil jsem, jaké nebezpečí sebou nesou jména. Při procházení Rubikonem jsem narazil na podivného modrona - když jsem k němu promluvil, myslel si, že ho pojmenovávám. Jeho nové jméno je 'Nordom,' a na modrona vypadá docela... vyšinutý.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"Ne promiň. Promiň přiřazená nulová hodnota. Vděčnost! Identifikace sebe samého poškozená pochybnostmi + analýzou + přemýšlením." Kostka znovu zacinkala, jedno oko s kliknutím mrklo - o chvíli později kliklo i druhé oko, jako by nechtělo zůstat pozadu.~ */
  IF ~~ THEN REPLY #55113 /* ~"Pořád nerozumím."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"Jsi vděčný... že jsem tě indentifikoval? Nejsi modron?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~Výraz kostky se uklidnil, ústa vytvořily rovnou čáru. "Indemnifikace této jednotky (byla) poškozena. Subjekt - oslovil neindemnifikovanou jednotku jako 'Nordom.' Vděčnost nabídnuta za dodání indemnifikace Nordoma."~ */
  IF ~~ THEN REPLY #55116 /* ~"To nic nebylo. Vážně."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~Nordomovy oči znovu s kliknutím mrkly, podruhé, potřetí. Pokaždé se černé skvrny ve středu jeho očí zúžily - po třetím mrknutí mají velikost teček. "Poh-roze-mění dosaženo: Nordom má nulovou znalost jména oslovitele. Indemnifikuj se."~ */
  IF ~~ THEN REPLY #55118 /* ~"Tím myslíš 'identifikuj se', viď?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~Pravdivě: "Doopravdy *nemám* jméno, Nordome."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~Lži: "Adahn. Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"Potvrzeno. Identi-fikace vyžadována. Požadavek: Identifikuj identitu Nordomovi."~ */
  IF ~~ THEN REPLY #55122 /* ~Pravdivě: "Doopravdy *nemám* jméno, Nordome."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~Lži: "Adahn. Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"Nordome, nechci se identifikovat. Vlastně bych rád skončil tuhle konverzaci a šel si po svém."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~Nordomovy oči se rozšířily - průměr jeho 'zornic' narostl do normální velikosti. Znovu s kliknutím mrkl - ale kovové rolety, kryjící jeho oči, se nezvedly. Po chvíli sebou začínají třepat, jako by se zasekly.~ */
  IF ~~ THEN REPLY #55126 /* ~"Uh... Nordome. Můžeš otevřít oči."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~Ozvalo se další *klik* a Nordom otevřel oči. "Nezavírám oči: Zau-zajat v Činu Ujasnění pro Subjekt (Neidentifikován, Bezejmenný). Formuluji... předkládám dotaz: Jsi ztracen?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"Ztracen? Co tím myslíš?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"Ztracen? Co tím myslíš?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"Ztracen? Co tím myslíš?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~Jak Nordomova cvrlikající otázka skončila slovem ztracen, hlavou ti projel intezivní pocit, který ti přinesl dvě jistoty - Není to poprvé, co tohle slyšíš, a to, co teď Nordom řekne k tvé otázce, je velice důležité.~ */
  IF ~~ THEN REPLY #55132 /* ~"Když jsi řekl 'ztráta,' Nordome, co jsi tím myslel?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"Absence Jména = Absence Identity = Absence Účelu = Absence Místa v Mnohovesmíru = Nulový Stav = Ztráta. Nordom existoval ve Stavu Nula, dokud Subjekt (Neidentifikovaný, Bezejmenný) nepřiřadil identitu k Nordomovi. Nulová Identita, Nulový Účel, Nulové Místo rovná se 'Ztráta.'"~ */
  IF ~~ THEN REPLY #55134 /* ~"No, řekl bych, že jsem kdysi jméno měl, ale zapomněl jsem ho."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"Formuluji nový dotaz." Ozvalo se *tkkk-tkkk-tkkk* jak Nordom třikrát rychle mrknul - zvuk, jaký by vydalo kladívko dopadající na měkký cín. "Vysvětli Nordomovi, proč jsi provedl tuto akci: ZAPOME-MNUTÍ."~ */
  IF ~~ THEN REPLY #55136 /* ~"Zkrátka se to stalo. Nebylo to zamýšlené."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"Myslím, že je v mé podstatě zapomínat věci."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"Myslím, že je to vedlejší účinek mého... stavu."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~Kovové rolety se zavrčením uzavřely Nordomovy oči. Chvíli si se zavřenýma očima něco pro sebe vrčí. Když se s kliknutím oči otevřou, Nordom zacinkal. "Dotaz: Paměť defektivní?"~ */
  IF ~~ THEN REPLY #55140 /* ~"Ano, mohl bys to tak říct."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"Podmíněná akce k vyjasnění Dotazu: Nordomova paměťová kapacita není naplněna. Dotaza/Akce: V případě odpovědi 'Ano' od Subjektu (Neidentifikovaný, Bezejmenný) si může Nordom pamatovat za tebe."~ */
  IF ~~ THEN REPLY #55142 /* ~"Jistě, Nordome, jak chceš... Ale podívej, já už bych si opravdu měl jít po svém."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"Díky za nabídku, Nordom. Jestli chceš... Ale podívej, já už bych si opravdu měl jít po svém."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~Nordomovy oči se rozšířily - průměr jeho 'zornic' narostl do normální velikosti. Znovu s kliknutím mrkl - ale kovové rolety, kryjící jeho oči, se nezvedly. ~ */
  IF ~~ THEN REPLY #55145 /* ~"Uh... Nordome. Můžeš otevřít oči."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~Ozvalo se další *klik* a Nordom otevřel oči. "Nezavírám oči: Čin Objasnění pro Adahna. Doplňuji infomrace, zapamatovávám si. Adahn: Jméno zkatalogizováno. Nordom nezapomene identitu: Adahn."~ */
  IF ~~ THEN REPLY #55147 /* ~"Skvělý. Hele, Nordome, jseš fakt fajn, ale já budu muset jít."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~Kuše v Nordomových rukách náhle vydaly rychlou sérii *kliknutí* a *cinknutí*. Jeho oči se protočily a zaostřily na kuších, pravou si přiblížil ke straně hlavy, jako by jí naslouchal.~ */
  IF ~~ THEN REPLY #55149 /* ~"Je všechno v pořádku?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~Jedno z Nordomových očích zůstalo zaostřené na kuši, která tiše *kliká*, druhé oko se zaostřilo na tebe. "Dotaz: Mohou tito připojit se na tvé dvěstě?"~ */
  IF ~~ THEN REPLY #55157 /* ~"Uh, nemyslíš náhodou 'cestě'?"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"Víš, VÁŽNĚ si nemyslím, že by to byl dobrý nápad. Ne, teď ne... Nordome."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"No... dobře. Vždycky se mi hodí mít někoho kolem sebe."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"Jistě. Každá ruka se hodí... natož čtyři."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"Skutečně. Cesta, potvrzena. Povolení uděleno?"~ */
  IF ~~ THEN REPLY #55168 /* ~"Víš, VÁŽNĚ si nemyslím, že by to byl dobrý nápad. Ne, teď ne... Nordome."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"No... dobře. Vždycky se mi hodí mít někoho kolem sebe."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"Jistě. Každá ruka se hodí... natož čtyři."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~Nordom na tebe zírá rozšířenýma očima. Jeho pravá kuše vydala *ker-klaks,* a Nordom mrknul. "Přídavný Dotaz: Prosím?"~ */
  IF ~~ THEN REPLY #55172 /* ~"Tentokrát ne, Nordome."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"No... dobře. Vždycky se mi hodí mít někoho kolem sebe."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"No... dobře. Vždycky se mi hodí mít někoho kolem sebe."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~Nordomova ústa se zkroutila do polokruhu. "Odpověď na dotaz: přijata a potv-vrzena. Nordom setrvá v abstinenci větší komunity. Nordom bude dále obývat tento polygonální prostor, dokud nebude vyzvednut."~ */
  IF ~~ THEN REPLY #55176 /* ~"Velmi dobře. Možná se vrátím, Nodrome."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~Nordomova 'ústa' vytvořila stejný bizarní polokruh jako dříve, jeho dvě kuše začaly zuřivě klikat a cinkat, vibracemi mu téměř vypadly z rukou. "Vděčnost! Vděčnost! Nordom a kuše byli připojeni k větši komunitě."~ */
  IF ~~ THEN REPLY #55178 /* ~"Já bych nebyl hned tak vděčný. Pojďme..."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"Pozornost, Nordomova: vyžadována!" Nordom se k tobě natočil, v polovině se zadrhnul, pak se ale s cvaknutím zorientoval. "Odpověď na Dotaz: Akce prováděna na kuších? Podávám Žádost pro Objasnění: Stav přítomných kuší nula."~ */
  IF ~~ THEN REPLY #55182 /* ~"Máš pár kuší přímo tady, Nordome."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"Oh, tak? A jak říkáš těm dvěma cvakajícím věcičkám, co máš v ruce?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"Objasnění: Tvrzení 'běžný mylný názor.' Nordom nepoužívá kuše." Chvíli se zadrhává, pak náhle kuše ukazují na tebe - ale ty jsi neviděl, že by se pohnuly. "N-n-n-nulové kuše."~ */
  IF ~~ THEN REPLY #55189 /* ~"Nemiř na mně těmi kušemi."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"Nordome, ty *používáš* kuše - máš DVĚ přímo tady."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"Oh, tak? A jak říkáš těm dvěma cvakajícím věcičkám, co máš v ruce?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~Jenom jsi mrknul - a kuše míří na Nordoma. Nevšimá si jejich pohybů, jeho pohled je soustředěn na tebe. "Popření neiniciuje učinění. Nulové kuše."~ */
  IF ~~ THEN REPLY #55195 /* ~"Oh, tak? A jak říkáš těm dvěma cvakajícím věcičkám, co máš v ruce?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"Odpověď: Dva -CVAKAJÍCÍ- objekty." Nordom zvedl své nýtované prsty a zamával kušemi, které začaly podrážděně cvakat a cinkat. "Odpověď: Objekty = Mechaničtí Duchové."~ */
  IF ~~ THEN REPLY #55199 /* ~"Mechaničtí duchové? Co tím myslíš?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"Dotaz: Definuj: Mechaničtí duchové. Odpověď: Mechaničtí duchové."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"Jo, ale co *jsou* Mechaničtí duchové?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"Jo, ale co *jsou* Mechaničtí duchové?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"Dotaz = Dotaz: Definice = Definice: Mechaničtí duchové. Odpověď = Mechaničtí duchové."~ */
  IF ~~ THEN REPLY #55206 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~Nordom zacinkal. "Dotaz vyžaduje podání Chronologie: Má Nordom podat chronologii?"~ */
  IF ~~ THEN REPLY #55209 /* ~"Ano, rád bych to věděl."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"Příkazy přijaty při iniciaci projektu Rubikon: Odjezd ze Sféry/Mechanus. Fáze jedna: Příjezd na místo určení: Sféra/Limbo. Fáze dvě: Parametry určeny Nadřízeným/Tvůrčí Ředitel: Tvarovaná hmota Sféry (Limbo) - otestovat hypotézu. Zkonstruován Rubikon."~ */
  IF ~~ THEN REPLY #55213 /* ~"Pokračuj..."~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"Vydrž, Nordome. Co je to Sféra Mechanus?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"Nadřízený - Ředitel 'Tvoření' - ztracen během testu. Chronologie narušena po dosažení Fáze dvě, Třetí fáze (narušeno) se děje, není nadále součástí direktiv projektu."~ */
  IF ~~ THEN REPLY #55218 /* ~"Co se stalo během třetí fáze."~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"Co to bylo za test?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"Nadřízený - Ředitel 'Tvoření' - test: Průzkum perimetrů Rubikonského (Obtížné) konstruktu pro určení: Variací. Mnoho deviací detekováno: Značné chyby." Nordom ze sebe vydal hluboké zahvízdání a s kliknutím zavřel oči. Ředitel 'Tvoření' se z testu nevrátil."~ */
  IF ~~ THEN REPLY #55223 /* ~"Aha. Co se stalo během té třetí fáze?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"Co se mu stalo?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"Slyšel jsem, že Rubikonský kouzelník Tvůrčího Ředitele dezintegroval."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"Co se mu stalo?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~Z levé kuše se náhle ozvalo spousta *kliků*. Nordom zvedl kuši ke straně, asi aby lépe slyšel. *Klikání* chvíli pokračuje, dokud není umlčeno dlouhým vibrujícím zadrnčením z pravé kuše.~ */
  IF ~~ THEN REPLY #55230 /* ~"Uh, Nordome? Nevíš náhodou, co se mu mohlo stát?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"Zapomeň na to - co se stalo během třetí fáze projektu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"Podezření, Nepodložene: Nadřízený narazil na chybu." Nordomovy oči klikly, jakoby si je pročišťoval. "Hypotéza: Chyba mohla být velká a neočekávaná."~ */
  IF ~~ THEN REPLY #55235 /* ~"Řekl bych, že to je možné. Co se stalo během třetí fáze projektu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"Cituji/Rubikonský Kouzelník/Megalomaniacké Prohlášení Svobody: Tvůrčí Ředitel narazil na Chybu: Rubikonský Kouzelník. Hypotéza: Ředitel podcenil vážnost chyby. Chtěl zkorigovat odchylku Rubikonského Kouzelníka. Výsledek: Ředitel = Vynulován."~ */
  IF ~~ THEN REPLY #55245 /* ~"Vlastně, Nordome, Rubikon má ještě pořád ředitele. Mně."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"To Kouzelník prohlašoval. Takže, potom co byl 'vynulován', co se stalo během třetí fáze projektu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"Podezření, nepodložené = Nyní potvrzeno: Nadřízený narazil na chybu." Nordomovy oči klikly, jakoby si je pročišťoval. "Doraz: Chyba byla velká a neočekávaná?"~ */
  IF ~~ THEN REPLY #55250 /* ~"To bych řekl. Nemyslím, že měl moc problému s likvidací Ředitele."~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"Promluvíme si o tom někdy jindy. Teď mi řekni o třetí fázi projektu."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"Povím ti to později, Nordome. Zatím mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"Zpracovávám novou informaci..." Nordom na tebe chvíli tiše zírá, pak se z něj ozývá vrčení spousty koleček. Po chvíli zacinkal. "Osud Tvůrčího Ředitele potvrzen. Ředitel = Vynulován."~ */
  IF ~~ THEN REPLY #55255 /* ~"No, Norome, vlastně... jsem nový Tvůrčí Ředitel Rubikonu."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"Jsem rád, že jsem ti to mohl vyjasnit, Nordome. A teď mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~Nordom na tebe chvíli tiše zírá, pak se z něj ozvalo pomalé *whrrrr* a nakonec *KLIK.* Nemáš jistotu, ale máš takový pocit, jakoby něco vevnitř zapadlo na své místo.~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"Uh, jsi v pořádku, Nordome?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~Další stabilizující incident s Nordomem, stejný, jako když jsem mu řekl, že jeho oddělení od Zdroje mohlo způsobit změnu jeho perspektivy - když jsem Nordomovi řekl, že jsem nový Tvůrčí Ředitel Rubikonu, stal se ještě stabilnějším. Myslím, že určení nového řetězce velení pro Nordoma mu pomohlo stát se 'soustředěnějším'. Možná ho ztráta Ředitele rozhodila víc, než jsem si myslel.~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"Uh, jsi v pořádku, Nordome?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~Něco podivného se stalo, když jsem Nordomovi řekl, že jsem nový Tvůrčí Ředitel Rubikonu, stal se stabilnějším. Myslím, že určení nového řetězce velení pro Nordoma mu pomohlo stát se 'soustředěnějším'. Možná ho ztráta Ředitele rozhodila víc, než jsem si myslel.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"Status Doplněn: Tvůrčí Ředitel potvrzen v hierarchii." K tvému překvapení se z Nordomova hlasu vytratilo trochu cinkání a vrčení. Jeho hlas je teď srozumitelnější, více kontrolovaný, než předtím. Výsledek je poněkud znepokojivý.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"Hmmmm. Nordome... jen tak ze zvědavosti, jaké jsou povinnosti Tvůrčího Ředitele? A jak moc ho musíš poslouchat?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"Hmmmm. Nordome... jen tak ze zvědavosti, jaké jsou povinnosti Tvůrčího Ředitele? A jak moc ho musíš poslouchat?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"Jsem rád, že jsem ti to mohl vyjasnit, Nordome. Ale zpátky k projektu - co se stalo během třetí fáze?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"Myslím, že už jsme mluvili dost. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"Třetí fáze, bezprecedentní: Nordomova specifická fáze. Hypotéza: Nepřítomnost Ředitele plus expozice Sféry (chaos) zapříčinila deviaci perspektivy /Nordoma/ od normálu."~ */
  IF ~~ THEN REPLY #55270 /* ~"'Deviace od normálu?' Jak?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"Zahajuji Introspektivní Cyklus." Nordom *kliknul* očima a nechal je zavřená, začal *vrčet*. O chvíli později s kliknutím otevřel oči. "Zhodnocení Introspektivy: Vnímání se stalo (1) menší  a (B) hlasitější. Křídla nahrazena rukama: důvod neznámý. Podezření/hypotéza: křídla neoblíbené? Spekulace. Nordom býval -JEDEN- ale teď je menší, hlasitější -JEDEN!- Změna způsobila problémy v procesingu informací."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"Myslíš, že tvé oddělení od Zdroje je to, co způsobilo tvou změnu perspektivy z tichého většího 'jednoho' na menšího, hlasitějšího 'jednoho'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"Aha, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"Už jsem slyšel dost, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~Nordom na tebe chvíli tiše zírá, pak se z něj ozvalo pomalé *whrrrr* a nakonec *KLIK.* Nemáš jistotu, ale máš takový pocit, jakoby něco vevnitř zapadlo na své místo.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"Nordome?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~Další stabilizující incident s Nordomem, stejný, jako když jsem mu řekl, že jsem nový Tvůrčí Ředitel Rubikonu. Když jsem Nordomovi řekl, že to bylo pravděpodobně oddělení od Zdroje, co způsobilo jeho změnu v perspektivě, stal se stabilnějším. Myslím, že to, že jsem mu pomohl uvědomit si, co se vlastně stalo, mu pomohlo stát se 'soustředěnějším'. Jeho oddělení od Zdroje mu muselo způsobit větší šok, než jsem čekal.~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"Nordome?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~Něco podivného se stalo, když jsem Nordomovi řekl, to bylo pravděpodobně oddělení od Zdroje, co způsobilo jeho změnu v perspektivě, stal se stabilnějším. Myslím, že to, že jsem mu pomohl uvědomit si, co se vlastně stalo, mu pomohlo stát se 'soustředěnějším'. Jeho oddělení od Zdroje mu muselo způsobit větší šok, než jsem čekal.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"Status Doplněn: Introspekční Odliv Zastaven, převádím spekulační rutiny zpět do hlavní fronty." K tvému překvapení se z Nordomova hlasu vytratilo trochu cinkání a vrčení. Jeho hlas je teď srozumitelnější, více kontrolovaný, než předtím. Výsledek je poněkud znepokojivý.~ */
  IF ~~ THEN REPLY #55283 /* ~"Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"Myslím, že už jsme mluvili dost. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~Nordom zamrzl, pak se strojky v jeho loktech začaly pomalu, synchronizovaně pohybovat. "Definice/Dotaz: Mechanus. Sféra Řádu. Smysl. Příčina vytváří Efekt. Předvídatelnost. Řád. Logika. Organizace. Poslušnost. Kolečka se otáčejí. Mechanus = Nordomův Původ. Mechanus = Nulový domov/Nordom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"Nordome, co tím myslíš, 'Nulový Domov?'"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"Mechanus = Bod Původu. - !ZDROJ! - Energie. Nemožnost návratu na Mechanus. Nulový Domov. Porušen zákone existence. Centrální Úřad pro Potrestání Viníků očekává v Regulu. Mechanus: Původ, Nulový domov. Domov: Nulové místo."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"Co myslíš tím '!ZDROJ!?'"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"Co myslíš tím '!ZDROJ!?'"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"Co myslíš tím '!ZDROJ!?'"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!ZDROJ! = Energie."~ */
  IF ~~ THEN REPLY #55295 /* ~"Takže... ten Mechanus je zdrojem energie?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"Potvrzuji." Nordomovy rolety zakryly jeho oči, Nordom si pro sebe chvíli vrčí, pak se jeho levé oko otevřelo. "Kousek/Procento/Zlomená Frakce !ZDROJE! uvnitř Nordoma. Energie Rozdělena. Spojení přerpřerpřerušeno." Nordom se na posledním slově zakoktal, ale pak se uklidnil.~ */
  IF ~~ THEN REPLY #55299 /* ~"Takže jsi byl odříznut od 'Zdroje'? Není to... bolestivé?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"Negativní. Žádná bolest." Nordomova ústa se zkroutila, vytvořila polokruh. "Potvrzuji. Bolest." *Kliknul*. "Deviace Odpovědi: Odpověď je jak /Pravda/ tak /Nepravda/. Odpověď je nepřijatelná."~ */
  IF ~~ THEN REPLY #55303 /* ~"Takže.. pokud je *část* odpovědi pravdivá, není potom celá odpověď pravdivá?"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~Nordom se na chvíli odmlčel. "Deviace Odpovědi: Započítána definice 'Bolesti'. Žádná fyzická újma nezpůsobena oddělením od !ZDROJE! Nicméně se změnily parametry operační efektivity, takže mohlo vzniknout neznámé poškození. Formuluji novou odpověď: Bolestivost = Neznámo."~ */
  IF ~~ THEN REPLY #55307 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!ZDROJ! = Energie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!ZDROJ! = Energie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~Ozvalo se  *klik-klik-klik*, jak Nordom několikrát rychle mrknul, pak zacinkal. "Dotaz: Modron, co je? Definice: Modron? Já jsem modron."~ */
  IF ~~ THEN REPLY #55312 /* ~"Ano, ale co *je* modron?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"Dotaz: Modron, Definován: Modron, Já jsem modron, Zodpovězeno." Rolety nad Nordomovýma očima se s kliknutím několikrát zavřely, jeho oči se zůžily na tečky. "Nový dotaz -"Modron, Ale co JE? Definice: Ale co se Modron? Modron je Nordom. Nazpátek Nordom = Modron."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"Ale..."~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"Ale... no to nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"Status: Očekávám dotazy."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"Nordome, můžeš mi říct, jaké povinnosti má Tvůrčí Ředitel?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"Nordome, řekni mi znovu povinnosti Tvůrčího Ředitele."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"Jako Tvůrčí Ředitel pro tebe mám nějaké nové rozkazy."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"Zajímalo by mně, Nordome, jak jsi skončil v Rubikonu?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"Nordome, co *jsou* modroni?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"Pověz mi o Mechanu, Nordome."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"Uh... jak se máš, Nordome?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"Jak se máš, Nordome?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"Nordome, ptal ses, jak jsem se měl předtím, že?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"Můžeme si znovu promluvit o mé smrtelnosti?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"Slyšel jsi někdy o Ravel Puzzlewell, Nordome?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"Nordome, víš něco o Válce Krve?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"Žádné další... dotazy, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"Negativní." Nordomovo tělo začalo vibrovat, pak se ozvalo ostré *snap.*  "Subjekt dotazu není znám /Nordomovi/."~ */
  IF ~~ THEN REPLY #55333 /* ~"Dobrá tedy, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"Definice: Válka Krve. Největší známý konflikt. Důvod války: Ideologické rozdíly mezi baatezu - řád a tanar'ri - chaos. Popis války: Rasová genocida. Pravděpodobnost konce Války, pokud nebude zabit každý baatezu a/nebo každý tan'nari je určena na  .0000000000000000000001%. Primární bojovníci: Baatezu, Tanar'ri. Účastníci Války: Všichni."~ */
  IF ~~ THEN REPLY #55336 /* ~"Pověz mi o Baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"Pověz mi o Tanar'ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"Dobrá tedy, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"AKA, 'Fiendové.' Informace nekompletní: Obecně používaný popis: Baatezu. Obyvatelé sféry: Baator. Počet: Nespočetné. Primární druh útoku: záleží na kastě. Imunity: oheň, chladné železo, jed. Fyzické znaky: Závisí na podraze, většina vlastní rezistence vůči zimě/plynu. Osobnostní znaky: Zákonní, Zlí, Manipulativní, Efektivita: 73%."~ */
  IF ~~ THEN REPLY #55341 /* ~"Pověz mi o Tanar'ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"Dobrá tedy, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"AKA, 'Fiendové.' Informace nekompletní: Obecně používaný popis: Tanar'ri. Obyvatelé sféry: Abyss. Počet: Nespočetné. Primární druh útoku: záleží na kategorii. Imunity: Blesk, oheň ne-magický, jed. Fyzické znaky: závisí na podrase, většinou vlastní rezistence vůči zemi, magickému ohni, plynu. Osobnostní znaky: Chaotičtí, Zlí, Efektivita: 13%."~ */
  IF ~~ THEN REPLY #55345 /* ~"Pověz mi o Baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"Dobrá tedy, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~Z Nordoma se začíná ozývat pomalé *tkkk-tkkk-tkkk* - jako tikající hodiny, chystající se k výbuchu. "Odpověď: Povinnosti Ředitele: (A) Údržba Integrity Projektu Rubikon, (B) Přidělování příkazů Rubikonskému bataliónu/pracovní skupině. Perioda poslušnosti ve shodě s Nordomovou poslušností: Dokud není Projekt Rubikon zastaven, Tvůrčí Ředitel = Nordomův nadřízený."~ */
  IF ~~ THEN REPLY #55349 /* ~"Takže... uděláš cokoli, co ti řeknu?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"Tak to pro tebe mám nějaké příkazy, Nordome..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"Hmmm. Jaké úkoly ti tvůrčí ředitel dával?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"Hmmm. Jaké úkoly ti tvůrčí ředitel dával?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"Potvrzuji."~ */
  IF ~~ THEN REPLY #55356 /* ~"Tak v tom případě pro tebe mám nějaké rozkazy..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"Hmmm. Jaké úkoly ti tvůrčí ředitel dával?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"Status: Očekávám příkazy."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"Přikazuji ti soustředit více energie z tvých introspekčních rutin a zaměřit je na boj. Očekávám *okamžité* zlepšení bojových schopností a přesnosti, vojáku."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"Nordome, chci, aby ses soustředil na vyčištění paměti od jakékoli zbytečné bagáže a volné místo použil k vylepšení logických a introspekčních rutin."~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"Nordome, chci, abys přesměroval trochu energie, kterou používáš na sílu, a převedl jí do tichosti a přesnosti. Jsi příšerně neohrabaný a hlasitý."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"Nordome, přikazuji ti, abys mi naslouchal. Je tady pár věcí, které ti chci říct."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"Co kdybys začal útočit na každého v okolí?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"Zatancuj pro mě, Nordome."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"Rozkazuju ti, abys padnul na obličej a pak zase vstal."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"Přehoď si kuše z jedné ruky do druhé."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"Potvrzuji." Chvíli je ticho, potom rolety pomalu zakryly Nordomovy oči. Z jeho těla je slyšet *tkk-tkk-tkk*, následované hlubokým vrzavým zvukem, který postupně přechází do kovového skřípání, jak se na Nordomových bocích otvírají panely a vyklouzávají z nich kovové pláty.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~S úžasem sleduješ, jak nýty v Nordomových prstech vyjíždějí ven, pak vklouzly dovnitř a malé otvory se náhle zaplnily houfem neuvěřitelně drobných a složitých strojků. Stroječky *klinkají* a *tikají*, jak mezi sebou bojují o místo, pak se jejich zvuk zklidnil do pomalého metodického *tik-tik-tik.*~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"Potvrzuji." Chvíli je ticho, potom rolety pomalu zakryly Nordomovy oči. Z jeho těla je slyšet *tkk-tkk-tkk*, následované hlubokým vrzavým zvukem, který postupně přechází do kovového skřípání, jak se na Nordomových bocích otvírají panely a ... nadbytečná "bagáž" začala vylétávat ven. Snažíš se zachytit každý kousek.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"Potvrzuji." Chvíli je ticho, pak rolety pomalu sklouzly a zakryly Nordomovy oči. Z jeho těla je slyšet *whrrrrrr*, je to zvuk podobný tomu, jaký vydává větrný mlýn při vichřici. Všechny Nordomovy klouby začaly vydávat *klik*, z kloubů vylézají nové mechanismy jako popínavé rostliny, připevňují se a usazují na jeho ramenech, loktech, zápěstích, kolenou a kotnících. Za chvíli jsou všechny usazené a bezpečně upevněné na kloubech. A Nordom vypadá... no, ještě víc mechanicky než obvykle.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~Nordom ztuhl. "Čekám: mluv."~ */
  IF ~~ THEN REPLY #55376 /* ~Pravdivě: "Přikazuju ti, abys byl VÍC, než jsi, Nordome. Rozkazuju ti, abys byl silnější, rychlejší a soustředěnější, než jsi kdy byl. VÍM, že to dokážeš, protože VĚŘÍM, že to dokážeš."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"Zruš to. Mám pro tebe jiné rozkazy..."~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"Zapomeň na můj poslední příkaz. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"To nic, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~Nordom na tebe tiše zírá. I jeho kuše jsou zticha.~ */
  IF ~~ THEN REPLY #55382 /* ~"Teď opakuj tato slova: 'Jsem silný modron.' 'Jsem rychlý modron.' 'Jsem mocný modron.' 'Můj tvůrčí ředitel ve mně věří.' 'Jsem soustředěný pro svého ředitele.' No tak, zopakuj to."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"Zruš to. Mám pro tebe jiné rozkazy..."~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"Zapomeň na můj poslední příkaz. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"To nic, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~Nordom promluvil, ale v jeho hlase už není to mechanické kovové skřípaní, co dříve. Hlas je plochý. Soustředěný. Bez emocí. "Jsem silný modron. Jsem rychlý modron. Jsem mocný modron. Můj tvůrčí ředitel ve mně věří. Jsem soustředěný pro svého ředitele."~ */
  IF ~~ THEN REPLY #55387 /* ~"A teď musíš ta slova CÍTIT, Nordome. STAŇ se silnějším. STAŇ se rychlejším. STAŇ se mocnějším. Ať energie uvnitř tebe VYJDE NA POVRCH, použij ji, abys byl NORDOM."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~Nordom na tebe dál zírá, ale ty CÍTÍŠ, že tvá slova účinkují - cítíš v něm *jiskru*, jenom *jiskřičku* energie... kdybys jí dokázal soustředit... dostat na povrch...~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"No tak, Nordome... Síla. Rychlost. Moc. Soustředění."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"No tak, Nordome... Síla. Rychlost. Moc. Soustředění."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"No tak, Nordome... Síla. Rychlost. Moc. Soustředění."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"POTVRZUJI." Zornice Nordomových očí náhle cvakly a staly se zářícími bílými tečkami, jako dvě malinká sluníčka. Jeho ruce se vznesly nad hlavu v podivném pohybu a pak se zase snesly zpět k bokům... když znehybněly, Nordom náhle vypadá... definitivnější. Ostřejší, silnější. Něco se *změnilo*.~ */
  IF ~~ THEN REPLY #55399 /* ~"Nordome...?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"PŘÍKAZ ZPRACOVÁN." Nordom mrknul a náhle se jeho postoj uvolnil, s hlasitým *klank*. Z jednoho ventilu uniklo trochu páry, jeho hlas je zvláštně hluboký, jako by mluvil ze studny, pak se vrátil ke svému normálnímu tónu. "P-p-příkaz zpracován."~ */
  IF ~~ THEN REPLY #55402 /* ~"No, to fungovalo docela dobře. Mám pro tebe jiné rozkazy..."~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"Výborně. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"To je vše, co jsem chtěl, Nordome. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~Nordom se chvíli nehýbá, pak se jeho oči s kliknutím otevřely. "Příkaz zpracován."~ */
  IF ~~ THEN REPLY #55408 /* ~"Mám pro tebe jiné rozkazy..."~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"Výborně. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"To je vše, co jsem chtěl, Nordome. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~Nordomovy rolety se zavrčením zakryly jeho oči, jakoby přemýšlel. "Úkolová rutina: Zhodnocení/Průzkum/Úklid: Perimetr Rubikonu určen k zhodnocování, katalogizaci, úklidu, poté hlásit. Hlášení zahrnuje: Zhodnocení in-in-integrity/Exterminace chyb projektu/Sbírání ztracených předmětů."~ */
  IF ~~ THEN REPLY #55414 /* ~"Zhodnocení integrity?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"Exterminace chyb?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"Sbírání předmětů?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"Opakovaný výběr slov potvrzen (Echo?): Zhodnocení Inte-grity. Zhodnocení určeno k detekci chyb v projektu Rubikon, jejich katalagizaci a potom /opravě/ takových chyb. Povaha mnohovesmíru a povaha Sféry: Limbo narušila Projekt Rubikon."~ */
  IF ~~ THEN REPLY #55427 /* ~"Jak uh, Mnohovesmír... a Limbo... narušily Projekt? Přesně."~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"Jakéže byly tvé úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"Vlastnosti Mnohovesmíru: - Praskne - uzavře se- Znovu praskne - vzniká chyba. Vytváří "portály/vodiče v prostoru. Frekvence: Neurčitelný vzorec. Řešení: Neznámo." Je slyšet *sssss*, jak z jednoho ventilů na Nordomově těle uniklo trochu páry. "Nordom nemůže opravit/zapečetit praskliny. Momentální status: Nordom je omezen na: vnímání prasklin."~ */
  IF ~~ THEN REPLY #55435 /* ~"Vydrž chvíli. Ty vidíš 'praskliny' ve Sférách? Portály? Jak?"~ */ JOURNAL #55442 /* ~Nordom se zmínil, že má schopnost vidět portály, kterým říká "chyby" ve Sférách, s 80 - 90% přesností. Pokud jsem to dobře pochopil, tak mu stačí, aby prošel kolem portálu, aby zjistil jeho přítomnost... pravděpodobně mi neřekne *jak* otevřít portál, ale alespoň budu vědět, kde některé z nich jsou. ~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"Aha. Jaké že byly tvé úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"To nic, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"Schopnost detekovat portály: 80-90 Procent. Maximální vzdálenost detekce závisí na chybě/ průměrná vzdálenost  = Y+78..." Z Nordoma se ozvalo několik hlasitých kliknutí, jakoby v něm mašírovala jednotka železných brouků. "Nordom se musí přiblížit do vzdálenosti deseti stop od portálu. Možná chyba: +/- jedna pětina stopy. Přítomnost detekovaného portálu bude oznámena."~ */
  IF ~~ THEN REPLY #55449 /* ~"Tak dobře. Takže, jaké že to byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"To bych ocenil, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"Díky, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~Nordomovo vrčení se ztišilo. "Chyby: Mnoho. Všechny konstrukty v Projektu Rubikon jsou chybné a existují v nesou-hlasnosti s tvůrčím ředitelem a veškerým personálem projektu Rubikon. Vydán Příkaz: Chyby, které pokračují v nesou-hlasnosti mají být vymazány. Překážka: Nordom má nedostatečné specifikace pro úkol bez utrpení Nulového Stavu."~ */
  IF ~~ THEN REPLY #55454 /* ~"Takže jsi nemohl zastavit ty vzbouřené kostrukty sám... alespoň ne bez toho, že by ti utrhali kolečko za kolečkem?"~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"Jaké že byly tvé další úkoly?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"Už jsem slyšel dost, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"Potvrzuji. Nulový Stav je kontra-produktivní k dokončení úkolu."~ */
  IF ~~ THEN REPLY #55462 /* ~"No, možná kdyby ti dali lepší zbraně..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~Kuše v Nordomových rukou začaly náhle vydávat *klikity-klikkity* a *ting-cing*, jako pár podivného hmyzu. Nordom jim chvíli naslouchá a potom se podíval na tebe. "Mé kuše si přejí předložit soubor a dotaz, následovaný třiceti třemi žádostmi o pomoc: 'Munice limitována návrhy stvořitele.' Přeješ si dodat nové specifikace?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"Jistě... no, co takhle něco jako... já nevím - pyramidové hlavice, které se po nárazu rozdělí na tři hroty?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"Něco s větší přesností by bylo fajn. Nějaká vylepšená křidélka, aby doletěly dost daleko."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"Nevím. Něco hrozivého. Myslím, VÁŽNĚ hrozivého. Mluvíme tady o sekajících, trhajících, hrozivých zuřivých šipkách."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"Teď mě zrovna nic nenapadá. Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"Teď ne, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"Vykašli se na to, Nordome; možná někdy jindy. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~Z kuší se ozvalo náhlé *ping*, jak z nich začíná vypadávat záplava šipek. V Nordomové boku se otevřely dva panely, do kterých šipky zalétají, jedna po druhé. Po vyplivnutí asi desíti šipek kuše ztichly. Máš podivný pocit, že jsou... vyčerpané, unavené.~ */
  IF ~~ THEN REPLY #55476 /* ~"Možná by si měly na chvilku odpočinout. Hele, jaké že další úkoly jsi to měl?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"To by mělo prozatím stačit, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"Zabalme ty šipky a pojďme, Nordome."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"Potvrzuji. V bludišti se objevily předměty, které nebyly obsaženy v originálním designu projektu Rubikon. Musí být sesbírány, zkatalogizovány, zhodnoceny a uskladněny, aby se zabránilo interferencím. Jsou vysílání modroni, aby je získali a zabezpečili."~ */
  IF ~~ THEN REPLY #55480 /* ~"Hmmm. Našel jsi něco během posledního výletu?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"Aha. Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"Potvrzuji."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"Můžeš mi dát, co jsi našel?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"Říkal jsi, že jsi zhodnocoval nalezené předměty - jak?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"Potvrzuji." Chvíli je ticho, potom rolety pomalu zakryly Nordomovy oči. Z jeho těla je slyšet *tkk-tkk-tkk*, následované *whrrr-klik.* V levém Nordomově boku se otevřel poklop, kam sáhl volnou rukou a pak ti podal několik objektů, včetně hromádky měděných mincí.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"Hmmmm. Říkal jsi, že jsi zhodnocoval nalezené předměty - jak?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"Díky, Nordome. Prohlédnu si to. Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"Podívám se na to později, Nordome. Teď pro tebe mám ještě další otázky..."~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"Tohle si nechám, Nordome, díky. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~Z Nordoma se ozvalo *ping* a *klak-klak*, když se uchycení jeho čoček začalo pohybovat - na straně se otevřel malý panel, odkud vystoupily nové čočky. Nordom se na podíval. "Odpověď: Alternativní čočky, zvětšující, upevněné do uložení."~ */
  IF ~~ THEN REPLY #55497 /* ~"Jaké že byly tvé další úkoly?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"Aha. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"Už jsem slyšel dost, Nordom. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"Zahajuji Introspektivní Cyklus." Nordom *kliknul* očima a nechal je zavřená, začal *vrčet*.~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~Počkej, až Nordom dokončí svou analýzu.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~Počkej, až Nordom dokončí svou analýzu.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~Počkej, až Nordom dokončí svou analýzu.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~Počkej, až Nordom dokončí svou analýzu.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"No, zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"Zruš to, Nordome.. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~O chvíli později se jeho oči s *kliknutím* otevřely. "Zhodnocení Introspektivy: Vnímání se stalo (1) menší  a (B) hlasitější. Křídla nahrazena rukama: důvod neznámý. Podezření/hypotéza: křídla neoblíbená? Spekulace. Nordom býval -JEDEN- ale teď je menší, hlasitější -JEDEN!- Změna způsobila problémy v procesingu informací."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"Myslíš, že tvé oddělení od Zdroje je to, co způsobilo tvou změnu perspektivy z tichého většího 'jednoho' na menšího, hlasitějšího 'jednoho'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"Aha. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"Už jsem slyšel dost, Nordom. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~O chvíli později se jeho oči s *kliknutím* otevřely. "Zhodnocení Introspektivy: Vnímání se stalo (1) menší  a (B) hlasitější. Křídla nahrazena rukama: důvod neznámý. Podezření/hypotéza: křídla neoblíbená ? Spekulace. Nordom býval -JEDEN- ale teď je menší, hlasitější -JEDEN!- Změna způsobila problémy v procesingu informací. Přidání ŘEDITELSKÉ hierarchie vylepšila informační procesing o +5%."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"Myslíš, že tvé oddělení od Zdroje je to, co způsobilo tvou změnu perspektivy z tichého většího 'jednoho' na menšího, hlasitějšího 'jednoho'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"Aha. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"Už jsem slyšel dost, Nordom. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~O chvíli později se jeho oči s *kliknutím* otevřely. "Zhodnocení Introspektivy: Vnímání se stalo (1) menší  a (B) hlasitější. Křídla nahrazena rukama: důvod neznámý. Podezření/hypotéza: křídla neoblíbená ? Spekulace. Nordom býval -JEDEN- ale teď je menší, hlasitější -JEDEN!- Dodatek Důvodu: !ZDROJ!, ZMĚNA VNÍMÁNÍ, vylepšila informační procesing o +5%."~ */
  IF ~~ THEN REPLY #55516 /* ~"Aha, fajn. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"Už jsem slyšel dost, Nordom. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~O chvíli později se jeho oči s *kliknutím* otevřely. "Zhodnocení Introspektivy: Vnímání se stalo (1) menší  a (B) hlasitější. Křídla nahrazena rukama: důvod neznámý. Podezření/hypotéza: křídla neoblíbená ? Spekulace. Nordom býval -JEDEN- ale teď je menší, hlasitější -JEDEN!- Stabilizace dosažena: ŘEDITEL a Důvod: !ZDROJ!, ZMĚNA VNÍMÁNÍ zlepšilo informační procesing o +10%."~ */
  IF ~~ THEN REPLY #55519 /* ~"Aha, fajn. Mám pro tebe ještě další otázky..."~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"Už jsem slyšel dost, Nordom. Pojďme."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~Než stačíš promluvit, Nordomovy oči vydaly *klik-klik-klik* a on zacinkal. "Subjekt asistoval Nordomovi.  Hypotéza: Nordom asistuje subjektu. Dotaz: Nordom zjišťuje status adresáta?"~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"Jak jsem na tom *já*?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"Jak jsem na tom *já*?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"Teď ne, Nordome. Mám pro tebe ještě další otázky..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"Teď ne, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"Potvrzuji. Dotaz označen jako /Status/ adresáta. Odpověď?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"No, až na to, že mám amnézii a nemůžu zemřít jako normální člověk, je mi docela fajn."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"No, až na to, že mám amnézii a nemůžu zemřít jako normální člověk a má smrtelnost ze mne byla strhnuta a někam schována, je mi docela fajn."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"No, až na to, že mám amnézii a nemůžu zemřít jako normální člověk a má smrtelnost ze mne byla strhnuta a schována v Pevnosti Lítosti, a že vždy, když zemřu, tak někdo zemře na mém místě... no moc dobře ne."~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"Teď ne, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"Zpracovávám: Amnézie. Zpracovávám: Nulová Smrt/Navzdory pokusům." Nordom chvíli vrčí, oči fixované na tobě. "Výsledek:Status: Nesmrtelný. Důvod/Efekt Dotaz: Amnézie produkuje nesmrtelnost nebo nesmrtelnost produkuje amnézii?"~ */
  IF ~~ THEN REPLY #55535 /* ~"Nevím... vše co vím, že když vstanu z mrtvých, ztratím vzpomínky. Takže bych si tipnul, že nesmrtelnost způsobuje amnézii."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"Zpracovávám..." Nordom chvíli vrčí jako větrný mlýn. "Nový Dotaz formulován: Pokaždé, když zemřeš, ztratíš paměť?"~ */
  IF ~~ THEN REPLY #55559 /* ~"Správně."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"To říkala Ravel."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"Ano... ne, počkej. Není to pravda. Posledně jsem paměť neztratil."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"Ano... ne, počkej. Není to pravda. Posledně jsem paměť neztratil. Vlastně jsem neztratil paměť od té doby, co jsem se probudil v Márnici."~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"Odpověď: Zkatalogizována." Nordom vydal poslední *klik*, pak stojí tiše a dívá se na tebe.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"...kromě toho, že naposledy, kdy jsem zemřel, jsem vzpomínky neztratil."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"...kromě toho, že naposledy, kdy jsem zemřel, jsem vzpomínky neztratil. A předminule také ne."~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"Mám pro tebe nějaké jiné otázky, Nordome..."~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"Dobře, Nordom. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"Odpověď: Závěr: Nesmrtelnost nezpůsobuje amnézii."~ */
  IF ~~ THEN REPLY #55582 /* ~"No, nevím. Mohla to být náhoda, že se to posledně nestalo."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"Element náhody vyřazen. Návrh: Začni hledat nový vzorec. Amnézie/Nesmrtelnost - Dotaz: Existují Další Faktory? Intervence/Přítomnost nových faktorů nebo Absence Jiných faktorů?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Jaké další faktory by mohly být?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Jaké další faktory by mohly být?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"Neznámo. Dotaz: Dodatečné Informace?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"No, myslím si, že tam někde je někdo, kdo se mě snaží zavraždit... tak moc, že jsem vybudoval past v hrobce, abych jich zkusil pár zabít. Podle rytin v hrobce po mně jde tak dlouho... no tak dlouho, jak jenom si mé inkarnace pamatují."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"Jedna další věc: Nebyl jsem vždy nesmrtelný. To mi udělala Ravel."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"Počet lidí, kteří mi mohou pomoci najít mou smrtelnost, nebo kteří vědí, kde je, se snižuje... jestli to takhle půjde dál, brzy nikdo nebude vědět, kde má smrtelnost je. Pilíř Lebek řekl, že byli jenom tři... a jeden z nich já, ale já zapomněl."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"Trias mi řekl, že v Pevnosti Lítosti je 'hlídač', který uvěznil mou smrtelnost."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"Zatím nemám žádné dodatečné informace, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"Zapomeň na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"Dodatečná informace: Vrah. Nesmrtelnost = Nemožnost vraždy." Nordom chvíli dělá *tkkk-tkkk-tkkks*, pak zacinkal. "Dotaz: Ne Vrah?"~ */
  IF ~~ THEN REPLY #55613 /* ~"Co tím myslíš?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"Odpověď: Nesmrtelnost zabraňuje vrahovi v úspěchu. Dotaz: Ne Vrah?"~ */
  IF ~~ THEN REPLY #55621 /* ~"Tak co ještě se dá získat ze zabití... pokusu o mé zabití?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom mi dal podivný námět k zamyšlení ohledně mého 'vraha' - řekl, že vrah možná není vrah. Že jenom chce, abych zapomněl. Ale co zapomněl?~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"Říkáš, že se mě vrah 'nepokouší' zavraždit? Tak o co tedy jde?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom mi dal podivný námět k zamyšlení ohledně mého 'vraha' - řekl, že vrah možná není vrah. Že jenom chce, abych zapomněl. Ale co zapomněl?~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"Zapomeň na to, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"S tím si nedělej starosti, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"Odpověď: Nesmrtelnost = Amnézie."~ */
  IF ~~ THEN REPLY #55638 /* ~"Takže ať je ten vrah kdokoli, nepokouší se mně zabít, ale snaží se, abych *zapomněl?* Hmmm. Je to možné. Tím myslím, byly by *další* způsoby, jak se mě zbavit, kdyby šlo vrahovi o tohle... hmmm. Ale jestli vrah chce, abych zapomněl, *co* chce, abych zapomněl?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"Dotaz: Formuluji dodatečný dotaz... Nulová nesmrtelnost v minulosti, vyžádána nesmrtelnost od Subjektu: Ravel. Dotaz: Proč?"~ */
  IF ~~ THEN REPLY #55642 /* ~"To přesně nevím... ale, kdo *nechce* žít navždy?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"Pozor: Citát: 'Jeden z nich já, ale já zapomněl' (lokace smrtelnosti). Pozor: Předchozí Citát: 'Takže ať je ten vrah kdokoli, nepokouší se mně zabít, ale snaží se, abych *zapomněl?*' Dotaz: Vrahův Cíl = Nulová Vražda, Vrahův Cíl = Zapomnění = Lokace Smrtelnosti?"~ */
  IF ~~ THEN REPLY #55645 /* ~"Takže ty si myslíš, že 'vrah' chce, abych zapomněl, kde je má smrtelnost? Proč?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"Pozor/Hypotéza: Zapomenutí Lokace Smrtelnosti = Hodnota pro 'Vraha.'"~ */
  IF ~~ THEN REPLY #55648 /* ~"Hmmm. Je to možnost... ale proč by měla být vědomost *umístění* tak důležitá?"~ */ JOURNAL #55650 /* ~Nordom mi dal další námět ohledně mého 'vraha' - řekl, že vrah vůbec nemusí být vrah. Možná jenom chce, abych dál zapomínal. Podle toho, co řekl Pilíř Lebek, je stále méně lidí, kteří vědí něco o mé smrtelnosti. Já býval jeden z nich, ale zapomněl jsem. Je umístění mé smrtelnosti to, co vrah chce, abych zapomněl?~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"Oprava: NULOVÁ Lokalita Smrtelnosti = Hodnota pro 'Vraha.'"~ */
  IF ~~ THEN REPLY #55655 /* ~"Hmmm. Je to možnost... takže někdo chce, aby nikdo nevěděl, kde je? Nebo ten vrah nechce, aby to nevěděl nikdo kromě něj?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"Pozor: Trias Zrádce - dispozice: falešnost/Štít Zlatých Lží. Informace/Zdroj: Trias, Přesnost Informace: Nutné pochybovat."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"Nemyslím si, že by lhal, Nordome; nic by tím nezískal... měl bys vidět jeho oči. Říkal mi pravdu... tenkrát. Proč ten hlídač drží mou smrtelnost?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"Nemyslím si, že by lhal, Nordom; nic by tím nezískal... měl bys vidět jeho oči. Říkal mi pravdu... tenkrát. Proč ten hlídač drží mou smrtelnost?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"Předpoklad: Lokalita Smrtelnosti je cenná. Dotaz: Má Smrtelnost cenu?"~ */
  IF ~~ THEN REPLY #55666 /* ~"Víš, Ravel řekla, že je má smrtelnost cenná... že by ji mohl někdo držet na výkupné. Nebo by mohla být použita, aby mě ten někdo ovládal jako loutku."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"Dotaz: Proč? Formuluji... Motivace..." Nordom *whrrrrčí,* pak zacinkal. "Nordom vzpomíná na Ravelinu Odpověď: "-Nevíš, jaké hrozivé věci by mohl někdo provést, kdyby zadržel tvou smrtelnost pro VÝKUPNÉ. Bylo by to, jako držet něčí slaďoučkou, bezmocnou dušičku... loutka, tančící, jak zatahají za provázky, to bys byl, a moc smutňoučká loutka, že... baže?" Nordom *zacinkal.* "Vzpomínka ukončena."~ */
  IF ~~ THEN REPLY #55669 /* ~"Máš pravdu - Ravel řekla, že je má smrtelnost cenná... a tak by jí mohl někdo mít na výkupné nebo ji používat k mému ovládnutí. Ale výkupné, to by znamenalo, že mi o něj někdo ŘEKNE... a já se nechovám, jako by mě někdo ovládal... alespoň nemyslím... Takže..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Pokoušel jsem se přijít na to, co může chtít můj 'vrah'. A pořád narážím na ty samé zatracené překážky - vypadá to, že jediná věc, kterou chce, je, abych zapomněl, kde je vlastně ta moje zatracená smrtelnost. Nepředložil mi žádné požadavky na 'výkupné' a ani nepoužívá smrtelnost k mému ovládnutí, tedy alespoň to tak nevypadá. Možná mou smrtelnost nemá... nebo ji nechce použít? Příliš mnoho otázek a příliš málo odpovědí.~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"Hypotéza: Výkupné - Dotaz: Byl obdržen požadavek na výkupné?"~ */
  IF ~~ THEN REPLY #55675 /* ~"Máš pravdu, nic takového. A ať už je ten hlídač, co má mou smrtelnost kdokoli, nepoužívá ji, aby mě kontroloval... alespoň mi to tak nepřipadá. Takže...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Pokoušel jsem se přijít na to, co může chtít můj 'vrah'. A pořád narážím na ty samé zatracené překážky - vypadá to, že jediná věc, kterou chce, je, abych zapomněl, kde je vlastně ta moje zatracená smrtelnost. Nepředložil mi žádné požadavky na 'výkupné' a ani nepoužívá smrtelnost k mému ovládnutí, tedy alespoň to tak nevypadá. Možná mou smrtelnost nemá... nebo ji nechce použít? Příliš mnoho otázek a příliš málo odpovědí.~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~Nordom ztichl. Ani nemrkl.~ */
  IF ~~ THEN REPLY #55685 /* ~"Takže... má smrtelnost je zamčená v té zatracené Pevnosti a čím víc lidí zapomene, kde to je, tím menší šance je, že ji kdy získám. Proto ať je ten hlídač kdokoli - pokud je to vůbec ta *samá* osoba jako vrah - tak nechce, abych získal svou smrtelnost... Ale ten hlídač buďto nemůže nebo nechce použít mou smrtelnost, aby mě ovládal. Proč?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"Potvrzuji. Dotaz: Dodatečné Informace?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"No, myslím si, že tam někde je někdo, kdo se mě snaží zavraždit... tak moc, že jsem vybudoval past v hrobce, abych jich zkusil pár zabít. Podle rytin v hrobce po mně jde tak dlouho... no tak dlouho, jak jenom si mé inkarnace pamatují."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"Jedna další věc: Nebyl jsem vždy nesmrtelný. To mi udělala Ravel."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"Počet lidí, kteří mi mohou pomoci najít mou smrtelnost, nebo kteří vědí, kde je, se snižuje... jestli to takhle půjde dál, brzy nikdo nebude vědět, kde má smrtelnost je. Pilíř Lebek řekl, že byli jenom tři... a jeden z nich já, ale já zapomněl."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"Trias mi řekl, že v Pevnosti Lítosti je 'hlídač', který uvěznil mou smrtelnost."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"Nemám zatím žádné dodatečné informace, Nordome. Mám pro tebe ještě další otázky..."~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"Kašli na to, Nordome. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"Pilíř lebek: je známo že byl postaven z žijících lebek prolhaných smrtelníku, jejich lež skončila smrtí nevinných. Pilíř jako takový, funguje jako schránka vědomostí. Za sdílení vědomostí s kýmkoliv, požaduje Pilíř platbu minimálně v devadesáti sedmi procentech případů. Platby které Pilíř požaduje, ale smrtelníci považují za 'velmi vysoké.' Logické doporučení je, že když bude někdo chtít žádat Pilíř o informace, měla by být hodnota těchto informací minimálně také 'velmi vysoká.'"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"Kdysi jsem byl 'jeden.' Teď jsem 'jeden,' ale je to menší a hlasitější 'jeden.'"~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"Negativní."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"Nemluvím s nimi, poslouchám je. Podaly žádost, ve které vyžadují nějaký cíl, do kterého by mohli střílet."~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"Tam, kde dříve existovaly křídla se nyní nacházejí paže. Není mi známo, jak a proč jsem ztratil křídla."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"Termín 'upadnutí v nemilost - fall from grace- ve spojení se mnou, je něco, čeho jsem si všimla a zkatalogizovala. Všimla jsem si, že se to odráželo v mnoha jedincích, se kterými jsem jednala."~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"'Nejroztomilejší' je subjektivní termín. Dávám přednost popisu 'hrozivý krychlový válečník.'"~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"Nepřijímám od tebe rozkazy."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"Je to pro tebe nemožný úkol, jelikož nemáš vhodné ruce. A já nejsem očíslovaný, jako herní kostka."~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"Nepotřebují nabíjení. Vždy jsou připravené ke střelbě."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"Neklikají. Právě jsou zabrány do hluboké diskuse. Subjekt diskuse je tato cesta."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"Proč mě stále označuješ jako dveře?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"Já vím, kdo je tam. Jsi to ty. Proč bych se měl ptát, když už znám odpověď?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"Annah! Morte si chce hrát s tvými polštářky!"~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~Natáhnul  jsi svou moc a pomalu jsi vytvaroval duši do Nordomovy postavy, dokud jsi neucítil, jak sklouzává zpět do modronova těla. Nordomovo tělo se otřáslo a on vyskočil na nohy.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"Nordome, právě teď *doopravdy* potřebuju tvou pomoc... našel jsem svého vraha, je to má smrtelnost."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~NORDOME.~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"Očekávám rozkaz."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"Připrav se. Brzy dostaneš pro ty své kuše cíl..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"Připrav se. Brzy dostaneš pro ty své kuše cíl..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~Nordom zamrkal, kryty jeho očí rychle zaklinkaly. Oči se na tebe zaostřily. "Tvůj hlas překračuje standardní rozpoznané parametry."~ */
  IF ~~ THEN REPLY #68374 /* ~STAL JSEM SE ZNOVU... CELÝM. ZMĚNIL JSEM SE A UŽ TADY NEMOHU DÉLE ZŮSTAT. VRÁTÍM TĚ DO SIGILU, NORDOME, JESTLI CHCEŠ.~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"Dotaz: Kde leží tvé další místo určení? Nordom tě bude sledovat a chránit."~ */
  IF ~~ THEN REPLY #68376 /* ~SPÁCHAL JSEM MNOHO ZLOČINŮ. JDU TEĎ NA MÍSTO TRESTU. NEMŮŽEŠ JÍT SE MNOU.~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"Rozložený dotaz: Ty (nepožaduješ) nebo (nechceš) přítomnost Nordoma?"~ */
  IF ~~ THEN REPLY #68378 /* ~NEMŮŽEŠ MĚ NÁSLEDOVAT, NORDOME. NENÍ TO MÁ VOLBA. EXISTTUJÍ JINÉ SÍLY, KTERÉ TEĎ ŘÍDÍ MÉ ČINY. VŽDY TO DĚLALY, ALE TEĎ VĚDÍ, CO JSEM A UŽ KE MNĚ MÍŘÍ.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~Nordom chvíli vrčí a cvaká, pak začaly vydávat své podivné zvuky kuše v Nordomových pažích. "Nordom odevzdává výraz vděčnosti. Pomohl jsi najít Nordomovi jeho identitu."~ */
  IF ~~ THEN REPLY #68380 /* ~STEJNĚ JAKO TY JSI POMOHL NALÉZT MOU. DÁVÁM TI SVOBODU, NORDOME. ZKOUMEJ, UČ SE. MOŽNÁ SE ZNOVU SETKÁME, V JINÉ SFÉŘE, V ČASE DALEKO V BUDOUCNOSTI.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"Odpověď: Slyšeno a potvrzeno. Nordom nyní očekává uvedený den."~ */
  IF ~~ THEN REPLY #68382 /* ~DRŽ SE SVÉ LOGIKY, NORDOME. ZJISTÍŠ, ŽE LOGIKA JE LEPŠÍ ŠTÍT NEŽ VĚTŠINA VÁŠNÍ, KTERÉ VLÁDNOU SFÉRÁM.~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"Předmět už neodpovídá úplné logice."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~SBOHEM, NORDOME.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~SBOHEM, NORDOME.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~SBOHEM, NORDOME.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~SBOHEM, NORDOME.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~SBOHEM, NORDOME.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~SBOHEM, NORDOME.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"Očekávám rozkaz."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"Jen dál pumpuj šipky do těch věcí a dořešíme to potom..."~ */ EXIT
END
