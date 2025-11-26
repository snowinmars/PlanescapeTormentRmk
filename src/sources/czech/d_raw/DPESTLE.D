// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~Vidíš chlápka, kterému se kůže kroutí a vlní. Olizuje si popraskané rty skvrnitým jazykem. Jeho pravé oko se pohybuje nezávisle na levém, zaostřuje se na tebe. O sekundu později sebou levé škublo a podívalo se tvým směrem, ale hned se zase vrátilo zpět. Pravé oko mrklo. Z hrdla muže vyšel podivný bublavý zvuk.~ */
  IF ~~ THEN REPLY #2969 /* ~"Zdravím..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~Muž nasadil jakousi grimasu a ukázal na sebe pravým palcem. "Říkají mi Palička - *gugh!* - alchymista." Pak na sebe ukázal znovu, tentokrát levým palcem. "Menuju se Kilnn. *Hgrk!* Ceš něco'?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"Jsi v pořádku?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"Co prodáváš?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"No, mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"Ne, všecko v cajku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*Hugahk!*" Jeho levá ruka vystřelila dopředu a zachytila se přepážky, chlupy na předloktí se mu točí a kroutí, stejně jako on sám. Má na ní cosi napsáno - seznam zboží a cen. Všiml sis že je k mání něco málo léčivých lektvarů a amuletů.~ */
  IF ~~ THEN REPLY #42008 /* ~"Chtěl bcyh něco koupit..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"Jsi v pořádku?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"Momentálně mám jen pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"Fakt nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~Půlka jeho obličeje se jakoby zatáhla a zamračila; potřásl hlavou. "Celej den sem makal ve skladišti. *Gaaaahk!*" Silně se zatřásl; náhle se mu v místech, kde z čela vybíhá nos objevilo třetí oko... to levé odplulo stranou a nové oko obsadilo jeho místo. "Mluvím jenom o - *fnahk!* - skladu pane." Sotva to dořekl, kůže jakoby 'spolkla' to nové oko a původní levé se vrátilo na své místo.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"Jsi v pořádku?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"Starý technik ve Slévárně mi řekl, že potřebuje vzorek mojí krve a kůže pro jeho stroj, aby fungoval. Potřebuju, abys to pro mě zařídil."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"Jo to sem. *Hgak!*" Jeho krk se začal na chvíli zmítat, ale pak se uklidnil. Náhle mu na straně krku vyrašil velký zeleně zbarvený vřed. "Něco teda potřebujete pane? *Ghok!*" Jeho krk se opět zatřásl a zelený vřed se opět ztratil tam, odkud se objevil. Na chvilku se silně rozkašlal, ale pak se uklidnil. "Fjůda."~ */
  IF ~~ THEN REPLY #42017 /* ~"Můžu se zeptat co se ti stalo?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~Levé oko se hněvivě odkoulelo nahoru. Pravé kouká ze šikma. "Moc sem toho vypil."~ */
  IF ~~ THEN REPLY #42021 /* ~"Moc *čeho* jsi vypil?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"Lektvarů. Děsně moc lektvarů. *Fgaohg!*" Pusa mu sjela až dolů k bradě; jeho levá nosní dírka se vytvořila ještě jednou. "Je jistý, že sem toho vypil moc! Lektvary přeměny, jo ty to byly, uvařený ... *Hgrk!* ... v předpeklí."~ */
  IF ~~ THEN REPLY #42025 /* ~"Můžu nějak pomoct?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~Mužíkovy oči se otočily do nemožného úhlu a každé oko koukalo na to druhé. Po chvíli se zas podívaly na tebe. "Těžko. *Fng!*" Otřásl se; ústa se mu z brady posunula nahoru a překryla jednu z nosních dírek. "Takovýhle věci se stávaj docela často; my ti nepomůžem - *Fnug!* - ale můžem dát vzorek. Když zjistíš jak nám pomoct, budeme  - *guhkahk!* - ti vděční."~ */
  IF ~~ THEN REPLY #42029 /* ~"Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"Jestli na něco přijdu, dám vám vědět. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~Vídíš Paličku Kilnna. On - nebo oni - jak se jeho tělo mění, je stále strašidelnější na pohled. "Vítám tě - *smrk!* - zpátky pane."~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"Mám tu elixír Hrůzného rozdělení... myslíte, že by vám to pomohlo?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"Jsi v pořádku?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"Chci si něco koupit..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"Jen procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~Obě jeho oči se znenadání vyboulili, když spatřil malou lahvičku v tvé dlani. Přikývl a zamlaskal.~ */
  IF ~~ THEN REPLY #42038 /* ~"Tak tady to máš..."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"Jak asi tušíte, očekávám odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~Palička Kilnn vzal lahvičku oběma rukama a položil ji pod pult. Jeho levé oko tě upřeně sleduje, zatímco pravé se soustředí na ruku, jež něco zuřivě počítá. "Todle můžem použít a udělat z toho něco, co nám helfne - *hgrk!* - Teď, když nás na chvilku omluvíš, až budeme mít všecko hotový - *gak!* - uděláme pro tebe za vodměnu nějaký ty hojivý věcičky." Odvrátil se na druhou stranu...~ */
  IF ~~ THEN REPLY #42042 /* ~"Dobře... zatím sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~Levé oko se přitočilo zpátky, ale prav na tebe stále zírá. Přikývl. "Budou nějaký léčivý věcičky - *fng!* - stačit pane?"~ */
  IF ~~ THEN REPLY #42044 /* ~"Jo budou. Tady to máte."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"Ne... Zatím si to jestě nechám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"Nuže - *schnik!* - dobrá." Pravou rukou vzal ostrou čepel; jeho levá uchopila sklenici s širokým hrdlem. Odřízl z tvého předloktí maly kousek kůže, vložil ji do lahvičky, společně s pár kapkami krve. Pak ti na ruku připlácl kousek obvazu a podal ti lahvičku. "Potřebujete - *guh-gack!* - eště něco pane?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"Ne ale... jsi v pořádku?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"Jo... Rád bcyh něco koupil."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"Ne dík. To je všechno. Sbohem."~ */ EXIT
END
