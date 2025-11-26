// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHERYL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHERYL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64681 /* ~Vidíš pěknou mladou ženu v otrhaných šatech. Chodí sem a tam s ustaraným výrazem v obličeji. Ani si tě nevšimla.~ */
  IF ~~ THEN REPLY #64682 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #64683 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64684 /* ~Při tvém pozdravu si uvědomila tvou přítomnost, lekla se a pohlédla ti do tváře. Při pohledě na tvé jizvy se její starost ještě zvětšila... "Ach... Ahoj příteli. Mohu ti s něčím pomoct?" ~ */
  IF ~~ THEN REPLY #64685 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64686 /* ~"Vypadáš nervózně. Je všechno v pořádku?"~ */ GOTO 13
  IF ~~ THEN REPLY #64687 /* ~"Ne, vážně ne. Myslím, že půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.2 8.2 11.1 12.1 13.1 20.0 23.0 29.1 30.1 31.0
  SAY #64688 /* ~"Otázky... myslím, že ti mohu pomoct." Čeká na tvá slova.~ */
  IF ~~ THEN REPLY #64689 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #64690 /* ~"Co tu děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #64691 /* ~"Co bys mi mohla říct o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #64692 /* ~"Vypadáš nervózně. Je všechno v pořádku?"~ */ GOTO 13
  IF ~  Global("Mention_Catacombs","GLOBAL",1)
