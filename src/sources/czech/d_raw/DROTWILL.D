// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~Vidíš ostrého chlápka. Má ostře řezané rysy, vyzařující sebedůvěru. Má jasné a kruté oči. Tváří se lhostejně, vypadá to, že je nad věcí. V mozolnatých rukou
drží nůž. "Tak. Další návštěvník k Prohnilému Williamovi. Řekni, co chceš, cestovateli, řekni to tak, ať se mi to líbí a pak tě možná necháme jít dál."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"Hledám Pharoda."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"Hledám deník."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"Jenom procházím."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"Nechci žádné problémy."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"Černá Růže tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"Krystall tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"To není tvoje věc."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"Chceš Pharoda, jo? No, za hezkou rozumnou cenu ti můžu říct, kde ho najdeš."~ */
  IF ~~ THEN REPLY #3718 /* ~"Kolik?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"Obávám se, že nemám zájem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~Změřil si tě. "Pouhých pět mincí. Což je hodně slušná cena pro někoho tak zoufalého, jako jsi ty."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"Dobře, tady. Kde je?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"Nemám zájem."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"Nemám tolik."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"Najdeš ho blízko Hadrníkova náměstí. Hledej jej a jeho sběrače, neměl bys mít problémy."~ */
  IF ~~ THEN REPLY #3659 /* ~"To už mi řekli jiní!"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"Díky. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"No, tak by tady možná bylo něco, co by tě zajímalo. Je tady kráva ménem Krystall, kerá šéfuje těm slečinkám, co si říkaj Ostrý Andílci. Kilni ji a pak si můžem promluvit vo vodměně."~ */
  IF ~~ THEN REPLY #3662 /* ~"Co z toho budu mít já?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"Udělám to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"To neudělám. Nejsem vrah."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"Nejdřív si to chci promyslet."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"Jo, dostal jsi, za cos zaplatil. Takže... co tady chceš?"~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"Hledám deník."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"Jenom procházím."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"Nechci žádné problémy."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"Černá Růže tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"Krystall tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"To není tvoje věc."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"Copa sem ti právě neřek, že si vo tom promluvíme, až bude po masakru. Stojím si za tim, co sem řek, vole. Tak uděláš to, nebo ne?"~ */
  IF ~~ THEN REPLY #3674 /* ~"Chci vědět, co z toho budu mít já."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"Ne. Nejsem vrah."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"Jistě. Udělám to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"Skvělý! Přiď, až budeš hotovej. Nevopovaž se mi lízt před voči, esli to nebude hotový. Dohodli sme se a tak to taky bude."~ */
  IF ~~ THEN REPLY #3693 /* ~"Nemusíš se bát."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"Doporučuju ti, aby sis to promyslel. Nespěchej, jo? Co bys řek... hm dvě stě měděnejch?"~ */
  IF ~~ THEN REPLY #3694 /* ~"Co takhle čtyři sta?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"Ne. To neudělám."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"Udělám to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Prohnilý William mi nabídl 200 mincí za zlikvidování Krystall, šéfky soupeřícího gangu z Uličky nebezpečných zákoutí. Přijal jsem..~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"Dostaneš, co si zasloužíš, vole. Řekněme dvě stě minci, jo? Domluveno?"~ */
  IF ~~ THEN REPLY #3681 /* ~"Co takhle víc?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"Ano, uděláme."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Prohnilý William mi nabídl 200 mincí za zlikvidování Krystall, šéfky soupeřícího gangu z Uličky nebezpečných zákoutí. Přijal jsem..~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"Ne. To neudělám."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"Tak tři sta. Poslední nabídka."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"Ne. To neudělám."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"Dohoda. Považuj ji za mrtvou."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~Prohnilý William mi nabídl 300 mincí za zlikvidování Krystall, šéfky soupeřícího gangu z Uličky nebezpečných zákoutí. Přijal jsem..~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"Esli to chceš takhle. Škoda, žes nepochopil, jak se to tady dělá správně." Zvýšil hlas. "Shivové! Zbavte mě toho hovna!"~ */
  IF ~~ THEN REPLY #3701 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"Deník, jo? Přímo ňákej deník?" Na chvíli se odmlčel, a pak, když už mu chceš odpovědět, řekl, "Takový věci my tu nemáme. Každej kus papíru skončí v ohni a ňákej deník sem tu neviděl."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"Hledám Pharoda."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"Jenom procházím."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"Nechci žádné problémy."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"Černá Růže tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"Krystall tě chce ve stavu mrtvolném."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"To není tvoje věc."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"Jenom procházíš, jo? Škoda. Nikdo tudma jenom tak neprochází bez toho, že by zaplatil nějakou cenu."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"Už jsem to zaplatil."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Blufuj: "Už jsem to zaplatil."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"Jakou cenu?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"Chtěl bych to vědět přesně."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~Zasmál se a napřáhl ruku. "Ne tak rychle, příteli. To nejni cena, vo který mluvím. Je to ouplně vo něčem jiným. Hele, je tady jedna děvka, co šéfuje druhýmu gangu, na druhý straně uličky a já bysem chtěl, ať ji šoupneš do knihy zdechlin. Menuje se Krystall."~ */
  IF ~~ THEN REPLY #3713 /* ~"Co z toho budu mít já?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"Udělám to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"To neudělám. Nejsem vrah."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"Nejdřív si to chci promyslet."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"Je už mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"Je to malá cena, v krvi. Dobrá věc pro tebe je, že to nejni v tvý krvi, ale krvi někoho jinýho - kráva ménem Krystall, kerá mi tady dělá kapku problémy. Šéfuje těm blbům Ostrým Andělům. Najdi ji a zbav mě jí. Zab ji."~ */
  IF ~~ THEN REPLY #3717 /* ~"Co z toho budu mít já?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"Udělám to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"To neudělám. Nejsem vrah."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"Nejdřív si to chci promyslet."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"Už je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"Jo, tak to je pro tebe dobrá jedna věc, že ti nechci nijak ublížit. Akorát po tobě chci takovou maličkost. Tak poslouchej, okej?"~ */
  IF ~~ THEN REPLY #3723 /* ~"Co je to?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"Tak jó. Jsi připravený?"~ */
  IF ~~ THEN REPLY #3724 /* ~"Ano."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"Nejsem si jistý."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"Tak neplejtvej mým časem, jo? Moji Shivové mě vobráněj."~ */
  IF ~~ THEN REPLY #3727 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Utéct.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"Měl by sis bejt vždycky jistej. Já jsem si jistej, že zdechneš." Udělal rukou nezřetelné gesto.~ */
  IF ~~ THEN REPLY #34384 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"Když se nad tím zamyslíš, všecko, co se tu děje, se mě týká. Ptám se znova... co tady chceš?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"Hledám Pharoda."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"Hledám deník."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"Nestojím o problémy."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"Černá Růže tě chce jako mrtvolu."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"Krystall tě chce jako mrtvolu."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"Řekl jsem, že to není tvoje věc."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"To je škoda, že to říkáš. A věčší škoda bude to, že zdechneš." Zamával rukou signál a vytáhl svůj nůž.~ */
  IF ~~ THEN REPLY #34392 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"Už si našel Černou Růži? Dostals ho, jak sme se domluvili?"~ */
  IF ~~ THEN REPLY #34394 /* ~"Ještě ne."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"Našel jsem ho, ale přesvědčil mě, ať zabiju TEBE."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"Je mrtvý.  Teď bych chtěl svou odměnu."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"Eště né? Co seš, neschopnej? Najdi ho a vrať se, až džob doděláš!" Podrážděně se otočil.~ */
  IF ~~ THEN REPLY #34397 /* ~"Nejdřív mám nějaké otázky..."~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"Dobře, tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Oči Prohnilého Williama se rozsvítily. "Dostals je všechny, jo? Mám pro tebe odměnu. Hned ji vytáhnu." Bleskově tasil dýku a bodl směrem k tvému břichu.~ */
  IF ~~ THEN REPLY #34399 /* ~Bojuj.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Uteč.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~Vrhá na tebe vražedný pohled. "Zabils tu mizernou děvku, jak sem ti řek, nebo si zase přišel povídat vo svý neschopnosti?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"Ještě ne."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"Je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~Zavrtěl hlavou. "Dokonce i ti kreténi, kteří si říkaj mí chlapi, dokážou udělat něco, vo čem řeknou, že to udělaj. Seš bezcennej. Myslim, že město nám bude vděčný, když se tě zbavíme." Vytáhl nůž.~ */
  IF ~~ THEN REPLY #34403 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"Jó, udělals svoji práci, to jo. Já jen potřebuju, abys mě zbavil toho zatracenýho zabijáka, kvůlivá kerýmu ztrácím chlapy. Dám ti dvojnásobek, to zní dobře, ne? Opravdu chceš tudle nabídku přijmout, kámo."~ */
  IF ~~ THEN REPLY #34405 /* ~"Obávám se, že budu muset odmítnout."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"Udělám to."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"Už je mrtvý. Chci svoji odměnu."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"Seš si tím jistej? Fakt nechceš džob?"~ */
  IF ~~ THEN REPLY #34407 /* ~"Ne,to ne."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"Když nad tím přemýšlím, dvojitá odměna zní dobře. Udělám to."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"To je fakt škoda. Chlapci, je třeba vyhodit odpadky." Pomalu vytáhl nůž a jde k tobě...~ */
  IF ~~ THEN REPLY #34409 /* ~Bojuj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Uteč.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"Dobře. Dobře. Najdeš ho někde poblíž uličky. Myslím, že bude zalezlej ve stínu."~ */
  IF ~~ THEN REPLY #34411 /* ~"Najdu ho."~ */ JOURNAL #31878 /* ~Prohnilý Wlliam mě požádal, ať zabiju zabijáka Černou růži, který se pohybuje někde kolem Uličky nebezpečných zákoutí.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"Už jsi mě zbavil tý mizerný děvky Krystall?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"Ještě ne."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"Je mrtvá."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~Promluvil skrze zaťaté zuby, každé slovo zvlášť. "Nevracej... se... dokud... nebude... mrtvá. Rozumíš?" Otočil se. "Nechci z tebe vidět ani kousek, dokud nebude po ní."~ */
  IF ~~ THEN REPLY #34414 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END
