// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~Vidíš muže středního věku, který pracuje s bednami plnými zboží. Kývl ti na pozdrav.~ */
  IF ~~ THEN REPLY #47992 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~Usmál se a otřel si čelo. "Zdarec, drsňáku."~ */
  IF ~~ THEN REPLY #47995 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~Přikývl. "Dobrá tedy..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"Měl jsem lebku a někdo mi ji ukradnul. Nevíš, kdo by to mohl mít na svědomí?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"Kde si můžu koupit nějaké zbraně?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"Kde si můžu koupit nějakou magii?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~Zavrtěl hlavou. "Nikdy jsem o něm neslyšel. Ale zkusím se ti poptat."~ */
  IF ~~ THEN REPLY #48004 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~Má prázdný pohled. "Chybí ti lebka... uh..." Pokrčil rameny. "Promiň, o tom nic nevím." Vypadá to, že se tě chtěl na něco zeptat, ale pak si to rozmyslel.~ */
  IF ~~ THEN REPLY #48007 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~Na chvíli se soustředil jakoby se snažil pochopit, co to po něm vlastně chceš. "No... zbraně? Nevím... asi by je mohl prodávat některý z obchodníků. Ale není to zrovna věc, kterou by potřeboval průměrný občan."~ */
  IF ~~ THEN REPLY #48010 /* ~"Jak se můžeš bránit beze zbraně?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~Nevěřícně se na tebe dívá. "Harmonium... to je jejich práce, chránit nás občany. Zajišťují dodržování zákonů, trestají vinu a tak. Občan se o svou obranu nemusí starat." Prázdně na tebe zírá.~ */
  IF ~~ THEN REPLY #48014 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"Magie? Já..." Obličej se mu zkroutil do zmatené masky. "Nevím. Možná jeden z obchodníků, ale magie... ta není zrovna běžná, ne?" Čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #48017 /* ~"Ty jsi pěkně mimo, co?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~Tváří se šokovaně. "No to ne... teda vlastně ano... uh... možná ne." Pokrčil rameny. "Už mi říkali, že jsem naivní, ale nemyslím si, že je to můj případ. Prostě nejsem tak světaznalý, jako jiní, to je všechno."~ */
  IF ~~ THEN REPLY #48021 /* ~"Jako barvu má nebe ve tvém vesmíru..."~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~Podíval se ven a ukázal. "Je žluté... to kvůli tomu kouři a tak, co vychází z továren."~ */
  IF ~~ THEN REPLY #48025 /* ~"No nic. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~Pracovník se na tebe podíval. "No ahoj. Můžu ti nějak pomoct?"~ */
  IF ~~ THEN REPLY #48028 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"To nic, sbohem."~ */ EXIT
END