~ THEN REPLY #64693 /* ~"Vzpomenula jsi Katakomby truchlícího kamene. Co bys mi o nich mohla říct?"~ */ GOTO 29
  IF ~~ THEN REPLY #64694 /* ~"Zapomeň na to. Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64695 /* ~"Sheryl..." Vypadá roztržitě, když ti to říká. "Mé jméno je Sheryl."~ */
  IF ~~ THEN REPLY #64696 /* ~"Mám nějakou otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #64697 /* ~"Jasně. Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #64698 /* ~Před odpovědí zaváhala. "Nic vážně... Nic. Já jenom..." Sklonila hlavu, aby se ti nedívala do očí. Je jasné, že něco skrývá.~ */
  IF ~~ THEN REPLY #64699 /* ~"Hmm. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64700 /* ~"Dobře, já tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #64701 /* ~"Jsi tu nový?" Podivně na tebe pohlédla a pak dodala. "Samozřejmě, že jsi... promiň. Co by jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #64702 /* ~"Hledám člověka jménem Pharod. Nevíš náhodou, kde bych ho mohl najít?"~ */ GOTO 6
  IF ~~ THEN REPLY #64703 /* ~"Je tu něco co by si mi mohla říct tomhle místě?"~ */ GOTO 12
  IF ~~ THEN REPLY #64704 /* ~"Hmm. Nevadí, mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #64705 /* ~"Nevadí. Musím už jít. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #64706 /* ~"Pharod..." Když jsi vzpomenul Pharoda na chvíli znervózněla, ale pak to rychle skryla. "Znám ho... Jsi jeho přítel?"~ */
  IF ~~ THEN REPLY #64707 /* ~"Ano, kdysi jsme spolu dlouho cestovali."~ */ GOTO 7
  IF ~~ THEN REPLY #64708 /* ~"Ne, chci jen... s ním *mluvit*."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64709 /* ~Zamračila se a pak přikývla. "Jasně, můžeš najít svého *přítele* severně odtud. Teď již musím jít. Sbohem." Ignoruje jakékoliv další pokusy o rozmluvu.~ */
  IF ~~ THEN REPLY #64710 /* ~Jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64711 /* ~Upřeně na tebe na chvíli pohlédla a pak se zasmála. "Vím... Je na sever odtud. Poohlídni se po průchodu se dvěma hrdlořezi. Myslím, že ho tam najdeš."~ */
  IF ~~ THEN REPLY #64712 /* ~"Nezdá se mi, že by si se o Pharoda nějak strachovala."~ */ GOTO 9
  IF ~~ THEN REPLY #64713 /* ~"Je tu něco co by si mi mohla říct tomhle místě?"~ */ GOTO 12
  IF ~~ THEN REPLY #64714 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64715 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64716 /* ~"Ne, já ne." Na chvíli se odmlčela a pak si povzdechla. "Sám se tu zvolil za nějakého *barona* či co. Každý dělá, co řekne; každý mu platí poplatky. Když ne..." Sklonila hlavu.~ */
  IF ~~ THEN REPLY #64717 /* ~"Poplatky? Za co?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64718 /* ~Nervózně se na tebe zadívala, pak se naklonila a začala šeptat. "Jihovýchodně odtud jsou Katakomby truchlícího kamene. Pharod tam poslal své sběrače, aby okradli smrt a získali všechny poklady co mohly. Dostal pěkně velkou část něčeho, co bylo nalezeno..." Narovnala se a zmlkla."~ */
  IF ~~ THEN REPLY #64719 /* ~"Pokračuj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64720 /* ~Přikrčila se. "Pharod se stal bohatým, jeho sběrači se asi těžko dostali ven. Je to stále ten istý příběh. Nezáleží kde jsi. Bohatý jsou bohatší a chudý chudší."~ */
  IF ~~ THEN REPLY #64721 /* ~"Je tu něco jiného co by si mi mohla říct o tomhle místě?"~ */ GOTO 12
  IF ~~ THEN REPLY #64722 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64723 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 8.1 11.0
  SAY #64724 /* ~"Ve skutečnosti ne. Jenom se dívej kam šlapeš. Buď opatrný koho voláš přítelem. To je vše."~ */
  IF ~~ THEN REPLY #64725 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho mohl najít?"~ */ GOTO 6
  IF ~~ THEN REPLY #64726 /* ~"Vím. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64727 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.3
  SAY #64728 /* ~Nejprve vypadá neochotně, nechce s tebou mluvit a pak chce říct všechno rychle jednou větou. "Můj otec, Arkin... Ztratil se a já nevím co mám dělat. Jsem v koncích."~ */
  IF ~~ THEN REPLY #64729 /* ~"Řekni mi co se stalo, možná ti mohu pomoct."~ */ DO ~SetGlobal("Mention_Catacombs","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #64730 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64731 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 24.1 25.1
  SAY #64732 /* ~"Jihovýchodně odtud je místo zvané Katakomby truchlícího kamene. Mnoho sběračů, jako můj otec, šli tam a ..." Vypadá ustaraně. "No, kradli smrti její poklady. Na jedné z jejich výprav můj otec našel nějakou listinu nebo něco co mluvilo o kryptách, do kterých by se mohl dostat jen přes portál..." Odmlčela se.~ */
  IF ~~ THEN REPLY #64733 /* ~"Pokračuj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64734 /* ~"Můj otec si myslel, že tyhle krypty musí být pro speciální lidi... bohaté,šlechetné nebo... kdo ví. Proč by jinak byly přístupné jenom přes portály? V každém případě, krypty jsou tedy past pro vykradače..."~ */
  IF ~~ THEN REPLY #64735 /* ~"Past? Jak to myslíš?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64736 /* ~"Můžeš do nich vejít pouze přes portál, to znamená, že jediná cesta ven je taky přes portál. Kdyby někdo našel klíč na otevření vstupu do portálu, byl by chycen do pasti kdyby nenašel i klíč otvírající portál opačným směrem..." Na chvíli zmlkla aby to bylo efektnější.~ */
  IF ~~ THEN REPLY #64737 /* ~"Domníváš se tedy, že tvůj otec je chycen do jedné z těchhle krypt?"~ */ GOTO 17
  IF ~~ THEN REPLY #64738 /* ~"Našel tvůj otec klíče?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64739 /* ~Zmlkla a na čele se jí při rozmýšlení objevili vrásky. "Nejsem si jista, ale mohl by být. Byl velmi vzrušený při šanci co všechno mohou najít v kryptách. Hledal klíče od portálů."~ */
  IF ~~ THEN REPLY #64740 /* ~"Našel ty klíče?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #64741 /* ~"Možná našel. Říkal, že jde navštívit zdejší čarodějnici Ultheru. Chtěl po ní, aby mu *vyvěstila* jaké jsou vstupní a výstupní klíče pro jednotlivé portály..."~ */
  IF ~~ THEN REPLY #64742 /* ~"Je možné, aby to udělal?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64743 /* ~Povzdechla si. "Nevím. Není to vážně má věc. Obávám se, že tahle Ulthera jim zjistila vstupní klíč... a pak jim řekla zlý výstupní. Mohla si o něho vzít peníze a neobávat se, že se vrátí a bude žádat jejich vrácení. Mohla se postavit do ústraní, čekat než zemře a pak kryptu probádat sama."~ */
  IF ~~ THEN REPLY #64744 /* ~"Mluvila jsi o tom sní?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64745 /* ~Ustaraně na tebe pohlédla a pak sklopila zrak. "No... ano. Myslím, že při mém rozhovoru jsem nebyla příliš taktní, dost jsem se naštvala. Už se mnou mluvit nebude." S nadějí se jí rozzářili oči. "Nenašel by jsi ji a nepromluvil by jsi s ní, pro mě?"~ */
  IF ~~ THEN REPLY #64746 /* ~"Hmm. Popřemýšlím o tom. Ještě bych se tě na něco zeptal..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #64747 /* ~"Ne, nechci se do toho zaplést."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #64748 /* ~"Samozřejmě, že ti pomohu. Jenom mi řekni kde ji najdu."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Mladá žena jménem Sheryl se strachovala o svého otce. Obává se, že je chycen v kryptě, ke které lze projít jen portálem. Sheryl chce, abych si promluvil s čarodějnicí jménem Ulthera, která, jak věří, dala jejímu otci klíč k portálu. Souhlasil jsem, že jí pomůžu.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #64749 /* ~Zamračila se. "No. Samozřejmě, děkuji ti, že jsi mě poslouchal. Bylo to pěkné si s někým promluvit, když už nic jiného. Odpusť, ale musím jít." ~ */
  IF ~~ THEN REPLY #64750 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 25.2
  SAY #64751 /* ~Viditelně se uvolnila a zasmála se na tebe. "Hrozně ti děkuji, ani nevíš, co to pro mě znamená... Čarodějnice Ulthera se potlouká někde po městě. Pokud vím, nemá žádné stálé sídlo. Prosím tě, najdi ji a zeptej se jí na mého otce."~ */
  IF ~~ THEN REPLY #64752 /* ~"Dobře tedy, sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #64753 /* ~Vidíš Sheryl. Chodí sem a tam s ustaraným obličejem na tváři. Když jsi přišel zasmála se na tebe. "Znovu tě zdravím příteli. Co se děje?"~ */
  IF ~~ THEN REPLY #64754 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64755 /* ~"Nic, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 25 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #64756 /* ~Vidíš Sheryl. Chodí sem a tam s ustaraným obličejem na tváři. Když jsi přišel zasmála se na tebe. "Znovu tě zdravím příteli. Už sis to rozmyslel, pomůžeš mi?"~ */
  IF ~~ THEN REPLY #64757 /* ~"Ne, stále to zvažuji. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #64758 /* ~"Co jsi měla za problém? Myslím, že jsem zapomněl."~ */ GOTO 14
  IF ~~ THEN REPLY #64759 /* ~"Ano, rozmyslel jsem si to a rád ti pomohu."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Mladá žena jménem Sheryl se strachovala o svého otce. Obává se, že je chycen v kryptě, ke které lze projít jen portálem. Sheryl chce, abych si promluvil s čarodějnicí jménem Ulthera, která, jak věří, dala jejímu otci klíč k portálu. Souhlasil jsem, že jí pomůžu.~ */ GOTO 22
