// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGLYVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGLYVE~

IF ~  Global("Water","GLOBAL",3)
~ THEN BEGIN 0 // from: 3.0
  SAY #24037 /* ~Kamenná tvář je potichu. Z koutku oka jí vytéká pramínek čisté vody a výraz vytesaný do její tváře se uvolňuje.~ */
  IF ~~ THEN REPLY #24038 /* ~"Glyve, potřebuju od tebe více informací..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24039 /* ~"Skvěle."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24040 /* ~"Skvěle."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #24041 /* ~Tvář zůstává apatická a tichá. ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24042 /* ~"Skvěle."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24043 /* ~"Skvěle."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #24044 /* ~Jako by se Glyveovy nehybné oči na tebe upínaly, když se k němu přiblížíš. "Už... ses rozhodl, jestli ... chceš... tu odpověď hned teď?"~ */
  IF ~~ THEN REPLY #24045 /* ~"Ano, dej mi ji."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24046 /* ~"Ne, ještě ne. Odpověz mi nejdřív na několik dalších otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24047 /* ~


"Ne, ještě ne. Sbohem, Glyve."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 15.0
  SAY #24048 /* ~"Vyhledej... ženu, které říkají... 'Nemelle'. Bydlí v...  Úřednické čtvrti... v Horním Sigilu. Nevím... kde přesně... Hodně štěstí ... v *tvém* hledání... nesmrtelný." Hlas jako by se zvolna ztrácel, když k tobě promlouvá.~ */
  IF ~~ THEN REPLY #24049 /* ~"Díky, Glyve. Měl bych ještě několik otázek."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve mi řekl, ať v Úřednické Čtvrti vyhledám ženu jménem Nemelle, která mi řekne příkazové slovo, odemykající plnou moc Láhve Nekonečné Vody.~ */ GOTO 0
  IF ~~ THEN REPLY #24050 /* ~"Díky, Glyve. Sbohem."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve mi řekl, ať v Úřednické Čtvrti vyhledám ženu jménem Nemelle, která mi řekne příkazové slovo, odemykající plnou moc Láhve Nekonečné Vody.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1 8.1 9.1 10.2 11.2 12.2 13.2 14.1 16.0 18.0 18.1 19.0 22.1 23.0
  SAY #24051 /* ~"Co... jsi chtěl... vědět?"~ */
  IF ~~ THEN REPLY #24052 /* ~"Povídej mi o sobě. Co předcházelo tomu, že ses dostal do této situace?"~ */ GOTO 5
  IF ~~ THEN REPLY #24053 /* ~"Co mi můžeš říct o katakombách kolem nás?"~ */ GOTO 13
  IF ~  Global("Water","GLOBAL",2)
~ THEN REPLY #24054 /* ~"Budu o tom přemýšlet, odpověz na tu otázku, jak jsi slíbil."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #24055 /* ~"Co jsi to chtěl, abych pro tebe udělal?"~ */ GOTO 9
  IF ~  Global("Water","GLOBAL",1)
PartyHasItem("Decant")
~ THEN REPLY #24056 /* ~"Mám pro tebe láhev."~ */ GOTO 14
  IF ~~ THEN REPLY #24057 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #24058 /* ~"Byl jsem kdysi... uznávaný vůdce... mé komunity... v Dolní čtvrti. Malicherný pán... hodlal zvětšit svou moc... na úkor svých lidí... svých přátel... svých příbuzných... a přátelé a já jsme... vystupovali proti němu."~ */
  IF ~~ THEN REPLY #24059 /* ~"A co bylo dál?"~ */ GOTO 6
  IF ~~ THEN REPLY #24060 /* ~"Víš něco? Nevadí. Odpověz mi na několik dalších otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24061 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #24062 /* ~"A potom... nás dopadl... jednoho po druhém... a spoutal naše duše a smysly... do těchto řvoucích obličejů... do této díry... kam se všichni špinavci v Sigilu...  nakonec dostanou. A potom... nechal protékat špinavou vodu ... skrz naše ústa... a nosy... a oči."~ */
  IF ~  Global("Water","GLOBAL",0)
