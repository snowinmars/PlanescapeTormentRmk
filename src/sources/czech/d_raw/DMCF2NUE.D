// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~Vidíš starou ženu oděnou v jednoduchých šatech. Její vybledlá žlutá kůže je plná vrásek. Sleduje se znuděným výrazem, jak se přibližuješ. ~ */
  IF ~~ THEN REPLY #37146 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~"Také tě zdravím, mladíku. Copak potřebuješ od staré Belle?"~ */
  IF ~~ THEN REPLY #37148 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~"Už nic. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~Mračí se a tvář jí skoro mizí mezi četnými vráskami. "Mám sice trochu času, ale jednej rychle."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~"Můžeš mi povědět o této čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~"Lothar... neznám toto jméno. Nepomohu ti."~ */
  IF ~~ THEN REPLY #37154 /* ~"Aha. Znáš někoho, kdo by mi mohl pomoci?"~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~Vrtí hlavou. "Nikoliv." Tváří se znuděně.~ */
  IF ~~ THEN REPLY #37156 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~"Ztracená lebka..." Prudce se zasměje. "Tak tenhle vtip jsem ještě neslyšela. Nevím co ti mám říct."~ */
  IF ~~ THEN REPLY #37158 /* ~"Aha. Víš, kdo by mi mohl pomoci?"~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~Povzdychne si. "Poslouchej, mladíku. Já jsem přišla nakupovat a ty nejsi obchodník. Chápeš?"~ */
  IF ~~ THEN REPLY #37160 /* ~"Ještě pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~"Podívej, na tvé otázky neznám odpovědí. Nashledanou." Otočila se a odchází pryč.~ */
  IF ~~ THEN REPLY #37162 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~Vidíš starou ženu oděnou v jednoduchých šatech. Její vybledlá žlutá kůže je plná vrásek. Jak se k ní přibližuješ, zjišťuješ, že má znuděný pohled. "Čekáš snad, že se s tebou začnu bratříčkovat? Jdi pryč!" Odchází.~ */
  IF ~~ THEN REPLY #37163 /* ~Odejdi.~ */ EXIT
END
