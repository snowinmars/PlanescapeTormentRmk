// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERIMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERIMAN~

IF ~  NumTimesTalkedTo(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49920 /* ~Tento muž vypadá jako zahořklý popudlivý tatík. Jeho ústa jsou zkřivena zamračením, které se stalo ještě více strohým, když si všiml, že jdeš jeho směrem. "Možná se jmenuji Merriman, ale veselý teda nejsem! Nechej mě, mladíku! Nemám čas na takové jako ty!" Z námahy od tak hlasitého odhánění dostal záchvat kašle.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49921 /* ~"Počkej... Dolora po mně chtěla, abych s tebou promluvil."~ */ GOTO 2
  IF ~~ THEN REPLY #49922 /* ~"Dobře... sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #49923 /* ~Merriman na tebe vrhl kyselý a zničující pohled. "Jdi pryč," zasyčel.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49924 /* ~"Počkej... Dolora po mně chtěla, abych s tebou promluvil."~ */ GOTO 2
  IF ~~ THEN REPLY #49925 /* ~"Dobře... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49926 /* ~Merriman si tě podezřívavě prohlédl. "Ták? A *o čem,* he? Hmm? No?"~ */
  IF ~~ THEN REPLY #49927 /* ~"Říká, že jsi její první láska, a že nikdy nebude moci milovat jiného, dokud budeš mít klíče k jejímu srdci."~ */ GOTO 3
  IF ~~ THEN REPLY #49928 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49929 /* ~"To ti řekla, he? Jsem překvapen. Možná, že zanechání jí pod silným vlivem Madam Grace s ní udělalo to, co já jsem nesvedl... začalo se rozvíjet její *cítění*. V každém případě..." Poplácal se přes kapsu na jeho tunice. "...ty klíče ti jenom tak *nedám*." ~ */
  IF ~~ THEN REPLY #49930 /* ~"Počkej - 'klíče k jejímu srdci' je myšleno doslova?"~ */ GOTO 5
  IF ~~ THEN REPLY #49931 /* ~"Co za ně tedy chceš?"~ */ GOTO 7
  IF ~~ THEN REPLY #49932 /* ~"Tak si je tedy od tebe prostě *vezmu*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49933 /* ~"Promluvíme si o nich později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 6.1 10.1
  SAY #49934 /* ~"Jediným způsobem, jak mi ty klíče můžeš *vzít*, je jejich vypáčení z mých studených mrtvých prstů! A nebyl bych si tak jistý tím, že je rozumné začínat roztržku přímo v Městské hale..."~ */
  IF ~~ THEN REPLY #49935 /* ~Napadni jej.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #49936 /* ~"Připouštím. Tak - to jsou doslova 'klíče k jejímu srdci'?"~ */ GOTO 5
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49937 /* ~"Dobrá. Co bys za ně chtěl, Merrimane?"~ */ GOTO 7
  IF ~~ THEN REPLY #49938 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.1
  SAY #49939 /* ~Přikývl. "Ano. Dolora je Výtvor; ty jsi to nevěděl? Je to stvoření magie a hodinového mechanismu a jedno z mých nejlepších děl." Merriman vzdychl. "Ale studená, bez emocí nebo charakteru. Přivedl jsem ji do Nevěstince a 'nastavil' ji tak, aby nemohla odejít, v naději, že stálý kontakt s mnoha jinými by mohl zapříčinit rozvoj její vlastní osobnosti. Ty klíče jsou nástroji k jejímu 'nastavování'; předpokládám, že je chce, protože cítí, jak ji teď omezují v jejím osobním vývinu." ~ */
  IF ~~ THEN REPLY #49940 /* ~"Tak proč jí je prostě nevrátíš?"~ */ GOTO 6
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49941 /* ~"Co chceš za ty klíče?"~ */ GOTO 7
  IF ~~ THEN REPLY #49942 /* ~"Tak si je tedy od tebe prostě *vezmu*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49943 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49944 /* ~Merriman se zamračil. "Protože jsem se stal krutým a zahořklým starcem, co vidí, že by z tebe mohl něco dostat."~ */
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49945 /* ~"Tak pokračuj... co chceš?"~ */ GOTO 7
  IF ~~ THEN REPLY #49946 /* ~"Ne, pokud si ty klíče prostě vezmu, Merrimane..."~ */ GOTO 4
  IF ~~ THEN REPLY #49947 /* ~"To probereme později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.2 5.1 6.0
  SAY #49948 /* ~"Chci... chci zapomenout. Teď už žiju téměř sto padesát let a viděl jsem v této velké hale všechny senzorické kameny, které mě zajímaly. Už mi ze života mnoho nezbývá a jsem příliš slabý na to, abych šel ven hledat úplně nové zážitky... takže musím najít způsob, jak je všechny zapomenout. Takový způsob, abych mohl v mých posledních dnech začít znovu..."~ */
  IF ~~ THEN REPLY #49949 /* ~"Takže... to tě mám prostě praštit zezadu do hlavy nebo co?"~ */ JOURNAL #49952 /* ~Merriman po mně chtěl, abych mu pomohl zbavit se vzpomínek, než mi dá klíče od Dolořina srdce. Předpokládám, že se budu muset poohlédnout po něčem, co člověku způsobuje amnézii, a pak mu to přinést... Merriman sám navrhl jako jednu možnost vodu z řeky Styx.~ */ GOTO 8
  IF ~~ THEN REPLY #49950 /* ~"Jak můžu pomoct?"~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ JOURNAL #49952 /* ~Merriman po mně chtěl, abych mu pomohl zbavit se vzpomínek, než mi dá klíče od Dolořina srdce. Předpokládám, že se budu muset poohlédnout po něčem, co člověku způsobuje amnézii, a pak mu to přinést... Merriman sám navrhl jako jednu možnost vodu z řeky Styx.~ */ GOTO 9
  IF ~~ THEN REPLY #49951 /* ~"Popřemýšlím o tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49953 /* ~"Ne, ty krvelačný hromotluku!"~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #49954 /* ~"Potřebuji něco... nějakou věc, nějakou směs... co mi dovolí zapomenout. Jako doušek z řeky Styx; něco takového."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49955 /* ~"Tady, vezmi si tento korbel... má v sobě Temného ptáka Ocanthu, kousek ledu z řeky Styx. To by mělo setřít tvé vzpomínky..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49956 /* ~"Dobře. Vrátím se, jestli něco najdu... sbohem."~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ EXIT
END

IF ~  Global("Merriman","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #49957 /* ~Merriman na tebe zašilhal. "Nuže? Máš něco, co vyčistí moji mysl od těch zpropadených vzpomínek? Opravdu doufám, že ses nevrátil bez... tak nikdy klíče k Dolořinu srdci nezískáš."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49958 /* ~"Tady, vezmi si tento korbel... má v sobě Temného ptáka Ocanthu, kousek ledu z řeky Styx. To by mělo setřít tvé vzpomínky..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49959 /* ~"Možná si ty klíče prostě vezmu, Merrimane..."~ */ GOTO 4
  IF ~~ THEN REPLY #49960 /* ~"Ne, nemám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #49961 /* ~Merriman si vzal korbel a vyndal z kapsy kus papíru. Obrátil korbel dnem vzhůru a vložil kousek ledu do úst... led okamžitě roztál a nechal jej v jakémsi vyplašeném výrazu...~ */
  IF ~  HasItem("DlraKey",Myself)
~ THEN REPLY #49962 /* ~"Merrimane...?"~ */ DO ~GiveItem("DlraKey",Protagonist)
AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Přinesl jsem Merrimanovi kus ledu z řeky Styx -- Temného ptáka Ocanthu. Poté, co ho snědl, ztratil všechny vzpomínky. Má co chtěl, ale nemůžu říct, že bych mu záviděl.~ */ GOTO 12
  IF ~  !HasItem("DlraKey",Myself)
~ THEN REPLY #49963 /* ~"Merrimane...?"~ */ DO ~AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Přinesl jsem Merrimanovi kus ledu z řeky Styx -- Temného ptáka Ocanthu. Poté, co ho snědl, ztratil všechny vzpomínky. Má co chtěl, ale nemůžu říct, že bych mu záviděl.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49964 /* ~Merriman se zmateně podíval na tebe a pak na papír ve svých rukou. Nahlas čte: "Gratuluji, Merrimane: začal jsi nanovo. Poděkuj člověku, co stojí před tebou a dej mu klíč, co máš v kapse. Pro více informací si promluv se Splinterem, mužem u dveří do této budovy." Znovu se na tebe podíval. "No... zdá se, že ti dlužím poděkování, dobrý pane. Tady... vezmi si tento klíč. Já raději najdu toho chlápka 'Splintera' a zjistím, co se děje!"~ */
  IF ~~ THEN REPLY #49965 /* ~"Díky, Merrimane. Hodně štěstí."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #49966 /* ~Merriman se zmateně podíval na tebe a pak na papír v jeho rukou. Nahlas čte: "Gratuluji, Merrimane: začal jsi nanovo. Poděkuj člověku, co stojí před tebou a dej mu klíč, co máš v kapse. Pro více informací si promluv se Splinterem, mužem u dveří do této budovy." Znovu se na tebe podíval. "No... zdá se, že ti dlužím poděkování, dobrý pane. Hmm... ale nevypadá to, že bych měl u sebe nějaký klíč. Asi mi ho někdo vzal. Je mi líto! Já raději najdu toho chlápka 'Splintera' a zjistím, co se děje!"~ */
  IF ~~ THEN REPLY #49967 /* ~"Hodně štěstí, Merrimane. Sbohem."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END
