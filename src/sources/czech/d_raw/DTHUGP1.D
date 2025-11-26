// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~Rozložitý bandita je opásaný hadry, zbarvenými rudě a černě. Vypadá, jako by byl tvořený jenom svaly. Když se blížíš, mračí se na tebe.~ */
  IF ~~ THEN REPLY #26004 /* ~"Zdravím.."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~Nechej banditu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"A jak helfneš ty, vole, ha?" Mužova tvář se zkroutila on si odfrkl. "Mám takovej fílink, že bys 'třeboval doktora, čéče."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"Ty jsi jeden z těch, kteří okradli mnicha v Úlu? Vzali jeho modlitební náhrdelník?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"Přestaň se tak šklebit, nebo to budeš ty, kdo bude potřebovat doktora. Vole.'"~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"Ha! Zapomeň, nemám čas na ňáky votázky a vodpovědi, vole." Plivl ti na nohu. "A teď vodpal, ty hnusnej magore!"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"Ty jsi jeden z těch, kteří okradli mnicha v Úlu? Vzali jeho modlitební náhrdelník?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"Připadá mi, že jediný, kdo by potřeboval odpálit jsi ty."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"Uvidíme, kam až dojdeš s těma vyhrůžkama, sráči. Eště jedna ti z držky vypadne a já ti pořídím další hubu, sný? Na krku kudlou, vole!"~ */
  IF ~~ THEN REPLY #26888 /* ~"Jestli si myslíš, že na mně máš... Zkus to."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"Ňákej magor s xichtem celým počmáraným? Co poudál, že by nás šecky klidně narval do knihy zdechlejch a pak nás nechal, bysme ho čórnuli vo všechno?" Muž se pomalu usmál. "Tak vo takovým kreténovi jsem nikdy neslyšel, natož abych ho viděl."~ */
  IF ~~ THEN REPLY #26891 /* ~"Možná bys mi měl ten náhrdelník dát, nebo vás do knihy mrtvých dám *JÁ*."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~Lži: "To *je* zajímavé. Protože zbytek jeho řádu vás teď hledá. Bratři  *Errit-Agge* mají docela přesný popis vás všech."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"Možná bychom se mohli domluvit. Ten náhrdelník nemá cenu pro nikoho mimo řád. Možná bych ho od vás mohl koupit?"~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~Muž se zamračil: "Ne, ňák sem si naň zvyknul... nepustim ho... jedině za pořádný prašule. Co takhle... hmmm patnáct měďáků?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"Dohodnuto."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"Co takhle deset?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~Bluffuj: "Ne, to nemá smysl. Nechám zbytek řádu, ať si vás najde. Myslím, že bratři *Erit-Agge* se s vámi už nějak domluví, ale mám pocit, že ta dohoda se vám moc líbit nebude."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"Na tohle nemám. Možná příště."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"Tak dobře, dohodnuto. Tady máš..."~ */
  IF ~~ THEN REPLY #26902 /* ~"Díky."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"Eh, no dobře. Stejně je to hnusárna. Tu máš."~ */
  IF ~~ THEN REPLY #26904 /* ~"Díky."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"Eh?" Mužův úšklebek zmizel. "Vo čem to točíš? Jaký bratři? He? Ten magor byl sám!"~ */
  IF ~~ THEN REPLY #26906 /* ~Lži: "Je členem náboženského řádu, ty pitomče. Ten 'náhrdelník', který jste mu ukradli, je jejich nejposvátnější předmět. Jestli ho nevrátíte, ZBYTEK jejich řádu si vás najde. A řekl bych, že se mezi nimi najde pár takových, kterým nebude vadit zabití několika mizerných zlodějů."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~Mužovy oči se rozšířily. "E... ee... my mu to jen hlídali." Sáhl do záhybu svého roucha a vytáhl náhrdelník, který ti opatrně podal. "Tady máš, dej mu to, oukej?"~ */
  IF ~~ THEN REPLY #26909 /* ~Lži: "Doufám, že to bude stačit, aby vás zbytek jeho řádu přestal hledat. Možná by malá finanční výpomoc jejich řádu všechno usnadnila. Všechno půjde hladčeji a nejspíš to bude stačit i na odvolání všech kleteb na vaši stranu."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~Promluvil jsem si s jedním banditou o Porphironově náhrdelníku a přesvědčil ho sérií... nevinných... lží, že jestli náhrdelník nevrátí, půjdou po něm 'agresivnější' bratři Porphironova řádu.~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"Vaše moudrost by pohnula horou. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"Kletby?!" Muž si položil ruku na srdce " Eh... no to bysem teda nechtěl..." Sáhl do svého měšce a podal ti několik měděných mincí. "Vem si to, čéče, a dej jim to, oukej? Řekni jim, že sme tim nic nemysleli."~ */
  IF ~~ THEN REPLY #26914 /* ~"Tvůj příspěvek bude oceněn. Sbohem."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~Mohutně stavěný bandita je obalený v hadrech barvených na červeno a černo a vypadá, jako by se skládal jenom ze svalů. Nepřátelsky na tebe zírá a když se přiblížíš, křikne na tebe: "Vodpal, vole. Už ti nemam co řict!"~ */
  IF ~~ THEN REPLY #26916 /* ~"Mám pocit, že jsi to ty, kdo potřebuje odpálit."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"Dobře. Sbohem."~ */ EXIT
END
