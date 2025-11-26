// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVANA~

IF ~  Global("Yvana","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3003 /* ~Před tebou stojí dobře oblečená starší žena. Má na sobě šaty broskvové barvy protkané zlatým vláknem. Tiše stojí, ruce má založené. Kývla tvým směrem. Až teď sis všiml, že nemá v očích zřítelnice - její oči jsou úplně bílé. "Zdravím tě, sire. Jsem Yvana, vítej v mé galérii. Porozhlédni se kolem, zůstaň zde tak dlouho, jak budeš chtít. Pokud budeš mít nějaké otázky ohledně vystavených exponátů, neváhej a zeptej se mě."~ */
  IF ~~ THEN REPLY #3004 /* ~"Mám nějaké otázky, Yvano..."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #42094 /* ~"Možná se tu porozhlédnu. Sbohem."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.1 4.1 5.1 6.1 7.0 10.0 12.0 13.0 15.0 16.0 17.1 18.1 19.1 20.0 21.8 22.10 23.2 24.1 25.2 26.1 27.2 28.1 29.1 31.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.2 42.1 43.1 44.0 45.1 46.0 47.0 48.1
  SAY #42095 /* ~"Jistě. Prosím, ptej se."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65156 /* ~"Už jsi se střetla něčím takovým, jako je psaní v tomhle dvanáctistěnu?"~ */ GOTO 47
  IF ~~ THEN REPLY #42096 /* ~"Chtěl bych se zeptat na jeden z těch kousků..."~ */ GOTO 21
  IF ~  !NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42097 /* ~"Ty jsi slepá Yvano?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42098 /* ~"Ty jsi slepá Yvano?"~ */ EXTERN ~DGRACE~ 141
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42099 /* ~"Víš co je tohle krabicovité stvoření zač?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 45
  IF ~  GlobalGT("Yves","GLOBAL",1)
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42100 /* ~"Připadáš mi povědomá... neznáš někoho jménem Yve?"~ */ GOTO 3
  IF ~  Global("Yvana","GLOBAL",3)
~ THEN REPLY #42101 /* ~"Mluvila jsi někdy později se svou dcerou?"~ */ GOTO 15
  IF ~~ THEN REPLY #42102 /* ~"Co je tohle za místo?"~ */ GOTO 16
  IF ~~ THEN REPLY #42103 /* ~"Co je tady zajímavého?"~ */ GOTO 2
  IF ~~ THEN REPLY #42104 /* ~"Kde bych tady mohl najít práci?"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42105 /* ~"Chci se zeptat na jedno určité místo..."~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42106 /* ~"Jenom potřebuju nasměrovat..."~ */ GOTO 2
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42107 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 17
  IF ~~ THEN REPLY #42108 /* ~"To nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.8 1.9 1.10 1.11
  SAY #42109 /* ~"Omlouvám se, ale moc často z galerie neodcházím, s tímhle ti bohužel nepomůžu. Zkus se zeptat někoho jiného."~ */
  IF ~~ THEN REPLY #42110 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42111 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5
  SAY #42112 /* ~"Je to má dcera." Na chviličku se v jejích mléčně bílých očích objevil záblesk žalu. "Dlouho jsme spolu nemluvily."~ */
  IF ~~ THEN REPLY #42113 /* ~"A proč to?"~ */ GOTO 4
  IF ~~ THEN REPLY #42114 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42115 /* ~"Přesně to jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #42116 /* ~"Už jsme si neměly co říct. Odešla za honbou po příbězích... z důvodu, který neznám."~ */
  IF ~  Global("Yves","GLOBAL",2)
~ THEN REPLY #42117 /* ~"Vyprávěla mi příběh, který je možná odpovědí na tu otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #42118 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42119 /* ~"Přesně to jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42120 /* ~Yvana pozvedla obočí. "Vážně? Prosím, viď že mi ho povíš? Byla bych ti moc vděčná..."~ */
  IF ~~ THEN REPLY #42121 /* ~Vyprávěj jí příběh a také ji pověz o nekonečné výpravě za příběhem, který skrývá pravdu, jež hledá.~ */ DO ~SetGlobal("Yvana","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #42122 /* ~"Snad jindy. Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42123 /* ~"Někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42124 /* ~Yvana pomalu přikývla. "Já... to jsem opravdu netušila. Hned se po ní podívám. Děkuji ti dobrý muži, za to žes mi přinesl zprávy o mé jediné dceři." Když mluvila, barva jejích očí pomalu přecházela z bledé v tmavější, dokud neměly briliantově zelený nádech.~ */
  IF ~~ THEN REPLY #42125 /* ~"Tvoje oči... teď už vidíš Yvano?"~ */ GOTO 7
  IF ~~ THEN REPLY #42126 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42127 /* ~"Přesně to jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42128 /* ~S úsměvem přikývla.~ */
  IF ~~ THEN REPLY #42129 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42130 /* ~"Přesně to jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 9.0
  SAY #42131 /* ~"Jen vteřinku pane... tvůj hlas; je poznamenán věkem a jizvami. Byl bys tak laskav a dovolil mi dotknout se tvé tváře?"~ */
  IF ~~ THEN REPLY #42132 /* ~"Jistě, žádný problém."~ */ GOTO 11
  IF ~~ THEN REPLY #42133 /* ~"Ne. Budu radši když to neuděláš."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY #42134 /* ~"Počkej..."~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #42135 /* ~Yvana přikývla. "Dobrá; už se tě nebudu znovu ptát."~ */
  IF ~~ THEN REPLY #42136 /* ~"Mám pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #42137 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY #42138 /* ~Usmívající se Yvana ti jemně starýma rukama přejela po kůži tvé tváře. Zamračila se a vypadala trošku bezradně. "Tolik jizev... starých i nových. Vypadají jako..." Dotkla se strany tvého krku, zarděla se a odtáhla ruce. "Odpusť mi pane. Byla jsem jen zvědavá jak daleko sahají."~ */
  IF ~~ THEN REPLY #42139 /* ~"To je v pořádku. Jsou všude, moje celé tělo je zjizvené."~ */ GOTO 12
  IF ~~ THEN REPLY #42140 /* ~"Jen to už nedělěj znovu stařeno."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #42141 /* ~Yvana přikývla.~ */
  IF ~~ THEN REPLY #42142 /* ~"Mám pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #42143 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 14.0
  SAY #42144 /* ~"Nevidím, ale jen proto, že jsem si to přála. Až přijde čas, dovolím svému zraku vrátit se, abych si pak mohla prohlédnout obsah galerie novýma, svěžíma očima."~ */
  IF ~~ THEN REPLY #42145 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42146 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #42147 /* ~Yvana s úsměvem přikývla. "Tvoje přítelkyně je docela všímavá..."~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 1.6
  SAY #42148 /* ~"Ano, konečně jsme si spolu zase promluvily... a musím ti za to poděkovat. Bylo skvělé sdílet slova s mojí dcerou." Yvana se na tebe usmála.~ */
  IF ~~ THEN REPLY #42149 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42150 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7
  SAY #42151 /* ~"Proč, to je moje galerie Plání." Usmála se a ukázala okolo sebe. "Tyhle kousky byly přivezeny odevšud možně, z daleka i z blízkých koutů. Některé prodám, některé si nechám - a všechny je jeden po druhém vystavím. Prosím, projdi si je... a opět, jestli budeš mít ohledně nějaké věci otázky, neboj se a klidně se mě zeptej."~ */
  IF ~~ THEN REPLY #42152 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42153 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.12 41.0
  SAY #42154 /* ~"Je ježibaba. Jedna z nejstarších Šedých Sester z Pustin. Do Sigilu přišla před mnoha staletími, aby tu zkoušela nějaké své tajemné experimenty. Říká se, že tyto věci se nelíbily Paní Bolesti a Ravel byla ze Sigilu vypovězena. Paní ji uvěznila v jednom ze svých nadpozemských labyrintů, kde její tělo odpočívá až dodnes..."~ */
  IF ~~ THEN REPLY #42155 /* ~"Pokračuj..."~ */ GOTO 18
  IF ~~ THEN REPLY #42156 /* ~"Počkej... Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42157 /* ~"Zbytek si poslechnu někdy jindy. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #42158 /* ~"Říká se, že Ravel byla mistryní hádanek a záhad, ale věří se, že jedna hádanka - jedna zvláštní otázka - byla to, co zničilo tuhle starou ježibabu: 'Co dokáže změnit charakter člověka?'"~ */
  IF ~~ THEN REPLY #42159 /* ~"Pokračuj..."~ */ GOTO 19
  IF ~~ THEN REPLY #42160 /* ~"Počkej... Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42161 /* ~"Zbytek si poslechnu někdy jindy. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #42162 /* ~"Vydala výzvu pro všechny, které to zajímalo: Slíbila, že naučí každého, kdo přijde svému umění... pokud jí na oplátku odpoví na jednu otázku. A pokud ne, skončí na jejím jídelníčku. Mnozí při Ravelině výuce zemřeli, ale povídá se, že až do poslední hodiny v Sigilu, nikdy nenašla odpověd na svoji otázku."~ */
  IF ~~ THEN REPLY #42163 /* ~"Pokračuj..."~ */ GOTO 20
  IF ~~ THEN REPLY #42164 /* ~"Počkej... Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42165 /* ~"Zbytek si poslechnu někdy jindy. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42166 /* ~"Říká se, že Raveliným zločinem byla snaha otřást samotnými Pláněmi, a z nějakého neznámého důvodu otevřít samotný Sigil." Yvana si povzdechla. "To je vše co o ní vím."~ */
  IF ~~ THEN REPLY #42167 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42168 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.1 23.1 24.0 25.1 26.0 27.1 28.0 29.0 31.0 33.0 44.1 48.0
  SAY #42169 /* ~"Och? Který? Jeden z obrázků?"~ */
  IF ~  Global("View_Art_01","AR0608",1)
~ THEN REPLY #42170 /* ~"Arcadijské okno z mořeného skla."~ */ GOTO 23
  IF ~  Global("View_Art_02","AR0608",1)
~ THEN REPLY #42171 /* ~"Acheronský bojový roh."~ */ GOTO 25
  IF ~  Global("View_Art_DBirds","AR0608",1)
~ THEN REPLY #42172 /* ~"Temní Ptáci z Ocanthu."~ */ DO ~SetGlobal("Know_Styx_Ice","GLOBAL",1)
~ JOURNAL #67816 /* ~Yvana, kurátorka Galerie kuriozit a umění v Úřednické Čtvrti mi řekla, že Temní Ptáci Ocanthu, které tam má vystavené, jsou ve skutečnosti zmražené úlomky Styxského ledu. Každý, kdo by byl dost pitomý, aby jeden snědl, dopadne stejně, jako by se napil z řeky Styxu - zapomněl by všechny vzpomínky. Pro mě by to byl rozhodně krok zpátky, ale pro někoho by to možná mohlo mít cenu...~ */ GOTO 27
  IF ~  Global("View_Art_03","AR0608",1)
~ THEN REPLY #42173 /* ~"Rubínová soška."~ */ GOTO 29
  IF ~  Global("View_Art_04","AR0608",1)
~ THEN REPLY #42174 /* ~"Kytonský živý řetěz."~ */ GOTO 30
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN REPLY #42175 /* ~"Socha křičícího muže."~ */ GOTO 32
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN REPLY #66658 /* ~".. er... socha' ječícího muže."~ */ GOTO 48
  IF ~~ THEN REPLY #42176 /* ~"Ano jeden z obrazů..."~ */ GOTO 22
  IF ~~ THEN REPLY #42177 /* ~"Vlastně bych se tě chtěl zeptat na něco jiného..."~ */ GOTO 1
  IF ~~ THEN REPLY #42178 /* ~"To vlastně nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.7 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.0 43.0
  SAY #42179 /* ~"A který?"~ */
  IF ~  Global("View_Art_07","AR0608",1)
~ THEN REPLY #42180 /* ~"'Karasuthraské pobřeží.'"~ */ GOTO 34
  IF ~  Global("View_Art_08","AR0608",1)
~ THEN REPLY #42181 /* ~"'Cizokrajní nájezdníci.'"~ */ GOTO 35
  IF ~  Global("View_Art_09","AR0608",1)
~ THEN REPLY #42182 /* ~"'Hazazoth při zániku N'gara.'"~ */ GOTO 36
  IF ~  Global("View_Art_10","AR0608",1)
~ THEN REPLY #42183 /* ~"'Thalasijská planina.'"~ */ GOTO 37
  IF ~  Global("View_Art_11","AR0608",1)
~ THEN REPLY #42184 /* ~"'Knihovna.'"~ */ GOTO 38
  IF ~  Global("View_Art_12","AR0608",1)
~ THEN REPLY #42185 /* ~"'Udova pošetilost.'"~ */ GOTO 39
  IF ~  Global("View_Art_13","AR0608",1)
~ THEN REPLY #42186 /* ~"'Údolí pod Clanggedinem.'"~ */ GOTO 40
  IF ~  Global("View_Art_14","AR0608",1)
~ THEN REPLY #42187 /* ~"'Šedá ježibaba z Oinosu.'"~ */ GOTO 41
  IF ~  Global("View_Art_06","AR0608",1)
~ THEN REPLY #42188 /* ~"'Rozbor pohybu vlny #7. '"~ */ GOTO 42
  IF ~  Global("View_Art_05","AR0608",1)
~ THEN REPLY #42189 /* ~"'Chvilkový pohled ze zdí Moch'chmany.'"~ */ GOTO 43
  IF ~~ THEN REPLY #42190 /* ~"Vlastně se chci zptat na něco jiného..."~ */ GOTO 1
  IF ~~ THEN REPLY #42191 /* ~"To nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #42192 /* ~"Mořené okno bylo nalezeno na třetí úrovni Arcadie před třiceti dvěma lety. Předpovídá události, které se teprve stanou. Když přes něj přejde vidina, vybledne a zanechá to, co jsi viděl na pozadí. Věří se, že pohltilo jak světlo tak tmu z Orbu Noci a Dne z Arcadie. A pomalu je oboje na samotném skle promítá."~ */
  IF ~~ THEN REPLY #42193 /* ~"Orb noci a dne? Arcadia?"~ */ GOTO 24
  IF ~~ THEN REPLY #42194 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42195 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42196 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42197 /* ~"Arcadia je Sféra mírumilovného charakteru, také je známá jako země naprostého dobra. Orb Noci a Dne je zvláštní koule usazená na vrcholu nejvyšší Arcadianské hory; jedna polovina plodí světlo, druhá tmu. Otáčení Orbu dává zemím Arcadie jejich den a noc."~ */
  IF ~~ THEN REPLY #42198 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42199 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42200 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #42201 /* ~"Ach Očistný roh... roh poražení vlády z ocele krychlí Acheronu. Říká se, že Očistný roh naposledy zatroubil, když se Společenství šakala a Klan vydloubnutých očí setkali v bitvě o Rozvrácené Země. Legendy praví, že síla rohu byla užita téměř na konci bitvy, aby spojila létající krychle a ty rozdrtily Společenství Šakala předtím, než mohlo z bitvy uprchnout."~ */
  IF ~~ THEN REPLY #42202 /* ~"Krychle? Acheron?"~ */ GOTO 26
  IF ~~ THEN REPLY #42203 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42204 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42205 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #42206 /* ~"Acheron je Sférou hrubě vynuceného pořádku, kde přizpůsobení se je daleko důležitější, než dobro. Je vystavěna z gigantických kovových krychlí plujících nekonečnou prázdnotou... Spousta krychlí je tak rozsáhlá, že na jejich povrchu byla zbudována města, nebo i celá království."~ */
  IF ~~ THEN REPLY #42207 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42208 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42209 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.2
  SAY #42210 /* ~"Všechny z nich jsou vyštípnuté z magického, černého nekonečného ledu, který leží na černých zemích Sféry Ocanthus." Yvana se odmlčela a poklepala si na bradu. "Říká se, že na těchto černých sférách končí řeka Styx, a že vzpomínky všech duší, které se ponořily do Styxských vod, stále leží zamrzlé v černém ledu."~ */
  IF ~~ THEN REPLY #42211 /* ~"Jestliže Styxská voda dokáže zničit něčí vzpomínky, dokáže led z Ocanthu udělat to samé?"~ */ GOTO 28
  IF ~~ THEN REPLY #42212 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42213 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42214 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #42215 /* ~"Ano, domnívám se že ano."~ */
  IF ~~ THEN REPLY #42216 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42217 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42218 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY #42219 /* ~"Tento kousek byl nalezen v katedrále na první úrovni Elysejských polí, tam, kde hraničí s řekou Oceanuspolí Amorií Klidnou. Název tohoto kousku není znám, ale věří se, že zkušenost a zručnost, se kterou byl vyroben, patří k nejvyšším na celých sférách. Možná, že důvod dech beroucí krásy, je způsob, jakým tahle věc odráží světlo svými broušenými plochami. Zdá se, že světlo odráží ideovou spojitost mezi těmi nejhoršími a nejčistšími stvořeními mnohovesmíru... je to fascinující."~ */
  IF ~~ THEN REPLY #42220 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42221 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42222 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.4
  SAY #42223 /* ~"Řetěz pochází z města Jangling Hiter, místa z řetězů vísících na Minaurosu, třetí úrovně sféry Baatoru. Tamnější řetězy jsou nejlepší z celého mnohovesmíru, ale obyvatelé Jangling Hiteru jsou zlomyslní a zlí a používají řetězy jako živé zbraně proti těm, kteří vstoupí do města a poruší jejich zákony."~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42224 /* ~"Kytoni se pohybují městem jako pavouci po pavučině, ozdobení řetězy pevně ovázanými kolem těl. Kytoni ovládají sílu známou jako 'dar řetězů,' která jim umožňuje manipulovat s řetězy svou myslí. Říká se, že řetěz v mé galerii byl oživen v bitvě, ve které byl kython zabit prokletým kladivem... a jeho životní síla přešla do samotného řetězu."~ */
  IF ~~ THEN REPLY #42225 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42227 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42228 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.5
  SAY #42229 /* ~"Říka se, že tato socha se stala osudem Etherseriana, kouzelníka Gangroighydonu. Byl napaden řadou nepřátelských kouzelníků. Na pokraji svého šílenství byl uvězněn kouzlem, jež jeho maso proměnilo v kámen. Věří se, že Gangroighydon byl začarován ve chvíli, kdy měl na rtech strašnou kletbu. Tak strašnou, že ještě nikdy nebyla vyřčena ústy živého muže."~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42230 /* ~"Říká se, že síla kletby byla dost velká, aby odrhla maso od kostí těch, kteří by ji slyšeli, a že by mohla rozlámat samotné skály."~ */
  IF ~~ THEN REPLY #42231 /* ~"Chtěl bych se optat na jiný kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #42232 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42233 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.0
  SAY #42234 /* ~"Karasuthra je vrstva Země Stvůr. Věčně pohroužená ve tmě, naplněná všemi druhy zvířat stíhajících své oběti pouze v temnotě. Obraz mi daroval malíř, který se zamiloval do Kočičí baronky a následoval ji do její domoviny. Nikdy mi ale neodhalil tajemství jejich vztahu."~ */
  IF ~~ THEN REPLY #42235 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42236 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42237 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY #42238 /* ~"Zajímavý kousek, že ano? Malíř zde zachytil zajímavý efekt ve formě skalních stínů. Žena, která mi tento kousek přinesla, ho našla v jakémsi opustěném táboře... autor nebyl nikdy nalezen. Nejpíš byl zabit stejnými nájezdníky, jejichž obraz je zachycen na plátně."~ */
  IF ~~ THEN REPLY #42239 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42240 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42241 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.2
  SAY #42242 /* ~"Tento obraz je momentka největšího Sigilského blázince v jedné ze Strážných zdí. Vše, co mohli jeho obyvatelé říkat, bylo 'Hazazoth sežral N'gara... Hazazoth sežral N'gara...' Trochu strašidelné že, ale jinak je to dobrý obraz."~ */
  IF ~~ THEN REPLY #42243 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42244 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42245 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.3
  SAY #42246 /* ~"Thalasia je moře, ve kterém řeka Oceanus, protékající skoro celou Sférou Elysia, začíná a končí. Tenhle kousek namaloval jeden z obyvatel ostrova."~ */
  IF ~~ THEN REPLY #42247 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42248 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42249 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.4
  SAY #42250 /* ~"O tomto kousku vím velmi málo... jednoho dne se prostě objevil přede dveřmi galerie, zabalený v černé látce s popiskem 'Z Citadely.' Jeden důvěryhodný mecenáš se domnívá, že by to mohla být nejaká obrovská kouzelnická pevnost, sídlící na Sféře, kterou si sami vytvořili."~ */
  IF ~~ THEN REPLY #42251 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42252 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42253 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.5
  SAY #42254 /* ~"Tento obrázek zobrazuje jednu z legend Základního světa Goha. Udo byl kouzelnický král s takovou zkušeností a mocí, že se pustil do kouzla, které by ho změnilo v Boha a ostatní lid jeho velké říše v boží služebníky. S dokončením kouzla dopadl na Udův palác planoucí blesk a ještě dříve, než utichl hlas hromu, bylo město prázdné... bez jediné živé duše. Přes sedmset tisíc lidí zmizelo beze stopy, v jednom záblesku. Nikdo už dál nezná osud Uda ani jeho lidu."~ */
  IF ~~ THEN REPLY #42255 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42256 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42257 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 22.6
  SAY #42258 /* ~"Tenhle obrázek mi prodal Bulbog Kamenonos ... pochází z prostor pod horou Clanggedin, domova duší trpaslíků z Vyšších Sfér, kteří slouží jako strážci bojovníků Arcadie."~ */
  IF ~~ THEN REPLY #42259 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42260 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42261 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 22.7
  SAY #42262 /* ~"Říká se, že to je portrét Ravel Puzzlewell. Té největší zlé ježibaby, která terorizovala vše za Šedou Pustinou."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42263 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 17
  IF ~~ THEN REPLY #42264 /* ~"Chtěl bych se zeptat na jiný obrázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #42265 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42266 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.8
  SAY #42267 /* ~"Tenhle kousek mi prodal muž, jehož jméno si už nepamatuju. Byl jeden z mnoha, které měl, ale ty ostatní už měly své vlastníky... nebo to aspoň říkal. Strašně ráda bych vlastnila celou kolekci, ale bohužel - občas se stává, že se věci nevyvinou tak, jak by sis přál."~ */
  IF ~~ THEN REPLY #42268 /* ~"Můžu se zeptat na jiný z obrázků..."~ */ GOTO 22
  IF ~~ THEN REPLY #42269 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42270 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.9
  SAY #42271 /* ~"Moch'chma je githzeraiská pevnost, která pluje na Sféře Limbo. Tu momentku namalovala chaotická vědkyně Dy, která si vše, co viděla pamatovala s naprostou přesností, dokud ji nedostihlo šílenství."~ */
  IF ~~ THEN REPLY #42272 /* ~"Můžu se zeptat ja jiný z obrázků..."~ */ GOTO 22
  IF ~~ THEN REPLY #42273 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42274 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~  GlobalGT("Yvana","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #42275 /* ~Yvana se usmála a nasměrovala si tě před sebe. "Vítej. Chceš se zeptat na něco ohledně vystavených kousků?"~ */
  IF ~~ THEN REPLY #42276 /* ~"Ne ale mám jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #42277 /* ~"Ano chci..."~ */ GOTO 21
  IF ~~ THEN REPLY #42278 /* ~"Teď zrovna ne. Sbohem Yvano."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.4
  SAY #42279 /* ~Yvana si od tebe vzala věc a přejela po ní prsty. Sotva si do mysli vštěpila tvar objektu, vrátila ti ho zpět. "Je jisté, že je to něco víc než jen pěkně udělaná figurka modrona. Může to být nějaký druh hádanky, nebo klíč k portálu."~ */
  IF ~~ THEN REPLY #42280 /* ~"Co je to modron?"~ */ GOTO 46
  IF ~~ THEN REPLY #42281 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42282 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #42283 /* ~"Modroni jsou rasa, jež se řídí přesnými pravidly. Existuje jich mnoho různých verzí a druhů, každá na jiném stupni modronského žebříčku. Myslím, že tento druh se nazývá 'quadrone.'"~ */
  IF ~~ THEN REPLY #42284 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #42285 /* ~"To je vše co jsem chtěl vědět. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 1.0
  SAY #65153 /* ~Yvana přešla prsty po vyrytém nápisy na deníku "Ne, já ne. Udělal bys lépe, kdyby ses šel zeptat skutečného jazykovědce... jednoho můžeš najít v Městské hale."~ */
  IF ~~ THEN REPLY #65154 /* ~"Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #65155 /* ~"To je všechno co jsem chtěl vědět, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.6
  SAY #66654 /* ~"Divné, že se ptáš... zaslechla jsem nějaký hrozný zvuk a pak ke mně přiběhli návštěvníci a řekli mi o zmasakrovaném těle na podlaze. Harmonium sem přišlo a odneslo si tělo. Nenašli žádné stopy. Řekla jsem si, že nejspíš nějaký šílenec uvolnil Gangroighydona a zasáhlo ho prokletí... ale toho starého kouzelníka nikde nikdo nenašel. Nic víc nevím."~ */
  IF ~~ THEN REPLY #66655 /* ~"Chtěl bych se zeptat na další kousek..."~ */ GOTO 21
  IF ~~ THEN REPLY #66656 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #66657 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
