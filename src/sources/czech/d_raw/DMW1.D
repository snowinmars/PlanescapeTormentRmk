// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~Vidíš urostlého mladíka. Zřejmě přemísťuje obsah beden na police. Kývl ti na pozdrav. "Dobrej den, kámo."~ */
  IF ~~ THEN REPLY #47908 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~Znovu přikývl. "S čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #47911 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"Dobrá tedy." Čeká na tvou otázku.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, kdo by to mohl mít na svědomí?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"Kde bych mohl koupit nějaké zbraně?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"Kde bych mohl koupit nějakou magii?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"Co mi můžeš říct o téhle čtvrti?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~Zavrtěl hlavou. "Pán Kostí... ten nemá rád návštěvy, kámo. Možná ho hledáš, ale *nechceš* ho najít."~ */
  IF ~~ THEN REPLY #47931 /* ~"Ano."~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"Dobře. Chtěl bych se zeptat ještě na něco..."~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~Chvíli se na tebe dívá a sleduje tvé jizvy. Pak pokrčil rameny a podíval se ti do očí. "Z trhu se vydej na jih a pak kousek na východ. Zničený barák. Ať tě Mocnosti chrání, tvrďáku." Otočil se a vrátil se zpět ke své práci.~ */
  IF ~~ THEN REPLY #47922 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~Zamračil se a pozorně si tě prohlédl. "No... bylo na té lebce něco zvláštního?"~ */
  IF ~~ THEN REPLY #47928 /* ~"Ne."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"Ano. Mluvila."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~Pokrčil rameny. "Nenapadá mě, proč by ji někdo chtěl..."~ */
  IF ~~ THEN REPLY #47941 /* ~"Co kdyby uměla mluvit?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~Chvíli tě pozoruje. "Řekl bych, že to je zvláštní. Takže by to mohlo připoutat pozornost Lothara, Pána Kostí."~ */
  IF ~~ THEN REPLY #47935 /* ~"Kde najdu toho Lothara?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"Měl by sis promluvit s Anzem. Většinou je támhle u pece."~ */
  IF ~~ THEN REPLY #47938 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"Promluv si s Aalekem, většinou je tam u toho vzdáleného pultu za pecí."~ */
  IF ~~ THEN REPLY #47945 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~Povzdychl si. "Je to domov... napadají mě lepší místa, ale taky horší." Znovu pokrčil rameny. "Co se týče detailů, promluv si s Anzovým klukem Lazlem. Bude u pece. Rád si povídá."~ */
  IF ~~ THEN REPLY #47948 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~Pracovník se na tebe podíval a usmál se. "Ahoj? Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #47951 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"Nic, sbohem."~ */ EXIT
END
