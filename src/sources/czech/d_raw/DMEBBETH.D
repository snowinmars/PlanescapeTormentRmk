// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMEBBETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMEBBETH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 2 87 88 123 even though they appear after this state */
~  Global("Mebbeth","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1801 /* ~Stará žena, sedící na bobku vypadá, jako by na ní vybledly všechny barvy -- všechno na ní - vlasy počínaje, šaty konče - má odstíny šedé barvy. Jediné barevné skvrny na ní tvoří několik zvláštních květin, které má připevněny za stonky k opasku.~ */
  IF ~~ THEN REPLY #1802 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #23159 /* ~Ignoruj ženu a prozkoumej pokoj.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #23160 /* ~Starší žena se otáčí a upřeně se na tebe dívá... a ty si všimneš, že šedavé stíny pokrývající její tělo se protahují také k jejímu obličeji. Vlasy má lehce prošedivělé a oči vypadají jako žulové kamínky. Když tě uviděla, zamračila se. "A kdo můžeš být ty, hmmmn?"~ */
  IF ~~ THEN REPLY #23161 /* ~"Já jsem cestovatel."~ */ GOTO 3
  IF ~~ THEN REPLY #23162 /* ~"Doopravdy nevím kdo jsem."~ */ GOTO 8
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",0)
~ THEN REPLY #23163 /* ~Lež: "To jméno je Adahn. Kdo jsi ty?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mebbeth_1","GLOBALLaw",-1)
~ GOTO 9
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",1)
~ THEN REPLY #23164 /* ~Lež: "To jméno je Adahn. Kdo jsi ty?"~ */ GOTO 9
  IF ~~ THEN REPLY #23165 /* ~"Omlouvám se, že tě vyrušuji. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 87 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #23166 /* ~Mebbeth se otáčí, když vstupuješ, skepticky se na tebe dívá. "Tvá cesta tě přivádí zpět, že, hochu...?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23167 /* ~"Našel jsem na trhu obchodníka s ovocem."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23168 /* ~"Vrátil jsem se s těmi bylinami cos chtěla... teď snad sundáš tu zatracenou ostružinovou náplast z mého zápěstí."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23169 /* ~"Přinesl jsem tvé prádlo... nicméně myslím, že Giscorl to trochu přehnal se škrobením."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23170 /* ~"Ano, mám na tebe nějakou otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #23171 /* ~"Ano, potřebuji se léčit."~ */ GOTO 12
  IF ~~ THEN REPLY #23172 /* ~"Přišel jsem od tebe koupit nějaké léky a kouzla..."~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23173 /* ~"Mohu zde odpočívat?"~ */ GOTO 41
  IF ~~ THEN REPLY #23174 /* ~"Ne, jen jsem se vrátil tě zkontrolovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #23175 /* ~"Opravdu? A *odkudpak* jsi přicestoval?"~ */
  IF ~~ THEN REPLY #23176 /* ~"Vrátil jsem se z mrtvého království."~ */ GOTO 4
  IF ~~ THEN REPLY #23177 /* ~"Z Márnice skrz Úl až sem."~ */ GOTO 5
  IF ~~ THEN REPLY #23178 /* ~"Tady a kolem... na spoustu míst, skutečně."~ */ GOTO 7
  IF ~~ THEN REPLY #23179 /* ~"To není důležité. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23180 /* ~Žena si odplivla jednou... dvakrát... třikrát, pak udělala polokruh kolem svého srdce. "Dej si pozor co říkáš, hochu -- a modli se, aby se z tvých slov ani jedno z Mrtvých božstev neurazilo."~ */
  IF ~~ THEN REPLY #23181 /* ~"Já... jasně. Kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #23182 /* ~"Uchovám to v mysli. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #23183 /* ~"Ha! Márniční bledulky, byli všichni zaujati ujišťováním se, že mrtváci jsou na správných místech! Pcha! Spalovači a blázni - dvě slova stejného významu." Žena najednou zbledla a obrátila oči v sloup. ~ */
  IF ~~ THEN REPLY #23184 /* ~"Jsi v pořádku?"~ */ GOTO 6
  IF ~~ THEN REPLY #23185 /* ~"Uh... omlouvám se, že tě vyrušuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23186 /* ~Žena začíná mumlat, její tón je posměšný. "Já jsem Spalovač. Chci zemřít, protože tento život je falešný." Vytřeštila oči a zasupěla. "Spalovači! Nesmysl!" Ukazuje na tebe prstem. "Tvůj život je u konce, hochu, je jenom málo míst kam jít, nebo žádné."~ */
  IF ~~ THEN REPLY #23187 /* ~"Já... jasně. Kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #23188 /* ~"Omlouvám se, že tě vyrušuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #23189 /* ~"Ahhh..." Pokývla. "Nyní v tom tvém celém putování ses rozhodl přijít až k mým dveřím?" Nadechla se. "Jsem potěšena."~ */
  IF ~~ THEN REPLY #23190 /* ~"Kdo jsi ty?"~ */ GOTO 9
  IF ~~ THEN REPLY #23191 /* ~"Omlouvám se, že tě vyrušuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #23192 /* ~"Tak, ty nevíš kdo jsi, hochu?" Zašilhá, pak ukazuje na tvou hruď. "Je těžké představit si člověka pod všemi těmi vyškrábanými jizvami."~ */
  IF ~~ THEN REPLY #23193 /* ~"Možná... kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #23194 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 4.0 6.0 7.0 8.0
  SAY #23195 /* ~S úskočným chichotáním pohybuje svým obočím. "Nikdy jsi neslyšel o staré Mebbeth, o porodní bábě z Náměstí? Neslyšels?" Její oči se zúžily a její hlas poklesl. "Nuže, nyní ano, *já* jsem Mebbeth."~ */
  IF ~~ THEN REPLY #23196 /* ~"Ty jsi porodní bába? Co děláš?"~ */ DO ~SetGlobal("Mebbeth","GLOBAL",1)
~ JOURNAL #22703 /* ~Setkal jsem se se starou ženou, Mebbeth, porodní bábou z Hadrníkova náměstí. Vypadala trochu zmateně... ale to vlastně v těchhle končinách vypadají všichni.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23197 /* ~"Napravuji kosti, vyháním kašel z nemocného, beru ječící, tvrdohavé děti, vyspravuji pláště a hadry nebo obojí, vyrábím léky a byliny a jiné takové." Zašilhá na tebe a prohlíží si tvé jizvy. "Potřebuješ léčbu nebo radši všechno najednou, co?"~ */
  IF ~~ THEN REPLY #23198 /* ~"Léky?"~ */ GOTO 11
  IF ~~ THEN REPLY #23199 /* ~"Ne, děkuji. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23200 /* ~"Ano, potřebuješ sehnat nějaké léky. Chceš nějaké koupit, chceš...?" Znovu letmo pohlédla na jizvu na tvém těle a pokrčila rameny . "Myslím, že je příliš pozdě na to ptát se po nich."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23201 /* ~"Vlastně bych mohl využít nějaké léčení..."~ */ GOTO 12
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23202 /* ~"Vlastně bychom mohli využít nějaké léčení..."~ */ GOTO 12
  IF ~~ THEN REPLY #23203 /* ~"Nyní žádné léky nepotřebuji, ale možná je použiji později. Mohu se podívat co máš?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23204 /* ~"Vlastně, mohl bych toto místo použít, abych si odpočinul. Zlobila by ses, kdybych zde přespal?"~ */ GOTO 41
  IF ~~ THEN REPLY #23205 /* ~"Ne v tuto chvíli. Mám na tebe nějakou otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #23206 /* ~"Rozumím. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 11.0 11.1 17.3 87.2 88.3
  SAY #23207 /* ~Mebbeth kývla. "Dobře, tedy." Sahá pro jednu ze sušených bylin na jejím opasku, ulamuje stonek, pak ho rozdrtí v jejích mozolnatých dlaních. Malé chomáčky prachu a pylu stoupají z jejích rukou. Pak si pro sebe něco zamumlá, poté foukne prach do vzduchu...~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23208 /* ~Zhluboka se nadechni.~ */ DO ~FullHeal(Protagonist)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth mi nabídla, že mě bezplatně vyléčí... možná je dobrý nápad stavit se u ní pokaždé, když budu potřebovat vyléčit. ~ */ GOTO 13
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23209 /* ~Zhluboka se nadechni.~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth mi nabídla, že mě bezplatně vyléčí... možná je dobrý nápad stavit se u ní pokaždé, když budu potřebovat vyléčit. ~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #23210 /* ~Šedý pyl víří po pokoji a pokryl tebe i tvé společníky. Dýcháš zhluboka... a o chvíli později se cítíš nezvykle odpočatý. ~ */
  IF ~~ THEN REPLY #23211 /* ~"Děkuji, Mebbeth. Než půjdu, měl bych pro tebe ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23212 /* ~"Děkuji ti, Mebbeth... cítím se znovu dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #23213 /* ~Šedý pyl víří po pokoji a pokryl tebe i tvé společníky. Dýcháš zhluboka... a o chvíli později se cítíš nezvykle odpočatý. ~ */
  IF ~~ THEN REPLY #23214 /* ~"Děkuji, Mebbeth. Než půjdu, měl bych na tebe ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23215 /* ~"Děkuji ti, Mebbeth... Cítím se znovu dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #23216 /* ~"Chceš ještě něco, hochu?"~ */
  IF ~~ THEN REPLY #23217 /* ~"Skutečně, ano... mohu se ještě jednou podívat co nabízíš?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23218 /* ~"Ne, ale mám k tobě ještě nějakou otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #23219 /* ~"Ne tento den, Mebbeth... Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.4 88.4
  SAY #23220 /* ~"Prodávám hadry a byliny a léky a amulety a směsi a obklady a všechno to prádlo..." Pokrčí rameny. "Takže, jestli najdeš nějakou podivnou věc, s níž si nebudeš vědět rady, přines ji Mebbeth... neslibuji to, hochu, ale mohlo by se stát, že rozřeším, co to je."~ */
  IF ~~ THEN REPLY #23221 /* ~"Rozumím. Mohu se podívat co máš na prodej?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23222 /* ~"Velmi dobře. Měl bych pro tebe ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23223 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3 11.4 13.0 14.0 15.1 16.1 18.1 19.1 20.1 21.0 22.0 23.1 24.1 25.1 26.1 27.1 29.0 30.1 31.1 32.1 33.1 34.0 36.0 37.0 39.0 45.0 46.0 47.1 48.1 49.5 53.3 54.0 57.0 58.2 60.1 61.1 62.0 72.0 79.0 80.0 87.1 88.2
  SAY #23224 /* ~"Pokračuj a ptej se, tedy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #23225 /* ~"Znáš někoho kdo se jmenuje Pharod?"~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #23226 /* ~"Postrádám deník. Nevíš kde bych nějaký mohl najít?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #23227 /* ~"Slyšela jsi někdy o někom, kdo se jmenuje 'Ravel,' Mebbeth?"~ */ GOTO 23
  IF ~~ THEN REPLY #23228 /* ~"Mohl bych použít nějakou léčbu..."~ */ GOTO 12
  IF ~~ THEN REPLY #23229 /* ~"Co zde prodáváš, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23230 /* ~"Mohu od tebe koupit nějaké léky?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23231 /* ~"Mohu zde odpočívat?"~ */ GOTO 41
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23232 /* ~"Našel jsem na trhu obchodníka s ovocem."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23233 /* ~"Vrátil jsem se s těmi bylinami co jsi chtěla... teď snad sundáš tu zatracenou ostružinovou záplatu z mého zápěstí."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23234 /* ~"Přinesl jsem tvé prádlo... nicméně myslím, že Giscorl to při škrobení trošku přehnal."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23235 /* ~"Našel jsem Kossah-Jai. Neměla žádný inkoust, ale další trhovkyně měla... za další, potřebuji na inkoust nějakou nádobu."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23236 /* ~"Zde je ten inkoust, cos chtěla."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
AddexperienceParty(1000)
DestroyPartyItem("TankardF",TRUE)
~ GOTO 81
  IF ~  Global("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
~ THEN REPLY #23237 /* ~"Jsi čarodějnice, Mebbeth?"~ */ GOTO 47
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23238 /* ~"Chci se učit magii, Mebbeth."~ */ GOTO 49
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #23239 /* ~"Chtěl bych změnit profesi a soustředit se na magické studium, Mebbeth."~ */ GOTO 35
  IF ~~ THEN REPLY #23242 /* ~"Dnes žádné otázky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #23243 /* ~"Pharod?! Ten - ten - fuj!" Vidíš jak si Mebbeth odplivla jednou... dvakrát... třikrát, pak udělala polokruh kolem svého srdce. "Ten trouba! Co bys chtěl s lidmi jako je on?"~ */
  IF ~~ THEN REPLY #23244 /* ~"Musím ho najít. Víš kde je?"~ */ GOTO 19
  IF ~~ THEN REPLY #23245 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23246 /* ~"Nic, nevadí. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #23247 /* ~"Není na Hadrníkově náměstí, tolik ti mohu říci... musíš najít cestu *pod* Náměstí, dostat se do špinavého pavoučího hnízda." Znovu si odplivne. "A jenom mluvení o něm zanechává odpornou chuť v puse, to teda jo."~ */
  IF ~~ THEN REPLY #23248 /* ~"Je pod Náměstím?"~ */ GOTO 20
  IF ~~ THEN REPLY #23249 /* ~"Rozumím. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23250 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #23251 /* ~Dloubla prstem do podlahy. "Ano, je pohřben pod těmito hromadami smetí, on a jeho chlapci a bude to fuška, vykopat ho z jeho hnízda." Zatřepe hlavou. "Nech být, nech být, hochu."~ */
  IF ~~ THEN REPLY #23252 /* ~"Musím ho najít. Jak se mohu dostat tam dolů?"~ */ JOURNAL #22705 /* ~Mebbeth mi řekla, že někde na náměstí je vchod do Pharodova sídla. Řekla mi, že se můžu zeptat jednoho ze Spalovačů, kde bych ho našel. ~ */ GOTO 21
  IF ~~ THEN REPLY #23253 /* ~"Rozumím. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23254 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23256 /* ~Mebbeth se zamračí a povzdechne si. "Slyš, říkám, Pharod má bránu, která vede do jeho hnízda, někde tady na Náměstí...  jde jenom o to najít to. Možná by ses měl zeptat někoho jiného, někoho, kdo cestuje o trochu víc než stará Mebbeth."~ */
  IF ~~ THEN REPLY #23257 /* ~"Rozumím. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23258 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY #23259 /* ~Mebbeth myslí. "Neviděla jsem nic. Jestli to není na Náměstí --  o čemž pochybuji, protože lidi nekšeftujou moc s knihama nebo tak -- je to jakoby to bylo vyprodáno nebo ukradeno. Co je na tom pro tebe tak důležité? Kouzelné věci, všechny zářivé a jiskřivé kouzly, hmm? Jestli je to tak, tak už to nikdy nemusíš spatřit."~ */
  IF ~~ THEN REPLY #23260 /* ~"Snad ne. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23261 /* ~"Začínám věřit, že to nikdy neuvidím znovu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #23262 /* ~"Pcha!" Mebbeth syčí a dělá polokruh kolem srdce. "O jakejch nesmyslech to mluvíš! Říkat takový jméno v *mé* přítomnosti!" Ukáže na tebe prstem. "Zlo, zlo, říkat takové věci, přináší zlo k dveřím každého."~ */
  IF ~~ THEN REPLY #23263 /* ~"Co o ní víš?"~ */ GOTO 24
  IF ~~ THEN REPLY #23264 /* ~"Nevadí, tedy. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23265 /* ~"Omlouvám se, nechtěl jsem tě urazit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23266 /* ~"Ravel? Pcha! Mýty a strašidelné příběhy říkala dětem." Její hlas poklesl, jak tě varuje. "Poslouchej, hochu: ŽÁDNÁ Ravel nebyla, ne vůbec... a i kdyby *byla*, vůbec nemáš co mluvit."~ */
  IF ~~ THEN REPLY #23267 /* ~"Potřebuji vědět vše, co mi o ní můžeš povědět, Mebbeth. Je to důležité."~ */ GOTO 25
  IF ~~ THEN REPLY #23268 /* ~"Nevadí, tedy. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23269 /* ~"Omlouvám se, nechtěl jsem tě urazit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23270 /* ~Mebbeth se zamračila... zdá se, že se nechce setkat s tvým upřeným pohledem. "Špatné věci... špatné věci ve jménu..." Podívá se zpátky na tebe. "V Ravelině podivném srdci čarodějky, mnoho stínů zla a špatnosti, všechny se točí a víří. Není potřeba říkat víc, nech to být, nech to být!"~ */
  IF ~~ THEN REPLY #23271 /* ~"Víš kde je, Mebbeth? Musím ji najít."~ */ GOTO 26
  IF ~~ THEN REPLY #23272 /* ~"Nevadí, tedy. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23273 /* ~"Omlouvám se, nechtěl jsem tě urazit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23274 /* ~"Kde se hledají vílí příběhy?! Mebbeth neví!" Sykne. "A *kdybych* to já věděla, řekla bych ti to? Ne, ty by ses snažil ji najít a já nemůžu, ne nemůžu to mít na svědomí..." Vypadá, že jí to láme srdce. "Ale, hochu... jestli to potřebuješ vědět, jestli si jsi k smrti jistej, že je to tak důležitý, že tě to zevnitř rozežírá, ano... pak ti to řeknu." ~ */
  IF ~~ THEN REPLY #23275 /* ~"Prosím... musím ji najít, Mebbeth."~ */ JOURNAL #23278 /* ~Mebbeth navrhla, abych si šel promluvit s jedním z mudrců z Městské haly v Úřednické čtvrti o tom, jak mohu najít vstup do Ravelina bludiště.~ */ GOTO 27
  IF ~~ THEN REPLY #23276 /* ~"Nevadí, tedy. Měl bych nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23277 /* ~"Nemusím to vědět nutně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #23279 /* ~"Ravel..." Mebbeth si povzdechne. "Ravel, krutá Ravel, drží ji Paní Bolesti, ve vězení, v bludišti... prý tam byla dána tak dávno, tak dávno, ... ale najít to? Mebbeth nezná cestu." Povzdechne si. "Zeptej se v Městské hale, možná v Úřednické čtvrti. Jeden z těch šedovousejch by mohl znát to tajemství..."~ */
  IF ~~ THEN REPLY #23280 /* ~"Víš něco víc o Ravel... je něco, co mi můžeš říct, než ji vyhledám?"~ */ GOTO 28
  IF ~~ THEN REPLY #23281 /* ~"Děkuji... Půjdu se podívat co mohu najít venku. Měl bych ještě nějaké jiné otázky, zaprvé..."~ */ GOTO 17
  IF ~~ THEN REPLY #23282 /* ~"Jdu si tedy s nimi promluvit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #23283 /* ~"Hochu..." Mebbeth mluví, ale její hlas zní unaveně a ztrhaně. "...jestli hledáš zlo ve Sférách... nemusíš chodit daleko." Kašel. "Čarodějnice zná čarodějnici, síla zná sílu, ještě není nikdo, kdo by znal všechny Raveliny schopnosti a tajemství. Nauč se dobře svým dovednostem, měj oči otevřené, protože to, kam se podíváš, nemusí být vždy správné. Věř sobě a nikdy nevěř jí, slyšíš?"~ */
  IF ~~ THEN REPLY #23285 /* ~"Budu. Děkuji, Mebbeth."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #23286 /* ~Mebbeth si povzdechne. "Nepřeju si žádné neštěstí pro nikoho kromě jí. Dobře, že je pryč a Sigil je proto lepší. Znova, řeknu tohle, hochu... nech minulost hnít tam kde je. Nech ji tam, nech ji tam."~ */
  IF ~~ THEN REPLY #23287 /* ~"Budu na tvé varování pamatovat. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23289 /* ~"Promiň, Mebbeth. Musím najít Ravel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23290 /* ~"Možná, kdybych měla začít příběh..." Mebbeth mluví pomalu, pečlivě vybírajíc svá slova. "Možná by příběh mohl začít šedou *sestrou,* která žila ve Sférách, na pláních Šedých pustin. Pustiny byly takové tiché klidné místo, všude ticho a bylo to ono ticho, které zaselo sémě nespokojenosti v Ravelině srdci." ~ */
  IF ~~ THEN REPLY #23291 /* ~"Ano...?"~ */ GOTO 31
  IF ~~ THEN REPLY #23292 /* ~"Myslím, že jsem slyšel dost. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23293 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #23294 /* ~"Vždy chceš vědět *proč* a *jak* a co *by mohlo* být, vždycky chceš být o krok napřed na cestě, které by se měl každý vyhnout." Mebbeth si povzdechne. "A možná..."~ */
  IF ~~ THEN REPLY #23295 /* ~"A možná...?"~ */ GOTO 32
  IF ~~ THEN REPLY #23296 /* ~"Myslím, že jsem slyšel dost. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23297 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #23298 /* ~"A možná, Ravel, obdivuhodná ve své síle, prohnanosti a krutosti, možná cestovala do tohoto města, této Klece, která plane přílišným shonem a myšlenkami, protože to bylo místo, kde lidé hledali věci jen pro *vědění* o nich."~ */
  IF ~~ THEN REPLY #23299 /* ~Poslouchej.~ */ GOTO 33
  IF ~~ THEN REPLY #23300 /* ~"Myslím, že jsem slyšel dost. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23301 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #23302 /* ~"Nicméně vědění nebylo *dost* pro někoho takových schopností, jako byla Ravel, tak mnohým... mnohým bylo ublíženo a Klec, toto město bylo vylekané z jejích potřeb a požadavků. Tolik zla..." Dělá polokruh kolem srdce. "Takové byly Raveliny zločiny... když na ně jen pomyslím, nedostává se mi slov. Byla vyhnána, do bludiště..."~ */
  IF ~~ THEN REPLY #23303 /* ~Poslouchej.~ */ GOTO 34
  IF ~~ THEN REPLY #23304 /* ~"Myslím, že jsem slyšel dost. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23305 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #23306 /* ~"A možná to bludiště bylo také klidné jako její chatrč v Šedých pustinách a možná to ticho a klid měly možnost vplížit se do Raveliny mysli, nyní když nebyly nevítané a krutá Ravel, přes všechnu svou pokřivenost a zvrácenost, byla znovu spokojená." Mebbeth si povzdechne. "A možná že tak Ravelin příběh končí. Kdo ví?"~ */
  IF ~~ THEN REPLY #23307 /* ~"Vskutku. Měl bych ještě nějaké jiné otázky..."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth mi pověděla Ravelin příběh... říkala, že byla noční čarodějnicí Šerých pustin, ale bezútěšnost toho místa jí zasévala do mysli nespokojenost. Proto se sbalila a odešla do Sigilu hledat znalosti - ale to, co se naučila, použila proti městu a jeho obyvatelům, skutky tak ďábelské, že je Mebbeth ani nemohla popsat. Ravel byla potrestána Paní a odsouzena k pobytu v bludišti, kde jen ticho a klid toho místa mohou zchladit její chamtivé srdce. ~ */ GOTO 17
  IF ~~ THEN REPLY #23308 /* ~"Děuji za tvůj příběh, Mebbeth. Musím odejít. Sbohem."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth mi pověděla Ravelin příběh... říkala, že byla noční čarodějnicí Šerých pustin, ale bezútěšnost toho místa jí zasévala do mysli nespokojenost. Proto se sbalila a odešla do Sigilu hledat znalosti - ale to, co se naučila, použila proti městu a jeho obyvatelům, skutky tak ďábelské, že je Mebbeth ani nemohla popsat. Ravel byla potrestána Paní a odsouzena k pobytu v bludišti, kde jen ticho a klid toho místa mohou zchladit její chamtivé srdce. ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.14 49.0
  SAY #23311 /* ~"Ó, přišels zpátky, přišels?" Mebbeth se suše pochichtává. "Velmi dobře, tak se podívejme co jsi zapomněl a co sis zapamatoval..."~ */
  IF ~~ THEN REPLY #23312 /* ~"Velmi dobře..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ JOURNAL #23314 /* ~Mebbeth mě učila magii, takže jsem nyní zaměřen na kouzelnictví... budu potřebovat najít zlodějského nebo bojového instruktora, až se budu chtít vrátit k jedné z ostatních profesí.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #23316 /* ~Mebbeth se zamračí, pak kývne. "Učil ses magii velmi dobře, to ses učil. Teď se zaměř na kouzelnické umění - žádné další bojování a kradení, ledaže bys mluvil s někým dalším, kdo by tě mohl učit takové věci." ~ */
  IF ~~ THEN REPLY #23317 /* ~"Děkuji, Mebbeth. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23318 /* ~"Uchovám to na paměti. Sbohem, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23319 /* ~Mebbeth zavrtěla hlavou... trochu smutně, vypadá. "Naučila jsem tě vše, co jsem mohla, hochu... to vzácné málo, co jsem vynechala, by nebylo pro někoho takového, jako jsi ty zajímavé. Jsem na tebe pyšná, to jsem. Stal ses mocným kouzelníkem, to ses stal."~ */
  IF ~~ THEN REPLY #23320 /* ~"Děkuji, Mebbeth. Měl bych ještě nějaké jiné otázky..."~ */ JOURNAL #23322 /* ~Vypadá to, že mě Mebbeth už nic víc nemůže naučit. Budu muset najít nějaké jiné instruktory, kteří mohou rozšířit mé obzory v magii.~ */ GOTO 17
  IF ~~ THEN REPLY #23321 /* ~"Měl jsem dobrou učitelku. Sbohem, Mebbeth."~ */ JOURNAL #23322 /* ~Vypadá to, že mě Mebbeth už nic víc nemůže naučit. Budu muset najít nějaké jiné instruktory, kteří mohou rozšířit mé obzory v magii.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23323 /* ~Mebbeth tě zkoumá. "Chceš vědět, co tě ještě budu učit? Podívejme se, jestli ses naučil to, s čím jsem tě již seznámila... a jestli máš ještě nějaké místo ve svém mozku, hochu..."~ */
  IF ~~ THEN REPLY #23324 /* ~"Velmi dobře..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #23326 /* ~Mebbeth řekla, že potřebuji získat trochu víc zkušeností než mě naučí něco víc o umění.~ */ GOTO 39
  IF ~~ THEN REPLY #23325 /* ~"Velmi dobře..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #23327 /* ~Mebbeth zavrtěla hlavou. "Potřebuješ více trénovat, to potřebuješ, hochu. Přijď zpět až budeš mít o trochu víc zkušeností světa v němž jsi, pak se postaráme o to aby ses naučil něco nového."~ */
  IF ~~ THEN REPLY #23328 /* ~"Tedy dobře. Předtím než půjdu bych měl ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23330 /* ~"Vrátím se až budu mít více zkušeností. Sbohem, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #23332 /* ~Mebbeth kývla hlavou. "Ano, dospěl jsi a vyučil ses, zdá se mi. Ještě trochu tě mohu naučit, mohu... ti dát ještě jeden z mých receptů..."~ */
  IF ~~ THEN REPLY #23333 /* ~Kouzlo 1: Zastrašení~ */ EXIT
  IF ~~ THEN REPLY #23334 /* ~Kouzlo 2: Přátelé~ */ EXIT
  IF ~~ THEN REPLY #23336 /* ~Kouzlo 3: Pacifikace~ */ EXIT
  IF ~~ THEN REPLY #23338 /* ~Kouzlo 4: Chycení~ */ EXIT
  IF ~~ THEN REPLY #23339 /* ~Kouzlo 5: Krvavý most~ */ EXIT
  IF ~~ THEN REPLY #23341 /* ~Kouzlo 6: Podráždění~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.6 11.3 17.6 87.4 88.6
  SAY #23343 /* ~Zavrtěla hlavou. "Samozřejmě, že ne, hochu. Mám v rohu hromadu pokrývek, které by se mohly hodit..."~ */
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",0)
~ THEN REPLY #23346 /* ~"To by bylo skvělé. Děkuji ti."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",1)
~ THEN REPLY #23356 /* ~"To by bylo skvělé. Děkuji ti."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",1)
~ THEN REPLY #23358 /* ~"To by bylo skvělé. Děkuji ti."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23360 /* ~Probudil ses a cítíš se odpočatý. Mebbeth popochází po chatrči, ale otočí se, když slyší že jsi vzhůru. "Vzbudil ses? Spal jsi jako zabitý..." Smích. "Žádné sny se ti nehýbaly v hlavě?"~ */
  IF ~~ THEN REPLY #23361 /* ~"Uh... víš, neměl jsem vůbec žádné sny."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #23362 /* ~Mebbeth krčí rameny. "Na tom není nic zvláštního. Mnoho stínů je plachých; uletí když spáč otevře víčka."~ */
  IF ~~ THEN REPLY #23363 /* ~"Ne, ale nezdá se, že jsem je zapomněl... Myslím, že se mi nezdá *nic.* Je to... špatné."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #23364 /* ~Mebbeth pokrčí rameny. "Sny mohou lidi povzbudit, ale stejně jich i zničily. Možná budeš bohatší bez toho co tě dráždí."~ */
  IF ~~ THEN REPLY #23365 /* ~"Možná... ale já si to nemyslím."~ */ JOURNAL #23367 /* ~Když jsem byl v Mebbethině chatrči, najednou jsem si uvědomil, že nesním. Není to jako bych své sny zapomínal... myslím, že nesním *vůbec.* Je to... špatné. Raději se na to podívám, když dostanu příležitost.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #23369 /* ~Mebbeth si odfrkne. "Dobrá, sny nebo nic, nejsem ten, kdo změní povahu člověka. Spal jsi dost?"~ */
  IF ~~ THEN REPLY #23413 /* ~"Ano, děkuji... Měl bych pro tebe ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23414 /* ~"Taky si myslím. Raději půjdu svou cestou. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #23415 /* ~Probudil ses a cítíš se odpočatý. Mebbeth popochází po chatrči, ale otočí se, když slyší že jsi vzhůru. "Vzbudil ses? Spal jsi dobře?"~ */
  IF ~~ THEN REPLY #23416 /* ~"Ano, děkuji... Měl bych pro tebe ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23417 /* ~"Taky si myslím. Raději půjdu svou cestou. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.12
  SAY #23418 /* ~Mebbeth tě zkoumá. "Neřeknu co jsem nebo nejsem, ale co je tak strašně nutný vědět, že kvůli tomu naháníš starou ženskou a čmucháš po každým drbu?"~ */
  IF ~~ THEN REPLY #23419 /* ~"Chci poznat magii. Mohla bys mě učit?"~ */ GOTO 48
  IF ~~ THEN REPLY #23420 /* ~"To nevadí. Měl bych ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23421 /* ~"Nevadí. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #23422 /* ~Mebbeth se směje. "Pcha! Nejsem žádná učitelka, žádná vychovatelka celá natěšená, že budu poučovat lidi jako jsi ty ve skvělé Městské hale! Jsou i jiní, o kterých jsem přesvědčená, že prozradí to tajemství... ztrácel bys čas se starou Mebbeth, to tedy ano."~ */
  IF ~~ THEN REPLY #23423 /* ~"Nesouhlasím. Myslím, že bys mě mohla hodně naučit ."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #23424 /* ~"Nevadí, tedy. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23425 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 17.13 48.0
  SAY #23426 /* ~Mebbeth se záměrně na tebe dívá. "Oh, ano? *Proč* se chceš naučit takové věci?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #62022 /* ~"Kdysi jsem býval Mág, ale odvrátil jsem se od cesty Umění. Rád bych se stal znovu mágem."~ */ GOTO 35
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23427 /* ~Pravda: "Protože to prostě chci umět."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23428 /* ~Pravda: "Protože bych to mohl potřebovat k vyřešení záhady, kdo jsem."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23429 /* ~Pravda: "Protože potřebuju moc."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23431 /* ~"Mé důvody jsou mé vlastní."~ */ GOTO 53
  IF ~~ THEN REPLY #23432 /* ~"To nevadí. Měl bych ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23433 /* ~"Nevadí... Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.1 53.0
  SAY #23430 /* ~Mebbeth se vysmívá. "Tohle není žádná dětská učebnice, žádný panský zákoník... je to *magie,* hochu. Budu tě učit, ale budeš si muset zachovat čistou hlavu."~ */
  IF ~~ THEN REPLY #23435 /* ~"Chápu. Budeš mě učit?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 49.2 53.1
  SAY #23438 /* ~Za chvíli Mebbeth kývne. "Magie může pomoci nebo nemusí a ty nesmíš spoléhat na to, že vyřeší všechny tvé problémy." Povzdechla si. "Hochu, je to nejspíš jen způsob, jak dostat další úlomek dohromady tvých otázek..."~ */
  IF ~~ THEN REPLY #23439 /* ~"Chápu. Budeš mě učit?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 49.3 53.2
  SAY #23442 /* ~"Pche! Špatná touha, žebříček Umění ti bude vždy připomínat, že nad tebou je další příčka a na ní bude taky hromada lidí. Bude tam vždy někdo lepší a pokud si budeš vyskakovat, tak tě *naučí.*"~ */
  IF ~~ THEN REPLY #23443 /* ~"Chápu. Budeš mě přesto učit?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 49.4
  SAY #23446 /* ~"Jakže? Dobře, když tvé důvody jsou tvé vlastní, pak mé *znalosti* jsou mé vlastní. Nechci učit nikoho, kdo se skrývá před svým učitelem... jen zlo přichází z takové cesty."~ */
  IF ~~ THEN REPLY #23447 /* ~Pravda: "Dobrá, chci se učit to umění, protože to chci znát."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #23448 /* ~Pravda: "Chci se učit to umění, protože bych to mohl potřebovat k vyřešení záhady, kdo jsem."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #23449 /* ~Pravda: "Chci se učit to umění protože potřebuji moc."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #23450 /* ~"To nevadí. Měl bych ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23451 /* ~"Nevadí, tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 59.0
  SAY #23452 /* ~"Ano, dobře..." Zafuněla. "Jestli se stále chceš učit, pak od tebe budu potřebovat splnit další úkol. Když jsi posledně odcházel, zapomněla jsem ti říct o jedné věci, kvůli které se budeš muset vrátit na náměstí s trhem... podívej se po obchodníkovi s látkami, po Giscorlovi. Má ode mě nějaké hadry, které měl vyprat a je to už hodně dlouho, co jsem se ho ptala, kdy to bude."~ */
  IF ~~ THEN REPLY #23453 /* ~"Já... Podívej, Měl bych ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23454 /* ~"Mohla ses o tom *zmínit* předtím než odejdu... dobře, vrátím se."~ */ EXIT
  IF ~~ THEN REPLY #23455 /* ~"Půjdu to získat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 51.0 52.0
  SAY #23456 /* ~"Pcha!" Mebbeth zavrtěla hlavou. "Někdo by raději skládal písně než praktikoval magii. Písně jsou krásnější. Magie byla stvořena nudná, tuctová, pošpiněná davem lidí kteří ji zneužili... hmm." Šilhá po tobě. "Budu tě učit... ale nejdřív budeš muset udělat nějakou věc pro *mne*, slyšíš?"~ */
  IF ~~ THEN REPLY #23457 /* ~"Jako co?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #23458 /* ~"Mé nohy nejsou dobré na chození okolo Sigilu a toto je služba, kterou pro mne můžeš *vykonat*. Potřebuji, tě abys mi přinesl nějaké byliny z trhu... je to směrem k Vrcholku  -- na jihovýchod odtud -- na Úlském tržišti. Tady je vzorek..." Bere si černé semeno z kabátu a hází ti ho. ~ */
  IF ~~ THEN REPLY #23459 /* ~Prozkoumat semeno.~ */ DO ~GiveItemCreate("BSeed1",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",1)
~ JOURNAL #22700 /* ~Mebbeth mi řekla, že to zvláštní černé semeno mám vzít k jednomu obchodníku s ovocem na tržišti v Úlu a získat z něj nějaké byliny. Říkala, že tržiště je pár bloků jihovýchodně od její chatrče.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #23460 /* ~Promneš černé semínko v ruce... když tak učiníš, ucítíš lehké štípnutí a pak uvidíš malou kapku krve na svém palci... na semínku jsou malé ostny jako zuby. Mebbeth si odfrkne. "Buď s tím opatrný... ukaž to jednomu z obchodníků na trhu, on už bude vědět, jakou bylinu sháníš."~ */
  IF ~~ THEN REPLY #23461 /* ~"Dobře. Ale předtím než odejdu bych měl ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23462 /* ~"Dobře, tedy. Vrátím se až budu mít byliny."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 2.0 17.7
  SAY #23463 /* ~"Ano? Dostal jsi ty byliny co jsem chtěla?"~ */
  IF ~  !Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23464 /* ~"Ještě ne, Mebbeth. Řekl mi, že mi nemůže pomoci... že bych měl najít zahradníka."~ */ GOTO 60
  IF ~  Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23465 /* ~"Ještě ne, Mebbeth. Řekl mi, že mi nemůže pomoci... že bych měl najít zahradníka."~ */ GOTO 59
  IF ~~ THEN REPLY #23466 /* ~"Ne, Vlastně mám ještě nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23467 /* ~"Stále na tom pracuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #23468 /* ~Mebbeth si povzdechne. "Nedá se nic dělat." Zavrčí. "Nuže, nevadí hochu, to nevadí. Uvidím jestli mohu donutit jedno z mých starých semen vyrůst, ačkoliv to potrvá dlouho. Myslím, že mi stále jedno nebo dvě zbývá..."~ */
  IF ~~ THEN REPLY #23469 /* ~"Dobře, tedy..."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
SetGlobal("Mebbeth_Fail","GLOBAL",1)
~ JOURNAL #23471 /* ~Mebbeth chce abych přinesl její prádlo od obchodníka s látkami, od chlapíka jménem Giscorl. Přeji si, aby si na to vzpomněla předtím, než jsem se šel podívat po jejích bylinách...~ */ GOTO 54
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #23472 /* ~Mebbeth zavrčí. "Rošťáci... za dávných dnů, lidé dávali přísady, ne omluvy..."~ */
  IF ~~ THEN REPLY #23473 /* ~"Tak, co je potřeba udělat?"~ */ GOTO 61
  IF ~~ THEN REPLY #23474 /* ~"Předpokládám, že ano. Každopádně, Měl bych nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #23475 /* ~"Dobře, půjdu kolem ulovit nějaké další. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #23476 /* ~Mebbeth si povzdechne. "Podívej se po zahradníkovi." Kouše si ret.~ */
  IF ~~ THEN REPLY #23477 /* ~"Kde?"~ */ GOTO 62
  IF ~~ THEN REPLY #23478 /* ~"Dobrá, tedy. Podívej, Měl bych nějakou otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #23479 /* ~"Půjdu tedy kolem ulovit nějaké navíc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #23480 /* ~Mebbeth se zamračí. "Už dlouho jsem nebyla pryč z mé chatrče, hochu. Nevím, kde by se dal najít zahradník... ale jestli se chceš učit umění, budeš se muset naučit trpělivosti, tak *podívej.* Jeden musí být někde v Úlu."~ */
  IF ~~ THEN REPLY #23481 /* ~"Dobrá... ale než půjdu, Měl bych pro tebe ještě jinou otázku."~ */ GOTO 17
  IF ~  Global("Mourns","GLOBAL",0)
~ THEN REPLY #23482 /* ~"Půjdu se tedy po jednom podívat."~ */ EXIT
  IF ~  GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #23483 /* ~"Možná mi může pomoci Truchlící za stromy... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 2.1 17.8
  SAY #23484 /* ~"Je to tak?" Mebbeth letmo pohlédne na ostny, které obklopují tvé zápěstí. "Jestli je to tak, *odmysli* to pryč."~ */
  IF ~~ THEN REPLY #23485 /* ~Učiň tak.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
GiveExperience(Protagonist,500)
~ JOURNAL #23487 /* ~Mebbeth chce, abych přinesl její prádlo od obchodníka s oděvy na trhu, od chlapíka jménem Giscorl. Přeji si, aby si na to vzpomněla předtím, než jsem se šel podívat po jejích bylinách... ~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #23486 /* ~Skřípot a pukání, větve s černými ostny se samy rozplétají z tvého zápěstí a formují se do spletité koule křoví a větviček; vypadá to jako hnízdo mrtvých černých hadů. Mebbeth si odfrkne. "Představ si to jako rámeček od obrázku, jako něco pravidelného s méně úhly."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23488 /* ~Pokus se představit si ostnatou kouli jako rám od obrázku.~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23489 /* ~Představ si ostnatou kouli jako rám od obrázku.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23490 /* ~Soustřeď se na ostnatou kouli, pak si ji představ jako rám od obrázku.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #23503 /* ~Představ si ostnatou kouli jako rám od obrázku.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #23505 /* ~Soustřeď se na ostnatou kouli, pak si ji představ jako rám obrázku.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #23535 /* ~Na chvíli jsi se soustředil, a snažíš se vybavit si jeden obraz... v kouli zavrzalo a zaskřípalo, otevřel jsi oči: zkroutilo se to do zvláštní kostky, ze které všude vyčnívají ostny. Kdokoliv by se to pokusil sebrat, udělal by si z rukou fáborky.~ */
  IF ~~ THEN REPLY #23536 /* ~"Uh..."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #23538 /* ~Mebbeth si odfrkla. "Snad bys to měl radši zkusit znova."~ */
  IF ~~ THEN REPLY #23540 /* ~Nadechni se, soustřeď se, pak to zkus znovu.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #23541 /* ~Koule s ostny zavrzala, ostny se ohýbají a stáčejí, dokud se nezkroutí do zhruba čtvercového rámu širokého tak na dvě dlaně.~ */
  IF ~~ THEN REPLY #23542 /* ~"Co ty na to?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #23544 /* ~Mebbeth chvíli na rám kriticky zírala, pak přikývla. "Dost čtvercové." Sebrala ho a podrobně prozkoumala. "To bude stačit... to bude stačit."~ */
  IF ~~ THEN REPLY #23546 /* ~"To je všechno, na co jsi to chtěl?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 64.1 64.3
  SAY #23548 /* ~Koule s ostny zavrzala, ostny se zohýbaly a stočily, dokud se nezkroutily do zhruba čtvercového rámu širokého tak na dvě dlaně. Téměř nevědomky jsi ztvaroval ostny na pozadí rámu, takže může být snadno sundán ze zdi.~ */
  IF ~~ THEN REPLY #23549 /* ~"Co ty na to?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 64.2 64.4
  SAY #23550 /* ~Koule s ostny zavrzala, ostny se zohýbaly a stočily, dokud se nezkroutily do zhruba čtvercového rámu širokého tak na dvě dlaně. Téměř nevědomky jsi ztvaroval ostny na pozadí rámu, takže může být snadno sundán ze zdi... dodatečně jsi přesunul zbývající ostny do vnitřku rámu, takže může být uchopen za okraj.~ */
  IF ~~ THEN REPLY #23551 /* ~"Co ty na to?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 69.0 70.0
  SAY #23552 /* ~Mebbeth chvíli na rám kriticky zírala, pak se zachichotala. "Ha! Dost čtvercové, to jo! Dobrá práce, synku, dobrá práce." Sebrala ho a podrobně prozkoumala. "To bude bohatě stačit."~ */
  IF ~~ THEN REPLY #23553 /* ~"To je všechno, na co jsi to chtěla?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 68.0 71.0
  SAY #23554 /* ~"Ano, dobrá, to stačí..." Popotáhla. "No, ale je ještě jedna věc, o kterou jsem ti zapomněla říct, aby si přinesl, když jsi naposledy odcházel a to tě zavede zpět na kupecké náměstí... hledej prodavače tkanin Giscorla. Má nějaké mé hadry, které zřejmě vypral a už je to dlouho, co jsem ho o to požádala."~ */
  IF ~~ THEN REPLY #23556 /* ~"Á... ha. Podívej, chci se tě na něco zeptat..."~ */ GOTO 17
  IF ~~ THEN REPLY #23558 /* ~"Měla ses o tom *zmínit* předtím, než jsem odešel... v pořádku, vrátím se."~ */ EXIT
  IF ~~ THEN REPLY #23559 /* ~"Půjdu ho získat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 2.2 17.9 87.0
  SAY #23561 /* ~Vzala si od tebe kupu zelených naškrobených hadrů a vážně je prozkoumala "Alespoň se neroztrhají." Povzdechla si. "Nebo nezohýbají."~ */
  IF ~~ THEN REPLY #23562 /* ~"Co je s tím prodavačem tkanin, Giscorlem? Celé jeho ruce byly zjizvené. A on vypadal... natvrdle."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #23563 /* ~Mebbeth látku v rukou pořád obrací naruby, poklepávajíc na ni svým prstem. "Dobře, synku, někdy hoříš po Umění, jindy zase "po Umění"."~ */
  IF ~~ THEN REPLY #23564 /* ~"To je to, co se mu stalo?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #23565 /* ~Mebbeth mlaskla jazykem. "Možná. Existují tací, pro které je používání Umění něco jako je dýchání. Procházejí se se zašpičatělými klobouky a dýmkami silně páchnoucími nějakou trávou... pak tu existují potulní čarodějové a sférami poznamenaní cikáni a povolávači štěstí a věštci a porodní báby, kteří také používají Umění... ti mají teď těžké časy."~ */
  IF ~~ THEN REPLY #23567 /* ~"A Giscorl byl jedním z nich?"~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #23568 /* ~Mebbeth přikývla. "Ano... abych tak řekla. V některých směrech je stejný, jako byl dřív. Byl oddán zvykům a rituálům." Složila ztuhlé hadry; *mlaskly*, když je položila na podlahu. "Tak, teď, ještě poslední věc, kterou od tebe potřebuju synku..."~ */
  IF ~~ THEN REPLY #23569 /* ~"Bude lépe, když to nebude vyžadovat, abych šel znovu na kupecké náměstí, Mebbeth."~ */ GOTO 77
  IF ~~ THEN REPLY #23570 /* ~"Samozřejmě. Co potřebuješ?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #23571 /* ~"Oh? A co když ano synku?!" Mebbeth se narovnala a zabodla se do tebe pohledem. I tak jí hlava stěží dosahuje k tvým ramenům. ~ */
  IF ~~ THEN REPLY #23572 /* ~"Mebbeth, je ztráta času cestovat na trh pro všechny tyhle věci, zvláště, když by ses mohla na chvilku zamyslet nad vším, co potřebuješ, než mě posílat na stejnou pochůzku *třikrát*."~ */ GOTO 78
  IF ~~ THEN REPLY #23574 /* ~"Všechno co říkám je, že, když si nemůžeš srovnat v hlavě všechno, co potřebuješ z tržiště, pochybuju, že mě můžeš naučit něco o magii."~ */ GOTO 78
  IF ~~ THEN REPLY #23575 /* ~"Nevadí. Co potřebuješ?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #23577 /* ~Mebbeth se nafoukla, tvář jí zrudla jako tuřín. "Oh, ano? Tak takové jsou tvé pocity? Jestli ano, tak zmiz! Říkám ti, nebudu plýtvat svým časem, abych osvítila tvou tvrdohlavou palici!"~ */
  IF ~~ THEN REPLY #23578 /* ~"Ne, vyřídím tu záležitost... jen mi řekni: je ještě něco jiného, co potřebuješ vzít, když už tam budu?"~ */ GOTO 79
  IF ~~ THEN REPLY #23580 /* ~"Dobrá, dobrá. Mluvil jsem unáhleně. Co potřebuješ?"~ */ GOTO 79
  IF ~~ THEN REPLY #23581 /* ~"Fajn, odcházím. Sbohem."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.1 77.2 78.0 78.1
  SAY #23583 /* ~"Jen tohle: Potřebuju nějakej inkoust k opsání nějakejch přísad v jedný z mejch kuchařek. Potřebuju, abys  nějakej přines od jedný obchodnice -- Kossah-Jai, je její jméno."~ */
  IF ~~ THEN REPLY #23584 /* ~"Dobrá tedy. Půjdu se podívad, jestli jí najdu, ale nejprve se chci na něco zeptat..."~ */ JOURNAL #23587 /* ~Mebbeth po mně chce, abych jí *ještě jednou* dělal poslíčka... musím dojít zpátky na tržiště pro nějaký inkoust. Říkala, že si mám na kupeckém náměstí promluvit s nějakou ženskou jménem Kossah-Jai. Ona je pravděpodobně jediný obchodník, se kterým jsem ještě *nemluvil*.~ */ GOTO 17
  IF ~~ THEN REPLY #23585 /* ~"Dobrá teda... už tu nejsem. Sbohem."~ */ JOURNAL #23587 /* ~Mebbeth po mně chce, abych jí *ještě jednou* dělal poslíčka... musím dojít zpátky na tržiště pro nějaký inkoust. Říkala, že si mám na kupeckém náměstí promluvit s nějakou ženskou jménem Kossah-Jai. Ona je pravděpodobně jediný obchodník, se kterým jsem ještě *nemluvil*.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 17.10 88.0
  SAY #23589 /* ~"Nemůžeš získat nějakej hrnek, nebo šálek, nebo džbánek, nebo něco takového od jednoho z ostatních obchodníků?"~ */
  IF ~~ THEN REPLY #23590 /* ~"To bych mohl. Zeptám se jednoho z nich, ale nejprve ti chci položit pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #23592 /* ~"Předpokládejme, že bych mohl... oh, dobře, Končím s ním. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 17.11 88.1
  SAY #23595 /* ~Mebbeth od tebe vzala džbánek s inkoustem, pak si k němu přičichla. "Prvotřídní inkoust, a jak čerstvý, jo jo..." Pokývla na tebe. "Vedl sis dobře, synku. Ve všem, o co jsem tě požádala. A teď, ptám se tě znovu: po všem, co jsi viděl, ještě pořád se chceš učit umění?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23596 /* ~"Po všem, co jsem viděl? Co tím myslíš?"~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23597 /* ~"Ano, chci."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23598 /* ~"Ano. Přesto, základní cíl tvých pochůzek byl vyzkoušet mou vytrvalost, nebyl?"~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23600 /* ~"Ano. Přesto, základní cíl tvých pochůzek byl vyzkoušet mou vytrvalost, nebyl?"~ */ GOTO 82
  IF ~~ THEN REPLY #23601 /* ~"Ne, nemyslím, že Umění je pro mě. Sbohem, Mebbeth."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.2 81.3
  SAY #23604 /* ~Mebbeth se usmála, pak přikývla. "Ano... možná, synku, možná."~ */
  IF ~~ THEN REPLY #23605 /* ~"A to není vše; věděla jsi, koho všeho musím vidět, abych splnil každý úkol, že?"~ */ GOTO 83
  IF ~~ THEN REPLY #23607 /* ~"Velmi dobře. Stále se chci učit Umění."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #23609 /* ~Mebbeth opět přikývla, tentokrát ale pomaleji. "Možná, synku, možná... a pokud jo, co ti tvé smysly o nich řekly?"~ */
  IF ~~ THEN REPLY #23611 /* ~"Truchlící za stromy mi ukázal, že má víra ovlivňuje svět kolem mne, Giscorl mě naučil, že rituál je plýtvání úsilím, pokud je jeho účel ignorován, Meir'am mě naučila, že nezáleží na tom, kolik toho vím, že je pořád se co učit od ostatních."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #23612 /* ~Mebbeth byla chvíli zticha, pak k tobě pomalu přišla a dotkla se tvé tváře. "Oh, dítě..." Povzdechla si. "Jednou budeš velkým kouzelníkem, určitě. Máš na to talent ... přišel jsi ke Staré Mebbeth pro pomoc, viď. Co by mohla nějaká porodní bába naučit někoho, jako jsi ty?"~ */
  IF ~~ THEN REPLY #23613 /* ~"Hodně, Mebbeth. Chci se naučit všechno, co mě naučit můžeš."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 89
END

IF ~~ THEN BEGIN 85 // from: 81.0
  SAY #23614 /* ~"Ze všeho, co jsi už viděl... naučil si se něčemu?"~ */
  IF ~~ THEN REPLY #23615 /* ~"Naučil, Musím být ochotný vyrovnat se s množstvím pochůzek, abych od tebe něco získal."~ */ GOTO 86
  IF ~~ THEN REPLY #23616 /* ~"Dobře, pár věcí. Opravdu nemůžu všechno vysvětlit... vyjma toho, že se chci učit Umění."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23619 /* ~Mebbeth se zasmála. "A tak to je s Uměním, dítě, tak to s ním chodí. Mnohokrát budeš konat v jeho jménu a někdy se ti bude zdát, že to ani nedává smysl, a když tohle víš, pořád se ho chceš učit?"~ */
  IF ~~ THEN REPLY #23621 /* ~"Ano."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF WEIGHT #2 /* Triggers after states #: 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",3)
GlobalLT("Mebbeth_Quest","GLOBAL",6)
Global("Mebbeth_Fail","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #23623 /* ~Zdá se, že se Mebbeth ztratila v kroucení rámu z tmavých větví, který jsi pro ní udělal... doladila okraje a ulámala nějaké zárodky ostnů na větvích. Náhle tě zpozorovala a odložila rám. "Ano, dítě?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23624 /* ~"Přinesl jsem Vaše vyprané hadry... myslím, že Giscorl byl při pracím rituálu trošičku impulzivnější."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23626 /* ~"Chtěl bych se na něco zeptat~ */ GOTO 17
  IF ~~ THEN REPLY #23627 /* ~"Hodilo by se mi, kdybys mě trošičku vyléčila..."~ */ GOTO 12
  IF ~~ THEN REPLY #23628 /* ~"Mohl bych si od tebe koupit nějaké léky?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23629 /* ~"Mohl bych si tu odpočinout?"~ */ GOTO 41
  IF ~~ THEN REPLY #23630 /* ~"Dnes žádné otázky. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",5)
GlobalLT("Mebbeth_Quest","GLOBAL",11)
~ THEN BEGIN 88 // from:
  SAY #23632 /* ~Mebbeth škube masou limetově nazelenalých naškrobených hadrů, které jsi přinesl od Giscorla... zdá se, že záměrně třepí okraje ve snaze oddělit je od sebe za každou cenu. Když tě zaslechla přiblížit se, otočila se. "Ano, synku?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23633 /* ~"Našel jsem Kossah-Jai. Nemá žádný inkoust, ale jiná žena rybáře ano... problém je, že potřebuji něco, do čeho bych ten inkoust nalil."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23635 /* ~"Tady je inkoust, který jsi chtěla."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
DestroyPartyItem("TankardF",TRUE)
AddexperienceParty(1000)
~ GOTO 81
  IF ~~ THEN REPLY #23636 /* ~"Chci se tě na něco zeptat~ */ GOTO 17
  IF ~~ THEN REPLY #23638 /* ~"Hodilo by se mi, kdybys mě trošičku vyléčila..."~ */ GOTO 12
  IF ~~ THEN REPLY #23639 /* ~"Co tu prodáváš, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23641 /* ~"Mohl bych si od tebe koupit nějaké léky?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23642 /* ~"Mohl bych si tu odpočinout?"~ */ GOTO 41
  IF ~~ THEN REPLY #23643 /* ~"Nic. Jen se o tobě informuji."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 81.1 82.1 84.0 85.1 86.0
  SAY #23644 /* ~"Tak ty se teda na tu cestu vydáš..." Mebbeth se odmlčela. "Dobrá, nejprve ze všeho: pouhé nadání k Umění nestačí. Potřebuješ se zaměřit na nějaké základy: obvyklá 'kouzla.' Kouzla bývají zapsána obvykle v nějaké knize. Takže je třeba abys nějakou měl, neboť je nejpřednější, abys mohl kouzlit. Umíš číst?"~ */
  IF ~~ THEN REPLY #23647 /* ~"Nevím."~ */ GOTO 90
  IF ~~ THEN REPLY #23648 /* ~"Ano."~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #23649 /* ~"Tak si to vyzkoušejme, přečteš tohle?" Mebbeth vytáhla nějakej rozdrbanej lístek... připomíná nějaký návod, či recept. ~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23651 /* ~Prozkoumej návod.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23652 /* ~Prozkoumej návod.~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #23654 /* ~Písmo se ti vlní před očima, každý znak se ti rozmazavá, kdykoliv se na něj pokusíš zaměřit. Skoro instinktivně, uvolnil jsi oči, dovolujíc jim tak prohlédnout si celou stránku najednou... a symboly ti najednou vyvstaly před očima: návod obsahuje množství, položky... zdá se, že je to nějaké menší věštění.~ */
  IF ~~ THEN REPLY #23674 /* ~"To je menší věštění, že? Vypadá to jako kouzlo, které tomu, kdo ho používá, umožňuje vidět 'podstatu' věcí... vidět jestli jsou skutečné, nebo ne."~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #23675 /* ~"Tady, můžeš přečíst tohle?" Mebbeth vytáhla nějakej rozdrbanej lístek... připomíná nějaký návod. Dost zvláštní, písmo se ti vlní před očima, každý znak se ti rozmazavá, kdykoliv se na něj pokusíš zaměřit.~ */
  IF ~~ THEN REPLY #23676 /* ~Pozorně znaky zkoumej, zkus je rozšifrovat.~ */ GOTO 93
  IF ~~ THEN REPLY #23677 /* ~"Vzdávám se Mebbeth... co je napsáno na tom lístku?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #23678 /* ~Soustředěně jsi si znaky prohlédl. Bez ohledu na to, jak moc se soustředíš, písmo na lístku ti plave před očima, znaky se svíjí jako klubko hadů. Oči tě pálí, jak se snažíš sledovat jejich pohyb. ~ */
  IF ~~ THEN REPLY #23679 /* ~Pokračuj ve studování symbolů, zkus rozluštit jejich význam.~ */ GOTO 94
  IF ~~ THEN REPLY #23680 /* ~"Vzdávám se Mebbeth... co je napsáno na tom lístku?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.0 94.0
  SAY #23681 /* ~Pokračuješ ve zkoumání symbolů ještě někoik minut, Mebbeth tě tiše sleduje. ~ */
  IF ~~ THEN REPLY #23682 /* ~Pokračuj ve studování symbolů, zkus rozluštit jejich význam.~ */ GOTO 94
  IF ~~ THEN REPLY #23683 /* ~"Vzdávám se Mebbeth... co je napsáno na tom lístku?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 92.1 93.1 94.1
  SAY #23684 /* ~Když už jsi to chtěl zabalit a vzdát se, uvolnil jsi oči, dovolujíc jim tak prohlédnout si celou stránku najednou... a symboly ti najednou vyvstaly před očima: návod obsahuje množství, položky... zdá se, že je to nějaké menší věštění.~ */
  IF ~~ THEN REPLY #23685 /* ~"To je menší věštění, že? Vypadá to jako kouzlo, které tomu, kdo ho používá, umožňuje vidět 'podstatu' věcí... vidět jestli jsou skutečné, nebo ne."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 91.0 95.0
  SAY #23686 /* ~Mebbeth se rošířily oči. "Kdo jsi, že tak zkoušíš Starou Mebbeth?! Jsi snad nějaký fiend?"~ */
  IF ~~ THEN REPLY #23687 /* ~"Co se děje?"~ */ JOURNAL #23690 /* ~Mebbeth mě podrobila zkoušce... přečíst nějaký malý recept, nějakou menší iluzi, napsanou jazykem Umění. Byl jsem schopen rozluštit jeho význam bez sebemenšího tréninku. Musel jsem se kdysi nějak učit, jak číst magii.~ */ GOTO 97
  IF ~~ THEN REPLY #23688 /* ~"Ne... dobrá, alespoň pokud vím. Co je špatně?"~ */ JOURNAL #23690 /* ~Mebbeth mě podrobila zkoušce... přečíst nějaký malý recept, nějakou menší iluzi, napsanou jazykem Umění. Byl jsem schopen rozluštit jeho význam bez sebemenšího tréninku. Musel jsem se kdysi nějak učit, jak číst magii.~ */ GOTO 97
  IF ~~ THEN REPLY #23689 /* ~"Někdo mi tak říká, ale ne v mé přítomnosti. Je něco špatně?"~ */ JOURNAL #23690 /* ~Mebbeth mě podrobila zkoušce... přečíst nějaký malý recept, nějakou menší iluzi, napsanou jazykem Umění. Byl jsem schopen rozluštit jeho význam bez sebemenšího tréninku. Musel jsem se kdysi nějak učit, jak číst magii.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0 96.1 96.2
  SAY #23691 /* ~"Dobře... je to nečekané, já jsem..." Kývla k receptu, pak ti ho vytrhla z ruky. "To, co vidíš, je napsáno jazykem *Umění.* Jestli ještě nejsi nějakým mágem, je to nepochopitelnej zašmodrchanej mišmaš." Luskla prsty. "Je to jasné jako facka, tvé smysly se ti vrátily. Možná řekneš Staré Mebbeth, proč tomu tak je?"~ */
  IF ~~ THEN REPLY #23692 /* ~"Opravdu nevím... Já jen *vím* , co jsem řekl."~ */ GOTO 98
  IF ~~ THEN REPLY #23693 /* ~"Myslím, že jsem kdysi vídával víc, ale zapomněl... vidět ty znaky mi zatřáslo se vzpomínkami."~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0 97.1
  SAY #23694 /* ~"Nebo můžeš mít nějaký přirozený dar... to je fuk, na tom nezáleží, právě jsi si ušetřil léta učení." Mebbeth vydává jedno dlouhé *hmmmmmmmm.* "A já bych se měla poohlídnout po někom, kdo by se tu vypořádal s domácími povinnostmi, jo to bych měla..."~ */
  IF ~~ THEN REPLY #23695 /* ~"I to je možné."~ */ GOTO 99
  IF ~~ THEN REPLY #23696 /* ~"Pokud tu potřebuješ s čímkoliv pomoci, řekni si... to je to nejmenší, co můžu udělat za to, že jsi mě učila."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mebbeth_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #23697 /* ~"Pcha! Nemysli si, že už jsi 'in'..." Zamračila se. "Fajn, můžeš dost dobře číst kouzla, ale ty ti jsou k ničemu, pokud nemáš nějakou knihu, do které by sis je zapsal..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23698 /* ~"Máš nějakou?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23699 /* ~"Máš nějakou?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #23700 /* ~"Ne, ne, tím se nevzrušuj..." Zamračila se. "Fajn, můžeš dost dobře číst kouzla, ale ty ti jsou k ničemu, pokud nemáš nějakou knihu, do které by sis je zapsal..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23701 /* ~"Máš nějakou?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23702 /* ~"Máš nějakou?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.1 100.1
  SAY #23703 /* ~Mebbeth přelétla chatrč očima, a pak zahlédla rám z tmavých větví, který jsi vytvořil. Opatrně ho sebrala a prohlédla si ho. "To půjde."~ */
  IF ~~ THEN REPLY #23704 /* ~"Tohle? Je to jenom nějaký rám."~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0
  SAY #23705 /* ~Mebbeth přelétla chatrč očima, a pak na jedné ze stěn zahlédla rám. Sundala ho ze stěny a prohlédla si ho. "To půjde."~ */
  IF ~~ THEN REPLY #23706 /* ~"Tohle? Je to jenom nějaký rám."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 101.0 102.0
  SAY #23707 /* ~"Ah, ale ty jsi ten případ..." Pořád držíc rám, sebrala jeden z naškrobených hadrů, které jsi dostal od Giscorla. Strhla nazelenalý naškrobený povlak; začal poletovat ve vzduchu, jako drobounké chmýří z oblečení. "Ať už použil Giscorl při praní cokoliv, funguje to lépe, než jakékoliv natahování, nebo škrobení. Neposkytnu pergamen, nemůžu..."~ */
  IF ~~ THEN REPLY #23708 /* ~"Pergamen...?"~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #23709 /* ~Vzala škrobovitý povlak a přetáhla ho přes rám z tmavých větví, konce zahakujíc za háčky, které jsou na okraji rámu, dokud to nevypadalo jako nějaké malé tmavě nazelenalé malířské plátno. "Něco tomu chybí..." ~ */
  IF ~~ THEN REPLY #23710 /* ~"Dobrá, už jen na to něco nakreslit."~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #23711 /* ~Přikývla. "Jo, nebo napsat..." Vzala džbánek s inkoustem, který jsi jí dal, a položila ho vedle sebe. Ponořila jeden z nehtů do džbánku, pak ho vytáhla, mumlajíc si při tom něco pro sebe. Za stálého mumlání začla škrábat na rám nějaké symboly, jeden vedle druhého.~ */
  IF ~~ THEN REPLY #23712 /* ~Počkej...~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #23713 /* ~"Všechno je hotovo." Mebbeth vstala, utírajíc si svůj inkoustem zabarvený nehet do šatů. Naklonila hlavu, prohlížejíc si cizí, orámovaný list před ní. "List do tvé knihy kouzel." Naznačuje ti, že by sis ho měl vzít.~ */
  IF ~~ THEN REPLY #23714 /* ~Vezmi ho...~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0 108.1
  SAY #23715 /* ~"Uvnitř tvé knihy kouzel jsou návody... tvá 'kouzla'... jestli si jim tak přeješ říkat. Dokud jsou jen napsány v knize, jsou to jen slova." Potřásla hlavou. "Umění vyžaduje, abys kouzlo vytrhnul z knihy a uložil do svého podvědomí... tvé hlavy, teprve pak využiješ jeho moc."~ */
  IF ~~ THEN REPLY #23716 /* ~"Pokračuj..."~ */ GOTO 108
  IF ~~ THEN REPLY #23717 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #23718 /* ~"Do podvědomí ho vložíš tak, že ho nastuduješ, naučíš se ho *zpaměti*. Obvykle si musíš odpočinout, než začne fungovat. Nějaké otázky?"~ */
  IF ~~ THEN REPLY #23719 /* ~"Ne, Mebbeth."~ */ GOTO 109
  IF ~~ THEN REPLY #23720 /* ~"Ano... vysvětli to znova."~ */ GOTO 107
  IF ~~ THEN REPLY #23721 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #23722 /* ~"Oh, žádné otázky, eh? Tak teď bys ale *měl* mít otázky! Víš vše o tom, jak se kouzla naučit, co? Teď jsi drsoň! U všech skřítků, určitě nepotřebuješ žádné Mebbethiny rady, jako dřív... teď jsi už hotovej čaroděj co!"~ */
  IF ~~ THEN REPLY #23723 /* ~"Odpusť, Mebbeth. *Myslel* jsem žádné otázky k tomu, co jsi říkala. Vysvětli mi prosím, jak se naučit kouzla."~ */ GOTO 110
  IF ~~ THEN REPLY #23724 /* ~"Tvůj postoj zkouší mou trpělivost Mebbeth..."~ */ GOTO 111
  IF ~~ THEN REPLY #23725 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 111.1
  SAY #23726 /* ~"Hmmph. Dobrá tedy. Udělej přesně tohle: Vlož kouzla, která se chceš naučit z knihy kouzel do paměti *předtím*, než půjdeš spát. Když se ráno vzbudíš, budou ti v hlavě bzučet jako mouchy, připraveny vyletět."~ */
  IF ~~ THEN REPLY #23727 /* ~"Kolik kouzel mohu vyvolat?"~ */ GOTO 112
  IF ~~ THEN REPLY #23728 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #23729 /* ~"Tak, budu s tebou kdykoliv to uznám za vhodné, dítě, a ty mi budeš věnovat všechnu pozornost, pokud si budeš přát poznat tajemství Umění!"~ */
  IF ~~ THEN REPLY #23730 /* ~"Odpusť, Mebbeth. Vysvětli mi prosím, jak se naučit kouzla."~ */ GOTO 110
  IF ~~ THEN REPLY #23731 /* ~"Jestli jsi *skončila* s lekcí, pokračuj."~ */ GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 110.0
  SAY #23732 /* ~"Můžeš vyvolat jen jedno, možná dvě kouzla dříve, než budeš potřebovat zase odpočívat... jako malinký mihotající se kouzelníček, nemáš ve svém podvědomí hodně místa. Takže používej svá kouzla rozumně, dokud nebudeš v umění zběhlejší. Jak tvá síla poroste, bude se ti v podvědomí prostor zvětšovat."~ */
  IF ~~ THEN REPLY #23733 /* ~"V pořádku... pokračuj..."~ */ GOTO 113
  IF ~~ THEN REPLY #23734 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #23735 /* ~"Můžeš vyvolat jen ta kouzla, která jsi si zapamatoval. Takže pokud budeš chtít použít jedno kouzlo z Umění řekněme dvakrát, musíš si ho zapamatovat... kolikrát?" ~ */
  IF ~~ THEN REPLY #23736 /* ~"Jednou."~ */ GOTO 114
  IF ~~ THEN REPLY #23737 /* ~"Dvakrát."~ */ GOTO 115
  IF ~~ THEN REPLY #23738 /* ~"Uh..."~ */ GOTO 114
  IF ~~ THEN REPLY #23739 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.2
  SAY #23740 /* ~"Dvakrát! Vyvolat kouzlo *dvakrát,* znamená zapamotavat si ho *dvakrát.*"~ */
  IF ~~ THEN REPLY #23741 /* ~"Chápu. Jak získám víc kouzel?"~ */ GOTO 116
  IF ~~ THEN REPLY #23742 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY #23743 /* ~Mebbeth přikývla. "Tak, dvakrát, přesně."~ */
  IF ~~ THEN REPLY #23744 /* ~"Jak mohu získat víc kouzel?"~ */ JOURNAL #23746 /* ~Mebbeth tě naučila základy Umění. Říká, že před tím, než půjdu spát, musím si vybrat, která kouzla se chci naučit, tak, že je nalistuji ve své knize kouzel a vyberu si je. Pokud budu chtít vyvolávat kouzlo vícekrát, budu ho muset vícekrát také vybrat. Kdykoliv půjdu spát, vzbudím se příští ráno s kouzly v mé paměti, připravenými k vyvolání. Říkala, že budu schopen vyvolávat jen malé množství kouzel každý den, dokud  se nestanu více zdatným v jejich používání. Měl bych být schopen najít další učitele okolo Sigilu, od kterých se snad něco přiučím.~ */ GOTO 116
  IF ~~ THEN REPLY #23745 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 116 // from: 114.0 115.0
  SAY #23747 /* ~Mebbeth pokrčila rameny. "Měj oči otevřené, uši nastražené' - dokonce i od obyčejných lidí se můžeš nějakou menší magii naučit. Existují také svitky, návody, knihy a dokonce nějaké cizí předměty, které mají kouzla napsána na sobě. Když takový najdeš, jen ho prozkoumej, zavři a opiš to kouzlo do své knihy, pokud ho budeš chtít."~ */
  IF ~~ THEN REPLY #23748 /* ~"Rozumím."~ */ GOTO 117
  IF ~~ THEN REPLY #23749 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #23750 /* ~"Když se vrátíš, můžu ti ukázat víc kouzel, zvlášť, pokud budeš mít za sebou více sfér."~ */
  IF ~~ THEN REPLY #23751 /* ~"Ocenil bych to. Díky." ~ */ GOTO 118
  IF ~~ THEN REPLY #23752 /* ~"Myslím, že jsem pochopil základy Mebbeth. Sbohem."~ */ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 107.1 108.2 109.2 110.1 112.1 113.3 114.1 115.1 116.1 117.0 117.1
  SAY #23753 /* ~"Předtím, než půjdeš, dítě, určitě ti přijdou k chuti nějaké magické věcičky..." Mebbeth prohrabala své šaty, pak vytáhla tři malé návody, které ti podává. "Měl bys je opsat do své knihy, aby ses je mohl začít učit tak brzo, jak jen to půjde..."~ */
  IF ~~ THEN REPLY #23754 /* ~"Díky Mebbeth."~ */ DO ~GiveItemCreate("Recipe01",Protagonist,1,1,0)
GiveItemCreate("Recipe02",Protagonist,1,1,0)
GiveItemCreate("Recipe03",Protagonist,1,1,0)
GiveExperience(Protagonist,5000)
~ JOURNAL #23759 /* ~Mebbeth mi dala tři 'návody', o kterých říkala, že bych si je měl opsat do své knihy kouzel. Říkala, že bych je měl ve svém inventáři prozkoumat, pak je měl 'okopírovat' do své knihy kouzel.~ */ GOTO 138
END

IF ~~ THEN BEGIN 119 // from: 138.0
  SAY #23755 /* ~"Dobrá synku -- už se tu nezdržuj. Stejně máš mnoho jinejch způsobů, jak trávit čas, než ho ztrácet se Starou Mebbeth."~ */
  IF ~~ THEN REPLY #23756 /* ~"Ale jdi, Mebbeth, nejsi stará."~ */ GOTO 120
  IF ~~ THEN REPLY #23757 /* ~"Nejsi tak stará."~ */ GOTO 120
  IF ~~ THEN REPLY #23758 /* ~"Jo, to bude pravda. Už jsem tu strávil moc času."~ */ GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #23760 /* ~"Pche, ty lichotníku! Máš jazyk mrštný tak, že by to zahanbilo samotného fienda!"~ */
  IF ~~ THEN REPLY #23761 /* ~"Díky za všechno, Mebbeth."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 122
  IF ~~ THEN REPLY #23762 /* ~"Sbohem Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY #23763 /* ~"Máš předpoklady být jedním z velmi mocných kouzelníků." Mebbeth zasupěla. "Ještě... Přeju ti vše dobré, dítě. Vše dobré."~ */
  IF ~~ THEN REPLY #23764 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.0
  SAY #23765 /* ~"Pche! Můžeš mi poděkovat tak, že si s tím, co ses naučil nebudeš nešikovně zahrávat. Umění zatočilo s mnohým bláznem, který se ho snažil používat tak, jak se nemá. Teď je vše na tobě!"~ */
  IF ~~ THEN REPLY #23766 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Ravel")
~ THEN BEGIN 123 // from:
  SAY #23767 /* ~Jak jsi vstoupil, Mebbeth vzhlédla, tvář jí zesinala... vypadá nemocně. Díváš se na ní, vrásky jsou roztroušené po liniích její tváře, vypadají jako trhlinky, a oči se jí chvějí námahou, jak se tě snaží zaostřit. ~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #64215 /* ~"Mebbeth, jsi v pořádku?"~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23768 /* ~"Myslel jsem si, že bys tu ještě mohla být Mebbeth."~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23769 /* ~"Ty ještě nejsi mrtvá 'Mebbeth?'"~ */ GOTO 125
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23770 /* ~"Mebbeth... *věděla* jsi, že jsi byla Ravel?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 123.0 123.1
  SAY #23771 /* ~"Ju..." Chabě se zasmála, a hlas jí zaskřípal, jako by se snažil prodrat z vrstev prachu. Když mluví, zní jako ozvěna. "Mám... o trochu déle..."~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #23772 /* ~"Mebbeth... *věděla* jsi, že jsi byla Ravel?"~ */ GOTO 126
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #64216 /* ~"Mebbeth... tvůj hlas... mluvíš *Raveliným* hlasem. Kdo *jsi*?!"~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY #23773 /* ~"Ne..." Chabě se zasmála. "Mám... o trochu déle..."~ */
  IF ~~ THEN REPLY #23774 /* ~"Mebbeth... *věděla* jsi, že jsi byla Ravel?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 123.3 124.0 124.1 125.0
  SAY #23775 /* ~Zhluboka se nadechla... slova přicházejí pomalu, hlas jí chrčí v hrdle. "Snad... Mebbeth na sebe mnohokrát zapomněla... Zdálo se mi, že jsem byla někým jiným..." Každé slovo je těžší, než to před ním, jako, kdyby je tiskla k zemi tíha mnoha století. Zdá se, že se její tělo nepatrně přesunuje, jako kdyby chtělo *odpočívat,* nech ho. ~ */
  IF ~~ THEN REPLY #23776 /* ~"Jak bys nemohla vědět, kdo jsi?"~ */ GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #23777 /* ~"Jak je možné, že  *ty* se neznáš?" Mebbeth si olízla rty. "Mnoho věcí... dokonce i kousíčky mě... upadlo v zapomnění, zapomenuté stíny minulosti, tyto střípky vzpomínek, možná je to škoda... možná ne."~ */
  IF ~~ THEN REPLY #23778 /* ~"Ale proč Mebbeth? Proč ta maska, když bys mohla být znovu Ravel?"~ */ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #23779 /* ~"Tady, na tomto místě, vše, co jsem  dělala, bylo spravování věcí, uzdravování těl, rovnání kostí, rození dětí... se všemi těmito věcmi jsem byla spokojená, naplňovaly mě." Vzdechla si. "Pokud jde o to, být někým *jiným,* než Ravel..." Opět si olízla rty. "Myslím... vem si, jaký komfort by to byl, odložit občas nějakou vzpomínku, či dvě."~ */
  IF ~~ THEN REPLY #23780 /* ~"Po tom, co se stalo si nejsem jistý, zda bys tu byla Mebbeth..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #23781 /* ~Mebbeth přikývla - každý pohyb je naplněn bolestí. "Tak tak, můj vzácný příteli..." Trhla sebou, ja se nadýchávala. "Vidět tě zde... je to jako nějaká ozvěna. Mnoho času nezbývá... nitky těchto Ravel... mizí, jak si povídáme." ~ */
  IF ~~ THEN REPLY #23782 /* ~"Máš bolesti?"~ */ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #23783 /* ~Přikývla. "Ano... ta ironie ale bolí nejvíc..." Chabě se zasmála. "Nějaký druh přátelské služby, třikrát zaplacený... je způsobem Sfér, že mých několik laskavostí mě zřejmě usmrtí." Tiše se zasmála. "I tak ničeho nelituji..."~ */
  IF ~~ THEN REPLY #23784 /* ~"Chci se na něco zeptat Mebbeth. Potřebuji vědět, kdo ti to *udělal*. Můžeš mi to ř--"~ */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #23785 /* ~Pozvedla ruce, aby tě utišila. "Vzácný muži... Ráda bych, abys mě v tuto poslední chvíli poslouchal..."~ */
  IF ~~ THEN REPLY #23786 /* ~"Mebbeth, už není moc *času*..."~ */ GOTO 132
  IF ~~ THEN REPLY #23788 /* ~"Velmi dobře..."~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0 131.1
  SAY #23792 /* ~"Vzácný pane..." Povzdechla si. "Vše, co jsem si přála bylo osvobodit Paní z její Klece... pro tebe, vše, co jsem si přála pro tebe bylo *žít*... a pro mou dceru, já..." Povzdechla si. "Ve Sférách je takové rčení... přátelská služba ježibaby je krutější... než její nenávist a ničí vše, čeho se dotkne..."~ */
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23793 /* ~"Myslím, že už to začínáme chápat."~ */ GOTO 133
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23794 /* ~"Je mi líto, že se to tak vyvrbilo. Kdybych tě býval mohl zachránit, já --"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 133
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23795 /* ~"Myslím, že už to začínám chápat."~ */ GOTO 134
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23796 /* ~"Je mi líto, že se to tak vyvrbilo. Kdybych tě býval mohl zachránit, já --"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #23797 /* ~Lehce se pousmála. "Nelituji toho, co se stalo, drahý..." Úsměv zmizel. "Ani ty bys neměl." Oči se jí zakalily a upřený pohled se vytratil do neznáma. "Ah... já... nemůžu tu už ani chvíli... zůstat."~ */
  IF ~~ THEN REPLY #23798 /* ~"Spánembohem, Ravel. Snad nějaké ještě temnější místo bude tvým domovem."~ */ DO ~DestroySelf()
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #23799 /* ~"Sbohem, Ravel."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 132.2 132.3
  SAY #23800 /* ~"Umírám..." Zamrkala zaslzenýma očima. "Můj konec... cestování všemi směry času, všechny nitky, ze kterých je utkána Ravel se ztrácejí..." Zakašlala. "Ještě ne..." Její šedé oči se upřely na tebe. "Možná není vše ztraceno... jedno z mých tmavých špičatých semínek z bludiště... přinesl jsi jedno s sebou?"~ */
  IF ~~ THEN REPLY #23801 /* ~"Ano. Tady."~ */ DO ~AddexperienceParty(12000)
DestroyPartyItem("BBSeed",FALSE)
~ GOTO 135
  IF ~~ THEN REPLY #23802 /* ~"Mám to, ale tobě to nedám."~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #23803 /* ~"Ah..." Opatrně si semínko vzala a vsadila je do svých šedivých vlasů. "Tak Jednota-Prstenů je naplněna..." S chvějícím se pohledem pozvedla ruku a pokynula ti, aby ses přiblížil.~ */
  IF ~~ THEN REPLY #23804 /* ~Přibliž se k ní, poklekni. ~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 137
  IF ~~ THEN REPLY #23805 /* ~"Ne... nezáleží na tom jakou nosíš masku, jsi Ravel a já ti nevěřím. Lituji Mebbeth, tobě ne."~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 134.1 135.1
  SAY #23806 /* ~Přikývla, zdá se, že chtěla něco říct, pak se usmála a zavřela oči. ~ */
  IF ~~ THEN REPLY #23807 /* ~"Sbohem."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 135.0
  SAY #23809 /* ~Něco tiše zašeptala, pak ve svých rukou sevřela tvou hlavu a jemňoučce tě políbila na čelo.  Když se tě její rty dotkly, zavřel jsi oči... ~ */
  IF ~~ THEN REPLY #23810 /* ~"Snad tě Sféry přivítají vlídně, Mebbeth."~ */ DO ~SetGlobal("Ravel_Death_Kiss","GLOBAL",1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 118.0
  SAY #66278 /* ~"Počkej... je toho víc..." Mebbeth ze zástěry vytáhla kousek černé látky a rozbalila ho. Vytáhla jantarové náušnice. "Ty tě budou na cestách chránit, dítě... já už je nenosím, tak si je klidně vezmi."~ */
  IF ~~ THEN REPLY #66279 /* ~"Děkuju..."~ */ DO ~GiveItemCreate("AmbEar",Protagonist,1,0,0)
~ GOTO 119
END
