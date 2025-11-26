// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~Malý, vědátorský muž - s pevnou zamračenou tváří - si tě prohlédl od hlavy k patě. "Zdravím, jsem Finam. Omlouvám se, pane, ale o hosty se moc nestarám - zvané nebo *jiné* - takže pokud tady nejsi obchodně, žádám tě, abys odešel."~ */
  IF ~~ THEN REPLY #46117 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~Finam se na tebe zamračeně podíval. "Zase jsi přišel narušovat pořádek v mém domě? Co po mně chceš tentokrát?"~ */
  IF ~~ THEN REPLY #46120 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"Nic, vážně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"Měl bys vědět, že jsem učenec a lingvista, pane. Velice rád ti zodpovím otázky ohledně mých studií - jazyky a tak - ale jinak ti nemohu vůbec pomoci."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~Rozbal dvanáctistěn na stránce s textem a zeptej se ho, jestli to dokáže přeložit.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"Tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~Vzal si rozbalený dvanáctistěn a podrobně ho prozkoumal. "Tohle je dávno mrtvý jazyk, který téměř nikdo nezná. Myslím, že můj otec, stejně jako já lingvista, ten jazyk znal a asi to byl jediný muž v Sigilu, který ho dokázal přeložit. Poznávám to podle jeho poznámek, ale sám ho přeložit nedokážu."~ */
  IF ~~ THEN REPLY #46126 /* ~"Máš ještě ty poznámky?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"Stejně dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~Finam zavrtěl hlavou. "Nebyly by ti k ničemu, pokud bys s jejich pomocí chtěl něco přeložit... a těch několik knih, které o tomto jazyku otec měl, zmizely v době jeho vraždy."~ */
  IF ~~ THEN REPLY #63620 /* ~"Opravdu bych si moc přál vidět je..."~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"Tvůj otec byl zavražděn?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"To je zlé. Sbohem, Finame."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~Finam přikývl. "Byl zardoušen. Odešel k někomu na soukromou lekci - doučoval několik jazyků, aby si vydělal na výzkumy - a nalezli ho uškrceného v jedné z místností v Městské hale. Vrah nebyl nikdy nalezen. Bylo to asi... oh... možná před padesáti lety. Byl jsem tenkrát malé dítě."~ */
  IF ~~ THEN REPLY #46132 /* ~"Ale znal ten jazyk a mohl ho učit?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"Škoda. Sbohem, Finame."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"To jistě mohl, kdyby byl ještě naživu. Můj otec prý byl schopný učitel." Finam si smutně povzdychl. "Mám jeho schopnosti a cit pro jazyky, ale ne trpělivost pro ostatní. Bohužel."~ */
  IF ~~ THEN REPLY #46135 /* ~"Je... pohřben v márnici?"~ */ JOURNAL #39478 /* ~Mluvil jsem s lingvistou Finamem o podivném textu v rozkládacím dvanáctistěnu, který jsem našel. Řekl mi, že jeho otec znal mrtvý jazyk, ve kterém je to psané, ale že zemřel před dávnou dobou rukou neznámého vraha. Popel jeho otce leží v urně uvnitř Finamova domu. Možná je nějaký způsob, jak si promluvit s duchem Finamova otce za použití popela, jelikož nalezení někoho dalšího, kdo rozumí tomu dávno mrtvému jazyku je dost nepravděpodobné.~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"Sbohem, Finame."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"Proč, ne.. jeho popel je zde." Ukázal na bronzovou urnu na malé skříni vedle kytice purpurových květin. "Proč?" Jeho rty zbrázdil zatrpklý úsměv. "Jsi snad nekroskop? Dokážeš mluvit s mrtvými?" Náhle se zamračil. "Už o těchto věcech nechci mluvit. Budeš mě muset omluvit, pane. Sbohem."~ */
  IF ~~ THEN REPLY #46138 /* ~"Sbohem, Finame."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~Finam vydal otrávený vzdech. "Nejsem si jistý, kde teď jsou, a zrovna teď hledám něco jiného - můj výzkumný deník. Snad až jej najdu, tak bych ti mohl věnovat trochu času na hledání těch poznámek."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"Je to tady ta kniha?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Vrátil jsem Finamu Lingvistovi jeho výzkumný deník.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"Je to tady ta kniha?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Vrátil jsem Finamu Lingvistovi jeho výzkumný deník.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"Tak já ti jej tedy najdu. Kde jsi jej naposledy měl?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~Souhlasil jsem s tím, že najdu a vrátím Finamu Lingvistovi jeho výzkumný deník... na oplátku doufám, že mi dá poznámky jeho otce o jazyku vyrytém na dvanáctistěnu. Zdá se, že deník nechal někde v Nevěstinci duševních rozkoší.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"Řekl jsi, že byl tvůj otec zavražděn?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"To je špatné. Sbohem, Finame."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~Finam pozvedl obočí. "Probůh, ano, je!" Vzal si ji od tebe a začal prohrabávat své kapsy. "Tak na... poznámky mého otce. Vyrovnáni, ano? Dobře. Teď se musím podívat na své poznámky, takže kdybys mě omluvil..."~ */
  IF ~~ THEN REPLY #49990 /* ~"Díky, Finame. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~Finam pozvedl obočí. "Probůh, ano, je!" Vzal si ji od tebe a začal prohrabávat své kapsy. "Hmm... to je divné. Promiň, ale vypadá to, jako by někdo ty otcovy poznámky ukradl. Ach, tedy... škoda. Teď se musím podívat na své poznámky, takže kdybys mě omluvil..."~ */
  IF ~~ THEN REPLY #49993 /* ~"Netrap se tím. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"Ech... tedy... nevím jistě. Mohl by být v... no, možná se nějak dostal do Nevěstince duševních rozkoší, ale jak se to mohlo stát, to já nevím." Odkašlal si a dívá se bokem.~ */
  IF ~~ THEN REPLY #49997 /* ~"Podívám se tam. Řekl jsi, že byl tvůj otec zavražděn?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"Tak já to tam prověřím. Sbohem."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~Finam na chvíli přestal bádat a podíval se na tebe. "Měl jsi snad štěstí při hledání té mé knihy?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"Je to tady ta kniha?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Vrátil jsem Finamu Lingvistovi jeho výzkumný deník.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"Je to tady ta kniha?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Vrátil jsem Finamu Lingvistovi jeho výzkumný deník.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"Ne. Kde že jsi ji naposledy měl?"~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"Ne... ale co jsi to říkal o tom, že byl tvůj otec zavražděn?"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"Zatím ne. Sbohem."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~Finam pohlédl tvým směrem, poněkud otráveně. "Musím si teď projít své poznámky, takže kdybys mě omluvil..."~ */
  IF ~~ THEN REPLY #50005 /* ~"Jenom jedna otázka. Říkal jsi, že byl tvůj otec zavražděn?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"Tak teda sbohem."~ */ EXIT
END
