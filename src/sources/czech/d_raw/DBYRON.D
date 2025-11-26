// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~Vidíš dobře oblečeného muže středních let. Prohlíží si davy zkušeným okem. Všiml si tvého příchodu a rychle, ale důkladně tě přeletěl zrakem.~ */
  IF ~~ THEN REPLY #34661 /* ~"Zdravím."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~Ignoruj muže.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~Usmál se na tebe a téměř neznatelně se uklonil. "Jsem Byron Pikit, lichvář. Můžu ti nějak pomoct?"~ */
  IF ~~ THEN REPLY #34663 /* ~"Lichvář?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~Znovu přikývl. "Ano, vypomáhám obchodníkům. Chceš si založit obchod? Udržet v chodu nějaký, který měl v poslední době smůlu? Nebo rozšířit už nějaký existující? Ať už jde o jakýkoli případ, můžeš si ke mně přijít pro finance." Prohlédl si tě od hlavy k patě. "Ale pochybuju, pane, že bys byl obchodník, takže co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #34666 /* ~"Jsem obchodník."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~Usmál se a chvíli se dívá jinam. "Obchodník se smrtí, to možná, ale to není byznys, se kterým bych spolupracoval." Zamračil se. "Pokud trváš na využití mého času, měl bys přistoupit k důvodu tvé návštěvy."~ */
  IF ~~ THEN REPLY #34669 /* ~"Můžeš mi říct o svém obchodě?"~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"Mám nějaké otázky"~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~Zamračil se a zavrtěl hlavou. "Ne, nevidím důvod..." Prohlédl si tě od hlavy k patě. "Ty rozhodně nejsi někdo, s kým bych chtěl dělat obchody. Měl bys odejít." Dívá se jinam.~ */
  IF ~~ THEN REPLY #34672 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"Dobrá tedy, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~Povzdechl si. "Dobrá tedy, pospěš si."~ */
  IF ~~ THEN REPLY #34674 /* ~"Co je tohle za místo?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"Chci si s tebou promluvit o Trist."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"Ztratil jsem lebku... neznáš někoho, kdo by mohl chtít něco takového?"~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"Pokud myslíš čtvrť jako takovou, říká se jí Dolní Čtvrť. Pokud myslíš tuto lokaci, je to tržiště pod otevřeným nebem."~ */
  IF ~~ THEN REPLY #34679 /* ~"Pověz mi o Dolní Čtvrti."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"Mám jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~Vypadá znuděně. "Je to domov běžných lidí." Ukázal kolem sebe. "Podívej se kolem a uvidíš vše, co je tu k vidění... Nic. Nic zajímavého."~ */
  IF ~~ THEN REPLY #34683 /* ~"Tak proč jsi tady?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"Mám jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~Usmál se. "Jediná věc, na kterou jsou dobří tihle pitomí ubožáci, je utrácení jejich peněz. Dává jim to pocit, že ve svých jinak bezvýznamných životech něco dokázali." Odmlčel se a pohrdavě se dívá na lidi kolem.~ */
  IF ~~ THEN REPLY #34687 /* ~"Pokračuj."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~Pokrčil rameny. "Když jsou tam peníze, najdeš tam i obchodníky a zloděje. A já dodávám obchodníky, kteří je zbaví..." Ukázal kolem. "...jejich těžce vydělaných peněz." Usmál se na tebe.~ */
  IF ~~ THEN REPLY #34690 /* ~"Zmínil ses o zlodějích. Kdo vypomáhá jim?"~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"Aha... Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"Já ne..." Vypočítavě se na tebe podíval a usmál se. "Proč se ptáš?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"Říkejme tomu zvědavost..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Někde na jihu a východě tržiště se dá najít zloděj jménem Lenny. Možná bych se od něj mohl něco naučit.~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"Potřeboval bych nějaký výcvik..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Někde na jihu a východě tržiště se dá najít zloděj jménem Lenny. Možná bych se od něj mohl něco naučit.~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"Říkejme tomu zvědavost..."~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"Potřeboval bych trochu pocvičit..."~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"Nic, mám další otázky..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~Zasmál se. "Taková zvědavost může být nebezpečná... dokonce fatální, když si nedáš pozor. "Na chvíli se odmlčel a rozmýšlí si další slova, zatímco si tě důkladně prohlíží. "Možná by sis měl promluvit s Lennym, většinou ho najdeš na jihu a východu tržiště." Chvíli se odmlčel. "Řekni mu, že tě posílám já."~ */
  IF ~~ THEN REPLY #34697 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~Ukázal na budovu za sebou. "Vynikající trh, který dodává vše, co potřebuješ." Chvíli přemýšlí, než pokračuje dál. "Exotické věci nejsou dostupné, ti ubožáci si takové předměty nemůžou dovolit, ale jinak je to dobrý trh."~ */
  IF ~~ THEN REPLY #35739 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~Pokrčil rameny. "Nejsem turistický průvodce. Jestli chceš poznat Sigil, musíš ho prozkoumat. Doporučuju ti to. Ale musím tě taky varovat. Jestli se budeš dívat příliš hluboko, zemřeš."~ */
  IF ~~ THEN REPLY #35741 /* ~"Oh? A to proč?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"Aha. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~Chvíli přemýšlí, snažíc se odhadnout, co přesně říct. "Sigil má spoustu tajemství, dobrá i špatná. Objev jich příliš mnoho a můžeš zapomenout na svůj život."~ */
  IF ~~ THEN REPLY #35744 /* ~"Jaká tajemství?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"Aha. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~Překvapeně se na tebe dívá, pak vybuchne smíchem. "Nebyla by to tajemství, kdybych ti je řekl, ne?"~ */
  IF ~~ THEN REPLY #35747 /* ~"Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"Hádám, že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"Ach, Trist..." Zamračil se a podíval se mimo. Za moment se jeho pohled vrátil na tebe, pokrčil obočí. "Co s ní?"~ */
  IF ~~ THEN REPLY #35749 /* ~"Pokouším se pro ni najít ztracený dokument."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"To nic, mám pro tebe jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~Povzdychl si a zavrtěl hlavou. "Není žádný *ztracený* dokument. To si vymyslela Trist, aby zpochybnila svůj dluh. Případ podrobně vyšetřovali Nemilosrdní a ti nenašli žádný důkaz o takovém dokumentu."~ */
  IF ~~ THEN REPLY #35752 /* ~"Nemilosrdní?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"Mohlo jim něco uniknout."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"Ano, společenství fanatiků, kteří jsou zasvěcení odhalování *pravdy* v kriminálních případech a dodržování spravedlnosti. Často je Sigilské soudy používají jako vyšetřovatele. Jsou docela důkladní a stejně nic nenašli..." Zlobně se na tebe dívá.~ */
  IF ~~ THEN REPLY #35756 /* ~"Mohlo jim něco uniknout."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"Je to možnost, ale nepříliš pravděpodobná. Asi neznáš Nemilosrdné a jejich metody, jinak bys něco takového neprohlásil. Když nemohli najít dokument, tak neexistuje." Nazlobeně se na tebe dívá.~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Někdo mohl ukrást dokument a pak ho zničit. Tak by byl dluh splacený dvakrát..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Myslím, že Byron Pikit ukradl nějaké dokumenty ženě jménem Trist. Bez nich nemůže dokázat, že zaplatila půjčku a bude prodána do otroctví, aby pokryla dluh.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Někdo mohl dokument ukrást... Nebo dokonce zničit."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Myslím, že Byron Pikit ukradl nějaké dokumenty ženě jménem Trist. Bez nich nemůže dokázat, že zaplatila půjčku a bude prodána do otroctví, aby pokryla dluh.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Někdo mohl ukrást dokument a pak ho zničit. Tak by byl dluh splacený dvakrát..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Myslím, že Byron Pikit ukradl nějaké dokumenty ženě jménem Trist. Bez nich nemůže dokázat, že zaplatila půjčku a bude prodána do otroctví, aby pokryla dluh.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Někdo mohl dokument ukrást... Nebo dokonce zničit."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Myslím, že Byron Pikit ukradl nějaké dokumenty ženě jménem Trist. Bez nich nemůže dokázat, že zaplatila půjčku a bude prodána do otroctví, aby pokryla dluh.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"Někdo mohl dokumenty ukrást a pak je zničit. To by byla půjčka splacena dvakrát..."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"Někdo mohl ty dokumenty ukrást... Možná je dokonce zničit."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~Chvíli se dívá, jako by se chtěl rozzuřit, pak se slizce usmál. "To je ale příšerná myšlenka... škoda, že o něčem takovém není důkaz..." Dál se na tebe usmívá.~ */
  IF ~~ THEN REPLY #35763 /* ~"Ano... škoda. Takže řekni mi, proč prodat Trist do otroctví? Nemohla by ti zaplatit peníze tak, že by si od tebe půjčila další?"~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"No, pokud nějaký důkaz existuje, hodlám ho najít."~ */ JOURNAL #35767 /* ~Řekl jsem Byronu Pikitovi, že chci najít ztracené dokumenty Trist.~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"Mám ještě nějaké další otázky...~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"Myslím, že už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"Ano, mohla, a já jí to nabídnul." Pevně se na tebe dívá. "Ale ona mě odmítla. A já druhou šanci nedávám. Nikdo mě neodmítá bez toho, že by trpěl následky své namyšlenosti. Nikdo..."~ */
  IF ~~ THEN REPLY #35768 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"Aha. Teď už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~Směje se ti. "Tak to ti přeju hodně štěstí. Pokud ubohé Trist nemohli pomoct Nemilosrdní, nemyslím, že ty bys měl šanci. A teď odpal, kreténe." Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #35770 /* ~Odejdi.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"Ne, už jsem tě měl dost. Neodpovím ti ani na jednu otázku. A teď odpal, blbče." Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #35771 /* ~Odejdi.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~Zmateně se na tebe podíval. "Vážně? Proč ho ve jménu devíti pekel chceš najít?"~ */
  IF ~~ THEN REPLY #35772 /* ~"Mám své důvody."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"Ukradnul mi lebku."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~Na chvíli se odmlčel. "Mám důvody, můžu tě ujistit, že docela dobré, proč nikoho nenavedu na Lothara. A teď odpal." Otočil se pryč.~ */
  IF ~~ THEN REPLY #35775 /* ~Odejdi.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"Takže? Co si myslíš, že uděláš? Vlezeš za ním a budeš ji chtít zpátky?" Prohlédl si tě důkladněji. "Musím přiznat, že vypadáš docela schopný v boji, ale proti Lotharovi?" Odfrkl si. "Tvá lebka bude zdobit jeho zdi, jestli ho budeš obtěžovat."~ */
  IF ~~ THEN REPLY #35776 /* ~"Stejně ho potřebuju najít."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"Jak tvrdej může být jeden člověk?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"Aha. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~Rozesmál se. "Lothar je nad zákonem. Je tak mocný, tak tvrdý..."~ */
  IF ~~ THEN REPLY #35779 /* ~"Stejně ho potřebuju najít."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"Aha. Teď už musím jít. Sbohem."
