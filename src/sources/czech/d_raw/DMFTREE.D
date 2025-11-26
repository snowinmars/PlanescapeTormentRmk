// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~Vidíš utahaného zarmouceného starého muže, který zírá na uschlý strom před sebou. Sám pro sebe si něco mumlá a přitom si poklepává na bradu, jako by se snažil něco vypočítat. Chvílemi smutně potřese hlavou.~ */
  IF ~~ THEN REPLY #16643 /* ~"Zdravím..."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~Odejdi od muže.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~Překvapil jsi ho a přerušil tok jeho myšlenek. "Oh... zdravím tě, příteli. Tak jak se ti vede v tento den?" Mluví beze spěchu a tiše, nicméně z jeho hlasu čiší hluboký smutek.~ */
  IF ~~ THEN REPLY #16645 /* ~"Celkem to ujde, jsem spokojen."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"Nic moc, už jsem zažil lepší časy."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"Záleží na tom?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"Zanechme toho -- potřeboval bych informace ohledně..."~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"Nevadí... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~Pousměje se, avšak jeho oči zůstávají i nadále zarmoucené. "To rád slyším, příteli. Doufám, že ti štěstěna zůstane i nadále nakloněna." Vypadá to, že se hodlá vrátit zpět ke stromu.~ */
  IF ~~ THEN REPLY #16650 /* ~"A co dnešek, jak se povedl?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"Vydrž -- "Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~To, co jsi řekl, ho ještě více sklíčilo. "To jsou špatné novinky, kamaráde... těžká doba nastala. Snad se nakonec vše v dobré obrátí." Vypadá to, že se vrátí zpět ke stromu.~ */
  IF ~~ THEN REPLY #16653 /* ~"A co dnešek, jak se povedl?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"Počkej -- Můžeš mi ještě odpovědět na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~Očividně jsi ho zaskočil, ale přitakal přesvědčivě. "Ano, příteli, máš pravdu. Alespoň mě, tedy... ačkoliv jak to tak vypadá, nic moc to neznamená." Vidíš na něm, že se chce otočit zpátky ke stromu.~ */
  IF ~~ THEN REPLY #16656 /* ~"Tak tedy fajn, celkem to ujde."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"Tak tedy je to dost bída, těžké časy."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"Není to příliš důležité? Co tím máš na mysli?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"Vydrž -- "Vrtá mi hlavou ještě pár otázek..."."~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~Nepatrně pokrčil rameny a na rtech se objevil náznak úsměvu. "Štěstěna se mi nevyhýbá, nicméně na můj zármutek převelikého vlivu nemá."~ */
  IF ~~ THEN REPLY #16661 /* ~"Proč je tomu tak?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"To je vskutku zlé. Potřeboval bych informace ohledně..."~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"To je špatné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~Poukázal na strom stojící hned vedle něj. "Jde mi o stromy zde v Úlu. Umírají, příteli -- a nikoho to nezajímá." Všiml si výrazu v tvé tváři a pozdvihl ruce, aby tě ještě na chvíli umlčel. "Mnohý si může říci - maličkost - jít dál a ani si nepovšimnout. Narozdíl od nich já tvrdím, že je to hanba vidět poslední výhonky života v této čtvrti zanechané napospas nehostinnému prostředí a tak bez patřičné péče odsouzené k zahynutí. Rozumíš mi, příteli?"~ */
  IF ~~ THEN REPLY #16664 /* ~"Ano... máš pravdu, je to smutná záležitost."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"Ne. Nakonec přece všechno skoná, je to jen otázka času. Tak proč se starat o to kdy a jak?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"Ne, to nemohu. Pakliže tyto stromy nejsou nikomu k užitku, kdo by se o ně měl starat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"Ano. Ještě bych se přeptal na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"Rozumím. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"Je to dlouhé vypravování... nic, co by si toliko náhodný chodec chtěl vyslechnout. To jsem si jist. Stačí tedy, když povím, že veškeré mé snahy o vyburcování místních obyvatel, o jejich zapojení do činnosti byly... ignorovány."~ */
  IF ~~ THEN REPLY #16669 /* ~"A cos to tedy po lidech zde chtěl?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"Chápu. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~Povzdechl. "Očekával jsem to: Nijak se nelišíš od ostatních. Mohl bys mě zanechat mému rozjímání?" Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #16672 /* ~Odejdi.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"Chtěl jsem, aby oni... oni..." Je popuzen, frustrovaný svou neschopností se vyjádřit. "... se *starali.* Chtěl jsem po nich vážně příliš?" V pohledu, jenž na tebe upřel, se zračí vážnost.~ */
  IF ~~ THEN REPLY #16673 /* ~"Starat se o co?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"Domnívám se, že nikoliv. Můžeš mi ještě odpovědět na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"Snad ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~Je očividně překvapen a vyhrkne: "Skutečně? Ó! Myslím tím tedy, znamenitě! Snad bys mohl..." Odmlčí se a zvážní, zčistajasna podezíravý. Rychlost jeho řeči se vrátila na běžnou, nikam nespěchající úroveň. "Každopádně je to jen dobře. Předpokládám, že se mě teď chceš na něco zeptat..."~ */
  IF ~~ THEN REPLY #16676 /* ~"Ano, Já... éé, ještě bych se s dovolením přeptal..."~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"Ne, doposud ne. Na co že ses to chtěl zeptat?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"Nikoliv. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~Tento muž je nefalšovaně šťasten, nejspíše poprvé ve svém životě. Doslova září, když vysvětluje: "Zde cokoliv jenom s největšími obtížemi přežívá... jen se kolem sebe rozhlédni a uvidíš, že je to pravda, příteli. Vůbec si nejsem jist, zda tady mohou stromy prospívat a vzkvétat, i kdyby měly nějak *zajištěn* dostatek světla a čisté vody..."~ */
  IF ~~ THEN REPLY #16679 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"To si musím vyslechnout, ale až příště. Loučím se."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~Nadšeně, přenadšeně přitakal. "Ale kdyby se přiměřený počet lidí začal *starat*... kdyby skutečně *chtěli*, aby stromy přežily... tak je jasné, že to dokáží! Opět se zazelenají a rozkvetou!"~ */
  IF ~~ THEN REPLY #16681 /* ~"Cože? Ale to nedává smysl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"Možná máš pravdu."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"Snad by mohli. Ještě bych se přeptal na..."~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"I to se může přihodit. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~Vědoucně se pousmál a pokýval hlavou. "Jsi zde nový, to už je mi jasné. Nevíš, jak to v Sigilu chodí. Tady víra znamená vše..."~ */
  IF ~~ THEN REPLY #16685 /* ~"Třebas máš pravdu."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"Může to tak být. Potřeboval bych informace ohledně..."~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"Snad. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"*Mám* pravdu, tím jsem si jist." To přesvědčení je téměř hmatatelné a sálá z něj, jako nějaká svatozář; v tuto chvíli nemá nic společného s člověkem, se kterým jsi navázal hovor a přesto se jedná o jednu a tutéž osobu. "To je vše, čeho si žádám, příteli... toliko projev péče a starosti, naděje v jejich uzdravení. Pakliže dostatek lidí si bude přát totéž, čas obnovy nadejde. Dokážeš se zhostit tohoto úkolu, příteli?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~Pravda: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~Pravda: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~Lež: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~Lež: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"Ne, ale ještě bych se přeptal na..."~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"Ne, to nemohu. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"Znamenité, příteli, vynikající! Já tobě děkuji... dokázal jsi mi navrátit odvahu a důvěru v můj záměr. Doufejme, že dokážeš najít další takové, co budou naslouchat... třebas něčeho dosáhneme. Tak a co teď mohu udělat já pro tebe, příteli?"~ */
  IF ~~ THEN REPLY #16694 /* ~"Můžeš mi ještě odpovědět na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"Nic, ale díky. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"Znamenité, příteli, zkrátka znamenité! Já ti děkuji... dokázal jsi mi navrátit odvahu a důvěru v můj záměr. Doufejme, že dokážeš najít další takové, co budou naslouchat... třebas něčeho dosáhneme. A co tvůj doprovod, příteli? Mohl bys s nimi v mém zastoupení promluvit?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"Co si o tom Morte myslíš?"
