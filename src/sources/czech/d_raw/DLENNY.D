// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~Vidíš mladého muže v potrhaných šatech. Jeho oči poletují po okolí. Všiml si tě a pozorně si tě prohlíží.~ */
  IF ~~ THEN REPLY #36525 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~Prohlédl si tě od hlavy k patě. Zle se zašklebil. "Doufám, že máš dobrej důvod, když obtěžuješ Lennyho."~ */
  IF ~~ THEN REPLY #36527 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~Vysmál se ti. "Nejsem průvodce. Jestli máš otázky, najdi si nějakého." Jeho úsměv se rozšířil. "Radši vypadni, než ti poteče krev."~ */
  IF ~~ THEN REPLY #36529 /* ~"Jen jsem se tě chtěl na pár věcí zeptat..."~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"Co kdybych ti řekl, že mě posílá Byron Pikit?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~Přestal se usmívat a zamračil se na tebe. "Ne, já na otázky neodpovídám. Jdi a najdi si průvodce." Rozzlobeně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36532 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~Přestal se usmívat a chvíli si tě prohlíží. "Jeho oči přejely po tvých jizvách, lehce polkl. Zamračil se a začíná vypadat nervózně. "Pikit... tě poslal? Proč?"~ */
  IF ~~ THEN REPLY #36533 /* ~"Řekl mi, že bys mi mohl odpovědět na pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"To nic, není to důležité. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~Zamračil se. "Jaké otázky..." Vypadá dost napjatě.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"Někdo mi ukradnul lebku a já ji chci zpátky. Víš, kdo by mohl takovou věc udělat?"~ */ JOURNAL #66540 /* ~Zloděj Lenny mi řekl, že za loupeží Morteho je zřejmě někdo jménem Lothar. Měl bych toho Lothara navštívit.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"Chci se tě zeptat na papíry, které jsi ukradnul Trist."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"Chtěl bych se naučit zlodějskému umění. Můžeš mě učit??"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~Zjevně se uklidnil. Máš pocit, že očekával úplně jinou otázku. Usmívá se na tebe. "Ukradená lebka, eh? Tak to bude práce Lotharových chlapců, moje ne."~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"Kdo je Lothar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"Slyšel jsem o Lotharovi, potřebuju ho najít."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~Zle se usmál."Pán Kostí, tak mu říkají, a to taky je. Je to nejvyšší kněz některé hlavní Mocnosti, ale nevím které." Směje se."Má bejvák v místě, kterýmu říká Kosti Noci."~ */
  IF ~~ THEN REPLY #36544 /* ~"Kde je to místo?"~ */ JOURNAL #66541 /* ~Lenny říká, že Lothara najdu ve zničené budově na jih od dobývací věže. Půjdu se ho zeptat, jestli "náhodu" něco neví o krádeži Morteho.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"Aha. Mám jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~Zamračil se.  "Nevím, jestli ti na tuhle otázku chci odpovědět zrovna já..." Chvíli na tebe zírá, pak pokrčil rameny. "Poničená budova na jih od dobývací věže, nemůžeš to minout." Znovu se zle usmál.~ */
  IF ~~ THEN REPLY #36547 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"Dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~Ztěžka polknul a dívá se na tebe. Všiml sis, že napíná svaly, jakoby se chystal k útěku. Pohodově si založil ruce, ale dobře vidíš, že je napnutý jako pružina. "Nevím, o čem to mluvíš, vole. Měl bys raději vypadnout."~ */
  IF ~~ THEN REPLY #36549 /* ~Zle se usměj: "Ale víš, o čem mluvím, Lenny. Ukradnul jsi Trist nějaké papíry, pro Byrona. A já jsem si pro ně přišel."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Pravdivě: "Dej mi papíry, které jsi ukradnul Trist, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Blafuj: "Dej mi papíry, které jsi ukradnul Trist, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"Už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~Ztěžka polknul, koutek jednoho oka se mu třepe. Přejel pohledem po jizvách na tvém těle, pak se pokouší zachytit tvůj pohled, ale nedaří se mu to. "Ale já... já je pak zničil, přesně jak mi Byron řekl." Konečně se ti podíval do očí.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"Fakt? Tak proč jsi tak nervózní, Lenny? Nech mě hádat: Byron si myslí, že jsi ty papíry zničil, ale možná žes to neudělal. Možná sis je nechal. Takovej materiál na malý vydírání, hm?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"Tak proč jsi tak nervózní, Lenny? Myslím si, že lžeš."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"Vážně? Tak proč jsi tak nervózní, Lenny? Nech mě hádat. Byron si myslí, že jsi ty papíry zničil, ale to není pravda. Možná sis je nechal. Takovej materiálek na malý vydírání, co?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~"Tak proč jsi tak nervózní, Lenny? Myslím, že lžeš."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~Chvíli na tebe zírá, pak se náhle odrazil a utíká pryč.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Popadni ho, než uteče.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Popadni ho, než uteče.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Nechej ho jít.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~Jakmile se rozběhl, skočil jsi po něm a popadl ho za ruku. Chvíli se pokouší zápasit, ale na tvou sílu nemá. Nakonec se přestal zmítat. "Dobře, nezničil jsem je! Dám ti je, jenom mě pak nech být!" Povolil jsi sevření.~ */
  IF ~~ THEN REPLY #36559 /* ~"Dej je sem, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"Proč sis je nechal, Lenny? Vydírání, předpokládám."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"Tak sis je nechal. Proč?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~Jakmile se rozběhl, skočil jsi po něm. Šikovně se ti vyhnul a začíná tě obcházet. Když vidíš, že už se znovu rozbíhá, zoufale ses po něm vrhl. Nepodařilo se ti ho chytit, ale alespoň jsi do něj narazil a vyvedl ho z rovnováhy, takže jsi mu znemožnil další útěk. "Dobře, nezničil jsem je! Dám ti je, jenom mě pak nech být!"~ */
  IF ~~ THEN REPLY #36562 /* ~"Dej je sem, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"Proč sis je nechal, Lenny? Vydírání, předpokládám."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"Tak sis je nechal. Proč?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~Povzdechl si. "Já... nemám je u sebe." Zamračil ses na něj a pozoruješ, jak se na jeho tváři usazuje hrůza. "Přísahám! Nemám je u sebe, nechal jsem je ve skladišti!" Dál se na tebe dívá a těžce oddechuje.~ */
  IF ~~ THEN REPLY #36565 /* ~"Tak pojďme pro ně."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~Smutně zavrtěl hlavou." Nemůžem, sou ve skladišti a to eště není otevřený. Prej tam mají nějakou změnu managementu... ale nevím, jestli je to pravda. V každým případě, nemůžu ty papíry dostat." Nevinně se na tebe dívá.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"O tu drobnost už jsem se postaral, můžeme jít pro ty papíry."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"Podívám se na to a vezmu ty papíry sám."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"Už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~Pokrčil rameny. "Fajn. Řek bych, že ten had Pikit, zase vyhrál..." Vzdorně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36569 /* ~"Pojďme zkrátka pro ty papíry, Lenny."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"Vlastně, Trist tohle vyhrála, Lenny."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"Jdi do skladiště a řekni tam, že * přišel jsem si pro půjčku * a on ti ty papíry dá. Příště, vole." Prudce se odrazil a zdrhá pryč.~ */
  IF ~~ THEN REPLY #36571 /* ~Odejdi.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Lenny má Tristiny dokumenty o půjčce ve skladišti. Můžu je dostat od úředníka.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~Odfrkl si a vzdorně se na tebe zadíval. "Nechal jsem si je, ať můžu prásknout tvýho šéfa Pikita a zachránit Trist z aukce!" Zavrtěl hlavou. "Seru na nějaký vydírání."~ */
  IF ~~ THEN REPLY #36572 /* ~"Prásknout?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"Proč ho chceš prásknout?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"Mimochodem, Pikit není můj šéf."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"Jo, prásknout." Chvíli se na tebe dívá, pak si uvědomil, že jsi ho nepochopil. "Znamená to, že ho zradím Harmoniu."~ */
  IF ~~ THEN REPLY #36575 /* ~"Proč ho chceš prásknout?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"Mimochodem, Pikit není můj šéf."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~Odfrkl si a vzdorně na tebe pohlédl. "Nechal jsem si, ať můžu prásknout tvýho šéfa Pikita a zachránit Trist z aukce!"~ */
  IF ~~ THEN REPLY #36577 /* ~"Prásknout?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"Proč ho chceš prásknout?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"Mimochodem, Pikit není můj šéf."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~Pyšně se na tebe dívá. "Možná jsem zloděj, ale mám nějaký meze. Nezabíjím a nikdy bych neudělal to, co Pikit udělal Trist a jejímu manželovi." Zavrtěl hlavou a dívá se stranou. "Řekl sem tvýmu šéfovi, že to, co dělá, je špatný, ale on se mi vysmál."~ */
  IF ~~ THEN REPLY #36580 /* ~"Mimochodem, Pikit není můj šéf."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"Pojďme pro ty papíry, Lenny."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~Nevěřícně na tebe zírá. "Myslíš to vážně? Já myslel... předtím si říkal..." Pozorně si tě prohlíží a pak se rozesmál. "Oblbnuls mě, abych ti to vykecal!" Zavrtěl hlavou a dívá se na tebe s respektem. "Dobrá práce, kámo."~ */
  IF ~~ THEN REPLY #36582 /* ~"Pojďme pro ty papíry, Lenny."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~Smutně zavrtěl hlavou."Nemůžem, sou ve skladišti a to eště není otevřený. Prej tam mají nějakou změnu managementu... ale nevím, jestli je to pravda. V každým případě, nemůžu ty papíry dostat." Nevinně se na tebe dívá. "Proto jsem nemoh pomoct Trist sám, kámo. Nemůžu dostat ty blbý papíry..."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"O tu drobnost už jsem se postaral, můžeme jít pro ty papíry."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"Podívám se na to a vezmu ty papíry sám."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"Už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~Usmívá se na tebe. "Běž do skladiště a řekni úředníkovi * přišel jsem si pro půjčku* a on ti dá Tristiny papíry. Když mu řekneš *Rozesmál jsem Pikita*, dá ti bonus..."~ */
  IF ~~ THEN REPLY #36586 /* ~"Jaký bonus?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~Směje se."Důkazy, kámo. Odstraněj Pikita z ulic na hodně, hodně dlouho, jestli je dáš správný osobě..."Chvíli přemýšlí. "Pokud znáš v Harmoniu někoho, komu můžeš věřit, dej to jemu."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"Už není na ulici, Lenny. Byron je mrtvý."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"Dobrá. Sbohem."~ */ JOURNAL #36022 /* ~Lenny má důkazy o ilegálních aktivitách Byrona Pikita ve skladišti. Navrhl mi, ať vezmu důkazy někomu v Harmoniu, komu můžu důvěřovat. Můžu důkazy získat, pokud si promluvím s úředníkem.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~Zamračil se. "Co tím myslíš?"~ */
  IF ~~ THEN REPLY #36588 /* ~"To není tvoje věc."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"Já nepracuju pro Pikita, Lenny."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"Seš si jistej, že chceš nechat svý momentální profese a stát se zlodějem?"~ */
  IF ~~ THEN REPLY #36590 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"Ne, nech mě o tom chvilku přemýšlet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~Rozhlédl se a pak pokrčil rameny. "Todle je Dolní Čtvrť. Bydlej tu obyčejný lidi. Není to tu tak zoufalý jak v Úlu, ale ani ne tak dobrý jako v Úřednické čtvrti." Znovu se rozhlédl kolem. "Jinak už se k tomu nedá moc říct."~ */
  IF ~~ THEN REPLY #36591 /* ~"Co mi můžeš říct o Úlu?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"Co mi můžeš říct o Úřednické Čtvrti?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"Děkuju ti, teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~Zavrtěl hlavou a usmál se. "Řekl bych, že to jsou Sigilské slumy. Spousta ubožáků, kteří odtamtud nemaj kam jít, snad jedině do Knihy mrtvejch." Odmlčel se. "Nic víc se o tom nedá říct."~ */
  IF ~~ THEN REPLY #36595 /* ~"Co mi můžeš říct o Úřednické Čtvrti?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"Děkuju ti, teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~Usmál se. "Jméno mluví samo za sebe. Úředníci, úředníci a víc úředníků. Pokud chceš posunovat papíry, nebo chceš, ať na tebe papíry sunou, je to tvoje místo." Pokrčil rameny. "Víc se o tom říct nedá."~ */
  IF ~~ THEN REPLY #36598 /* ~"Co mi můžeš říct o Úlu?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"Děkuju ti, teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~Usmál se, pak ze sebe vyrazil krátký, štěkavý smích. "Většina lidí si myslí, že Sigil je střed mnohovesmíru. Já osobně si myslím, že je to spíš prdel vesmíru a blbci, kteří tady žijou, jsou hovna, který ze sebe vytlačil." Usmívá se na tebe.~ */
  IF ~~ THEN REPLY #36601 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"Děkuju ti, teď už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~Vidíš Lennyho. Kysele se na tebe usmál. "No nazdar, vole. Čemu vděčím za to potěšení?"~ */
  IF ~~ THEN REPLY #36603 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~Vidíš Lennyho. Nevypadá zrovna šťastně, že tě vidí. "Co chceš, vole?"~ */
  IF ~~ THEN REPLY #36605 /* ~"Mám nějaké otázky..."~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"Chtěl bych se naučit zlodějskému umění. Můžeš mě učit??"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~Zamračil se. "Žádný další otázky, Žádný další odpovědi. Jdi za svým šéfem Pikitem a řekni mu, ať mě nechá na pokoji." Rozzlobeně na tebe hledí.~ */
  IF ~~ THEN REPLY #36608 /* ~"Pikit není můj šéf."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"Chtěl bych se naučit zlodějskému umění. Můžeš mě učit??~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~Nevěřícně na tebe zírá. "Myslíš to vážně? Já myslel.. .předtím si říkal..." Pozorně si tě prohlíží a pak se rozesmál. "Oblbnuls mě, abych ti to vykecal!" Zavrtěl hlavou a pohlíží na tebe s respektem. "Dobrá práce, kámo." Odmlčel se. "Jak by se ti líbilo Pikita rozesmát?"~ */
  IF ~~ THEN REPLY #36611 /* ~"Rozesmát?"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"Ano, To bych rád."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"Ne, opravdu mě teď nezajímá, že mám to, pro co jsem si přišel."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"Nemyslím si to, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~Usmál se. "Jo,  rozesmát ho... to jako vzít ho z ulice, odstranit ho, tak něco."~ */
  IF ~~ THEN REPLY #36615 /* ~"Ano, To bych rád."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"Ne, opravdu mě teď nezajímá, že mám to, pro co jsem si přišel."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"Nemyslím si to, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~Pokrčil rameny. "No, to už mluví samo za sebe. Sbohem, vole."~ */
  IF ~~ THEN REPLY #36618 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~Vidíš Lennyho. Usmál se na tebe. "Ahoj, kámo. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #36619 /* ~"Mám nějaké otázky..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"Chtěl bych se naučit zlodějskému umění. Můžeš mě učit??~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"Řekl jsem ti všechno, co vím, kámo. Už pro tebe nemám další odpovědi."~ */
  IF ~~ THEN REPLY #36622 /* ~"Fajn, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~Vidíš Lennyho. Usmál se, jakmile ses přiblížil. "Zdar, kámo. Slyšel sem o Byronovi a nemůžu bejt šťastnější." Radostně se zašklebil. "Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #36623 /* ~"Mám nějaké otázky...~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"Chtěl bych se naučit zlodějskému umění. Můžeš mě učit??~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~Zaváhal, pak se zle usmál. "Vážně? To je skvělé... nikomu lepšímu se to stát nemohlo."~ */
  IF ~~ THEN REPLY #39447 /* ~"Sbohem, Lenny."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~No, ukaž mi, co umíš, a já ti dám pár rad." Pozorně tě sleduje, zatímco předvádíš, co umíš. Na několika místech tě zastavil a ukázal ti, jak vylepšit své schopnosti. Po několika hodinách si myslíš, že se svými dovednostmi zloděje se cítíš pohodlněji.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Děkuju ti, Lenny."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Děkuju ti, Lenny."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"Děkuji. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Lenny se na tebe usměje a zamyšleně pokýve hlavou. "Tady, kámo. To si vem taky. Dárek od Lennyho, pomůže ti v nový profesy... Už je nebudu potřebovat." Podá ti pár vrhacích dýk.~ */
  IF ~~ THEN REPLY #64224 /* ~"Díky, Lenny. Sbohem."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"Ukaž mi co víš a já ti dám nějaké rady." Pozorně tě sleduje jak ukazuješ své schopnosti. Někdy tě zastaví a ukáže ti jak by to bylo lepší. Po pár hodinách se cítíš ve zlodějském řemeslu jako doma.~ */
  IF ~~ THEN REPLY #64784 /* ~"Děkuji ti. Musím jít."~ */ EXIT
END
