// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADMINAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DADMINAS~

IF ~  Global("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61498 /* ~Vidíš muže ve středních letech, oblečeného do pěkných šatů. Když jsi přistoupil, věnoval ti znuděný pohled. ~ */
  IF ~~ THEN REPLY #61499 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #61500 /* ~Ignoruj toho chlapa.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61501 /* ~Lehce přitakal. "Já tě taky, příteli. Jsem Carl Parfidor, administrativní pomocník. Můžu ti pomoci?"~ */
  IF ~~ THEN REPLY #61502 /* ~"Hledám anděla. Bylo mi řečeno, že ho najdu tady, v Curstu."~ */ GOTO 2
  IF ~~ THEN REPLY #61503 /* ~"Nemyslím si. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #61504 /* ~Zamračil se. "Určitě myslíš Triase. Jo je tady. popravdě řečeno, zrovna sedí v lochu. Proč ho chceš vidět?"~ */
  IF ~~ THEN REPLY #61505 /* ~"Potřebuju snad nějakej důvod?"~ */ GOTO 3
  IF ~~ THEN REPLY #61506 /* ~"To je soukromá věc."~ */ GOTO 4
  IF ~~ THEN REPLY #61507 /* ~"Mám pár otázek, na které může odpovědět jenom on."~ */ GOTO 5
  IF ~~ THEN REPLY #61508 /* ~"Jen tak, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61509 /* ~Zasmál se. "Jo to potřebuješ. A teď znova, proč chceš vidět Triase?"~ */
  IF ~~ THEN REPLY #61510 /* ~"To je soukromá věc."~ */ GOTO 4
  IF ~~ THEN REPLY #61511 /* ~"Mám pár otázek, na které může odpovědět jenom on."~ */ GOTO 5
  IF ~~ THEN REPLY #61512 /* ~"Jen tak, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #61513 /* ~Usmál se a zatřepal hlavou. "Nic co se týká Triase není soukromá věc. Proč ho chceš vidět?"~ */
  IF ~~ THEN REPLY #61514 /* ~"Mám pár otázek, na které může odpovědět jenom on."~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #61515 /* ~"Jen tak, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 4.0
  SAY #61516 /* ~Chvíli na tebe pevně zíral. "Chápu. Nicméně, nikdo kdo nemá povolení od Tovuse Giljafa, ho nemůže navštívit." Usmál se. "A Tovuse nikdo neuvidí dřív, pokud to sám nenařídí. Myslím že bys měl jít."~ */
  IF ~~ THEN REPLY #61517 /* ~"Určitě mě můžeš k Tovusovi dostat."~ */ GOTO 6
  IF ~~ THEN REPLY #61518 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61519 /* ~Zasmál se. "Jo to můžu, ale pokud pro tebe Tovus sám nepošle, nemám zádný důvod, na tom něco měnit. Teď odejdi."~ */
  IF ~~ THEN REPLY #61520 /* ~"Vždycky ti můžu dát po hubě, vyhodit tě ven a jednoduše za Tovusem zajít."~ */ GOTO 7
  IF ~~ THEN REPLY #61521 /* ~"Tohle je důležité. Určitě tu je nějaká možnost, jak Tovuse navštívit."~ */ GOTO 8
  IF ~~ THEN REPLY #61522 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61523 /* ~Prohlédl si tě od hlavy k patě a lehce přikývl. "No jo, seš dobře stavěnej a určitě bys mě bez větších problému uzemnil. Nicméně si myslím, že městská stráž by to asi neviděla jako dobrej nápad a navíc sám Tovus je velmi uznávanej kouzelník. Byl bys blázen kdybys to zkusil..."~ */
  IF ~~ THEN REPLY #61524 /* ~"Tohle je důležité. Určitě tu je nějaká možnost, jak Tovuse navštívit."~ */ GOTO 8
  IF ~~ THEN REPLY #61525 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #61526 /* ~Zavrtěl hlavou. "Jediná cesta zkrs tyhle dveře, je že pro tebe Tovus sám pošle. Ale on to neudělá a já nemám žádnej důvod tě tam pouštět." Zasmál se. "Dokud pro mě samozřejmě něco podstanýho neuděláš. Hmm. Ale zrovna nevím o ničem co bych od tebe potřeboval."~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61527 /* ~"A co když ti řeknu, že tvá žea, Roberta, plánuje tvoji vraždu?"~ */ DO ~SetGlobal("Roberta_Betrayed","GLOBAL",1)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #61528 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61529 /* ~Chvíli na tebe tupě zíral, pak najednou zavrčel. "To je lež. Proč by to dělala?"~ */
  IF ~~ THEN REPLY #61530 /* ~"Dala tě sledovat. Ví o všech těch šlapkách a přeje si tvou smrt."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61531 /* ~Zdá se, že máš jeho plnou pozornost; visí na každém tvém slovu. "A kdo, smím li se zeptat, mě má zapsat do Knihy mrtvých? Ty snad?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61532 /* ~"Ne. Roberta si myslí že bude lepší na to najmout nějakou děvku. Nejspíš děvče jménem Kiri."~ */ GOTO 11
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61533 /* ~"Ne. Roberta si myslí že nejlepší na to bude najmout nějakou děvku, protože nikdo jiný se k tobě tak blízko nedostane.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #61534 /* ~Chvíli jen tak strnule stál. "Počkej tady. Do hodiny se vrátím..." Už byl na odchodu, když se zastavil. "Jo a bude lepší, když bude tvá informace pravdivá. Když zjistím že není, skončíš v cele s Triasem." Usmál se. "A pak si s ním budeš moct povídat jak dlouho budeš chtít." Odešel pryč.~ */
  IF ~~ THEN REPLY #61535 /* ~"Počkám."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #61536 /* ~Vidíš Carla Parfidora. Když přistoupil, všiml sis jeho starostlivého výrazu. "Díky žes počkal příteli. Jak se zdá, tvá informace byla pravdivá. Díky za ni."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61537 /* ~"Co se teď stane s Robertou a Kiri?"~ */ GOTO 14
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61538 /* ~"Co se teď stane s Robertou?"~ */ GOTO 15
  IF ~~ THEN REPLY #61539 /* ~"Takže můžu konečně vidět Tovuse?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.0 15.0
  SAY #61540 /* ~Zavrtěl hlavou. "Ne to nemůžeš. Tovus Giljaf nepřijme nikoho dokud pro něj sám nepošle. Teď bych ti doporučil, aby sečs ztratil, než tě nechám zavřít, za tvou spoluůčast na přípravě vraždy městského úředníka!" Usmál se na tebe. "Ale pokud chceš, můžeš zbytek svých dní stávit v cele s Robertou?"~ */
  IF ~~ THEN REPLY #61541 /* ~"Ne právě odcházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #61542 /* ~Na tváři se mu objevil překvapený výraz. "To to pro tebe opravdu tolik znamená?" Zavrčel. "No nic... Roberta byla shledána vinnou a šla do vězení. A co se týče Kiri... S tou mám jiné plány." Usmál se.~ */
  IF ~~ THEN REPLY #61543 /* ~"Takže můžu konečně vidět Tovuse?"~ */ GOTO 13
  IF ~~ THEN REPLY #61544 /* ~"Chápu. Zrovna jsem na odchodu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #61545 /* ~Na tváři se mu objevil překvapený výraz. "To to pro tebe opravdu tolik znamená?" Zavrčel. "No nic... Roberta byla shledána vinnou a šla do vězení." Usmál se.~ */
  IF ~~ THEN REPLY #61546 /* ~"Takže můžu konečně vidět Tovuse?"~ */ GOTO 13
  IF ~~ THEN REPLY #61547 /* ~"Chápu. Zrovna jsem na odchodu. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61548 /* ~Vidíš muže středního věku v pěkných šatech. Usmál se když jsi přišel.~ */
  IF ~~ THEN REPLY #61549 /* ~"Zdravím."~ */ GOTO 17
  IF ~~ THEN REPLY #61550 /* ~Ignoruj toho chlapíka.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61551 /* ~Lehce přitakal. "Dobrý den příteli. Jsem administrativní pomocník. Jak ti můžu být nápomocen?"~ */
  IF ~~ THEN REPLY #61552 /* ~"Hledám anděla. Bylo mi řečeno, že ho najdu tady, v Curstu."~ */ GOTO 18
  IF ~~ THEN REPLY #61553 /* ~"Ale nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61554 /* ~"Vteřinku prosím..." Chvilku se probíral nějakými papíry, pak přestal a přečetl si jednu stránku. "Ach! Tady je to... To se jedná o Triase, že? Hmmm..." Zamračil se a zavrtěl hlavou.~ */
  IF ~~ THEN REPLY #61555 /* ~"Je tu nějaký problém?"~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61556 /* ~"Je mi líto... Ale nikdo nemůže navštívit Triase bez souhlasu Tovuse Giljafa.~ */
  IF ~~ THEN REPLY #61557 /* ~"pak bych tedy Tovuse rád viděl."~ */ GOTO 20
  IF ~~ THEN REPLY #61558 /* ~"To nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61559 /* ~Zamračil se a zavrtěl hlavou. "Je mi líto, ale není to možné. Nikdo nemůže navštívít Tovuse Doku pro něj o sám nepošle."~ */
  IF ~~ THEN REPLY #61560 /* ~"Ale já s ním musím mluvit, je to důležité."~ */ GOTO 21
  IF ~~ THEN REPLY #61561 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #61562 /* ~Obdařil tě podrážděným pohledem. "Je mi líto příteli, ale dokud pro tebe Tovus nepošle, tak k němu nemůžeš. Prosím odejdi."~ */
  IF ~~ THEN REPLY #61563 /* ~"Ale takhle si s ním nemůžu domluvit schůzku na později?"~ */ GOTO 22
  IF ~~ THEN REPLY #61564 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61565 /* ~Zírá na tebe. "Ne. Neuvidíš ho dnes, zítra, ani nikdy jindy, pokud pro tebe sám nepošle. Nemůžeš si s ním domluvit schůzku ani dnes, ani zítra ani nikdy jindy, protože on si schůzky nedomlouvá.  Uvidíš HO, až on bude chtít vidět TEBE, protože si pro TEBE nechá poslat." Přestal aby nabral dech a usmál se. "Vyjádřil jsem se jasně?"~ */
  IF ~~ THEN REPLY #61566 /* ~"Naprosto. Sbohem."~ */ EXIT
END
