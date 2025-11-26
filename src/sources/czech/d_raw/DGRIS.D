// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~Je to tělo muže, který má ve tváři překvapený výraz. Těžko říct, jak zemřel: zda z mnoha hrozivých seků na trupu a hrdle, či kvůli ztrátě krve, kterou utrpěl poté, co mu jeho pravou paži někdo v rameni téměř oddělil od těla.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~Je to tělo muže, který má ve tváři překvapený výraz. Těžko říct, jak zemřel: zda z mnoha hrozivých seků na trupu a hrdle, či kvůli ztrátě krve, kterou utrpěl poté, co mu jeho pravou paži někdo v rameni téměř oddělil od těla.~ */
  IF ~~ THEN REPLY #20657 /* ~"To je špatné. Kdybych si s ním mohl promluvit, určitě by mi povyprávěl zajímavý příběh..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~Tělo se zkroutilo a Gris promluvil netečným, totálně flegmatickým hlasem. "Našels to? Sem tě poslal přesně, ne snad? Máš to a já si tady zatím ležim a vesele hniju. Ach jojo. Co pro tebe může starej dobrej zdechlej Gris udělat tentokrát?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"Kde že jsi nechal ten Quintův amulet?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"Kdeže je ta tvá skrýš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"Co se ti vlastně stalo?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"Co mi můžeš říct o katakombách?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"Řekni mi o sobě."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~Tělo se zkroutilo a Gris promluvil netečným, totálně flegmatickým hlasem. "Našels to? Sem tě poslal přesně, ne snad? Máš to a já si tady zatím ležim a vesele hniju. Ach jojo. Co pro tebe může starej dobrej zdechlej Gris udělat tentokrát?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"Kde že jsi nechal ten Quintův amulet?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"Kdeže je ta tvá skrýš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"Co se ti vlastně stalo?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"Co mi můžeš říct o katakombách?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"Řekni mi o sobě."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"Sem ti řek. Je to nalevo od Martina baráku - tý šílený čarodějnice - schovaný v hromadě bordelu. Prohrab se tam a najdeš to."~ */
  IF ~~ THEN REPLY #20677 /* ~"Mám pro tebe pár dalších otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"Díky, Grisi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"Sem to schoval blízko Oja - to je postižák, jasný - blízko jeho placu. Řek bych, že nikdo nedá dokupy prachy na mý voživení a jelikož ty seš poslední, s kým kecám, klidně si to nech. Je to na pravý straně od jeho baráku, když stojíš ksichtem ke dveřím."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"Dobrá. Mám pro tebe další otázku."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"Dobrá. Mám pro tebe další otázku."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"Sme s klukama akorát vyloupli tu kryptu - a bylo to drsnější, než vypáčení zámku na podělanym pásu cudnosti, to ti povídám. Páčili sme ty blbý dveře snad celou věčnost, než povolily. Vlezli sme dovnitř a začali se koukat, kde co popadnout, dyš najednou kámové začali řvát a ta... ta *věc* mě přetáhla a hodila mě sem do krypty. Rvu se s ní a slyšim, jak voni zdrhaj... jako moji kámové... co se jim stalo? Kde je Burt? Lowden? Zvládli to, nebo sou napsaní v knížce chcíplotin?"~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~Pravda: "Jsou mrtví."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~Lži: "Zvládli to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~Lži: "Nevím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~Lži: "Jsou mrtví."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~Lži: "Zvládli to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~Pravda: "Nevím."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"Je to moje lovecký území. Spousta zralej krypt, na kerý nikdo neťápl..." Odmlčel se. "No, už hezkejch pár let bych řek. Já a kluci sme tady vylouskali dost krypt... akorát sme lezli do tý jedný, když se objevil problém."~ */
  IF ~~ THEN REPLY #20690 /* ~"Co se stalo?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"Co mi můžeš říct o kryptách?"~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"Odpověz mi na pár otázek, okej?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"Gris. Gris Sup. Říkali mi tak, páč sem dokázal vyčenichat krypty s nejlepčím úlovkem, mnohem rychlejc než jiní. Strávil sem věčinu života vobíráním zdechlin. Páč se ptáš, vole?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"Quint tě hledá, Grisi. Říkal, že prý máš něco jeho."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"Ty jsi Gris, eh? Řeknu ostatním vesničanům, že jsi mrtvý."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"Ty jsi Gris, eh? Řeknu ostatním vesničanům, že jsi mrtvý."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"Nemám důvod."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~Mrtvola vydala prudký vzdech. "Co chceš vědět, troubo?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"Kde jsi říkal, že je Quintův náhrdelník"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"Kde že to byl ten tvůj úkryt?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"Co že se ti to vlastně přihodilo?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"Grisi, potřebuji, abys mi řekl, kde je Quintův náhrdelník. Říkal mi, že bys to mohl vědět."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"Co mi můžeš říct o katakombách?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"Pověz mi něco o sobě."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"Pověz mi něco o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"Pověz mi něco o sobě."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"Quintův náhrdelník?"  zasmála se mrtvola. "Jestli tě poslal ten nadívanej syflovitej zkurvysyn právě sem dolů, tak jsi na špatný adrese, holenku. Ta věcička je zpátky v Pohřbený vesnici."~ */
  IF ~~ THEN REPLY #20718 /* ~"Ale kde to je?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"Rozumím. Půjdu se podívat. Zatím."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"Gris. Gris Sup. Tak mi říkali kvůli mojí schopnosti vyslídit krypty a uškubnout si ten nejlepší kousek kořisti ještě dřív, než o ní někdo vůbec věděl. Dost času jsem strávil obíráním mrtvých těl."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"Jasně, zbavili se mě a jednoduše mě tu nechali."~ */
  IF ~~ THEN REPLY #20728 /* ~"Ještě jsem měl nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"Jasně, zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"Mizerný darebáci! Prodali mě tý děvce Štěstěně, to teda jo, a nechali mě tý  *věci* zatímco sami zdrhli do bezpečí..."~ */
  IF ~~ THEN REPLY #20731 /* ~"Ještě jsem měl nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"Jasně, zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"Jó jó, jasně, a doufám, že oni ne. Vodporný hajzlové."~ */
  IF ~~ THEN REPLY #20734 /* ~"Ještě jsem měl nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"Jasně, zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"Na to už ses mě jednou ptal, troubo. Gris, Sup, krypty, katakomby, být Sběračem... co ještě jsi potřeboval vědět?"~ */
  IF ~~ THEN REPLY #20737 /* ~"Jen pár odpovědí..."~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"Nic. Zatim."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"Jeden je nalevo od vchodu s partou těch ghúlích hlav. Nechodil bych tam bez zásobičky pochodní a bez kuše. Napravo od vchodu je zas dole krypta z pěkných dlaždic.. to je ta, co jsem prozkoumával před tou nečekanou příhodou... Ta krypta z pěkných cihel podle mě skrývá nějaké tajemství. Také je tam někde skrytá komnata, ale vůbec netuším, kde."~ */
  IF ~~ THEN REPLY #20740 /* ~"Kde to je?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"Chci se zeptat ještě na něco jiného..."~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"Zatím, Grisi."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"Dolů skrz Přemožené národy a pak dál nějak.. opravdu už si přesně nevzpomínám."~ */
  IF ~~ THEN REPLY #20744 /* ~"Dobrá. Pak bych měl ještě nějaké otázky"~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"Díky, Grisi. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"Heh. Troubo, kdybych nebyl mrtvej, můžeš se vsadit, že bys to ze mě nedostal. Ale..." filosoficky se odmlčí, "protože jsem teď trošku mrtvější než bývá mezi lidmi obyčejem, řeknu ti to. Je to zahrabaný v odpadu v levý části domu pitvačky Marty. Doufám, že se neštítíš hrabat v tom bordelu."~ */
  IF ~~ THEN REPLY #20747 /* ~"Najdu to. Ještě se chci na něco zeptat."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris Sup mi řekl, kde najdu Quintův amulet - je to v hromadě odpadků nalevo od Martyina domu v Pohřbené vesnici.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"Díky Grisi, zatím."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris Sup mi řekl, kde najdu Quintův amulet - je to v hromadě odpadků nalevo od Martyina domu v Pohřbené vesnici.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"Asi jsem úplně blbej nebožtík. Vyřiď jim mé nejhorší pozdravy. Ti mizerové se už asi prohrabují v mojí skrýši a obírají moji mrtvolu."~ */
  IF ~~ THEN REPLY #20750 /* ~"Ve tvé skrýši?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"Asi. Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"Asi. Zatim."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"A jé... Něco jsem ukryl poblíž mýho baráku... tu trošku, o který ten mizera Pharod nic neví. Je to napravo od toho Ojova domu, jestli si dobře vzpomínám."~ */
  IF ~~ THEN REPLY #20754 /* ~"Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"Zatim."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"Jo, dobrá, to je pro tebe asi divný, co?"~ */
  IF ~~ THEN REPLY #20757 /* ~"Jo, ehm... ještě mi na něco odpověz..."~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"Ehm... jo. Zatim."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~Toto je mrtvola muže s překvapeným výrazem ve tváři, s nosem připomínajícím zobák. Těžko říct, jak zemřel: jestli to bylo na následky strašlivých sečných ran táhnoucích se přes břicho a krk, anebo na ztrátu velkého kusu paže, která byla téměř oddělena u ramene. Když ti mrtvola odpovídá, její hlas se třese. "Ale ne... ne... bestie, musím... utéct! Proč se cítím tak malátný... jsem snad opilý? Necítím ruce... nohy? Naposledy si vzpomínám, jak mě sem šoupli ti chlapíci rozpáraní nějakou bodlinatou věcí..."~ */
  IF ~~ THEN REPLY #20760 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"O čem to mluvíš?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"Eh? Kdo u všech pekel jsi? Ukaž se... u chlupatý prdele samotnýho Pana, jsem snad mrtvej nebo co?"~ */
  IF ~~ THEN REPLY #20763 /* ~"Obávám se, že jo. Můžeš mi na něco odpovědět?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"Dobrá..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"Vždycky jsem věděl, že to takhle dopadne... řekni mi kámo... jsem pořád ještě v katakombách?"~ */
  IF ~~ THEN REPLY #20766 /* ~"Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~Lež: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~Hlas mrtvoly zní smutně. "Tak to sedí. Pro dobrotu na žebrotu."~ */
  IF ~~ THEN REPLY #20769 /* ~"Tak. Chtěl jsem se ještě zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"Zapomeň na to. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~Mrtvola se zdá být překvapena. "Někdo mě vytáhl ven? To bych od nich nečekal... pravděpodobně kvůli mým penězům..."~ */
  IF ~~ THEN REPLY #20772 /* ~"Tvým penězům?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"Tak. Chtěl jsem se ještě na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"Zapomeň na to. Zatím."~ */ EXIT
END
