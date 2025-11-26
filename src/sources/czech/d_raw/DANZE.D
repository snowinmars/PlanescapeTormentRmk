// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~Vidíš staršího, přísně vypadajícího muže. Jeho tvář je pokrytá sítí vrásek.~ */
  IF ~~ THEN REPLY #33884 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~Lehce se uklonil. "Vítám i já tebe. Jmenuju se Anze. Co bys potřeboval?"~ */
  IF ~~ THEN REPLY #33887 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~Bezzubě se usmál. "Řek bych, že chvilku na pokec mám. Co potřebuješ vědět?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"Měl jsem lebku, kterou mi ukradli. Nevíš o někom, kdo by to mohl udělat?"
~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"Na co je ta pec?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"Chtěl bych si koupit nějaké zbraně."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"Chtěl bych si koupit nějaké magické předměty."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"Nemůžu říct, že bych někdy slyšel něco o Lotharovi." Zavřel oči a přemýšlí. "Slyšel sem ale o tom *kostěným* chlápkovi, to jo. Říká se, že se s ním radši nemá nikdo zaplítat. Je to mocnej chlápek, baví se s mrtvýma a tak."~ */
  IF ~~ THEN REPLY #33897 /* ~"Kde ho můžu najít?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~Pokrčil rameny. "Nevím. Takovej se může usadit kdekoli. Málokdo mu v tom může zabránit."~ */
  IF ~~ THEN REPLY #33901 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~Krátce se zasmál. "Slyšels, kámo. Nevím o nich nic víc."~ */
  IF ~~ THEN REPLY #33905 /* ~"Kde ho můžu najít?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~Snaží se vypadat zaujatě, ale nejde mu to. "To nerad slyším, kámo. Pokud si myslíš, že ti to ukradli, měl bys říct Harmoniu."~ */
  IF ~~ THEN REPLY #33909 /* ~"Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"Děkuju ti, Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~Usmál se. "Právo, kámo. Bouchači Harmonia jsou právo v Sigilu. Pokud se ti něco ztratilo, měl bys to říct jim."~ */
  IF ~~ THEN REPLY #33913 /* ~"Myslíš si, že by Harmonium mohlo získat lebku zpět?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~Začíná něco říkat, pak se zarazí a přemýšlí. Po chvíli se zašklebil. "Ne, kámo. Neřekl bych. To nic."~ */
  IF ~~ THEN REPLY #33914 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"Můžeš si promluvil s Aalekem vedle. Má, co potřebuješ." Ukázal ti na pult po jeho levici.~ */
  IF ~~ THEN REPLY #33918 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~Pohlédl na pec a pak snížil hlas. "Pec nedělá nic jinýho, než že učí mýho lenivýho kluka zodpovědnosti. Ten kluk pořád hubuje a kecá. Považuje se za učence a nezná důležitost opravdové práce. Pokud máš nějaké důležité otázky, možná by ses měl zeptat spíš jeho."~ */
  IF ~~ THEN REPLY #33921 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Prázdný uzel~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Anze se na tebe usmál svým typickým bezzubým úsměvem. "Vítej zpátky, kámo. Copak potřebuješ dneska?"~ */
  IF ~~ THEN REPLY #34245 /* ~"Rád bych viděl tvé zboží."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"Truchlím pro ztrátu svého syna Lazla... Nebudu otvírat... nevím, jak dlouho..."~ */
  IF ~~ THEN REPLY #34249 /* ~Odejdi.~ */ EXIT
END
