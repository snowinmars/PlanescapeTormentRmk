// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~Z této mladé ženy vychází silný pach alkoholu a i když má tmavou kůži, vidíš, že její obličej - krásný, ale s krutým výrazem - je zrudlý. Je štíhlá, ale má dost svalů, je ozdobená exotickými šperky, které ladí s jejím průsvitným hedvábným oblečením. Její stehna a předloktí křižuje množství jizev, vypadá to na zranění z boje.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"Jaká příšernost tě přivedla na svět?" Zatvářila se znechuceně, potom se drsně zasmála. "A ten zápach! Nejsi jeden z mrtvých bastardů?" Všiml sis, že jí u boku visí dlouhý zakřivený nůž, její ruka se vznáší jenom kousíček nad jílcem.~ */
  IF ~~ THEN REPLY #32541 /* ~"*Co* jsi to řekla, děvče?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Blafuj: "Adhano? To jsi ty?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"Co je s tebou?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"Nemám s tebou spor. Nech toho a jdi si svou cestou."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Ignoruj ji a jdi pryč.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"Jaká příšernost tě přivedla na svět?" Zatvářila se znechuceně, potom se drsně zasmála. "A ten zápach! Nejsi jeden z mrtvých bastardů?" Všiml sis, že jí u boku visí dlouhý zakřivený nůž, její ruka se vznáší jenom kousíček nad jílcem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"Oh, *tohle* musím vidět. Takže mi řekni, 'pane'. Smrdíš jako stoky v Úlu? Anebo smrdí stoky v Úlu jako *ty*?"~ */
  IF ~~ THEN REPLY #32547 /* ~"*Co* jsi to řekla, děvče?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Blafuj: "Adhano? To jsi ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"Co je s tebou?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"Nemám s tebou spor. Nech toho a jdi si svou cestou."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Ignoruj ji a jdi pryč.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~Žena je překvapená.~ */
  IF ~~ THEN REPLY #32553 /* ~"Adhano? Ty si mě nepamatuješ?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"Už jsem ti to řekl, Adhano: Nikdy jsem tě nemiloval a nikdy nebudu. Ta trocha potěšení, kterou jsi mi dala, mi za agónii, kterou mi tvá přítomnost způsobuje, vůbec nestála. A teď mě nech být."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"Oh... omlouvám se. Myslel jsem si, že jsi Adhana, ale ty jsi dvakrát tak hnusnější a smrdíš třikrát víc než ona."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"To nic. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~Chvíli si tě prohlíží a pak se usmála. "Tvé hluboké rány tě asi popletly." Žena se zašklebila. "Já nejsem tvá přítelkyně, nikdy bych se nestýkala s něčím takovým, jako jsi ty."~ */
  IF ~~ THEN REPLY #32557 /* ~"Oh... omlouvám se. Myslel jsem si, že jsi Adhana, ale ty jsi dvakrát tak hnusnější a smrdíš třikrát víc než ona."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"To nic. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~Chvíli tě zmateně poslouchá, pak si odfrkla a sáhla po své zbrani.~ */
  IF ~~ THEN REPLY #32559 /* ~Bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Zavolej stráže.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~Šokovaně popadla dech. "Ty hlupáku... jsi šílený? Stráže ti nikdy neuvěří!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"Je vidět, že jsi opilá, a ty tvé jizvy znamenají, že se ráda rveš... nejspíš už jsi kvůli takovým věcem proslulá. Myslím si to."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"Je vidět, že jsi opilá, a ty tvé jizvy znamenají, že se ráda rveš. Myslím si to."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~Tvrdě se na tebe dívá a skřípe zuby. "Raději doufej, že se nepotkáme na nějakém místě, ty *pse!*" Otáčí se  a jde pryč.~ */
  IF ~~ THEN REPLY #32563 /* ~"Oh, doufám, že ..."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Zatímco odchází, zívni, jako by jsi byl znuděný k smrti.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"Sbohem."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~Tvrdě se na tebe dívá a skřípe zuby. "Zapomeňme na to a dejme se každý svou cestou."~ */
  IF ~~ THEN REPLY #32566 /* ~"Souhlasím - už jsi vyplýtvala dost mého času. Sbohem."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"Souhlas. Sbohem."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"Oh, jistě, ale nejdříve..." Na tváři se jí objevil zlý úšklebek. "...jedna otázka: Je opravdu možné, aby byl ve Sférách ještě někdo tak hnusný, jako jsi ty?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"Ano... když se na sebe podíváš, uvidíš důkaz."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Odejdi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~Překvapeně na tebe chvílí zírala, pak si odfrkla a hmátla po dýce.~ */
  IF ~~ THEN REPLY #32571 /* ~Bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Zavolej stráže.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"Neobracej se ke mně zády, ty pse. Tvá přítomnost zde na ulici mě hluboce uráží. Musíš se polepšit." Vystrčila jednu nohu dopředu. "Polib mou botu a pak zmizni z mé blízkosti a já ti odpustím."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Skloň se s polib jí botu.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Skloň se s polib jí botu.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Skloň se s polib jí botu.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Skloň se k její botě a počkej na šanci, kdy jí budeš moci ublížit.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Ignoruj její výhrůžky a jdi pryč.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~Když ses otočil, odfrkla si a vytáhla dýku...~ */
  IF ~~ THEN REPLY #32579 /* ~Bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Zavolej stráže.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Její pisklavý smích, plný výsměchu a opovržení, se rozléhá na ulici. "A teď zmizni, zbabělče. Opovaž se na mě promluvit ještě jednou a já ti vytrhnu srdce ještě dříve, než se tvé slova dostanou do mých uší."~ */
  IF ~~ THEN REPLY #32581 /* ~"Dobře, už toho mám dost. Ukaž, jak umíš zacházet s tím svým nožíkem, děvče."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Odejdi.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"Prasata!" Zavřískala. "Zabiju vás oba!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~Jak si klekáš před ženou, položila si ruce na boky a zaklonila hlavu. Její pisklavý smích, plný výsměchu a opovržení, se rozléhá na ulici.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Ukousni si sousto z její nohy.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Ukousni si sousto z její nohy.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Popadni ji za nohu a shoď ji.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Popadni ji za nohu a shoď ji.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Olízni jí botu.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~Pohnul ses... ale ona hbitě uhnula. "Za tohle zaplatíš svým *životem*, ty pse!" Vytahuje dýku...~ */
  IF ~~ THEN REPLY #32588 /* ~Bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Zavolej stráže.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~Chytil jsi za nohu a hluboko zabořil zuby do jejího masa. Zavřískala bolestí, odtrhla se od tebe a vytáhla dýku - tvé kousnutí ji přineslo velice rychlé vystřízlivění. "U Mocností, jsi *ŠÍLENÝ*?"~ */
  IF ~~ THEN REPLY #32590 /* ~Usměj se na ni a slízni si krev ze rtů.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"Dneska nemám na boty chuť, děvče. A teď zmiz, nebo si ukousnu větší kus."~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Jdi prostě pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~Otřásla se hrůzou, na tváři se jí objevila směs znechucení a strachu. "Ugh! Doufám, že na někoho jako jsi ty, už nenarazím. Bestie!" Otáčí se a jde pryč.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Když odchází, dělej zvuky, jako že něco žvýkáš.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Když odchází, dělej zvuky, jako že něco žvýkáš.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"Sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"Sbohem."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Tiše odejdi.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Tiše odejdi.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~Popadl jsi ji za kotník a prudce trhnul její nohou. Na moment se vznáší ve vzduchu, její ústa překvapením dokořán - a potom dopadá na ulici s bolestivým nárazem. Vyskočila na nohy, oči naplněné zuřivostí. "*ZABIJU TĚ*!" Vytahuje dýku...~ */
  IF ~~ THEN REPLY #32599 /* ~Bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Zavolej stráže.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"Je to velice *odporné*. "Znechuceně si odfrkla. "Stačí mi, abych se na tebe podívala a zvedá se mi žaludek."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"To řekla tvoje máma, když ses narodila?~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"Radši půjdu, děvče, než skončíš jako já."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Ignoruj ji a jdi pryč.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"Oh, ne, ne... Nikdy bych nemohla být jako ty. Jenom *pár* lidí žere vlastní exkrementy."~ */
  IF ~~ THEN REPLY #32605 /* ~"Otevři pusu ještě jednou, děvče, a já ti zaručuju, že ti to začne chutnat."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"Kdybych chtěl exkrementy, zmáčknul bych tvoji hlavičku, děvče."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Ignoruj ji a jdi pryč.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"Myslím si, že správná otázka je, co to tady *smrdí*?" Nasála vzduch a pak znechuceně zkroutila tvář. "Oh, to jsi *ty!* Opravdu jsi to ty, ty nafouklá chodící zdechlino!"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Blufuj: "Počkej... poznávám tě! Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Blufuj: "Počkej... poznávám tě! Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"Co je s tebou?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"Nemám s tebou spor. Nech toho a jdi si svou cestou."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Ignoruj ji a jdi pryč.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"Jaká příšernost tě přivedla na svět?" Zatvářila se znechuceně, potom se drsně zasmála. "A ten zápach! Nejsi jeden z mrtvých bastardů?" Všiml sis, že jí u boku visí dlouhý zakřivený nůž, její ruka se vznáší jenom kousíček nad jílcem.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~Mladá žena vypadá na chvíli zmateně, ale pak poznala Fall-from-Grace. Vypadá polekaně a zahanbeně. "Paní Grace! Nevšimla jsem si tě... zahanbeně to přiznávám, jelikož tvé ušlechtilé vzezření musí být rozpoznatelné i pro úplného hlupáka. Omlouvám se."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"Je vidět, že jsi na tom ještě hůř, než úplný hlupák."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Nechej Grace, ať mluví dál.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~Vypadá zahanbeně. "Ano, Paní... lituji, že byla taková slova vyslovena v tvé přítomnosti."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"Eh..." Zamračila se, ale pak se vzpamatovala. "Paní, co tě sem přivádí? Nějaká pochůzka?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Sarhava se lehce uklonila. "V tom případě se omlouvám tobě, Paní Grace, i tvým společníkům. Zvolila jsem špatná slova. Byl to nápoj, který mě donutil vyslovit takové nesmysly a já jsem teď plná hanby, že jsem se tak pokořila před svou učitelkou." Uklonila se, otočila se a odkráčela pryč.~ */
  IF ~~ THEN REPLY #32617 /* ~Odejdi.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"No, no... copak to tady máme? Malá tieflingská královna z kanálů, která vylezla z Úlu?" Žena ohrnula nos, jakoby mluvila s malým dítětem. "Ztratila ses, tieflice? Jé! Hele, ono to má ocas! To je ale... roztomilé!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"No, ďáblice, nedělej to." Ženu nijak neznepokojuje, že Annah vytáhla své zbraně. Nesouhlasně mlaskla. "Dej si pozor, nebo ti uříznu ten tvůj ocásek a nakrmím s ním psy."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"Dost, děvče. Omluv se jí, nebo si odříznu kousky z *tebe*."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"Dost, děvče. Omluv se jí, nebo si odříznu kousky z *tebe*."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Nechej Annah, ať to zvládne sama.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"Nech ji být, Annah. Nestojí ti za to."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"Ty špinavé stvoření Nižších Sfér, děvko, kterou by si nenechal v kleci ani tanar'ri!" Vytáhla svou dýku.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"Schovej tu dýku, děvče, nebo ji schovám v tvém těle."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"Schovej tu dýku, děvče, nebo ji schovám v tvém těle."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Zavolej stráže.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Nechej věcem volný průběh.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"A to má být co?! Gith? Tak *daleko* od žump Limba, řiti sfér?" Přimhouřila oči a čeká na Dak'konovu odpověď.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~Zamračila se. "Myslela jsem si, že se ti bude více líbit mezi masožravými žábami, které dovádějí v Limbu, githe."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"Možná, že by se ti líbilo více v márnici, děvče."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"Možná, že by se ti líbilo více v márnici, děvče."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Nechej Dak'kona, ať to zvládne sám.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~Chvíli čeká na odpověď, pak pokračuje v nadávání Dak'konovi: "Proč se nevrátíš do Limba, githe?" Chvíli přemýšlí, hladíc si přitom bradu. "Nebo to žijete na Astrální Sféře? Jsem z té vaší bandy nějak zmatená - githyanki, githzerai, jaký je mezi nima rozdíl..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Pokračuj.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~Náhle se žena usmála. "Oh! řekni mi vtip, githe!" Nadšeně tleskla rukama. "Pobav mě slavným humorem své rasy, *githyanki!*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~Prskla na Dak'kona. "A když jsem vyšla na ulice Sigilu, githe, mladá Sarhava se podívala na githí špínu a řekla, 'existuje jenom málo věcí, které by si zasloužili více než plivnutí.' Jsi bezbožný *githyankský* pes, který musí uctívat bastardy své vlastní rasy a páří se s žábami." Popadla jílec své dýky. "Tak vytáhni svůj kus oceli, ty githí špíno."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"Tohle už je více než dost. Ztichni, děvče."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"Tohle už je více než dost. Ztichni, děvče."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Zaútoč na ní sám.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"Zaútoč na ní, Dak'kone."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Počkej na Dak'konovu reakci.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~Čeká, ale Dak'kon stále nijak neodpovídá. "Přála bych si, aby vás stále drželi někde v porobě, githe. Nebo raději pozabíjeli, ať zachrání mnohvesmír před nebezpečím vaší rasy."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"Tohle už je více než dost. Ztichni, děvče."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"Tohle už je více než dost. Ztichni, děvče."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Zaútoč na ní sám.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"Zaútoč na ní, Dak'kone."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Počkej na Dak'konovu reakci.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Dak'kon stojí tiše jako kámen. Žena si odfrkla a připravila se k útoku. "Do Baatoru s tebou, ty zbabělče!"~ */
  IF ~~ THEN REPLY #32640 /* ~Pomoz Dak'konovi s bojem.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Zavolej stráže.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Nechej věcem volný průběh.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~Žena, totálně překvapená, neodpovídá.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"Co... Kdo... jak se opovaž-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"Já... já..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~Žena vytáhla svůj nůž a prskajíc jako rozzuřené zvíře se vrhla na Morteho.~ */
  IF ~~ THEN REPLY #32643 /* ~Pomoz Mortemu.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Zavolej stráže.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Nechej věcem volný průběh.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~Mladá žena ti odmítá říci byť jediné slovo.~ */
  IF ~~ THEN REPLY #32646 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~Mladá žena si krutě odfrkla a nabídla ti svou botu. "Přišel jsi ochutnat mou botu, pse? Zapomeň na to! Neřekla jsem ti snad, že se nemáš opovažovat mluvit se mnou? Pryč, nebo vytáhnu svou ocel!"~ */
  IF ~~ THEN REPLY #32647 /* ~"Už toho mám dost, děvče... vytáhni zbraň."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Zůstaň a bojuj s ní.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Sarhava na tebe kývla, ale neodpovídá.~ */
  IF ~~ THEN REPLY #32650 /* ~Odejdi.~ */ EXIT
END