~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~Zavrtěl hlavou. "Vážně..." Povzdychl si a chvíli se dívá mimo. "Můžu tě ujistit, že svou lebku už zpátky nezískáš. Zapomeň na to, najdi si náhradu."~ */
  IF ~~ THEN REPLY #35781 /* ~"Proč?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"Protože je pravděpodobné, že tvoji lebku vlastní Pán Kostí, Lothar. Pokud je to tento případ, už ji nedostaneš." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #35783 /* ~"Kde můžu najít toho Lothara?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"Děkuju ti, sbohem.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~Vidíš  Byrona Pikita, lichváře. "Zase zpátky?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"Mám nějaké otázky..."~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"Chci si s tebou promluvit o Trist."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~Zasmál se a rozhlédl se. "Vážně? No, to není věc, kterou bys měl přiznat jen tak někomu." Chvíli si tě prohlíží a přemýšlí. "Jak jsem řekl, já se zloději nic nemám... Možná by sis měl promluvit s Lennym. Většinou ho najdeš na jihu a východu tržiště." Chvíli mlčí. "Řekni mu, že tě posílám já."~ */
  IF ~~ THEN REPLY #35789 /* ~"Pověz mi o tržišti pod otevřeným nebem."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"Děkuju ti, sbohem."~ */ EXIT
END
