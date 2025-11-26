// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~Vidíš mladou ženu s bledou, žlutou pokožkou. Zdá se být zaneprázdněna zkoušením nějakého zboží z bedny.~ */
  IF ~~ THEN REPLY #37111 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~Pohlédla na tebe přes rameno a ihned se k tobě otočila. "Ano, čím mohu posloužit?"~ */
  IF ~~ THEN REPLY #37113 /* ~"Mám pár otázek...~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"Už nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~Vypadá poněkud nervózně, ale usmívá se na tebe přátelským úsměvem. "Zajisté ti pomůžu, pokud budu moci. Co bys potřeboval vědět?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"Mohu zde nakoupit nějaké zbraně?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"Mohl bych tu sehnat nějaká kouzla?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"Už nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~Vytřeštila oči rychle nad svým srdcem načrtla půlkruh. "Nemůžu ti pomoct. Jde zvěst, že má být někde v této čtvrti, ale já vůbec nevím, kde."~ */
  IF ~~ THEN REPLY #37120 /* ~"Znáš někoho, kdo by to mohl vědět?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"Tak dobře. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~Vypadá ustaraně. "Kdepak, kámo. Většina lidí se vyhne problémům, nestojí o ně."~ */
  IF ~~ THEN REPLY #37123 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~Na chviličku se zamračí, pak se na tebe starostlivě podívá. "Víš, slyšela jsem o tobě podobných, ale nemůžu ti pomoci."~ */
  IF ~~ THEN REPLY #37125 /* ~"Nevíš, kdo by mohl?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"Ještě otázečku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~Na chvilku se zamyslí, a pak pokrčí rameny. "Zeptej se hocha u výhně. Rád si s tebou promluví. Možná něco slyšel."~ */
  IF ~~ THEN REPLY #37128 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~Ukazuje ke stánkům. "Anze je prodává. To bude ta pravá osoba."~ */
  IF ~~ THEN REPLY #37130 /* ~"Ještě bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~Ukazuje ke stánkům. "Aalek rozumí magii. Měl by sis s ním promluvit."~ */
  IF ~~ THEN REPLY #37132 /* ~"Ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~Mračí se. "Nechci být nezdvořilá, ale na takové řeči nemám čas. Zeptej se chlapce u výhně. On vždycky mluvívá s cizinci."~ */
  IF ~~ THEN REPLY #37134 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~Otočí se na tebe, podívá se a mile se usměje. "Vítej zpět, kámo. Co potřebuješ?"~ */
  IF ~~ THEN REPLY #37135 /* ~"Ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"Sbohem."~ */ EXIT
END
