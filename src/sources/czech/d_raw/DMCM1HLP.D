// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~Vidíš mladého muže s bledou, žlutou kůží. Vypadá zaneprázdněn zkoušením nějakého zboží z bedny.~ */
  IF ~~ THEN REPLY #37226 /* ~"Buď pozdraven."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~Pohlédne na tebe přes rameno a pak se k tobě otočí. "Ano? Copak bys rád?"~ */
  IF ~~ THEN REPLY #37225 /* ~"Ještě otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"Už nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~Vypadá nervózně, ale přátelsky se na tebe směje. "Rád ti pomůžu, pokud budu moci. Co potřebuješ vědět?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"Kde mohu nakoupit nějaké zbraně?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"Kde se dají koupit nějaká kouzla?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"Už nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~Vypadá ustaraně. "Kdepak, kámo. Většina lidí se vyhýbá problémům, nestojí o ně."~ */
  IF ~~ THEN REPLY #37235 /* ~"Znáš někoho, kdo by to mohl vědět?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"Dobře, ale mám další otázky..."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~Vypadá ustaraně. "Kdepak, kámo. Většina lidí se vyhýbá problémům, nestojí o ně."~ */
  IF ~~ THEN REPLY #37237 /* ~"Mám jinou otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~Na moment se zamračí, pak na tebe starostlivě podívá. "Tedy, slyšel jsem o tobě podobných lidech..., ale nemohu ti pomoci. ~ */
  IF ~~ THEN REPLY #37239 /* ~"Neznáš někoho, kdo by mohl?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"Ještě otázku..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~Na chviličku se zamyslí a pak pokrčí rameny. "Zeptej se chlapce jménem Lazlo, potuluje se okolo výhně. Rád si s tebou promluví. Možná něco ví."~ */
  IF ~~ THEN REPLY #37241 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~Ukazuje směrem ke stánkům. "Anze ti poradí. To bude ta pravá osoba."~ */
  IF ~~ THEN REPLY #37244 /* ~"Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~Ukazuje směrem ke stánkům. "Aalek se vyzná v magii. Promluv si s ním."~ */
  IF ~~ THEN REPLY #37245 /* ~"Ještě bych chtěl vědět..."~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~Mračí se. "Podívej, kámo, nechci být nezdvořilý, ale na takové řeči nemám čas. Zeptej se chlapce jménem Lazlo u výhně. On vždycky mluvívá s cizinci."~ */
  IF ~~ THEN REPLY #37247 /* ~"Výborně! Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~Otočí se, aby se na tebe podíval a usměje se. "Vítej zpět, kámo. Copak potřebuješ'?"~ */
  IF ~~ THEN REPLY #37223 /* ~"Ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"Sbohem."~ */ EXIT
END
