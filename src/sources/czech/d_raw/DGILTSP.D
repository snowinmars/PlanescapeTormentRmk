// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~Vidíš narudlého a hlučného muže. Vykřikuje a vyvádí, jako by měla každou chvíli propuknout válka, jako by se mu něco zmítalo ve střevech, jako by... prostě, jako by byl něčím tak podrážděný, že to nemůže říct normálním hlasem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~Vidíš narudlého a hlučného muže. Vykřikuje a vyvádí, jako by měla každou chvíli propuknout válka, jako by se mu něco zmítalo ve střevech, jako by... prostě, jako by byl něčím tak podrážděný, že to nemůže říct normálním hlasem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~Vidíš narudlého a hlučného muže. Vykřikuje a vyvádí, jako by měla každou chvíli propuknout válka, jako by se mu něco zmítalo ve střevech, jako by... prostě, jako by byl něčím tak podrážděný, že to nemůže říct normálním hlasem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~Vidíš narudlého a hlučného muže. Vykřikuje a vyvádí, jako by měla každou chvíli propuknout válka, jako by se mu něco zmítalo ve střevech, jako by... prostě, jako by byl něčím tak podrážděný, že to nemůže říct normálním hlasem. Jeho rychlopalná záplava slov je jen ztěží srozumitelná. "Ty, pane, ty tam! Vypadáš, jako bys něco potřeboval! Ještě si nejsem docela jist, co by to mělo být, ale dej mi čas, dej mi čas a já to hned zjistím! Potřebuješ místnosti? Dostaneš místnosti! Potřebuješ dodávky? Dostaneš dodávky!"~ */
  IF ~~ THEN REPLY #45545 /* ~"Co prodáváš?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"Nejdřív bych pro tebe měl pár otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"Chtěl bych ti něco prodat."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"Díky za tvůj čas, ale... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~Jeho rychlopalná záplava slov je jen ztěží srozumitelná. "Ty, pane, ty tam! Vypadáš, jako bys něco potřeboval! Ještě si nejsem docela jist, co by to mělo být, ale dej mi čas, dej mi čas a já to hned zjistím! Potřebuješ místnosti? Dostaneš místnosti! Potřebuješ dodávky? Dostaneš dodávky!"~ */
  IF ~~ THEN REPLY #45550 /* ~"Co prodáváš?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"Nejdřív bych pro tebe měl pár otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"Chtěl bych ti něco prodat."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"Díky za tvůj čas, ale... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"Cokoliv chceš, příteli! Čas a slova jsou peníze, tak jich šetři!"~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"Hledám jednu létající lebku. Někdo mi ji ukradl. Víš, kde bych ji mohl najít?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"Pověz mi o Panu Kostí..."~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"Kdo jsi a co děláš?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"Co je to za místo? Co mi můžeš říct o tomto obvodu?"~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"Nevíš o nějaké práci, kde je potřeba nových rukou?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"Ten leták je vytištěn."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho leták Scofflawu Pennovi.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"Ta zpráva byla doručena."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho zprávu Keldorovi ve Velké Slévárně.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"Ten leták byl doručen do baru U Doutnajícího nebožtíka."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho zprávu k Doutnajícímu nebožtíkovi.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"Máš pro mě ještě nějakou práci?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"Co prodáváš?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"Chtěl bych ti něco prodat."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"Ne, nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"No tak to se ptáš toho pravého! Nakupuji, prodávám, pronajímám pokoje! Můžu ti obstarat skoro cokoliv! Co máš?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"Mám kamenného Lim-Lima. Co mi za něj nabízíš?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"Mám kamenného Lim-Lima. Co mi za něj nabízíš?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"Obchodujme."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"Máš nějakou práci, kde je potřeba nových rukou?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"Ten leták je vytištěn."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho leták Scofflawu Pennovi.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"Ta zpráva byla doručena."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho zprávu Keldorovi ve Velké Slévárně.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"Ten leták byl doručen do baru U doutnajícího nebožtíka."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Řekl jsem Giltspurovi, že jsem doručil jeho zprávu k Doutnajícímu nebožtíkovi.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"Máš pro mě ještě nějakou práci?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"Zrovna teď pravděpodobně nic. Odpověz mi ještě na pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"Teď zrovna nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"Znovu! Znovu! Znovu jsi ke mně zavítal! Pak musí být něco, co pro tebe můžu udělat a můj bratr Deran nemohl, ech? Ha!"~ */
  IF ~~ THEN REPLY #45580 /* ~"Chtěl bych něco koupit."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"Měl bych pro tebe pár otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"Promluvme si o obchodu."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"Měl bys pro mě nějakou práci?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"Ten leták je vytištěn."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"Ta zpráva byla doručena."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"Ten leták byl doručen do baru U doutnajícího nebožtíka."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"Máš pro mě ještě nějakou práci?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~Jeho pohled potemněl. "Můžu ti dát tajné heslo a říct ti, kde ho použít. Jak se ti to zamlouvá?"~ */
  IF ~~ THEN REPLY #45590 /* ~"Řekni mi to heslo."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"Nemůžeš mi místo toho dát raději peníze?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"Teď zrovna mě to moc neoslnilo. Odpověz mi raději na pár otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"Nemám zájem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"Můžu ti za něj dát sedmdesát pět měďáků. Ber nebo nech ležet, příteli!"~ */
  IF ~~ THEN REPLY #45595 /* ~"Beru to. A odpověz mi ještě na pár otázek..."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"Beru to. A odpověz mi ještě na pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"Beru to. Sbohem."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"To neberu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~Hbitě popadl zvápenatělého Lim-Lima a šeptá ti do ucha: "Heslo je 'zatmění'. Pomůže ti získat přístup do skladiště Sklepení Devátého světa. Tam jsou Anarchisti. Řekni jim to heslo - ale neříkej jim, kdo ti je prozradil!"~ */
  IF ~~ THEN REPLY #45616 /* ~"'Zatmění.' Jasně. Měl bych ještě pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'Zatmění.' Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"Lebka, ech? Ech? Ha! Je jenom jeden trh pro takový druh zboží, který znám! Ale..." jeho hlas poklesl, "Nemůžu ti říct, kde to je... ledaže..."~ */
  IF ~~ THEN REPLY #45627 /* ~"Ledaže?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"Zapomeň na to. Odpověz mi ještě na nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"Nemohu ti to říct, příteli, ohrozilo by to tvůj život. Ne, pane, tvůj i můj život jsou příliš vzácné na to, aby byly zahozeny pro tak malicherný ždibec vědomosti!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"Pomohlo by ti deset mincí změnit názor?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"Co kdybych ti dal obsah mého vaku?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"Co kdybych ti vyhrožoval?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"Tak teda nic. Odpověz mi ještě na nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"Tak teda nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"To by mohlo stačit," říká. "Poslouchej a poslouchej bedlivě." Sklonil k tobě hlavu a hlasitě ti šeptá do ucha. "Jenom jediný člověk, co já vím, ~ */
  IF ~~ THEN REPLY #45650 /* ~"Kdo?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"Pán kostí! Noční vládce kostí, knihovník té nejhrůznější knihovny této části Setova domu!"~ */
  IF ~~ THEN REPLY #45653 /* ~"Mohl bys to zkrátit?"~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"A kde je to místo?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"Co chce s těmi lebkami dělat?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"Díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~Odkašlal si. "Omlouvám se, jenom jsem se ti to snažil podat trošku zajímavěji. Jen to trošku okořenit. Je to v Sigilu blízko věže - tam by *mohla* být ohořelá ruina jedné budovy. Je *možné*, že tam najdeš provazový žebřík z lidských šlach - nebo možná prostě ze dřeva - co vede dolů, dolů, dolů, dolů až do srdce Sigilu - a až znovu položíš nohu na pevnou zem... tak by ses *mohl* setkat se samotným Lotharem!"~ */
  IF ~~ THEN REPLY #45661 /* ~"Co dělá s těmi lebkami?"~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"Díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~"Je to v Sigilu blízko věže - tam by *mohla* být ohořelá ruina jedné budovy. Je *možné*, že tam najdeš žebřík z kostí vedoucí dolů, dolů až do srdce Sigilu a to by *mohl* být ten žebřík, co tě dovede do Salonu lebek a k setkání se samotným Lotharem!"~ */
  IF ~~ THEN REPLY #45665 /* ~"Co dělá s těmi lebkami?"~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"Díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"Říká se, že mrtví nic nevypráví... ale v Lotharově salónu ti mrtví vysypou svá tajemství ochotnému uchu! Čím víc mrtvých, tím víc příběhů, tím víc a víc legend ... propána, tím víc očí upřených k samému srdci mnohovesmíru!" Pro zdůraznění zahýbal obočím.~ */
  IF ~~ THEN REPLY #45669 /* ~"::vzdech:: Díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~"::vzdech:: Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"Já? Já jsem dražitel Giltspur, k tvým službám! Kupuji, prodávám, poskytuji služby a zaměstnání!"~ */
  IF ~~ THEN REPLY #45672 /* ~"Chtěl bych něco prodat."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"Chtěl bych něco koupit."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"Co třeba pár otázek?"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"Úžasné, Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"Toto? Propána, to je přece Dolní Čtvrť! Domov Božích lidí, Velké slévárny a domov služeb! Co chceš, to dostaneš!"~ */
  IF ~~ THEN REPLY #45677 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~"Co mi můžeš říct o Slévárně?"~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"Odpověz mi na pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"Ach, skupina lidí blízkých mému srdci. Říkají, že jsme všichni svými vlastními bohy, že máme ve svém duchu potenciál pro božské činy. Od nejspodnějšího žebráka po nejvýsostnějšího krále, my všichni uchováváme bohy ve svých hrudích! Kdo by mohl pomýšlet na něco lepšího?"~ */
  IF ~~ THEN REPLY #45682 /* ~"Harmoničtí."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"Anarchisté."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"Vnímaví."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"Spalovači."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"Nemilosrdní."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"Jo, dobře! Dobrá odpověď!" Zamlaská.~ */
  IF ~~ THEN REPLY #45688 /* ~"Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"Pro mě je Slévárna prostě příležitost! Místo, kde si každý může vyzkoušet svoji vytrvalost proti kovu, kde se duše setkávají se svými možnostmi a jsou uhašeny vodou poznání - nebo roztříštěny tváří v tvář kovárně pravdy!" Jeho hlas na chvilku poklesl k normálnímu tónu. "V každém případě, tak to říkají Boží lidé."~ */
  IF ~~ THEN REPLY #45691 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"Měl bych ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"Jistěže, příteli! Měl bych pro tebe menší pochůzku, jestli to bereš! Vynese ti to padesát měďáků! Vše co musíš udělat je doručit tento letáček do tiskárny a požádat Scofflawa Penna o vytištění stovky kopií! Tady! Ber!" Strčil ti do ruky pomačkaný kus papíru.~ */
  IF ~~ THEN REPLY #45695 /* ~"Dobrá. měl bych ještě pár otázek."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Vyvolávač Giltspur mě poprosil, zda-li bych nemohl za odměnu padesáti měďáků doručit leták Scofflawu Pennovi, tiskaři.~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"Díky, řekl bych. Sbohem."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Vyvolávač Giltspur mě poprosil, zda-li bych nemohl za odměnu padesáti měďáků doručit leták Scofflawu Pennovi, tiskaři.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"Je vytištěn? Výborně! Věděl jsem, že jsi pro tu práci ten pravý! Tady, dones tuhle zprávu Keldoru Durianovi do Slévárny. Jsem si jistý, že ho to potěší a že ty budeš rád za sto měďáků odměny."~ */
  IF ~~ THEN REPLY #45698 /* ~"Dobrá. měl bych ještě pár otázek."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Jakmile jsem odevzdal dodávku od Scofflawa Penna, požádal mě vyvolávač Giltspur mě o předání zprávy Keldorovi Durianskému do Velké slévárny. Odměna čítá sto mincí. ~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"Díky, řekl bych. Sbohem."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Jakmile jsem odevzdal dodávku od Scofflawa Penna, požádal mě vyvolávač Giltspur mě o předání zprávy Keldorovi Durianskému do Velké slévárny. Odměna čítá sto mincí. ~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"To bylo teda rychlé, no ne? Mé díky, mé díky, příteli. Ještě by tu byl pro tebe jeden úkol za královskou sumu dvou set měďáků! Vem tento leták Barkisovi do baru U doutnajícího nebožtíka a požádej ho, aby jej někam vyvěsil. Je to starý přítel, takže to rád uvidí!"~ */
  IF ~~ THEN REPLY #45701 /* ~