~ THEN REPLY #24063 /* ~"Je něco, co můžu udělat, abych ti pomohl?"~ */ DO ~SetGlobal("Water","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #24064 /* ~"Aha. Měl bych ještě několik otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #24065 /* ~"Hm. Zajímavé. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #24066 /* ~"Strašné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #24067 /* ~"Jsem odsouzený... zůstat zde tak dlouho, dokud... se mé rty nesmočí v čerstvé vodě... Mezi... Přemoženými národy ... je kouzelná láhev s vodou. Přines mi ji... a dej mi z ní ochutnat... a řeknu ti... o někom... kdo ti může pomoci odhalit... všechen její potenciál... a nikdy už nebudeš... trpět nedostatkem vody."~ */
  IF ~~ THEN REPLY #24068 /* ~"Kde je ta láhev?"~ */ JOURNAL #66299 /* ~Kamenná tvář v Katakombách Truchlícího kamene mi řekla o svém osudu. Její smysly byly připoutány do kamenné hlavy, kterou protéká všechna špína Sigilu. Tohle prokletí prý může být prolomeno douškem čisté vody. Sběratel a umělec jménem Chad by měl vědět, kde bych mohl získat lahvičku těchto vlastností.~ */ GOTO 8
  IF ~~ THEN REPLY #24069 /* ~"Zajímavé. Odpověz mi na několik dalších otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24070 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #24071 /* ~"Ne... vím. Byl tu ... nějaký umělec jménem... Chad, který často navštěvoval... tyto tunely. On věděl. Najdi ho... a možná ti řekne."~ */
  IF ~~ THEN REPLY #24072 /* ~"A jak se tam dostanu?"~ */ GOTO 10
  IF ~~ THEN REPLY #24073 /* ~"Dobrá. Odpověz mi na několik dalších otázek."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24074 /* ~"Najdu ho. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24075 /* ~"Najdu ho. Sbohem."~ */ EXTERN ~DMORTE~ 229
  IF ~~ THEN REPLY #24076 /* ~"Uvidím, co můžu dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #24077 /* ~"Vodu... čerstvou vodu... z kouzelné láhve... od Přemožených národů..."~ */
  IF ~~ THEN REPLY #24078 /* ~"A jak se tam dostanu?"~ */ GOTO 10
  IF ~~ THEN REPLY #24079 /* ~"Přinesu ji. Odpověz mi na několik dalších otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24080 /* ~"Přinesu ji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #24081 /* ~"Skrz Mrtvé národy... kde se prochází mrtví ... a vládnou... nebo skrz Místo neustálého rozjímání... kde má Mnohojeden rozhodující slovo... Obojí má svá... rizika."~ */
  IF ~~ THEN REPLY #24082 /* ~"Mrtvé národy?"~ */ GOTO 11
  IF ~~ THEN REPLY #24083 /* ~"Mnohojeden?"~ */ GOTO 12
  IF ~~ THEN REPLY #24084 /* ~"Přinesu ji. Měl bych k tobě ještě několik otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #24085 /* ~"Přinesu ji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #24086 /* ~"Mrtví... docílili života... svým vlastním způsobem. Ovládají... část těchto... katakomb. Bojují s...  Mnohojedním... o srdce těchto... tunelů."~ */
  IF ~~ THEN REPLY #24087 /* ~"Řekni mi víc o těch katakombách."~ */ GOTO 13
  IF ~~ THEN REPLY #24088 /* ~"Řekni mi něco o Mnohojednom."
