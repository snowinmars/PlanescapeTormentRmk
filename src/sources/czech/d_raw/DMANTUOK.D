// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~Vidíš hybrida, napůl člověka a napůl krysu. Jeho rudé oči září jistou mazaností a jeho hlas ti klidně našeptává. "Tak dvounohý přišel dobrovolně do síní Mnohojednoho. Co tu chceš chlape a kam se chystáš jít? Pomalu přistup blíže, vetřelče a řekni Mantuokovi pravdu."~ */
  IF ~~ THEN REPLY #25665 /* ~"Právě jsem odcházel."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"Přišel jsem z Pohřbené vesnice a prozkoumával jsem to tu."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"Přišel jsem se na tebe podívat."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"Odkud jdu a kam, je jenom moje věc."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"Co jsi zač?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"Ne, dvounohý, proto jsi nepřišel. Nyní zodpověz mou otázku: Co chceš a kam se chystáš jít?"~ */
  IF ~~ THEN REPLY #25670 /* ~"Přišel jsem z Pohřbené vesnice a prozkoumával jsem to tu."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"Odkud jdu a kam jdu, je jenom moje věc."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"Co jsi zač?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"Řekl jsem, že odcházím. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"Aaa, vesnice. Osvěž mou paměť.. čističi, jo? Přišel jsi sem odklízet?"~ */
  IF ~~ THEN REPLY #25674 /* ~"Ano, ale tady v této síni není nic cenného na odklizení."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"Ne, nepřišel."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"Nic, co by za to stálo, dvounožče? Jedinou sračku co vidím v našem krásným domově seš TY. Už jsem se bál, že se budeme muset naučit s tím smradem žít - už nikdy neuvidíš světlo dne."~ */
  IF ~~ THEN REPLY #25676 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"Vyhrožuješ mi?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"Myslím, že uvidím."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"Tak odpovíš silám Mantuokova výslechu: Proč jsi tady? Špatnej tah, nebo krok nebo souhra náhod, že ano? Přišel jsi sem  hledat mě nebo Mnohojednoho? Anebo jednoduše nevíš, proč tu jsi? To mi všechno vysvětlíš, teď hned."~ */
  IF ~~ THEN REPLY #25679 /* ~"Byla to souhra náhod."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"Hledám někoho, co mu říkají Mnohojeden."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"Kdo je Mnohojeden?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"Přišel jsem se na tebe podívat."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"Nemyslím, že bych tu měl nějakou práci."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"Souhra náhod to je ono, že? Bylo by pro tebe daleko lepší, kdyby tě sem náhoda nepřivedla."~ */
  IF ~~ THEN REPLY #25684 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"Napravím to odchodem..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"Mluv se mnou, dvounožče a já předám tvoji zprávu k Mnohojednomu."~ */
  IF ~~ THEN REPLY #25686 /* ~"Velmi dobře."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"Nemyslím."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Mantuok se předklonil, natáčejíc ucho k tobě.~ */
  IF ~~ THEN REPLY #25688 /* ~Zaútoč na něj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"Nemám žádnou práci, která by stála za zmínku."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"Tichý král je moc silný na to, abys na něj zaútočil. Drž se dál od  Mrtvých národů  nebo tě nemrtví zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~Pousmál se. "Jak jsi řekl. Budeš mít čas na znovuzvážení této odpovědi - moře času." Zvedl ruce a z jeho prstů se začal valit kouř.~ */
  IF ~~ THEN REPLY #25693 /* ~"Co to...?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"Jsi opravdovej ignorant, že jo? Je jasný, žes sem přišel náhodou. Už neodejdeš." Zvedl ruce a z jeho prstů se začal valit kouř.~ */
  IF ~~ THEN REPLY #25695 /* ~"Můžeme o tom mluvit někde jinde..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"Co děláš?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~Švihnul ocasem. Krátce se na tebe upřeně podíval. "Slyšel jsem tě říkat, že Tichého krále si jen vymysleli mrtváci? Ano, je to tak." Letmo se podíval jinam a pak se otočil zpět, jeho oči zářily vítězstvím. "Jejich nehybná těla tam opravdu budou brzy ležet a my budeme jako potravu žrát jejich maso..." Náhle se na tebe nedůvěřivě podíval, ".. jestli toto není trik. Budeš mluvit s Mnohojedním, ano?"~ */
  IF ~~ THEN REPLY #25697 /* ~"Oóó, nyní můžu mluvit s Mnohojedním?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"A pamatuj: Oni už znají tvá slova. Sbohem. A nashle."~ */
  IF ~~ THEN REPLY #25698 /* ~"Tedy sbohem."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Mantuok zasyčel. "Je tak silný, že ano? Viděl jsi ukázku jeho moci? Mnohojeden by tohle měl vědět, pak tedy - bys to měl Mnohojednomu říci. Řekneš mu tyto špatné zprávy sám! Pojď se mnou."~ */
  IF ~~ THEN REPLY #25699 /* ~"Nemyslím."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"Jdeme."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"To nebyla prosba." Zvedl ruce a z jeho prstů se začal valit kouř. Na chvíli se vše zahalilo do tmy.~ */
  IF ~~ THEN REPLY #25701 /* ~"Co to...?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"Přišels, abys mě viděl? A kdo ti dal tento bláznivý úkol?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"Soego."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"Nikdo."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"Nikdo. Jednoduše si myslím, že jsi jeden ze společenství."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~Pozastavil se, aby tě ohodnotil. "A proč kněz prachu a popelu nepoužil normální metody? Proč Soego z krysího rodu nepoužil kurýra? No nic. Pověz mi tu zprávu a vyřídíme to."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"Tichý král je moc silný na to, abys na něj zaútočil. Drž se dál od  Mrtvých národů  nebo tě nemrtvý zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"Řekl mi, že to mohu říct jen Mnohojednomu."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"Vlastně žádnou zprávu nemám."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~Krysodlakův ocas divoce švihl. "Tak dobře. Budeš mluvit s Mnohojedním. Nelži, dvounožče, pro Mnohojednoho je stejně jednoduché číst tvé myšlenky, jako slyšet tvůj hlas."~ */
  IF ~~ THEN REPLY #25710 /* ~"To si zapamatuju."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"Tvůj jazyk trpí nevyvážeností mezi lží a pochvalou, to je znamení podvodníků. Mluv pravdivě nebo budeš trpět. Co tady děláš a co tu hledáš? Jaká souhra náhod tě přivedla do mých dveří? Co tu chceš?"~ */
  IF ~~ THEN REPLY #25711 /* ~"Byla to souhra náhod."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"Hledám někoho, co mu říkají Mnohojeden."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"Kdo je Mnohojeden?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"Nemyslím, že bych tu měl nějakou práci."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"A proč? Co potřebuješ Mnohojednomu?"~ */
  IF ~~ THEN REPLY #25715 /* ~"Mám zprávy."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"Do mé práce ti nic není."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"Ne zvlášť."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~Otevřel pusu, aby vypustil proud nadávek, ale pak se jeho oči obrátily v sloup a jeho hlava se nahnula na stranu, jako kdyby naslouchal zprávě. Když se jeho oči na tebe znovu zahleděly, vychrlil: "Tvé novinky by raději měly být hodné slyšení, dvounohý, nebo tvé utrpení bude legendární."~ */
  IF ~~ THEN REPLY #25718 /* ~"Ušetři mě výhrůžek. Jdeme."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~Zuřivě odpověděl:"Jsem hlas Mnohojednoho! Řekneš mi, proč tu jsi!" Tón jeho hlasu se změnil v podlézavý. "Řekneš mi to, nebo budeš mít... potíže, aaano?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"Ublížíš-li mi, Mnohojeden ti způsobí hrozné utrpení, Mantuoku."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"Popravdě žádnou práci nemám."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"Tichý král je jenom neživá kostra. Nemá žádnou moc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"Tichý král je moc silný na to abys na něj zaútočil. Drž se dál od  Mrtvých národů  nebo tě nemrtví zničí."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~Mantuok nato vyskočil a pak zasyčel. "Nechutný, odporný  člověče. Vyhrožovat Mantuokovi. Nerespektovat Mantuoka. Odplivovat nad jeho službou. Říkat barbarské hrozby do Mantuokových uší. Dnes sis neudělal žádné přátele, člověče. Běž za  Mnohojedním a mluv, jak umíš."~ */
  IF ~~ THEN REPLY #25724 /* ~"Dík. Vážně jsi mi pomohl."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~Vidíš křížence: napůl člověka a napůl krysu. Jeho červené oči září prohnaností a hlas, který se mu line z úst, je úlisný a plný narážek. "Takže co to tady máme... dvounožec se nám vplížil do doupěte Lotharových služebníků. Co chceš, člověče, a kam máš namířeno? Dávej si bacha, vetřelče, a Mantuokovi říkej pouze pravdu."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"Dostal jsem úkol od Lothara - mám najít jednu lebku."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"Kdo jsi?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"Hledám někoho, kdo to tady řídí."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"Hledám svého parťáka Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"Jen tak se tady rozhlížím."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~Při zmínce o Lotharovi krysodlak sklonil hlavu a syčí na tebe. "Poslal někoho bezsrstého, aby vykonal práci Klanu? To není možné!"~ */
  IF ~~ THEN REPLY #29356 /* ~"Řekl, že za nic nestojíš a že potřebuje někoho spolehlivého. A to jsem právě já."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"Přesto."~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"Nechtěl bys trochu sýra, Mantuoku?" Podej mu otrávený sýr.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"Nedal by sis trochu sýra, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Mantuok na tebe opětovně syknul. "Teď zmiz a vrať se, až budeš mít lebku." Na chvíli se odmlčel a dívá se podezřívavě na tebe. "Máš už tu lebku?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Podej mu otrávený sýr. "Nedal by sis trochu sýra, Mantuoku?" ~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Podej mu sýr. "Nedal by sis trochu sýra, Mantuoku?" ~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"Abych řekl pravdu, ano."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"Ještě ne. Ale zanedlouho se s tím vrátím."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~Krysí mužíček chňapl otrávený sýr z tvé natáhnuté ruky a zatímco tě podezřívavě pozoruje, pečlivě sýr očichává. Poté co jej zhltnul, jeho tělo se roztřáslo záchvaty. S cukáním se svalil na zem a z jeho úst vytékají krvavjé sliny. "Arghhh..."~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"Sbohem, krysí človíčku."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"Shnij v pekle, Mantuoku."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Mantuok chňapl rychle z tvých natažených rukou sýr a podezřívavě jej čichá. Nahrbil se nad ním a říká: "Jdi, cizinče. Až se vrátíš, promluvíme si více." A pustil se do ožužlávání sýra.~ */
  IF ~~ THEN REPLY #29370 /* ~"Měj se hezky, Mantuoku."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~"Jsem Mantuok. Jsem mluvčím Mnohojednoho a poslem Lothara, Pána Kostí. Já budu klást otázky a ty budeš odpovídat. Proč jsi sem přišel?"~ */
  IF ~~ THEN REPLY #29371 /* ~"Kdo je Mnohojeden?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"Kdo je Lothar?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"Ty pracuješ pro ně oba? Nebojíš se, že budeš vůči jednomu neloajální?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"Jenom se tady rozhlížím."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"Hledám někoho, kdo to tady řídí."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"Hledám svého přítele Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"Do toho ti nic není."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"Všechno, co se tady děje je mou záležitostí. Mluv nebo nechám mé soukmenovce hodovat na tvém těle až na věčnost."~ */
  IF ~~ THEN REPLY #29378 /* ~"Jenom se tady rozhlížím."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"Hledám někoho, kdo tady velí."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"Hledám svého přítele Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"Jak už jsem řekl, do toho ti nic není."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Mantuokovi se sevřela ústa a začal si pro sebe štěbetat. "Tak dobře. Ochutnám tvou krev a poznám chuť tvého masa. Krysy! Ke mně!" Zaútočil.~ */
  IF ~~ THEN REPLY #29382 /* ~"No tak, Mantuoku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"Na tomto místě kladu otázky já, zatímco ty jsi pouhé maso. Já žádné odpovědi neposkytuji. Takže... co... tady... pohledáváš?"~ */
  IF ~~ THEN REPLY #29383 /* ~"Jenom se tady rozhlížím."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"Hledám někoho, kdo tady velí."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"Hledám svého přítele Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"Do toho nic není."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"Hledáš Lothara? Ale právě jsi přišel z jeho doupěte. Teď padej a možná zapomenu, že jsem tě viděl."~ */
  IF ~~ THEN REPLY #29388 /* ~"Jak si přeješ."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"Chřestící lebka? Pchá. To je naprostá ztráta času. Jenom doufám, že ses domluvil s pánem na záchraně svého přítele, protože jinak ho nedostaneš ani náhodou."~ */
  IF ~~ THEN REPLY #29389 /* ~"Budu si to pamatovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"To je naprosto nepřijatelné. V doupěti Klanu musíš mít nějaký cíl."~ */
  IF ~~ THEN REPLY #29390 /* ~"V tom případě tě budu muset opustit."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"Ano. Budeš. Nevracej se nebo na to doplatíš."~ */
  IF ~~ THEN REPLY #29391 /* ~"Cokoliv. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Mantuok tě pečlivě pozoruje a zvažuje svá slova. "Nemysli si, že zapomenu, co jsi řekl, člověče. Vejdi a setkej se s pánem, ale pamatuj si, že budeš velmi pečlivě sledován do konce svého života." Po těchto slovech ustoupil.~ */
  IF ~~ THEN REPLY #29392 /* ~"Budu si to pamatovat."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"A získal jsi právě tu lebku, kterou pán chce?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"Mám tu lebku."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"Ano, z kostlivce."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"Ano, ze zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"Ano, z ghúla."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"Ano, z krysodlaka."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"Ano, z dlouho mrtvého kostlivce."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"Ještě ne."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"Uhni mi z cesty, Mantuoku, nebo tě na místě zabiju."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"Dal by sis kousek sýra, Mantuoku?" Dej mu otrávený sýr.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"Dal by sis kousek sýra, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"A proč to, hm? Pán zná tajemství síly a many, zná tajemství města. Možná je jednoho dne poštvu proti sobě a stanu se ještě silnějším. Mnohojeden v tom spatřuje mnoho výhod... a obrácení obyvatel Pohřbené vesnice může pomoci k rozšíření pole působnosti Lothara a Mnohojednoho. Jak vidíš všichni na tom získají. A teď... proč jsi sem přišel?"~ */
  IF ~~ THEN REPLY #29403 /* ~"Jenom se tady rozhlížím."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"Hledám někoho, kdo to tady řídí."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"Hledám svého přítele Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"Do toho ti nic není."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~Popadl sýr z tvé ruky a zhltnul jej celý na jednou. "Co se týče té lebky člověče: Máš ji?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"Mám tu lebku."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"Ano, z kostlivce."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"Ano, ze zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"Ano, z ghúla."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"Ano, z krysodlaka."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"Ano, z dlouho mrtvého kostlivec."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"Ještě ne."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"Jdi mi z cesty, Mantuoku, nebo tě na místě zabiju."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"Dal by sis ještě kousek sýra, Mantuoku?" Podej mu otrávený sýr.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"Je to doopravdy ta, kterou po tobě pán požadoval?"~ */
  IF ~~ THEN REPLY #29416 /* ~"Ano."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"Ne."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~Mantuok ohrnul svými rty. "Potom to v každém případě podej pánovi. Bude velmi potěšen, když zjistí, že  ses vrátil."~ */
  IF ~~ THEN REPLY #29418 /* ~"Děkuji, Mantuoku."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"Dej mi ji a já ji předám pánovi. Nyní už tvé služby nepotřebujeme."~ */
  IF ~~ THEN REPLY #29419 /* ~"Ne, radši mu to dám sám."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"Nechceš kousek sýra, Mantuoku?" Dej mu otrávený sýr.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"Nechceš kousek sýra, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Dej mu neznámou lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Dej mu Hargrimmovu lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Dej mu lebku Ošuntělé Mary: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Dej mu lebku Acaste: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Dej mu Soegovu lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Dej mu lebku Tichého krále: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"Ty jsi nepochopil..." Mantuok sevřel a pak zase rozevřel své pařáty a jeho ocas se začal pohupovat. "To nebyla prosba. Okamžitě mi dej tu lebku. Nepotřebujeme tady problémy... a už vůbec ne tady, dvounožče. Dokonce i někomu jako jsi ty, by takové problémy daly hodně zabrat."~ */
  IF ~~ THEN REPLY #29428 /* ~"Ta tvoje žalostná nemoc asi postihla tvůj sluch. Řekl jsem, že odevzdám tu lebku Lotharovi."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"Řekl jsem, že odevzdám tu lebku Lotharovi."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"Dej mi pokoj nebo tě na místě zabiju."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"Nechceš kousek sýra, Mantuoku?" Dej mu otrávený sýr.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"Nechceš kousek sýra, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"Dostal jsem od Lothara slib, že můžu svobodně odejít. Jestli mi neuhneš, dozví se o tom - buď ode mne nebo mé lebky, pokud by se ti nějakým způsobem podařilo mě zabít."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Odevzdej mu neznámou lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Odevzdej mu Hargrimmovu lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Odevzdej mu lebku Ošuntělé Mary: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Odevzdej mu Acastovu lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Odevzdej mu Soegovu lebku: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Odevzdej mu lebku Tichého krále: "Na, tady ji máš. Vem si tu lebku."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"Tak ji *dones* dvounožče a nevracej se bez ní. Hlavně nenech pána čekat."~ */
  IF ~~ THEN REPLY #29440 /* ~"Nenechám ho čekat už ani chvíli."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"Ne, človíčku, nemyslím si, že to budu já, kdo dnes zemře. Vemu si lebku, po které náš pán tak touží, z tvých chladných, mrtvých rukou."~ */
  IF ~~ THEN REPLY #29441 /* ~"Zkus to."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"Poté tě zabiju a zahrabu tvou lebku a tělo tak, že je už nikdo nenajde."~ */
  IF ~~ THEN REPLY #29442 /* ~"Zkus to, Mantuoku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Mantuok si vzal lebku a čichem ji kriticky posoudil. "Víš, v katakombách máme hodně, opravdu hodně místa, dvojnožče. Je tam hodně míst, kde lze lidi zazdít na věčnost a jejich křik rozhodně nikdo, nikdy neuslyší. Pravě na jedno z takových míst se dostaneš, abys tam trpěl." Obrátil se k svým krysodlakům. "Zmasakrujte tohodle dvounožce a ještě zaživa ho pohřběte v katakombách."~ */
  IF ~~ THEN REPLY #29443 /* ~"Ty zmetku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"V tom případě nemám na výběr." Otočil se k svým krysodlačím kumpánům. "Zmasakrujte ho do bezvědomí, pak vemte jeho tělo do katakomb a někde ho zazděte. Ať si žije navěky pohřben."~ */
  IF ~~ THEN REPLY #29444 /* ~"Ty zmetku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"Nejde o žádnou nemoc! Je to požehnání! Jsem mnohem významnější než ty - jsi spíš mrtvola než člověk."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"A předpokládám, že jako nám nadřazení, máte tu výsadu obývat stoky, hodovat na odpadcích a případných mrtvolkách a také oblékat se do třpytivých hadrů z nichž vám vyčuhují vaše šupinaté ocasy, které za sebou vláčíte v blátě, co? Jste pouhá havěť, stíny skutečných lidí a zoufale si přejete být lidmi. Žalostné."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"Nejsi mi ani v nejmenším roven."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~Jak mluvíš, Mantuokovy oči zeskelnatěly v záchvatu vzteku. Beze slova se na tebe vrhl.~ */
  IF ~~ THEN REPLY #29447 /* ~"Radši pouze ty, než ty a tví přátelé..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"Ne, jsme vám nadřazeni. Jsme dravci a lovíme dvounožce. Jste jsi naším pokrmem."~ */
  IF ~~ THEN REPLY #29448 /* ~"Vyzkouším si na tobě trefování do terče."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~Obrátil se k svým krysodlačím kumpánům. "Zmasakrujte ho do bezvědomí, pak vemte jeho tělo do katakomb a někde ho zazděte. Ať si žije navěky pohřben."~ */
  IF ~~ THEN REPLY #29449 /* ~"Rád bych tě viděl, jak se snažit..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"Takže ses vrátil, človíčku. Co chceš?"~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"Plním úkol pro Lothara. Mám pro něj získat jednu lebku."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"Hledám někoho, kdo to má tady na starosti."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"Hledám svého přítele Morteho."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"Jenom se tady rozhlížím."~ */ GOTO 33
END