"Dobře. Mám ještě pár otázek."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Jakmile jsem Keldorovi doručil zprávu, poprosil mě vyvolávač Giltspur, zda-li bych nemohl za cenu dvou set mincí donést leták Barkisovi k Doutnajícímu nebožtíku. ~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"Díky, aspoň myslím. Sbohem."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Jakmile jsem Keldorovi doručil zprávu, poprosil mě vyvolávač Giltspur, zda-li bych nemohl za cenu dvou set mincí donést leták Barkisovi k Doutnajícímu nebožtíku. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"Tak to už pro tebe nemám žádnou práci, příteli. Máš mé díky!" Obrátil se k davu a začal zase vyvolávat.~ */
  IF ~~ THEN REPLY #45704 /* ~"Mám ještě pár otázek..."~ */ JOURNAL #67155 /* ~Poté, co jsem donesl k Doutnajcímu nebožtíkovi leták, vrátil jsem se ke Giltspurovi, který mi řekl, že už pro mě další práci nemá.~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"Sbohem tedy."~ */ JOURNAL #67155 /* ~Poté, co jsem donesl k Doutnajcímu nebožtíkovi leták, vrátil jsem se ke Giltspurovi, který mi řekl, že už pro mě další práci nemá.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"Omlouvám se, příteli. Nemám už nic víc... zařídil jsi všechny mé pochůzky." Zasmál se.~ */
  IF ~~ THEN REPLY #45707 /* ~"Tak bys mi možná mohl odpovědět na pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"Tak teda dík. Sbohem."~ */ EXIT
END
