// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"Zase ty? Co chceš od starého Lothara teď? Dal jsem ti tvou lebku-přítele i tvé odpovědi. Varuju tě, nemám na tebe celý den." Jeho pohled na tebe dopadl jako úder perlíku. Velkého perlíku.~ */
  IF ~~ THEN REPLY #2952 /* ~"Potřeboval bych odpověď na pár otázek."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"Akorát jsem si s tebou chtěl znovu popovídat."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"Nemáš něco, čím bys nám mohl pomoci na naší cestě?"~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"Ale nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"Jednej rychle Zjizvený. Nemohu zmeškat celý den."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"Pověz mi o Ravel Puzzlewell."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"Proč jsem nesmrtelný?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~Lothar mi prozradil důvod, proč jsem nesmrtelný - má smrtelnost ze mě byla vyrvána noční čarodějnicí Ravel Puzzlewell. Řekl mi, že jestli chci další odpovědi, měl bych ji vyhledat v jejím Bludišti, kam ji uvrhla Paní Bolesti. Teď jenom musím zjistit, jak se tam dostat...~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"Proč jsem nesmrtelný?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"Proč jsem ztratil paměť?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"Nemáš něco, čím bys nám mohl pomoci na naší cestě? Něco jsem o tom zaslechl."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~Chladně na tě zíral, pak provedl lehký pohyb ruky a tys zjistil, že jsi pryč.~ */
  IF ~~ THEN REPLY #28735 /* ~"Vydrž minutku..."~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"Přišels pro tu ukecanou klapačku? Její nekonečné štěbetání mě unavuje."~ */
  IF ~~ THEN REPLY #28736 /* ~"To je dobrý, můžeš si ho nechat."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"Výborně. Prosím, vraťte mi ho."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~Lotharovy oči jsou jako z ocele. "Vezměte si ho." Lothar mávnutím ruky uvolnil Morteho, který zmizel z regálu. "Najdete ho venku, nahoře nad schody, blízko vstupu, kudy jste se dostali na mé území." Otočil se pryč. "Sbohem."~ */
  IF ~~ THEN REPLY #61286 /* ~"Sbohem."~ */ JOURNAL #37700 /* ~Lothar mi všchno vrátil zpět, navzdory tomu, co všechno jsem Pánu Kostí napovídal. Šel jsem až k němu, blízko jeho okruhu působnosti.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~Lothar mávnutím ruky uvolnil Morteho, který zmizel z regálu. "Najdete ho venku, nahoře nad schody, blízko vstupu, kudy jste se dostali na mé území." Otočil se pryč. "Sbohem."~ */
  IF ~~ THEN REPLY #61287 /* ~"Sbohem."~ */ JOURNAL #38204 /* ~Lothar mi vrátil Morta. Mám ho donést nahoru, blízko k místu, kde jsem vstoupil do Lotharova panství.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"Koukám, že ses vrátil. Máš pro mne lebku?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"Mám tu lebku člověka."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"Mám tu lebku krysodlaka.."~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"Tohle je lebka Hargrimma, kněze kostlivců Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"Mám lebku Ošuntělé Mary, vůdkyně zombií Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"Což takhle lebka Acaste, vůdkyně ghúlů?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"Měl bych hlavu Soega, krysodlačího misionáře Spalovačů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"Měl bych tu lebku Tichého krále, panovníka Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"Mám lebku Mantuoka."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"Ještě ne."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"Pak ti musím připomenout, abys nějakou našel. Pokud se tedy chceš dozvědět to, co potřebuješ - a pokud vyžaduješ přítomnost toho užvaněného šaška."~ */
  IF ~~ THEN REPLY #28765 /* ~"Fajn. Ještě se vrátím."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"Nuže? Přinesl jsi mi lebku, kterou jsem požadoval výměnou za tvoji?" Usmál se ironicky Lothar.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"V té rakvi není žádná lebka, Lothare."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"Ještě ne."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"Tak běž. Připomínám ti, aby ses nevracel, dokud ji nenajdeš."~ */
  IF ~~ THEN REPLY #28768 /* ~"Fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"Co to má znamenat? Hrobka byla plná pastí, tak dobře chráněná proti magii, to byla výzva hodna pouze mě! Pro tohle musí existovat nějaké vysvětlení" Pronáší zlostně a pomalu "a TY mi ho poskytneš. Projdi portálem v dolní komoře a najdi odpověď."~ */
  IF ~~ THEN REPLY #28769 /* ~"Neznám odpověď. Jak bych to mohl vědět?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"Myslím, že to byla past na odstrašení vykradačů hrobů, kteří z takových krypt žijí."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"Byla to moje vlastní hrobka."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"Zase ty?" Stařec se nepatrně zachvěl, když na tebe zíral. "Co teď chceš od starého Lothara? Dal jsem ti odpovědi. Varuji tě. Na to, abych se ti věnoval, nemám celý den." Jeho upřený pohled na tebe dopadl se silou železné palice.~ */
  IF ~~ THEN REPLY #28770 /* ~"Radši bys mi mohl ještě odpovědět na pár otázek."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"Jenom jsem si s tebou chtěl znovu promluvit."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"Ale nic, díky. Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"Koukám, že ses vrátil. Máš pro mne lebku?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"Mám tu lebku člověka."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"Mám tu lebku Mantuoka."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"Tohle je lebka Hargrimma, kněze kostlivců Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"Mám lebku Ošuntělé Mary, vůdkyně zombií Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"Což takhle lebka Acaste, vůdkyně ghúlů?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"Měl bych hlavu Soega, krysodlačího misionáře Spalovačů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"Měl bych tu lebku Tichého krále, panovníka Mrtvých národů."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"Mám tu lebku krysodlaka.."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"Ještě ne."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"Pak ti doporučuji, aby ses vrátil do podzemí a našel si novou, hmm?"~ */
  IF ~~ THEN REPLY #28782 /* ~"Fajn, fajn."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"Nuže? Přinesl jsi lebku, za kterou si budeš moci koupit odpovědi?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"V té rakvi není žádná lebka, Lothare."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"Ještě ne."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"Ah! Návštěva. Co vás přivádí do mých skromných komnat? Bez pozvání."~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"Co je tohle za místo?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"Kdo jsi?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"Nic. Odpusť, že jsem rušil."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"Ale vy pochopte, že nemůžete vstoupit do Kostí noci bez pozvání a očekávat, že budete moci rychle odejít. Prodávám zde odpovědi hochu a při všech bozích budu mít jednoho z vás, nebo tvou hlavu jako ozdobu svého regálu."~ */
  IF ~~ THEN REPLY #28788 /* ~"To bych teda chtěl vidět, starochu."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"Prodáváš odpovědi? Pak mi tedy pověz: Kdo jsem? Proč jsem nesmrtelný?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"To se mi nezdá. Sbohem."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"Nemáš něco, čím bys nám mohl pomoci na naší cestě?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"Máš ještě jednu šanci dát mi odpověď, předtím než si ji vyrvu z tvé rozšklebené lebky." ~ */
  IF ~~ THEN REPLY #28792 /* ~"Tak jsem tady proto, abych si koupil nějaké odpovědi."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"A ty máš přesně jednu šanci ztratit se, než tě zabiju."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"Nemáš něco, čím bys nám mohl pomoci na naší cestě? Něco jsem o tom zaslechl."~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~Stařecké oči se zaleskly a Lothar zapěl jakési slovo z tajemné fráze. Bolest ti zkroutila tělo a všechno se halí do temnoty...~ */
  IF ~~ THEN REPLY #28794 /* ~"Poč..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~Záblesk světla a kouř tě na chvíli oslepily a vetchý starý muž najednou stál před tebou. "Máme návštěvníky?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"Pro všechny otázky, pro všechna kouzla, je tu jistá cena. V tvém případě..." Starý muž se odmlčel. "Lebky jsou má živnost. Dávám jim otázky a nebožtíci odpovídají. Mrtví toho za svých životů nashromáždí mnoho. Čím cennější lebka, tím více otázek mi můžeš položit, nebo tím lepší kouzlo pro tebe vyvolám."~ */
  IF ~~ THEN REPLY #28795 /* ~"A?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~V Lotharových očích se nebezpečně zablesklo. "To nebyla prosba."~ */
  IF ~~ THEN REPLY #28797 /* ~"Říkám, zapomeň na to."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"Fajn, fajn. Dostaneš svou lebku."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"Hrobka je už prázdná."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"Máš ještě jednu šanci zjizvenče, předtím než se rozhodnu vzít si spíše tvou lebku."~ */
  IF ~~ THEN REPLY #28799 /* ~"Chop se šance, Lothare."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"Není třeba se rozčilovat. Dostaneš svou lebku."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"Hrobka už je prázdná."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~Staroch ignoruje Morteho. "Zdravím poutníku. Kdo jsi, žes bez pozvání vstoupil do skromných Lotharových komnat?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"Unesl jsi mého přítele. Vrať mi ho. Hned!"~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"Unesl jsi mého přítele. Vrať mi ho. Hned!"~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"Omlouvám se, pane, ale zdá se mi, že máš něco, co náleží mě."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"Unesen? Tvůj přítel? Nic takového jsem neudělal. Kde je tvůj přítel?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"Unesen? Tvůj přítel? Nic takového jsem neudělal. Kde je tvůj přítel?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"Musíš projít skrz Místo neustálého rozjímání, které ovládají kraniokrysy, nebo skrz území Mrtvých národů, které spravují mrtví, projít vodní říší Přemoženého národa a najít hrobku toho bezejmeného pána. Takový ostřílený... dobrodruh... jako ty, by s tím neměl mít žádné problémy. Pod pohovkou je průchod do podzemí, na jehož východní straně je portál. Ten zůstane aktivní, dokud se nevrátíš. Až mi přineseš lebku, dostaneš své odpovědi."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"Byl jsem tam. V té kryptě není žádné tělo."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"Ještě se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"Oh, ano? Co by to mělo být?"~ */
  IF ~~ THEN REPLY #28806 /* ~"Jedna moje lebka leží támhle na té polici."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"Můj přítel Morte se točí támhle na polici."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~"Ty chceš zpět tu užvaněnou lebku, která má asi tolik slušnosti, co by se za nehet vešlo a vychování řeznického psa? Pokud ji chceš zpět, dones mi nějakou hodnotnější," odpověděl Lothar. "Nehodlám smlouvat o něčem, co už je mé."~ */
  IF ~~ THEN REPLY #28809 /* ~"Není tvůj a nikdy nebyl... nebyl nikoho... jenom sám sebe."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"Je můj."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"Kde můžu najít nejcennější lebku?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"Kde můžu najít větší lebku?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~EMPTY NODE REPORT THIS TO COLIN IF YOU HIT IT~ */
  IF ~~ THEN REPLY #28812 /* ~"Tak dobrá. Kde můžu najít nejcennější lebku?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"Je můj."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"Nikdy nebyl tvůj a není tvůj."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~Projdi průchodem pod pohovkou uprostřed místnosti a poté portálem na východní stěně do katakomb. Portál zůstane aktivní, dokud se nevrátíš. V katakombách najdeš spoustu lebek. Jedna velké ceny leží v zapomenuté kryptě Sběračů, za územím Přemoženého národa. Přines mi tu lebku - a nedopadni jako mí krysodlačí přisluhovači, kteří to nedokázali - a já se pak rozhodnu, jestli ti tvého užvaněného přítele vrátím. A snad ti zodpovím i nějaké otázky."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"Byl jsem v hrobce, o které mluvíš. Je prázdná."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, vrátí mi Morteho.~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"Jakou záruku mám, že dodržíš své slovo?"~ */ JOURNAL #66222 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, vrátí mi Morteho.~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"Tak dobrá. Já se vrátím a ty mi dáš Morteho. Sbohem."~ */ JOURNAL #66222 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, vrátí mi Morteho.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"Máš mé slovo. To ti musí stačit. Pokud ovšem už nechceš svého přítele nikdy znovu spatřit..."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"Tvá hloupost je vážně udivující. Opravdu víš velmi málo skoro o ničem. A teď: Přines mi jinou lebku, nebo řekni sbohem svému příteli."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"Tak fajn. Jak mám najít lebku, která je cennější než nejcennější?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"Prostě mi ho vrať. Je můj."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"Tak fajn. Jak najdu lebku v hodnotě lebky jeho?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~Lotharova ruka se natáhla po holi. "Ta lebka je MÁ. Pokud si to nemyslíš, tak si vezmu tvou.  Ta taky ujde."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"Ta lebka nemluví do větru. Drž se toho."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"Výborně. Jak mám najít nejcennější lebku?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"To se mi nezdá. Vrať mi ho, nebo poneseš následky."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"Tak výborně. Jak najdu větší lebku?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~Lothar pozvedl lebku a obezřetně ji prozkoumal. "Pch. Ta je bezcenná. Nic se z ní nedozvím. Chci po tobě nějakou CENNOU lebku oplátkou za můj drahocenný čas. Ztrať se!"~ */
  IF ~~ THEN REPLY #28858 /* ~"Fajn, fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~V Lotharových očích se zlostně zablesklo. "Takže ty chceš vraždit mé služebníky? Podej mi tu lebku." Obezřetně ji prozkoumal a pronesl: "Přes jeho kosti dokážu vycítit jeho proradnost. Býval to opatrný zbabělec, ale nebyl dost opatrný, co? Teď bych měl být schopen získat jeho tajemství, zjistit, proč se nikdy nebál a pochopit jeho neupřímnost." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28859 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~Lothar si od tebe vzal lebku a kriticky jí prozkoumal. "Hargrimm, povídáš? Vůdce Mrtvých národů? Z něho dostanu spoustu informací. Tohle bude dobrý obchod." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28860 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~Lothar si od tebe vzal hlavu Ošuntělé Marry, sedřel z ní přebytečné maso a pak ji obezřetně prozkoumal. "Vůdkyně zombií z Mrtvých národů, povídáš? To je plně dostačující." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28861 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~Lothar si od tebe vzal Acastinu hlavu, odstranil z ní přebytečné maso a pak ji obezřetně prozkoumal. "Královna ghúlů? To je plně postačující." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28862 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~Lothar si od tebe vzal Soegovu hlavu, obezřetně jí prozkoumal a zkontroloval chrup. "Spalovačský misionář a špión? To je plně postačující." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28863 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~Lothar si od tebe vzal hlavu Tichého Krále a jemně jí potřásl. "Tichý Král, je to tak? To je plně postačující!" Otočil se k lebce a zašeptal: "Tak, můj nový příteli, teď mi vypovíš o tvých tajemstvích." Jeho prsty prokmitly vzduchem a seskupily se do jistého gesta. "Tvůj přítel na tebe bude čekat na ulici, odkud jsi přišel. Teď se mě můžeš ptát."~ */
  IF ~~ THEN REPLY #28864 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~Lothar si od tebe vzal lebku a kriticky ji prozkoumal. "Hargrimm, povídáš? Vůdce Mrtvých národů? Z něho dostanu spoustu informací. Tohle bude dobrý obchod. Teď mi můžeš klást otázky." ~ */
  IF ~~ THEN REPLY #28865 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~Lothar si od tebe vzal hlavu Ošuntělé Marry, sedřel z ní přebytečné maso a pak ji obezřetně prozkoumal. "Vůdkyně zombií z Mrtvých národů, povídáš? To je plně dostačující. Teď mi můžeš klást otázky." ~ */
  IF ~~ THEN REPLY #28866 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~Lothar si od tebe vzal Acastinu hlavu, odstranil z ní přebytečné maso a pak ji obezřetně prozkoumal. "Královna ghúlů? To je plně postačující. Teď mi můžeš klást otázky."~ */
  IF ~~ THEN REPLY #28867 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~Lothar si od tebe vzal Soegovu hlavu, obezřetně jí prozkoumal a zkontroloval chrup. "Spalovačský misionář a špión? To je plně postačující a bude to přinejmenším zábavné. Teď mi můžeš klást otázky."~ */
  IF ~~ THEN REPLY #28868 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~Lothar si od tebe vzal hlavu Tichého Krále a jemně jí potřásl. "Tichý Král, je to tak? To je plně postačující! Teď mi můžeš klást otázky." Otočil se k lebce a zašeptal: "Tak, můj nový příteli, teď mi vypovíš o tvých tajemstvích."~ */
  IF ~~ THEN REPLY #28869 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"Tvá smrtelnost - duše, to, co umožňuje žít a zemřít - se z tebe bohužel ztratila. Magickou silou od tebe byla odtržena noční čarodějkou Ravel Puzzlewell. Smrtelnost je cesta k tvé existenci - když ji najdeš, najdeš i odpovědi na své otázky."~ */
  IF ~~ THEN REPLY #28870 /* ~"Pověz mi o té Ravel."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"Kdo?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"To je pouze vedlejší efekt ztrácení tvé smrtelnosti."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"Ztratil jsem svou smrtelnost? Co tím myslíš?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"Ztratil jsem svou smrtelnost? Co tím myslíš?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"Ravel Puzzlewell zůstává stále záhadou, stejně jako noční čarodějky. Někdo říká, že je šílená; jiní říkají, že její hra sahá hlouběji, než člověk může vidět. Je ztělesněním zla, je jím prolezlá skrz naskrz, ve srovnání s ní jsou rejdy všech fiendů pouze báchorkou pro děti. Nyní je z dosahu všech lidí, naštěstí, byla uvězněna Paní Bolesti."~ */
  IF ~~ THEN REPLY #28874 /* ~"Uvězněna? Ale jak ji najdu?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"Co vlastně dřív dělala?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"Ach tak. Mockrát dík. Sbohem, Lothare."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"Bludiště jsou jako kapsy v dimenzích... malá místa mezi místy. Abys nějakého dosáhl, musíš najít portál a klíč. Já nevím kde je ani jedno z toho. Možná, že bys mohl vyhledat nějaké své staré známé - určitě jsi jich za sebou nechal celou řadu. Vlastně... oni bezpochyby najdou tebe - a modlit se, aby ti pomohli. Snad bys pro začátek mohl zkusit i Radnici - získáš tam spoustu odpovědí."~ */
  IF ~~ THEN REPLY #28877 /* ~"Co vlastně Ravel dělala?"~ */ JOURNAL #31882 /* ~Lothar mi navrhl, ať navštívím Městskou Halu, pokud chci odpovědi na mé otázky o Ravel Puzzlewell.~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"Tisíceré díky, Lothare. Měj se."~ */ JOURNAL #31882 /* ~Lothar mi navrhl, ať navštívím Městskou Halu, pokud chci odpovědi na mé otázky o Ravel Puzzlewell.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"Nepovolil jsem ti mluvit, lebko!" Pod nadvládou Lotharových slov Morte rychle zmlknul. "Zjizvený, jestli chceš získat lebku zpět, musíš mi z katakomb pod námi přinést lebku obrovské hodnoty. A nehodlám smlouvat o ceně něčeho, co už je moje. Buď ber, nebo odejdi."~ */
  IF ~~ THEN REPLY #28880 /* ~"Nikdy nebyl tvůj... ani nikoho jiného... nezačínej s tím."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"Je můj."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"Kde můžu najít nejcennější lebku?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"Kde můžu najít větší lebku?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"Dříve vyráběla hračky a hlavolamy, řešila problémy, které řešení nepotřebovaly. Díky ní se stal Sigil - Klec - největší sbírkou hádanek ve sférách, načež se ona rozhodla, že Sigil zničí - že ho odkáže rukám armád fiendů pod její kontrolou, kteří převrátí rovnováhu města naruby a kteří ho odkážou do Márnice. Děkuj všem silám, které znáš, že se jí to nakonec nepovedlo." ~ */
  IF ~~ THEN REPLY #28883 /* ~"Tak já ji najdu a potom ji zmáčknu tak, až mi vrátí mou smrtelnost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~Lotharovy oči zlobně září. "Zabíjet mé služebníky, tak? Podej mi jeho lebku." Pečlivě si prozkoumal lebku a prohlásil. "Cítím jeho zradu z jeho kostí. Byl opatrný, ale ne dost, eh? Dostanu z něj jeho tajemství, bez obavy, a poznám jeho neupřímnost."~ */
  IF ~~ THEN REPLY #31865 /* ~"Mám mnoho otázek."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"V tvém případě ti Lothar naúčtuje pouze lebku, jedinou lebku z katakomb pod námi, za to, co po mně chceš. Je tam zamčená hrobka, do kterých se mí pomocníci nedokázali dostat. Dones mi lebku toho, kdož tam spočívá, a já ti dám odpovědi na všechny otázky, které mi položíš. Na VŠECHNY, pokud toho budu schopen. A ty mi PŘINESEŠ tu lebku."~ */
  IF ~~ THEN REPLY #31867 /* ~"V žádném případě."~ */ JOURNAL #66223 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, odpoví mi Lothar na mé otázky.~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"Dohodnuto."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, odpoví mi Lothar na mé otázky.~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"Hrobka je už prázdná."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar mi řekl, ať odsunu divan ve středu místnosti, kde naleznu průchod vedoucí do jeskyní pod jeho domem. Tam mám přejít do katakomb a najít hrobku, skrytou pod Přemoženými Národy. V té hrobce je lebka velké hodnoty. Jakmile mu ji přinesu, odpoví mi Lothar na mé otázky.~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"Na tom, co říkáš, něco je... na té kryptě je něco slibného. Popřemýšlím nad tím a tobě doporučuju to samé." Otočil se pryč, ale prakticky okamžitě se zase obrátil zpět k tobě. "Dones mi tedy jinou lebku a naše dohoda bude stále platit. Ale nepokoušej se mě podvést jen tak nějakou lebkou - jsem tak trochu labužník. Vrať se, až pro mě budeš mít něco cenného."~ */
  IF ~~ THEN REPLY #31901 /* ~"Dobrá tedy. Sbohem."~ */ JOURNAL #31875 /* ~Lothar mi řekl, ať najdu jinou lebku výměnou za tu, kterou jsem nedokázal najít v zapasťované hrobce.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"Tvoje hrobka? TVOJE hrobka?" Pozorně si tě prohlíží. "To musíme prozkoumat opatrněji. Dones mi tedy jinou lebku, jelikož své vlastní se asi nechceš vzdát a pak uvidíme, co ti budu moci povědět. Naše dohoda stále platí. Ale nepokoušej se mě podvést jen tak nějakou lebkou - jsem tak trochu labužník. Vrať se, až pro mě budeš mít něco cenného."~ */
  IF ~~ THEN REPLY #31905 /* ~"Dobrá tedy. Sbohem."~ */ JOURNAL #31874 /* ~Lothar mi dal za úkol najít jinou lebku výměnou za tu, která nemohla být v mé zapasťované hrobce.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~Lotharovy oči rozzlobeně zazářily. "Zabíjíš mé služebníky? Dej mi tu lebku..." Pozorně prozkoumal lebku a prohlásil: "Cítím z těchto kostí jeho zrádnost. Opatrný zrádce, ale ne dost opatrný, co? Budu mít jeho tajemství, budu vědět o jeho dvojakosti. Dostaneš tedy ode mě své odpovědi."~ */
  IF ~~ THEN REPLY #54114 /* ~"Mám pro tebe mnoho otázek."~ */ GOTO 1
END
