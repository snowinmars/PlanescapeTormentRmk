// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9977 /* ~Vidíš staršího muže oblečeného v roztrhaných šatech, Všiml si, že se na něj díváš, snaží se ti vyhnout. Lehce jsi ho dohnal.~ */
  IF ~~ THEN REPLY #9978 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #9979 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9980 /* ~Vypadá to, že se pokusí o útěk, ale pak si to raději rozmyslel. Jeho oči poletují kolem a na tobě se nezastaví ani na chvilku. Máš pocit, že je připravený utéct při první příležitosti, nebo kdyby ho znenadání něco překvapilo. "Nemám nic, co bys chtěl! A ani jsem ti nic neudělal! Nech mě být... prosím!"~ */
  IF ~~ THEN REPLY #9981 /* ~"Uklidni se. Jenom se tě chci zeptat na pár věcí. Dobře?"~ */ GOTO 2
  IF ~~ THEN REPLY #9982 /* ~"Promiň, že jsem tě obtěžoval. Jdi si svou cestou."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9983 /* ~Jeho oči se na tebe poprvé zaostřily. Když si tě prohlédl od hlavy k patě, jeho výraz obav se ještě prohloubil. "Já... rád bych ti pomohl, kdybych mohl. Přísahám, ale já nic nevím! Prosím, nech mě být!"~ */
  IF ~~ THEN REPLY #9984 /* ~"Jak víš, že mi nemůžeš pomoct, když jsi ještě neslyšel, na co se tě chci zeptat?"~ */ GOTO 3
  IF ~~ THEN REPLY #9985 /* ~"Fajn. Jdi."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9986 /* ~Jeho oči zase začínají poletovat kolem, jako by předpokládal, že na něj někdo zaútočí ze všech stran. Začíná si mnout ruce. Nervózně na tebe pohlédl, ale pak pokračuje v bedlivém pozorování okolí. "Uh... já nechci žádné problémy, chápeš? Takže se snažím nic nevědět a nic nevidět.. Tak vím, že ti určitě nemůžu nijak pomoct. Prosím! Nech mě být!" Máš pocit, že se za chvíli rozbrečí, tak je vyděšený.~ */
  IF ~~ THEN REPLY #9987 /* ~"Fajn. Promiň, že jsem tě obtěžoval."~ */ GOTO 4
  IF ~~ THEN REPLY #9988 /* ~"Hmph. Nic nevíš. To ti tak žeru. Potřebuju nějaké odpovědi a tebe jsem si vybral, abys mi na ně odpověděl. Další možnost na výběr, kterou máš, je, že tě praštím do frňáku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Suspicious_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #9989 /* ~"Hele, omlouvám se, že jsem tě tak vyděsil. Můžu ti nějak pomoct? Vypadáš, že máš pořádné problémy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Suspicious_1","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #9990 /* ~Po jeho tváři na chvíli přejel výraz ulehčení, když od tebe konečně odstoupil. Jeho oči ještě jednou přeletěly okolí a pak se otočil a dal na útěk.~ */
  IF ~~ THEN REPLY #9991 /* ~"Myslím, že začínám chápat význam slova 'bláznivý'."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9992 /* ~Jeho oči poletují kolem a z jeho rtů uniká tenounké tiché úpění. Skryl si tvář v dlaních a padnul na zem, hlasitě vzlykajíc. Nemyslíš si, že by ses od něj něco dozvěděl.~ */
  IF ~~ THEN REPLY #9993 /* ~"Myslím, že začínám chápat význam slova 'bláznivý'."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9994 /* ~Po jeho tváři na chvíli přejel výraz ulehčení, když od tebe odstoupil. Jeho oči přeletěly okolí a pak se zaostřili na tebe. "Ty... ty bys mi byl ochotný pomoct? Mně, cizinci? V čem je háček?!"~ */
  IF ~~ THEN REPLY #9995 /* ~"Ano, pomůžu ti. Žádný háček v tom není. Jenom mi řekni, v čem je problém."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9996 /* ~Prohlédl si tě od hlavy k patě a pak zase začal přejíždět pohledem okolí. Z jeho očí na chvíli vymizel pohled štvané zvěře, když se k tobě znovu obrátil a dívá se ti do očí- "Děkuju ti. Nikdo jiný by nenabídl pomoc někomu, jako jsem já. Nemyslím, že by pro mě ještě byla nějaká pomoc. Nikdy... Děkuju ti. Budu muset jít."~ */
  IF ~~ THEN REPLY #9997 /* ~"Rozumím. Sbohem."~ */ GOTO 4
END
