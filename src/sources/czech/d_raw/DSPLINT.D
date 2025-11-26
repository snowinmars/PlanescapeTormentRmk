// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~Zlatá kůže ohromného muže lehce jiskří, téměř jako z kovu - jestli je to jeho maso, nebo je namalovaný nějakou barvou, nedokážeš určit. Chladně si tě měří, když ses přiblížil, zdvořile se uklonil. "Vítej v Městské hale, cestovateli. Jsme Splinter, dveřník v Hale a Kněz-Král Uru. Jak ti můžeme pomoci?" Navzdory jeho pokorné nabídce pomoci je jeho hlas mocný a rozkazovačný, hluboký a rachotivý zvuk, který se rozléhá po celé komnatě.~ */
  IF ~~ THEN REPLY #65145 /* ~"Můžeš mi pomoct?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"Mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"Teď zrovna nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"Budeme potěšeni, pokud ti budeme moci zodpověděti jakoukoli to otázku, jež se bude týkati Haly Občanské, či Společenstva Vnímavých."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"Je tady muž jménem Iannis. Doufal jsem, že byste mu mohli dočasně dovolit vstup do privátního senzoria..."~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"Je tu někde jazykovědec anebo učenec, který by mi pomohl s jazykem v tomhle dvanáctistěnu?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"Jumble Vraždosmysl mě proklel. Nevíš o někom, kdo by mi mohl pomoct?"~ */ JOURNAL #66264 /* ~Promluvil jsem si se Splinterem ohledně Jumblovy kletby a on mi doporučil, ať si promluvím s mužem jménem Salabesh. Řekl mi, že by měl být v Hale nebo někde poblíž, je oblečený v robě černé nebo rudé barvy.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"Chtěl jsem se zeptat na tebe..."~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"Jak mi můžeš pomoct, Splintere?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"Není tady nějaké místo, kde bych si mohl odpočinout?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"Je tedy někde místo, kde bych si mohl odpočinout?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"Řekni mi o Hale."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"Řekni mi o Společenstvu Vnímavých."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"Někoho tady hledám..."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"Není tady někdo, kdo by mohl vědět něco o Ravel Puzzlewell?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"Činíme zde mnoho, v této skvělé hale, cestovateli. Zodpovídáme otázky hostů, jež haly nebo obyvatel týkají se. Směřujeme návštěvníky i členy Společenstva Vjemu do senzorií nebo poslucháren. Také přijímáme nové členy Společenstva. A navíc, to skrze naši osobu, jsou organizovány nákupy ze skladů Společenstva... kouzla, předměty a podobné věci."~ */
  IF ~~ THEN REPLY #48523 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"Můžeš mi ukázat cestu do senzoria?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"Jaké přednášky tady zrovna probíhají?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"Rád bych si koupil něco ze skladů Společenstva..."~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"Jak bych si mohl koupit něco ze skladů Společenstva?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"Jsou zde dvě: veřejné senzorium, kde mohou návštěvnicí používat kameny za cenu, jež je v hranici mezi deseti a padesáti měděnými mincemi, a soukromé privátní senzorium, jež pouze členům Společenstva Vnímavých přístupno jest. Ani do jednoho se sám dostavit nemůžeš. My tě tam musíme *zavést*."~ */
  IF ~~ THEN REPLY #48530 /* ~"Tak mě zaveď do veřejného senzoria."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"Tak mě zaveď do privátního senzoria."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"Jak bych se mohl dostat do privátního senzoria?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"Počkej... chtěl bych se zeptat na něco jiného..."~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"Vlastně jsem si teď uvědomil, že už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"Momentální řečníci v Hale jsou: Advokát Smrti, jež o smrti a co ji následuje hovoří, Ghysis Ohnutý, jež o Válce Krve hovoří a nakonec je zde Soustředění-Tří-Sfér jež mluví o moci přesvědčení a víry. Pokud jsou zrovna zde, můžeme tě kdykoli navést do jejich posluchárny."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"Rád bych si poslechl Advokáta Smrti."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"Rád bych si poslechl Ghysis Ohnutého."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"Rád bych si poslechl "Soustředění-Tří-Sfér."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"Je toho málo, co jsme ti neřekli. Jsme Splinter, dveřník Haly, polobožský syn Isahar a Kněz-Král Uru. Do našeho světa přišli ti, jež kráčí sférami a řekli Nám o Společenstvu Vnímavých. Byli jsme fascinováni a vrátili jsme se s nimi. Zanechali jsme Ur ve schopných rukách naší královny, abychom mohli přijít do tohoto místa a zažít na čas 'úslužnost' a 'pokoru'. Jelikož čas na tomto místě neubíhá tak, jako v Uru, století, jež zde strávíme, bude pouze několik měsíců na našem světě. Myslíme si, že už za několik dekád budeme připraveni na návrat do Uru, kde budeme opět vládnout."~ */
  IF ~~ THEN REPLY #48542 /* ~"Ach tak. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"To je... vše, co jsem chtěl vědět. Sbohem, Splintere."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"Občanská Hala jest jednou z budov největších v Sigilu. Je to domov Společenstva Vnímavých, největšího společenstva ve městě. Jsou v ní senzoria, posluchárny, tréninkové místnosti a podobná zařízení pro návštěvníky i členy Společenstva."~ */
  IF ~~ THEN REPLY #48545 /* ~"Řekni mi o Společenstvu."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"Řekni mi o sensoriích."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"Řekni mi o tréninkových místnostech."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"Jádrem víry Vnímavých jest to, že mnohovesmír může být *doopravdy* poznán smysly. Pokud nemůže někdo něco cítiti, vnímati, neexistuje to. Pouze skrze zkušenost... prožitím všech pocitů... je možno odhalit plnou Pravdu mnohovesmíru. Společenstvo Vnímavých slouží ke shromažďování zkušeností a dělení se o ně s ostatními, většinou skrze senzoria."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"Můžu se stát Vnímavým?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"Senzoria jsou komnaty, jež obsahují mnoho senzorických kamenů. Tyto kameny jsou očarovány tak, aby v sobě zadržovaly různé to vjemy či zkušenosti, které mohou později zažiti osoby používající kameny. Pokud si toho žádáš, můžeme tě do jednoho z nich zavésti."~ */
  IF ~~ THEN REPLY #48742 /* ~"Ano, prosím."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"Ne, ale mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"Ne... teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"Jsou tři - pro bojovníky, zloděje a pro mágy. Pokud je chceš nalézti, projdi středními dveřmi ve zdi východní a taktéž dveřmi dále. Budeš se nacházeti v rohu chodby... směrem východním nalezneš ve zdi jižní troje dveří. Každé dveře do jedné z tréninkových komnat vedou."~ */
  IF ~~ THEN REPLY #48559 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"Koho hledáš, cestovateli?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"Hledám Finama jazykovědce..."~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"Paní Jolmi z Domu Syrma..."~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"Merrimana."~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"Qui-Saie, cvičitele válečníků."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"Eliho Havelocka, cvičitele zlodějů."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"Paní Trnočesou, cvičitelku mágů."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"Montagua."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"Montagua."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"Vlastně nikoho. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"No nic. Sbohem, Splintere."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"Finam zde momentálně nepřednáší. Nejpravděpodobnější místo jeho pobytu bude zřejmě jeho domov. Vykroč na jih od vstupu do Haly, mezi Yvaninu Galerii kuriozit a Lékárnu. Napravo zříš malý pětistěnný domek na západ od Obchodu s Kuriozitami."~ */
  IF ~~ THEN REPLY #48573 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"Jolmi zde již delší dobu přebývá, přímo v komnatě této. Myslíme si, že zde na někoho čeká. Měla by poblíž býti."~ */
  IF ~~ THEN REPLY #48576 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"Qui-Sai si často vyhledává místa tichá vhodná pro meditaci. Bude pravděpodobně v nejprázdnější komnatě, stát někde mimo ostatní, bez pohybu a ve stavu tichého to rozjímání."~ */
  IF ~~ THEN REPLY #48580 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"Eli Havelock před časem opustil budovu v rozzuřené náladě. Myslíme si, že bude někde venku, poblíž Haly."~ */
  IF ~~ THEN REPLY #48583 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~Splinter se zamračil. "Bezpochyby bude nalezena v senzoriu. Paní Trnočesá v poslední době neplní povinnosti své, mnohem více času tráví s kameny senzorickými. Sám na to místo jít nemůžeš, ale My tě tam můžeme zavésti, pokud je toto přáním tvým."~ */
  IF ~~ THEN REPLY #48586 /* ~"Ano, přeju si to."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"Ne, ale mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"Ne... teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"Montague je zaměstnaný mladík. Bezpochyby se bude nacházet v této nebo některé sousední komnatě."~ */
  IF ~~ THEN REPLY #48590 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"Pro vstoupení do Společenstva Vnímavých musí být osoba připravena a ochotna sdíleti své zážitky. Pět jich jest požadováno - jeden z každého smyslu. Nebo je též možno uložit jedinou zkušenost, která zahrnuje silné elementy všech smyslů pěti. Musí to býti buďto nové vjemy, nebo vylepšení starých. Pokud je uznáme za vhodné, budou uloženy do senzorického kamene a ty, jelikož se Vnímavým staneš, budeš Senzorickému doteku naučen. To ti umožní přijmouti cizí rány na sebe a vyléčiti je tak skrze vlastní utrpení."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"Už jsem členem společenstva Božích Lidí, ale..."~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"Už jsem členem společenstva Spalovačů, ale..."~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"Už jsem členem společenstva... jiného společenstva, ale..."~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"Už jsem členem společenstva Chaotiků, ale..."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"Už jsem členem společenstva Božích Lidí. Rozmyslel jsem si to... Nezradím je."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~"Už jsem členem společenstva Spalovačů. Rozmyslel jsem si to... Nezradím je."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"Už jsem členem společenstva... jiného společenstva. Rozmyslel jsem si to... Nezradím je."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"Už jsem členem společenstva Chaotiků. Rozmyslel jsem si to... Nezradím je."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"Jsem připravený. Chci se stát Vnímavým."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"Musíš členem Společenstva Vnímavých býti."~ */
  IF ~~ THEN REPLY #48605 /* ~"Mohu se tedy stát Vnímavým?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"Co když už jsem *byl* Vnímavým? Nebyl jsem tady už hodně dlouho, ale ujišťuju tě... byl jsem Vnímavý."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~Bluf: "Oh, ale já *jsem* Vnímavý, vážně."~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~Bluf: "Ale já jsem členem, Splintere.. zkrátka jsem tady strašně dlouho nebyl. Během své nepřítomnosti jsem nashromáždil mnoho zážitku... tak mnoho, jako je jizev na mém těle."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~Splinter se předklonil a pozorně si tě prohlíží. "Nepoznáváme tě... ale nevidíme z tvého jazyka odkapávati lži. Dobrá. Dáme ti přístup k privilegiím, jež mají pouze členové Společenstva. *Pokud* nám ukážeš, jaké vjemy jsi nashromáždil."~ */
  IF ~~ THEN REPLY #48612 /* ~"Dobrá... Jsem připravený."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"No nic. Sbohem, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"Pravý Kněz-Král Uru vidí, jak z jazyka tvého odkapává lež. Je nemoudré lhát Nám, cestovateli."~ */
  IF ~~ THEN REPLY #48616 /* ~"Já jen... žertoval, nelhal jsem. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"Odpusť mi. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"Jenom jsem... žertoval, Splintere. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"Prosím tě o odpuštění, Splintere. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~Zamhouřil oči a bručí si něco, zatímco si tě pozorně prohlíží. "Dobrá. Dáme ti přístup k privilegiím, jež mají pouze členové Společenstva. *Pokud* nám ukážeš, jaké vjemy jsi nashromáždil."~ */
  IF ~~ THEN REPLY #48621 /* ~"Dobrá... Jsem připravený."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"No nic. Sbohem, Splintere."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~Splinter jenom přikývl.~ */
  IF ~~ THEN REPLY #48625 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"Oni ti neodpustí. Cesta zpět už nebude."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"Jsem připravený přidat se ke Společenstvu Vnímavých. Necítím žádnou loajalitu k Božím Lidem."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"Jsem připravený přidat se ke Společenstvu Vnímavých. Necítím žádnou loajalitu ke Spalovačům."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"Jsem připravený přidat se ke Společenstvu Vnímavých. Necítím žádnou loajalitu k... k mému starému Společenstvu."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"Jsem připravený přidat se ke Společenstvu Vnímavých. Necítím žádnou loajalitu k Chaotikům."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~Lži abys mohl pro Anarchisty infiltrovat Vnímavé: "Jsem připravený přidat se ke Společenstvu Vnímavých. Necítím žádnou loajalitu k... k mému starému Společenstvu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"Zapomeň na to. Mám ještě pár dalších otázek."~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"Nemyslím si, že jsem na to připravený. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"Nejprve *čich*. Jakou zkušenost Nám nabídneš?"~ */
  IF ~~ THEN REPLY #48636 /* ~"Vlastně bych rád předal zkušenost, která zahrnuje všechny zkušenosti: Probral jsem se, bez toho, že bych věděl kde jsem, na studeném zkrvaveném stole v Márnici, místě, kde jsou jenom Spalovači nebo mrtvoly v jejich opatrování..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~Přikývl. "Znepokojivá zkušenost."~ */
  IF ~~ THEN REPLY #48638 /* ~"A to jsem vynechal část o ukecané lebce, která ke mně přiletěla, jakmile jsem vstal. Bude to stačit, Splintere?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"Ano... půjdeme nyní pro prázdný kámen a zaznamenáme zkušenost tvou. Poté budeš mít přístup ke všem privilegiím, jež náleží členům Společenstva Vjemu, taktéž tě naučíme Senzorický Dotek."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~Jdi s ním zaznamenat tvou zkušenost a naučit se Senzorický Dotek.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~Jdi s ním zaznamenat tvou zkušenost a naučit se Senzorický Dotek.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~Vrátil ses do foyeru Haly se Splinterem.

