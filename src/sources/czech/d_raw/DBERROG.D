// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~Vidíš obyčejného muže s vystrašenýma očima. "Prosím, neubližuj mi!" zašeptal nahlas. "Zabijou mě, jestli mě najdou!"~ */
  IF ~~ THEN REPLY #3185 /* ~"Kdo tě zabije?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"Co tady děláš?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~Vidíš nenápadného muže s nevinnou tváří, po které stékají slzy. Je uvězněn pod vozem, který ho zřejmě pomalu drtí. Pozvedl k tobě pohled a bolestně zaprosil. "Prosím, příteli... musíš to ze mě sundat. Nemohu tady zemřít..."~ */
  IF ~~ THEN REPLY #56945 /* ~"Dobře, sundám to."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"Zapomeň na to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~Vidíš Berroga Rychlobotu, rádoby zachránce devy, uvězněného pod vozem. "Prosím... musíš ze mě tu věc sundat."~ */
  IF ~~ THEN REPLY #56948 /* ~"Dobře, sundám to."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"Zapomeň na to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Prázdný uzel.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Prázdný uzel.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"Stráže. Jdou po mně. Myslím, že jsem někoho urazil svou otázkou, nebo řekl něco špatného nesprávné osobě. Jenom jsem nabízel svůj názor, ale vypadá to, že tady musíš mluvit určitým způsobem. Všichni jsou tak zkažení!"~ */
  IF ~~ THEN REPLY #56956 /* ~"Kdo vlastně jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"Co tady děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"Odkud jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"Tak jdi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"Jsem Berrog Rychlobota, cestovatel a řešitel problémů. Mohl bys mi asi říkat zloděj, ale já se považuju za inženýra - pasti, hádanky a tak. Používám své schopnosti pouze k dobrým účelům. Nechci nikomu ublížit. Ale řekl bych, že tady takové schopnosti používají k jiným věcem." Otřásl se.~ */
  IF ~~ THEN REPLY #56965 /* ~"Co tady děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"Kdo tě chce zabít?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"Tak jdi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"Přišel jsem do Curstu, protože jsem se doslechl, že je tady uvězněný deva. A jelikož mám mezi anděly na Mount Celestii přátele, myslel jsem, že bych mohl nějak pomoci. Ale tohle město... tohle místo je žumpa, kde se nedá nikomu věřit! Jak mohou lidé takhle žít? Musím se odsud dostat!"~ */
  IF ~~ THEN REPLY #56970 /* ~"Řekni mi o Mount Celestii."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"Kdo vlastně jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"Kdo tě chce zabít?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"Tak jdi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~Na tváři má zasněný výraz. "Všechny věci tam mají své místo, všechny věci jsou překrásné. Armády okřídlených archonů poletují nebem, v nádherných vzorcích, které tě chytají za srdce. Ovoce je větší, zvěř mohutnější, všechny domy jsou otevřené. Ale stejně se snažíme neustále zlepšit, zkoušíme naše ctnosti, snažíme se dostat ještě blíž ke konečnému dobru... Měl bych se vrátit domů co nejdříve..."~ */
  IF ~~ THEN REPLY #56975 /* ~"Kdo vlastně jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"Co tady děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"Kdo se tě pokouší zabít?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"Tak jdi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~Podíval se na tebe s nevírou v očích. "Děkuju ti! Už mě nikdy neuvidíš!" Utekl pryč.~ */
  IF ~~ THEN REPLY #56980 /* ~"Sbohem."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"Počkej!... Ten... ten druhej chlápek je pořád na druhé straně vozu?"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"Je pořád tady."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"Už je mrtvý."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"Prosím... prosím..." Zaryl tvář do bahna a tiše vzlyká.~ */
  IF ~~ THEN REPLY #56993 /* ~Odejdi.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Zabij ho.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"Měl... měl bys najít způsob, jak zachránit i jeho. Myslím, že byl starostou tohohle města... nebo co to tady vlastně mají."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"Tak zvedej..."~ */
  IF ~~ THEN REPLY #56997 /* ~Zvedni to.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"Zapomeň na to. Možná přijdu později."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~Když jsi vůz nadzvedl, vyškrábal se ven. "Mé díky, kámo. Už mám... dost téhle díry. Vrátím se zpátky na Mount Celestia. Doufám, že budeš dál konat dobré skutky." Zahleděl se na devu, stojícího na balkóně. "Nemůžu uvěřit, že jsem sem přišel kvůli... támhletomu."~ */
  IF ~~ THEN REPLY #57000 /* ~"Dobré úmysly... Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"Aieee! Na druhý straně jsem já! Zabíjíš mě!"~ */
  IF ~~ THEN REPLY #57002 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"Co tady dole děláš?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Zvedej dál: "To je ale smůla..."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"Jmenuju se... Berrog Rychlobota... přišel jsem do Curstu uvolnit devu... stvoření dobra... ale měl jsem špatné informace... nikdy jsem sem neměl chodit."~ */
  IF ~~ THEN REPLY #57006 /* ~"Co tady dole děláš?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Zvedni vůz ze starosty: "Pravděpodobně ne."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Zvedni vůz z Berroga.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"Možná se vrátím později... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"Já... utíkal jsem z města... když začalo sklouzávat... Byl jsem blízko... a on mě popadl... z nebe spadl vůz a on mě zkusil hodit pod něj... aby mohl utéci. Ale stejně tě žádám... abys uvolnil i jeho."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"Když mě uvolníš, nic nezískáš... Ale určitě... dobro které vykonáš... když mě nezištně uvolníš... ale lépe by bylo, kdybys uvolnil oba."~ */
  IF ~~ THEN REPLY #57013 /* ~Zvedni vůz ze starosty: "Ano, ale je užitečný."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Zvedni vůz z Berroga: "Nemá cenu."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"Co kdybych uvolnil vás oba? Já a mí přátelé to dokážeme, když se do toho pořádně opřeme."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"Zkusím to nějak vymyslet. Sbohem."~ */ EXIT
END
