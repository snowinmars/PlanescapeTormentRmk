// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~Starý muž, který páchne odpadky, tě zdraví. "Cizinče! Na moment! Musím ti říct, co se stalo tomuhle místu!"~ */
  IF ~~ THEN REPLY #3197 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"Co se stalo?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"Ne. Jdi mi z cesty."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"Vrátil ses do zničeného města, cizinče. Deva vítězně stanul nad rozvalinami a vtahuje nás do záhuby. Jen jediná věc to může zvrátit - a to je srazit devu do prachu země a osvobodit město od jeho zrady a zákeřnosti. Čím silnější bude víra města v odpuštění, tím slabší bude deva."~ */
  IF ~~ THEN REPLY #60253 /* ~"Tohle všechno provedl Trias?"~ */ JOURNAL #60254 /* ~Správce Kyse mi řekl, že Trias vystoupil z vězení a odsoudil město, které se díky tomu propadlo do Carceri. Také mi pověděl, že způsob, jak Triase oslabit, je zastavit zlo a chaos ve městě a tím dát lidem příležitost zaměřit se na své lepší stránky. ~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"Já jsem Kyse, správce městského smetiště. Zkoušel jsem jim vštěpovat ušlechtiost a laskavost, jenže odmítli. A tohle je důsledek toho všeho."~ */
  IF ~~ THEN REPLY #60256 /* ~"Co se stalo?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"Kliď se mi z cesty. Mám tu práci."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"Ničení je očekává, cizinče! Když nebude deva poražen, město zanikne! Jestli se město nevrátí na Pustiny, bude všechno ztraceno! Jsme v Carceri, tam, odkud nikdo, krom Titánů, neunikne! Chceš-li odpočívat, hledej stará kasárna, nebo lihovar. Vezmi si tohle, snad ti to pomůže." Otočil se a vrhá se do chaosu vzadu.~ */
  IF ~~ THEN REPLY #60259 /* ~"To bylo zvláštní."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"Deva vystoupil z hlubin země a odsoudil město za jeho hříchy. Nastal velký zmatek, když se kolem nás zřítily domy. Je jen jediná cesta, jak bojovat s Triasem - a to je ho oslabit dobrými skutky a odvrácením myslí měšťanů od zla a chaosu k dobru. Jinak určitě zvítězí." Podíval se na sebe. "Musím jít něco vyřídit. Chceš-li odpočívat, hledej stará kasárna, nebo lihovar. Vezmi si tohle, snad ti to pomůže."~ */
  IF ~~ THEN REPLY #60261 /* ~"Hodně štěstí. Sbohem."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"Máš můj vděk, cizinče. Co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #60263 /* ~"Potřebuji vyléčit."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"Po čem šli ti zločinci?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"Pověz mi o sobě."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"Pověz mi o Crustu."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"Pověz mi o tomhle smetišti."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"To uniká mému vědění. Koluje zvěst, že sedím na hromadě zlata, že se mi dostalo nevídaného bohatství. Nepravděpodobné, mylné - jediné mé jmění je víra, která mě udržuje ve městě klamu. Pokoušel jsem se o své bohatství podělit, ale nikdo je se mnou nechtěl sdílet."~ */
  IF ~~ THEN REPLY #60269 /* ~"Správně. Pověz mi o sobě."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"Pověz mi o Curstu."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"Potřebuji vyléčit."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"Pověz mi o téhle skládce."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"Jsem Kyse, správce městského odpadu. Dívám se na jejich odpadky a vzdáleně tak vidím i cesty, kudy proplouvají jejich duše. Jsem hlas, jež je volá k dobrotě - ale obávám se, že mě neposlouchají."~ */
  IF ~~ THEN REPLY #60274 /* ~"Potřebuji vyléčit."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"Po čem šli ti zločinci?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"Pověz mi o Crustu."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"Pověz mi o tomhle smetišti."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"Tohle město je na pokraji katastrofy. Zlo tady kvete na všechny způsoby a nic není tím, čím se zdá být. Všechno se skrývá pod maskou laskavosti, ale zlovolnost zjizví ty, co mu propadnou. Je to špatné město, plné špatných lidí."~ */
  IF ~~ THEN REPLY #60279 /* ~"Potřebuji vyléčit."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"Po čem šli ti zločinci?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"Pověz mi o sobě."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"Pověz mi o téhle skládce."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"Zachránil jsi mi život." Kyse vypadá omráčený vědomím, že by se něco takového mohlo v Curstu stát. "Hodně ti dlužím. Kdybys někdy potřeboval zhojit rány, vyhledej mě. Postarám se, jak jen budu moci. Omluv mě. Musím se posadit."~ */
  IF ~~ THEN REPLY #60284 /* ~"Jistě. Sbohem."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~Vidíš starého zanedbaného muže, pálícího odpadky. Vypadá živěji, než většina lidí z města. Jakoby sem ani nepatřil. Všiml si, že k němu jdeš a narovnal záda. "Přišel jsi se podívat na Kyse? Vyslechnout příběhy o moudrosti a poctivosti? Najít příklady pro zásady a život?"~ */
  IF ~~ THEN REPLY #60286 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"Co je tohle za místo?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"Co mi můžeš říct o Curstu?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"Slyšel jsem, že máš potíže s bandou darebáků."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"Pověz mi o téhle skládce."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"Ne. Sbohem."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"Přišel jsi si pro osvícení? Poznání? Pro... och, to jsi ty." Vypadá trochu zklamaně.~ */
  IF ~~ THEN REPLY #60292 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"Co je tohle za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"Slyšel jsem, že máš potíže s bandou darebáků."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"Pověz mi o téhle skládce."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"Jsem Kyse, správce městského odpadu. Dívám se na jejich odpadky a vzdáleně tak vidím i cesty, kudy proplouvají jejich duše. Jsem hlas, jež je volá k dobrotě - ale obávám se, že mě neposlouchají."~ */
  IF ~~ THEN REPLY #60298 /* ~"Rozumím. Mám pár dalších otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"Tohle je městská skládka. Hlídám tu, abych odradil škodnou od rozkrádání a aby odpad nezaplavil město. A za to mi sem nosí další smetí."~ */
  IF ~~ THEN REPLY #60301 /* ~"Rozumím. Mám pár dalších otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"Tohle město je na pokraji katastrofy. Zlo tady kvete na všechny způsoby a nic není tím, čím se zdá být. Všechno se skrývá pod maskou laskavosti, ale zlovolnost zjizví ty, co mu propadnou. Je to špatné město, plné špatných lidí."~ */
  IF ~~ THEN REPLY #60304 /* ~"Rozumím. Mám pár dalších otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"Jde o Werneta, vůdce vší a nádoby hříchu. Řekl mi, že jestli mám peníze, mám mu je dát. Ale já mu vysvětloval, že jediné bohatství mám ve svém srdci a ve víře. Obávám se, že mi neuvěřil. Jdi jej přesvědčit. Prosím. Bývá ve Vnitřním Curstu, na jižní straně. Poblíž vozů."~ */
  IF ~~ THEN REPLY #60307 /* ~"Jistě. Mám pár dalších otázek..."~ */ JOURNAL #60309 /* ~Hlídač skládky Kyse mě požádal, abych si popovídal s banditou jménem Wernet a vysvětlil mu, že ten stařík nemá nic cenného. Jsem více než ochotný mu to uvěřit. Říká, že je Wernet ve Vnitřním Curstu, na jeho jižní straně. Poblíž nějakých vozů.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"Co potřebuješ?"~ */
  IF ~~ THEN REPLY #60311 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"Co je tohle za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"Slyšel jsem, že máš potíže s bandou darebáků."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"Pověz mi o téhle skládce."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~Spiklenecky se k tobě naklonil. "Mám tady tajný vchod do podzemí, tajné místo, o kterém skoro nikdo neví. Vede tudy cesta pod město..." Odmlčel se. "Ale já to nikdy nepoužil. Mám pocit, že kdybych šel dolů, už bych se nedokázal dostat zpátky. Je to tam kluzké a nejspíš by se to za mnou sesypalo. Až budu připravený zemřít, sklouznu tam dolů a nechám monstra, ať si mými kostmi naplní žaludky."~ */
  IF ~~ THEN REPLY #68145 /* ~"Mám ještě pár otázek..."~ */ JOURNAL #68147 /* ~Správce skládky mi řekl o tajném vchodu do podzemí Curstu. A také řekl, že pokud tam vstoupím, je docela pravděpodobné, že už se tou cestou nedokážu vrátit zpátky. To si musím zapamatovat.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"Aha. Sbohem."~ */ JOURNAL #68147 /* ~Správce skládky mi řekl o tajném vchodu do podzemí Curstu. A také řekl, že pokud tam vstoupím, je docela pravděpodobné, že už se tou cestou nedokážu vrátit zpátky. To si musím zapamatovat.~ */ EXIT
END