~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"Annah, ty bys mohla?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"Grace, zvážíš to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"Dak'kone, dokázal bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"Nordome, myslíš si, že bys mohl pomoci?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"Vhailore, můžeš pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"Možná časem. Ještě bych se přeptal na..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"Nejspíš jindy. Loučím se."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"Počkej příteli... a vyslechni mě." Přesvědčení z něj vyzařuje jako nějaká svatozář a je téměř hmatatelné; právě teď nemá nic společného s člověkem, se kterým jsi navázal hovor a přesto se jedná o jednu a tutéž osobu. "Žádám tě toliko o jedno... toliko o projev péče a starosti, naděje v jejich uzdravení. Pakliže si dostatek lidí bude přát totéž, čas obnovy nadejde. Zvládneš se zhostit tohoto úkolu, příteli?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~Pravda: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~Pravda: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~Lež: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~Lež: "Ano, pomohu."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"Nikoliv, ale potřeboval bych informace ohledně..."~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"Ne, to nemohu. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"Jen se kolem sebe rozhlédni, příteli. Dovedeš si představit, *co* by v tomto prostředí nacházelo vyhovující životní podmínky? A když od toho odhlédneme, stejně dabusové zřídkakdy navštěvují zdejší část Sigilu."~ */
  IF ~~ THEN REPLY #16718 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"Proč je tomu tak?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"To je všechno, co jsem si přál zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"Určitě znáš dabuse. Již jsi je musel spatřit... jsou to služebníci Paní -- pečují o město. Samozřejmě v některých čtvrtích na ně narazíš častěji." Smutně se zahleděl na strom poblíž.~ */
  IF ~~ THEN REPLY #16723 /* ~"Paní Bolesti?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"A proč sem nepřichází častěji?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"Potřeboval bych informace ohledně..."~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"To je vše, co jsem chtěl zjistit. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"Paní Bolesti, příteli? Vládkyně Sigilu?" Znenadání se proud jeho slov přerušil. Rukou ve vzduchu před svým hrudníkem načrtl polokruh, naklonil se blíže a zašeptal: "Nedělá to dobrotu mluvit o Paní. Věz tedy alespoň to, že ona sama vládne Sigilu -- tak tomu vždy bylo a je, ať už se situace jeví jak chce -- a už o ní nemluvme."~ */
  IF ~~ THEN REPLY #16735 /* ~"Výborně. Proč tedy dabusové toto místo nenavštěvují častěji?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"Rozumím. Ještě je tu pár nezodpovězených otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"Už se před tebou o ní nezmíním. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"Úl je skutečně nebezpečné místo, ale podle mě to není tím... navíc dabusové spadají pod Paní a ta už si umí ohlídat vlastní lidi - nikdo není natolik hloupý, aby se jí hodlal znelíbit. Já se domnívám, že hlavní příčina tkví ve Fellovi."~ */
  IF ~~ THEN REPLY #16738 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"Paní Bolesti?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"Co je zač ten Fell?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"To bude vše, co jsem si přál zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"Fell? On je, ehm... no... víš, příteli, řeknu jen tolik - je to jediný dabus, jenž neslouží Paní. Já neznám ani okolnosti, ani pozadí této situace, ale co vím, tak byl zavržen svými druhy a žije sám zde v Úlu. Zřídil si tetovací salón, ale většina Sigilských obyvatel se tomu místu vyhýbá."~ */
  IF ~~ THEN REPLY #16743 /* ~"Pověz mi něco o tom tetovacím salóně."~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"Čeho bych se v těchto místech mě vyvarovat?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"Takže ani v nejmenším nemáš ponětí, jak se ocitl v nemilosti?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"To jsou všechny odpovědi, co jsem potřeboval slyšet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"Fellův salón je vzdálen pouhých několik stavení na východ odsud a je označen jeho osobním znakem - bílá elipsa proražená bleskem. Osobně jsem to místo doposud nenavštívil, ale jak jsem pochopil, dokáže znaky své řeči -- vlastně, víš o tom, že dabusové komunikují obrazy? Rébusy?"~ */
  IF ~~ THEN REPLY #16748 /* ~"Ano, pokračuj."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"Opravdu?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~Přikývl. "Takže, nějakým způsobem je schopen zachytit a vkomponovat obrazy své řeči do tetování. Nicméně nejedná se o obyčejné kresby -- bylo mi sděleno, že jsou kouzelné. Nejenom kvůli procesu jejich vzniku, pochopitelně. To je asi tak vše, co o tom vím."~ */
  IF ~~ THEN REPLY #16750 /* ~"Takže, na co bych si tam především měl dát pozor?~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"Ty tedy ani náhodou nevíš, z jakého důvodu se mu všichni vyhýbají?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"Ještě bych se přeptal na..."~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"To je vše, co jsem si přál zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"Uvidíš, co jsem měl na mysli v okamžiku, kdy se pokusíš s některým promluvit. Nechávají nad svými hlavami prolétávat řadu symbolů," svá slova doprovodil gestem ilustrujícím situaci, "namísto mluvení. Záleží pak jen na posluchači, aby vyluštil, co mu dabus sděluje. Někde jsem zaslechl, že se do toho člověk po troše procvičování celkem dostane." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #16754 /* ~"Rozumím. Pokračuj, mluv dál."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"Tedy, příteli, poněvadž opustil Paní, mnoho lidí považuje toliko za otázku času, než na něj dopadne její stín. A nikdo si nepřeje nacházet se poblíž ve chvíli, kdy se tak stane."~ */
  IF ~~ THEN REPLY #16755 /* ~"Řekni mi o jeho tetovacím salóně."~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"Nenapadá tě, proč byl zavržen?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"Jak jsem již pravil, příteli, nejsem si moc jist. Zaslechl jsem toliko nejasné zvěsti, jež ho umisťovaly na špatnou stranu jednoho střetu, kdy si nějaká mocnost vybrala za svůj terč Paní. Asi bude lepší, když se ho na to zeptáš sám. Bylo mi řečeno, že je poněkud výstřední, nicméně poměrně přátelský." ~ */
  IF ~~ THEN REPLY #16759 /* ~"Nějaký bůh?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"Paní Bolesti?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"Řekni mi o jeho tetovacím salóně."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"Na co bych si měl dát pozor, až budu v tom salóně?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~Přitakal, očekávaje dotaz.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"Potřebuji bylinu pocházející z tohoto semene. Můžeš mi pomoci?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"Něco nového ohledně stromů?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"Něco nového ohledně stromů?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"Kdo jsi?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"Co tu děláš?"~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"Proč všechny stromy umírají?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"Co mi můžeš povědět o tomto místě?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"Hledám chlápka, jmenuje se Pharod."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"Sháním deník, co jsem před časem ztratil."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"Místními jsem zván 'Truchlící za Stromy', příteli."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"Proč je tomu tak?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"Co tu děláš?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"Tak se měj, Truchlící Za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"Mrhám zde svým časem, to je asi vše, čeho jsem dosáhl, příteli." Ztrápeně si povzdechl.~ */
  IF ~~ THEN REPLY #16778 /* ~"Co tím myslíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"Rozumím. Ještě bych se chtěl za něco zeptat..."~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"Když je tomu tak, nebudu tě nadále rušit. Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"To je to nejhorší, co může Sigil nabídnout, příteli. Nemám co víc bych k tomu řekl." Smutně se pousmál.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"Můžeš mi tedy říci, proč jsi zde?"~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~"A co kdybych sháněl nějakou práci?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"Kam se mám vydat za povyražením?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"Čili sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"V Úlu? Pakliže nejsi zloděj, pochybuju, že něco najdeš. Mno, přinejhorším vždycky můžeš sbírat mrtvoly a odtahovat je k branám Márnice. Někdo mi říkal, že Spalovači za ně vyplácí několik mincí, aby udrželi v ulicích a alejích Úlu alespoň náznak pořádku."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"Můžeš mi říci, proč jsi zde?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"Kam se mám vydat za povyražením?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"Čili sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"Tedy, příteli... jisté sorty lidí zde mohou najít i zábavu. Nicméně já být na tvém místě, raději bych se porozhlédl v jiné čtvrti. Bude to určitě bezpečnější."~ */
  IF ~~ THEN REPLY #16790 /* ~"Co je nebezpečné?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"Kam bych se měl zajít poptat po nějaké práci?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"Na viděnou."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"Zde? Všechno, příteli. Všecičko. Hmm, možná až na mě. Haha."~ */
  IF ~~ THEN REPLY #16794 /* ~"Kam bych se měl zajít poptat po nějaké práci?"~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"Omlouvám se, příteli. Když jsem sem prvně přišel, promlouval jsem s mnoha lidmi... ale toto jméno mi v paměti neutkvělo."~ */
  IF ~~ THEN REPLY #16797 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"Nevybavuje se mi, že bych nějaký viděl. Nepamatuješ si, kde jsi ho měl naposled?"~ */
  IF ~~ THEN REPLY #16799 /* ~"Nejsem si zcela jist. Každopádně bych se ještě zeptal na pár věcí..."~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"To nemohu s určitostí říct. Zatím sbohem."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"Vítej zpět, kamaráde."~ */
  IF ~~ THEN REPLY #16801 /* ~"Zdravím. Rád bych položil pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"Zdravím... a nashledanou."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~Na chviličku, předtím než odvrátil zrak, se na tebe zahleděl. "Aj, to jsi znova ty... příteli."~ */
  IF ~~ THEN REPLY #16803 /* ~"Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"Rád bych se omluvil za svou předchozí nezdvořilost."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~Lež: "Lituji své netaktnosti, jež jsem se dopustil... chtěl bych se za to omluvit."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"Zdravím... a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"Je mi to líto... příteli, ale v tuto chvíli jsem zaneprázdněn. Snad si budeme moci promluvit příště."~ */
  IF ~~ THEN REPLY #16806 /* ~"Rád bych se omluvil za svou předchozí nezdvořilost."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~Lži: "Lituju své hrubosti... chtěl jsem se omluvit."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"Zdravím"~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~Jenom se na tebe tiše zahledí, nic víc. "Přijímám tvou omluvu, příteli. Nechtěl ses mě na něco zeptat?"~ */
  IF ~~ THEN REPLY #16808 /* ~"Ano..."~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"Ne, řekl jsem to, proč jsem přišel. Nazdar."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"Božstvo, příteli. Bůh. Paní s nimi nemá žádné větší potíže, poněvadž jim do Sigilu nepovoluje vstup. Jmenoval se Aoskar, ale co dál se mezi nimi odehrálo, to mi již známo není."~ */
  IF ~~ THEN REPLY #16810 /* ~"Paní?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"Tak se jmenoval?'"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"Pověz mi o jeho tetovacím salóně."~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"Na co bych si měl dát pozor, až budu v tom salóně?"~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"Paní Bolesti, kamaráde? Vládkyně Sigilu?" Znenadání se tok jeho slov přerušil. Rukou ve vzduchu před svým hrudníkem načrtl polokruh, naklonil se blíže a zašeptal: "Nedělá to dobrotu debatovat o Paní. Věz tedy alespoň, že ona sama vládne Sigilu -- tak tomu vždy bylo a je, ať už se situace jeví jak chce -- a už o ní nemluvme."~ */
  IF ~~ THEN REPLY #16816 /* ~"Výborně. Teď mi pověz něco o Fellově tetovacím salóně."~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"Na co by si člověk měl dát pozor ve Fellově salóně?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"Chápu. Ještě bych se na něco pozeptal..."~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"Znovu se o ní před tebou nezmíním. Tak zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~Muž s vážným výrazem přikývl. "Jak tomu já rozumím, zničila ho. Nezapomínal bych na tento fakt, pakliže uvažuješ o tom, že se jí začneš plést do cesty, případně budeš nějak obtěžovat její sluhy."~ */
  IF ~~ THEN REPLY #16820 /* ~"Paní?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"Co víš ohledně Fellova tetovacího salónu?"~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"Na co je třeba dát si pozor ve Fellově salóně?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"Mám ještě nějaké dotazy..."~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~Truchlící za Stromy tě vítá širokým úsměvem. "Ó, můj příteli, vrátil ses! Máš na mě nějaké přání?"~ */
  IF ~~ THEN REPLY #16825 /* ~"Ano, ještě bych se každopádně zeptal..."~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"Ne, měl jsem v plánu požádat Morteho, aby ti pomohl."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"Ne, měl jsem v plánu požádat Annah, aby ti pomohla."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"Ne, měl jsem v plánu požádat Ignuse, aby ti pomohl."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"Ne, měl jsem v plánu požádat Fall-from-Grace, aby ti pomohla."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"Ne, měl jsem v plánu Dak'kona požádat, aby ti pomohl."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"Ne, ale nakonec jsem s něčím přišel. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"Ne, měl jsem v plánu Nordoma požádat, aby ti pomohl."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"Ne, měl jsem v plánu Vhailora požádat, aby ti pomohl."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"Ne, doposud ne, kamaráde. Ale stále doufám -- promlouvám k lidem každý den."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"Měl jsem v plánu požádat Morteho, aby ti pomohl."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"Měl jsem v plánu požádat Annah, aby ti pomohla."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"Měl jsem v plánu požádat Ignuse, aby ti pomohl."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"Měl jsem v plánu požádat Fall-From-Grace, aby ti pomohla."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"Měl jsem v plánu požádat Dak'kona, aby ti pomohl."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"Dobře. Někoho jsem ti našel. Dak'kone: pomož tomuto muži." ~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"Měl jsem v plánu požádat Nordoma, aby ti pomohl."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"Měl jsem v plánu požádat Vhailora, aby ti pomohl."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"Skvělé. Můžeš mi tedy na něco odpovědět..."~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"Skvělé. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"Ano, příteli, jenom popatři! Je to tak nepatrné, že téměř zraku uniká, avšak pohleď: kmenem proudí čerstvá míza - zde je to vidět. A tady několik pupenů. Teď je to již jenom záležitost času. Opět ti děkuji, žes mi dodal naději v době, kdy jsem to potřeboval nejvíce."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"S radostí. Ještě jsem na něco zvědav..."~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"Není zač, Truchlící za Stromy. Sbohem."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"S... potešením. Ještě jsem na něco zvědav..."~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"Nestojí... to za řeč, Truchlící za Stromy. Sbohem."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~Truchlící vypadá znepokojen. "Něco není v pořádku, kamaráde? Připadáš mi rozrušený..."~ */
  IF ~~ THEN REPLY #16849 /* ~"Á... ne. Jen jsem se chtěl poptat..."~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"Ne, vše je v pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"Vynikající, příteli, vynikající! Já tobě děkuji... dokázal jsi mi navrátit odvahu a důvěru v můj záměr. Doufejme, že dokáži najít další takové, co budou naslouchat... třebas nakonec něčeho dosáhneme. Tak a co teď mohu udělat já pro tebe, příteli?"~ */
  IF ~~ THEN REPLY #16851 /* ~Zahleď se na stromy a představ si je uschlé.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"Nic, ale díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"Skvělé, příteli, zkrátka výtečné! Já ti děkuji... dokázal jsi mi navrátit odvahu a důvěru v můj záměr. Doufejme, že dokáži najít další takové, co budou naslouchat... třebas něčeho dosáhneme. A co tvůj doprovod, kamaráde? Mohl bys s nimi v mém zastoupení promluvit?"~ */
  IF ~~ THEN REPLY #16854 /* ~Zahleď se na stromy a představ si, jak by vypadaly uschlé.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"Morte? Co ty na to?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"Grace, zvážila bys to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"Dak'kone, můžeš tomuto muži pomoci?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"Dak'kone: pomož tomuto člověku."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"Nordome, myslíš, že bys mohl pomoci?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"Možná časem. Teď bych ještě rád položil pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"Snad příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~Truchlící za Stromy se na tebe usměje, ale vypadá zmaten. "Co tak zábavného jsi zde shledal, příteli?"~ */
  IF ~~ THEN REPLY #16865 /* ~"Hm... vůbec nic, kámo. Rád bych se ještě zeptal..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"Ne, vůbec nic. Sbohem, Truchlící."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~Truchlící za Stromy se na tebe usměje, ale vypadá zmaten. "Copak veselého jsi zde shledal, příteli?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"Skutečně nic. Morte? Jaký je tvůj názor?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"To nic není. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"Že jsem se usmíval? Toho si nevšímej. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"Nic to neznamená. Grace, mohla bys to zvážit?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"To nic. Dak'kone, mohl bys tomuto muži pomoci?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"To nic nebylo. Dak'kone: pojď sem a pomož tomuto člověku."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"Ale nic. Nordome, myslíš, že bys zvládl pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"Nic, Truchlící. Vhailore, dokázal bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"Teda... nic, vůbec nic. A co takhle mi na něco odpovědět..."~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"Vůbec nic. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~Ve chvíli, kdy Truchlícímu za Stromy došlo, co se odehraje, strnul hrůzou. Pak zčistajasna se vrhl do akce a zaštítil svým tělem stromy aby je ochránil před Ignusem. "Ne! Stůj! To nemůžeš!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~Pokračovat...~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~Pokračovat...~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~Truchlící za Stromy tě vítá zářivým úsměvem. "Ó, můj příteli, vrátil ses! Stromy se lepší den ode dne. Máš na mě nějaké přání?"~ */
  IF ~~ THEN REPLY #16879 /* ~"Ano, ještě bych se každopádně zeptal..."~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"Ne, jenom procházím. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~Truchlící-za-Stromy od tebe vezme semeno a zdvihne si ho k očím. "Jaké nerovné semeno... se zuby podél hrany? Ostny, možná... kde jsi k němu přišel, příteli?"~ */
  IF ~~ THEN REPLY #22249 /* ~"Stará Mebbeth, porodní bába z náměstí, potřebuje tady z toho semena nějaké byliny. Můžeš říct, kde bych nějaké dostal?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"Ne..." Truchlící-za-Stromy stále upírá strnulý pohled na semeno ve svých rukou. "Toto je jediné semeno svého druhu, které jsem kdy viděl... Já... ah!" Uskočí a na jeho palci se třpytí kapička krve. "Ty ostny jsou ostré, vskutku. Možná by sis ho měl vzít."~ */
  IF ~~ THEN REPLY #22250 /* ~"Takže mi nemůžeš pomoci?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"Leč nemůžeš to semeno nechat vyrůst, já to neumím... opravdu, nikdy před tím jsem semeno tohoto druhu neviděl, příteli."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"Kdybychom potřebovali, aby to hodně rostlo, je možné donutit to růst?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"Je nějak možné růst urychlit?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"Nemíním tu čekat, než tahle zatracená věc vyroste. Potřebuju tu bylinu a potřebuju ji hned."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"Předpokládám, že bych mohl počkat než to vyroste... jak dlouho by to mohlo trvat?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~Truchlící-za-Stromy pokývá hlavou. "Nevím. Možná mnoho ročních dob."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"Kdybychom potřebovali, aby to hodně rostlo, je možné donutit to růst?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"Je nějak možné růst urychlit?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"Nemíním tu čekat, než tahle zatracená věc vyroste. Potřebuju tu bylinu a potřebuju ji hned."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"Já *opravdu* potřebuju ty byliny. Je něco, co by šlo udělat?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~Truchlící-za-Stromy se dívá na semeno. "Možná... pokud se o něj dostatečně *postarám*, uvidíme ho růst..."~ */
  IF ~~ THEN REPLY #22260 /* ~"Co tím myslíš?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~Soustředíš se na semeno, *přeješ* si, aby rostlo.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"Dobrá, hádám, že to stojí za zkoušku..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"Toto je Sigil, příteli. Víra je všechno. Všechno... od vrcholů, na kterých Sigil odpočívá, po to malé semínko, co držíš. Pokud dostatečně *věříš*, všechno je možné..."~ */
  IF ~~ THEN REPLY #22263 /* ~Soustředíš se na semeno, *přeješ* si, aby rostlo~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"Dobrá, hádám, že to stojí za zkoušku..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~K tvému překvapení tam je *prasklina* a semeno se štěpí, větvičky se rozplétají od povrchu jako prsty. Instinktivně pouštíš semeno, ale jeho drápky ti na zápěstí vytvoří něco jako větvičkový obal a nechtějí se pustit.~ */
  IF ~~ THEN REPLY #22265 /* ~"Co to k čertu...?"~ */ JOURNAL #21910 /* ~Jenom *chtít* aby semínko vyrostlo, stačilo k tomu, aby rozkvetlo... teď je ta zatracená věc obalená kolem mého zápěstí a nechce se pustit. Alespoň nezabírá žádné místo v batohu... přesto, raději se vrátím k Mebbeth a uvidím jestli je to to, co chtěla.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~Truchlící-za-Stromy překvapeně zírá na štiplavé větvičky omotané kolem tvého zápěstí. "Já... myslím, že ty ostny na nových větvičkách jsou více než to, co tvá přítelkyně chtěla."~ */
  IF ~~ THEN REPLY #22266 /* ~"Doufám, že to ze mě nějak sundá. Hele, předtím než půjdu, měl bych nějaké otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"Já ji to vrátím, takže... díky za pomoc. Sbohem."~ */ EXIT
END