"Vítáme tě do Společenstva Vnímavých, cestovateli. Ať tvé další výpravy a zkušenosti vystaví tvou cestu k velkým pravdám mnohovesmíru."~ */
  IF ~~ THEN REPLY #48643 /* ~"Díky, Splintere. Mám otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"Děkuju. Sbohem, Splintere."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"Požádáme tě o pět prožitků, jeden ke každému smyslu, nebo jednu zkušenost, jež obsahuje všechny smysly."~ */
  IF ~~ THEN REPLY #48646 /* ~"Vlastně bych rád předal zkušenost, který zahrnuje všechny zkušenosti: Probral jsem se, bez toho, že bych věděl kde jsem, na studeném zkrvaveném kovovém stole v Márnici, místě, kde jsou jenom Spalovači nebo mrtvoly v jejich opatrování..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~Přikývl. "Znepokojivá zkušenost."~ */
  IF ~~ THEN REPLY #48648 /* ~"A to jsem vynechal část o ukecané lebce, která ke mně přiletěla, jakmile jsem vstal. Bude to stačit, Splintere?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"Ano. Vítáme tě zpět, cestovateli. Máš nyní k dispozici privilegia, jež náleží toliko členům Společenstva."~ */
  IF ~~ THEN REPLY #48650 /* ~"Díky, Splintere. Mám otázku..."~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"Děkuju. Sbohem, Splintere."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"V Hale se nacházejí ubytovací prostory, ale jejich použití je povoleno toliko členům Společenstva Vnímavých. Pokud bys je chtěl navštívit, jdi na východ, nakonec k nim dorazíš. Úředník pouští Vnímavé do jejich pokojů."~ */
  IF ~~ THEN REPLY #48653 /* ~"Takže... jinak tady místnost nedostanu?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~Splinter si tě chladně prohlíží. "Znovu tě vítáme v Občanské Hale, cestovateli. Jak ti můžeme pomoci?"~ */
  IF ~~ THEN REPLY #65146 /* ~"Můžeš mi pomoct?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"Mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"Teď zrovna nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~Splinter přikývl."Pokračuj."~ */
  IF ~~ THEN REPLY #48660 /* ~"Celé mé tělo páchlo balzamovací tekutinou, ale ani to nestačilo, aby to přebilo měděný zápach masakru. Tucty těl ležely na bezpočtu stejných stolů, jako byl ten můj, všechny v různém stádiu vykuchání, stažení z kůže a podobném zmasakrování za pomocí šílených strojů, z neznámých důvodů. Jediné zvuky, které jsem slyšel, bylo skřípění kovu a nejisté kroky nemrtvých pracovníků, kteří posouvali stoly po Márnici po zrezavělých kolejích."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~Splinter přikývl."Pokračuj."~ */
  IF ~~ THEN REPLY #48662 /* ~"Celé mé tělo páchlo balzamovací tekutinou, ale ani to nestačilo, aby to přebilo měděný zápach masakru. Tucty těl ležely na bezpočtu stejných stolů, jako byl ten můj, všechny v různém stádia vykuchání, stažení z kůže a podobném zmasakrování za pomocí šílených strojů, z neznámých důvodů. Jediné zvuk, které jsem slyšel, bylo skřípění kovu a nejisté kroky nemrtvých pracovníků, kteří posouvali stoly po Márnici po zrezavělých kolejích."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~Splinter zavřel oči a chvilku přemýšlel. "Doporučujeme ti, aby sis promluvil s kouzelníkem jména Quell o řečené Ravel. Quell je vždy někde v Hale, většinou v privátním senzoriu."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"Zaveď mě do privátního senzoria."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"Jak se můžu dostat do privátního senzoria?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"Merriman většinou přechází mezi posluchárnami. Projdi středními dveřmi ve zdi východní a taktéž dalšími východními dveřmi. Pravděpodobně bude na chodbě, kde se budeš i ty nalézati."~ */
  IF ~~ THEN REPLY #48669 /* ~"Díky. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"Jdi prostředními dveřmi ve východní zdi a dál dveřmi, co jsou za nimi. Pokračuj rovně dolů halou v níž se ocitneš a vejdi druhými dveřmi na severní straně."~ */
  IF ~~ THEN REPLY #49869 /* ~"Mám ještě jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"Jdi nejjižnějšími dveřmi ve východní zdi."~ */
  IF ~~ THEN REPLY #49872 /* ~"Mám ještě jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"Jdi prostředními dveřmi ve východní zdi a dál dveřmi, co jsou za nimi. Pokračuj rovně dolů halou, ve které se ocitneš, a vejdi prvními dveřmi na severní straně."~ */
  IF ~~ THEN REPLY #49875 /* ~"Mám ještě jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"A z jakého důvodu bychom měli takovou věc povolit?"~ */
  IF ~~ THEN REPLY #51518 /* ~"Protože jeden z kamenů obsahuje fragment vzpomínek jeho dcery. Zemřela daleko od domu, poté, co ho dlouho neviděla a on velice lituje její ztráty."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~Mluvil jsem se Splinterem, dveřníkem v Hale, ohledně povolení Iannisovi k návštěvě senzorického kamene jeho dcery. Splinter souhlasil a teď už jenom stačí Iannisovi oznámit, že může dovnitř...~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~Splinter přikývnul, chvíli přemýšlí a pak znovu kývne. "Ano, dovolíme tomuto Iannisovi vstoupit do soukromého senzoria - s eskortou, pochopitelně. Můžeš mu vzkázat, že má naše povolení."~ */
  IF ~~ THEN REPLY #51520 /* ~"Díky, Splintere. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"Mé díky. Sbohem, Splintere."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~Obrovský muž se na tebe zašklebil. "Už nebudeš více obtěžovat dobré lidi. My dohlédneme, abys byl odmrštěn daleko od tohoto místa." Mávl rukou a tvůj pohled se začíná rozmazávat, jakoby se Hala kolem rozplývala...~ */
  IF ~~ THEN REPLY #56843 /* ~"Co...?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"Známe takého muže, který ti může pomoct - Finam."~ */
  IF ~~ THEN REPLY #65148 /* ~"Kde ho můžu najít?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"Díky. Mám jinou otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"To je všechno co jsem chtěl vědět, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"Ano, v hale jsou hostinské pokoje. Pokud si je přeješ navštívit, jdi od tohoto místa Halou směrem východním, nakonec na ně narazíš. Promluv si s úřednicí."~ */
  IF ~~ THEN REPLY #66168 /* ~"Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"Doporučujeme ti, aby sis promluvil s osobou známou jako Salabesh. Pokud není v tomto okamžiku vně Haly, bude v její blízkosti. Salabesh je vysoký a hubený, oblečen v robě barvy černé nebo rudé."~ */
  IF ~~ THEN REPLY #66259 /* ~"Děkuju. Mám další otázku..."~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