END

IF WEIGHT #2 /* Triggers after states #: 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #64760 /* ~Vidíš Sheryl. Chodí sem a tam s ustaraným obličejem na tváři. Když jsi přišel zasmála se na tebe. "Znovu tě zdravím příteli. Vím, že jsi už odmítl pomoct mi při hledání mého otce, ale prosím tě uvaž to ještě."~ */
  IF ~~ THEN REPLY #64761 /* ~"Ne, nechci se do toho zaplétat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #64762 /* ~"Co jsi měla za problém? Myslím, že jsem zapomněl."~ */ GOTO 14
  IF ~~ THEN REPLY #64763 /* ~"Ano, rozmyslel jsem si to a rád ti pomohu."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Mladá žena jménem Sheryl se strachovala o svého otce. Obává se, že je chycen v kryptě, ke které lze projít jen portálem. Sheryl chce, abych si promluvil s čarodějnicí jménem Ulthera, která, jak věří, dala jejímu otci klíč k portálu. Souhlasil jsem, že jí pomůžu.~ */ GOTO 22
END

IF WEIGHT #1 /* Triggers after states #: 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #64764 /* ~Vidíš Sheryl. Chodí sem a tam s ustaraným obličejem na tváři. Když jsi přišel zasmála se na tebe. "Znovu tě zdravím příteli. Máš něco ohledně mého otce?"~ */
  IF ~  !PartyHasItem("Arkring")
