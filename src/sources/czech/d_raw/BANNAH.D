// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BANNAH~

IF ~  LastPersonTalkedTo("Morte")
Global("Annah_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31484 /* ~"Odstup ode mě, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63424 /* ~"NAJDI způsob, lebko."~ [ANA575BD] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #63425 /* ~"Na co se to díváš, lebko?"~ [ANA576B] */
  IF ~~ THEN EXTERN ~DMORTE~ 614
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63426 /* ~"Ten tvůj jazyk ti přinese rozbitý nos."~ [ANA576BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #63428 /* ~"Jak vůbec stíháš dýchat, když tolik mluvíš?"~ [ANA593A] */
  IF ~~ THEN EXTERN ~DMORTE~ 615
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #63429 /* ~"Jestliže potřebuješ někam jít, lebko, nenech nás tě zdržovat."~ [ANA595A] */
  IF ~~ THEN EXTERN ~DMORTE~ 616
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63430 /* ~"Mám pro tebe *několik* jmen. Žádné z nich se nehodí do slušné společnosti."~ [ANA595BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY #63431 /* ~"Huh. Zajímá mne kolik měďáků by za tebe dali Spalovači, lebko."~ [ANA597D] */
  IF ~~ THEN EXTERN ~DMORTE~ 617
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63432 /* ~"Smrt je pro tebe moc dobrá, lebko."~ [ANA599A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #63433 /* ~"Tvoje oči na mně spočinuly jedenkrát, lebko, a budou odpočívat na zemi."~ [ANA600A] */
  IF ~~ THEN EXTERN ~DMORTE~ 618
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63434 /* ~"Ách, správně *seš* ten s kým chci mluvit."~ [ANA600BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 11 // from:
  SAY #63435 /* ~"Lebko, pokud  si nenecháš své oči u sebe, vemu si je."~ [ANA601A] */
  IF ~~ THEN EXTERN ~DMORTE~ 619
END

IF ~~ THEN BEGIN 12 // from:
  SAY #63436 /* ~"Ty seš ale pěkně vyčuranej mizera."~ [ANA601BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 13 // from:
  SAY #63439 /* ~"Nenech se oblbnout tou sukubou... ona se vo tebe zajímá kvůli tvaru tvýho krku... to je pro ni to pravý zaklesnout do něj svý zuby."~ [ANA594A] */
  IF ~~ THEN EXTERN ~DMORTE~ 620
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
InParty("Grace")
~ THEN BEGIN 14 // from:
  SAY #63440 /* ~"*Nevěřím* té sukubě. Ona je fiend, to teda je! Všechny jsou stejné, čeká až poleví tvá pozornost předtím než ponoří své zuby do tvého krku. Nepřestávej mít stále na očích dřevěnej kolík, nebo se na tebe vrhne rychleji než stačíš zamrkat. Všichni fiendi sou takoví, to teda sou."~ [ANA602A] */
  IF ~~ THEN EXTERN ~DMORTE~ 621
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63441 /* ~"Ach ano, ale dobrá část. Ona vypadá, že má všechny části špatné, to má."~ [ANA602BA] */
  IF ~~ THEN EXTERN ~DMORTE~ 622
END

IF ~  LastPersonTalkedTo("Grace")
Global("Annah_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #63442 /* ~"Takže, jak dlouho s námi budeš cestovat, sukube?"~ [ANA604A] */
  IF ~~ THEN EXTERN ~DGRACE~ 366
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63443 /* ~"Dobrá, nemáš souhlas. Nevěřím ti."~ [ANA604BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #63444 /* ~"Tak uh... co dyby ses vobrátila zpátky do svýho bordelu, sukube?"~ [ANA605A] */
  IF ~~ THEN EXTERN ~DGRACE~ 367
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63445 /* ~"Správně, to je to kam PATŘÍŠ, takže bys snad měla."~ [ANA605BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #63446 /* ~"Měla by sis na sebe dávat lepší pozor, sukube. Překročíš čáru a začne lov na duše, chytne tě mé ostří."~ [ANA606A] */
  IF ~~ THEN EXTERN ~DGRACE~ 368
END

IF ~~ THEN BEGIN 21 // from:
  SAY #63448 /* ~"Jasně, *moh* by tě vzít za slovo, ale když vy sukubové jste všechny naparfémované prolhané děvky, já nechci."~ [ANA606BA] */
  IF ~~ THEN EXTERN ~DGRACE~ 369
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63449 /* ~"Drž se ode mne dál. V podstatě, by ses snad měla držet dál od nás všech."~ [ANA606CA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #63450 /* ~"Jak daleko zajdeš, abysme tě vzali s sebou, sukube?"~ [ANA608A] */
  IF ~~ THEN EXTERN ~DGRACE~ 370
END

IF ~~ THEN BEGIN 24 // from:
  SAY #63451 /* ~"Žárlivost? Já nejsem žárlivá! Nikdy jsem ani nevěděla jak se pořádně vyslovuje žárlivost! Nelíbíš se mi... nikomu z nás!"~ [ANA608BB] */
  IF ~~ THEN EXTERN ~DGRACE~ 371
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",5)
~ THEN BEGIN 25 // from:
  SAY #63452 /* ~"Už mám dost tebe i jí! Jen si běž, cestuj si s ní, když jí tak zbožnuješ! Ale se mnou už kčertu nepočítej!"~ [ANA609A] */
  IF ~~ THEN EXTERN ~DGRACE~ 372
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63453 /* ~"Hele, mě nějaká tvoje 'podívej Annah' absolutně nebere, ty jedna okřídlená běhno, já, já tě jednou podřežu, jo podřežu! Už mě nebaví čumět na tvý nadřazený chovaní, fajnový šaty a na tvůj zvedlej nos -- už tě mám ale opravdu DOST! A klidně se tu můžeš rozbrečet!"~ [ANA609BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",5)
LeaveParty()
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
~ THEN BEGIN 27 // from:
  SAY #64201 /* ~"Drž si ode mně odstup, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END