~ */ GOTO 12
  IF ~~ THEN REPLY #24089 /* ~"Dej mi několik dalších odpovědí..."~ */ GOTO 4
  IF ~~ THEN REPLY #24090 /* ~"Díky, Glyve. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 13.1
  SAY #24091 /* ~"Už jsi slyšel... o kraniových krysách? Když se shromáždí... stanou se silnější... sdílená mysl. Oni a jejich služebníci... krysodlaci... se snaží o kontrolu... nad těmito podzemními tunely. Byly s ... Mrtvými národy."~ */
  IF ~~ THEN REPLY #24101 /* ~"Řekni mi něco o Mrtvých národech."~ */ GOTO 11
  IF ~~ THEN REPLY #24102 /* ~"Řekni mi víc o těch katakombách."~ */ GOTO 13
  IF ~~ THEN REPLY #24103 /* ~"Měl bych několik dalších otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #24105 /* ~"Díky, Glyve. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 11.0 12.1
  SAY #24108 /* ~"Katakomby byly vybudovány... jednou ... aby se tam ukládali mrtví z města... kteří si nepřáli... něžnou péči Spalovačů. Ty se potom stávají ... odpadem základny města... kde žijí monstra sotva vidící... kde lidská bytost slídí po kořisti jako... jako mrchožrout mezi mrchožrouty. Mnohojeden hlídá tyto tunely... a obrací mnohé proti ... svému druhu. Mrtvé národy... slídí, stejně jako... se chrání proti... zničení ... lidskými bytostmi ... které přijdou mezi ně."~ */
  IF ~~ THEN REPLY #24111 /* ~"Řekni mi o Mrtvých národech."~ */ GOTO 11
  IF ~~ THEN REPLY #24113 /* ~"Řekni mi o Mnohojednom."~ */ GOTO 12
  IF ~~ THEN REPLY #24115 /* ~"Měl bych několik dalších otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24116 /* ~"Díky, Glyve. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4 17.1
  SAY #24118 /* ~Do Glyvova mrtvolného hlasu se vloudil tón horlivosti: "Máš to? Nalij trochu vody z ... té láhve přes ... mé rty... a já ti řeknu... co jsem slíbil ... že ti řeknu."~ */
  IF ~~ THEN REPLY #24120 /* ~"Tady máš."~ */ DO ~SetGlobal("Water","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 15
  IF ~~ THEN REPLY #24122 /* ~"Počkej. Měl bych pro tebe několik dalších otázek."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #24123 /* ~Přes kamenné rty protéká čistá voda z láhve, ředí špinavý pramen, který se řine z děr. Jak pozoruješ, odpadová voda se pomalu zcela roztéká, špinavá skvrna mizí díky čisté čerstvé vodě. Glyve zasténá rozkoší. Za moment se ptá: "Přeješ si svou odpověď hned nebo později?~ */
  IF ~~ THEN REPLY #24125 /* ~"Teď mi ji dej."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24127 /* ~"Později. Měl bych pro tebe několik otázek."~ */ GOTO 16
  IF ~~ THEN REPLY #24128 /* ~"Později. Sbohem, Glyve."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #24130 /* ~"Budu... přemýšlet... dokud se nevrátíš... svou odpověď..."~ */
  IF ~~ THEN REPLY #24132 /* ~"Dobrá. Teď mi odpověz na několik otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24137 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #24138 /* ~"Našel jsi už... tu láhev, o které... jsem mluvil?"~ */
  IF ~~ THEN REPLY #24140 /* ~"Ještě ne."~ */ GOTO 18
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #24142 /* ~"Ano."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24144 /* ~"Moc tě prosím... najdi to... a ulehči mi mé utrpení."~ */
  IF ~~ THEN REPLY #24145 /* ~"Udělám co budu moci. Prozatím, měl bych několik otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #24146 /* ~"Uvidíme. Odpověz mi na několik otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #24147 /* ~"Pokusím se. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #24148 /* ~"Snad. Sbohem."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",1)
~ THEN BEGIN 19 // from:
  SAY #24149 /* ~"Ty ses vrátil... pro to, co ti dlužím ... taková čest?"~ */
  IF ~~ THEN REPLY #24151 /* ~"Potřeboval bych odpovědi na několik otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #24153 /* ~"Dobrá otázka. Sbohem."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",0)
~ THEN BEGIN 20 // from:
  SAY #24155 /* ~Jakmile projdeš kolem jednoho z těch zkroucených kamenných obličejů na zdi, zavolá na tebe skřípavým hlasem, který zní jako posouvání balvanu. "Nesmrtelný... podívej se na mě. Já jsem... Glyve. Rád bych s tebou... prohodil pár slov."~ */
  IF ~~ THEN REPLY #24157 /* ~"Jak jsi věděl, že jsem nesmrtelný?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 21
  IF ~~ THEN REPLY #24158 /* ~"Co jsi chtěl říct?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
  IF ~~ THEN REPLY #24160 /* ~"To si nemyslím."~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24161 /* ~"Vidím... hořící cíl... na tvém krunýři. Vidím... mnoho věcí v padajícím... prachu těchto... tunelů. Máš nedostatek... něčeho podstatného... a to tě ochraňuje... od sladkého objetí smrti."~ */
  IF ~~ THEN REPLY #24162 /* ~"Cos mi chtěl říct?"~ */ GOTO 22
  IF ~~ THEN REPLY #24163 /* ~"To všechno je fajn a dobré, ale..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 21.0 21.1
  SAY #24165 /* ~"Poslouchej: Toto místo skýtá... pro tebe mnoho nebezpečí. Čeká na tebe past... na povrchu... a tvá cesta je ... dlouhá a větrná. Nakonec... najdeš... co jsi hledal... ale možná to nebudeš ... už chtít."~ */
  IF ~~ THEN REPLY #24167 /* ~"Jsi nějaký věštec nebo co?"~ */ GOTO 23
  IF ~~ THEN REPLY #24168 /* ~"Možná máš pro mě nějakou odpověď..."~ */ GOTO 4
  IF ~~ THEN REPLY #24169 /* ~"Aha. Snad se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #24170 /* ~"Věštec? Ne... dívám se kolem sebe. To je všechno."~ */
  IF ~~ THEN REPLY #24171 /* ~"V tomto případě, snad můžeš odpovědět na několik otázek, které bych..."~ */ GOTO 4
  IF ~~ THEN REPLY #24172 /* ~"To je všechno? Tedy na to zapomeň. Sbohem."~ */ EXIT
END