~ THEN REPLY #64765 /* ~"Ne, ale dělám na tom. Sbohem."~ */ EXIT
  IF ~  PartyHasItem("Arkring")
~ THEN REPLY #64766 /* ~"Tenhle prsten jsem našel v kryptě na těle, které se tam muselo dostat přes portál. Může být tvého otce..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",4)
DestroyItemObject("Arkring",Protagonist,TRUE)
~ JOURNAL #64786 /* ~Našel jsem prsten na těle, které muselo (když bylo ještě živé) projít portálem. Dal jsem ho Sheryl a ona řekla, že patřil jejímu otcovi.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #64767 /* ~Sheryl si vzala od tebe prsten, její oči se ve světle zaleskli, byly plné slz. Rychle si je otřela a pak se na tebe nuceně usmála. "Prsten mého otce... Děkuji ti příteli. Nemohla jsem žít ve věčné nejistotě, co se mohlo mému otci stát. Teď už ho mohu nechat odpočívat i v mé mysli. Za tvou laskavost ti nemohu dát nic jiného než svůj vděk."~ */
  IF ~~ THEN REPLY #64768 /* ~"Tvůj vděk je víc než dostateční Sheryl, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sheryl_Quest","GLOBAL",4)
~ THEN BEGIN 28 // from:
  SAY #64769 /* ~Vidíš Sheryl. Když jsi přišel, vzhlédl na tebe a usmála se. "Vítej příteli. Co mohu pro tebe udělat?~ */
  IF ~~ THEN REPLY #64770 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.4
  SAY #64771 /* ~"Katakomby... Jestli tam chceš jít, buď opatrný. Nikdy jsem tam nebyla, ale slyšela jsem, že je obývají mocné příšery."~ */
  IF ~~ THEN REPLY #64772 /* ~"Jaký druh mocných příšer?"~ */ GOTO 30
  IF ~~ THEN REPLY #64773 /* ~"Mám ještě otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64774 /* ~"Půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64775 /* ~"No, jsou tam nemrtví. Hlavně zombie a skeletoni. Je tam taky kopa lizardů. Zvrhlý Bojovníci co jsem slyšela. Oh a létající hlavy. Tohle všechno tě bude pozorovat a pravděpodobně nejen to."~ */
  IF ~~ THEN REPLY #64776 /* ~"Létající hlavy?"~ */ GOTO 31
  IF ~~ THEN REPLY #64777 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64778 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64780 /* ~Přikývla. "Vím, zní to trochu divně. A jak jsem řekla před tím, nikdy jsem tam nebyla, ale mluvila jsem se sběrači, kteří tam byli. Jeden z nich mluvil o Létacích hlavách."~ */
  IF ~~ THEN REPLY #64781 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64782 /* ~"Už musím jít. Sbohem."~ */ EXIT
END
