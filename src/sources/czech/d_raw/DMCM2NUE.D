// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~Vidíš starého muže v jednoduchých šatech. Jeho vybledlá žlutá kůže je zvrásněná věkem. Znuděně sleduje, jak se přibližuješ. ~ */
  IF ~~ THEN REPLY #37260 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"Zdravím tě, mladíku. Co ode mě potřebuješ?"~ */
  IF ~~ THEN REPLY #37262 /* ~"Mám otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"Nic. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~Mračí se a tvář mu skoro mizí mezi četnými vráskami. "Mám trochu času, ale rychle."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"Můžeš mi povědět o této čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"Už nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"Lothar... Neznám toto jméno. Nepomohu ti. Ptej se tady kolem, někdo bude vědět."~ */
  IF ~~ THEN REPLY #37268 /* ~"Aha. A znáš někoho, kdo by mi mohl pomoci?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~Pokyvuje hlavou. "Nikoliv. Jsme jen prostí lidé, nestrkáme nos do cizích věcí." Vyjadřuje se docela znuděně.~ */
  IF ~~ THEN REPLY #37270 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"Ztracená lebka..." Prudce se zasměje. "Tak tenhle vtip jsem ještě neslyšel. Nevím co ti mám říct."~ */
  IF ~~ THEN REPLY #37273 /* ~"Aha. Neznáš někoho, kdo by mi mohl pomoci?"~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~Povzdechne si a unaveně se zadívá. "Poslouchej, mladíku. Jsem zde kvůli nakupování a ty nejsi prodavač. Chápeš? Jestli ne, tak jdi pryč!"~ */
  IF ~~ THEN REPLY #37274 /* ~"Mám nějaké další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"Aha. Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"Podívej, neznám odpovědi na tvé otázky. Nashledanou." Odchází pryč.~ */
  IF ~~ THEN REPLY #37276 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~Vidíš starého muže oděného v jednoduchých šatech. Jeho bledá, žlutá kůže je poznamenána četnými vráskami. Znuděně sleduje, jak se přibližuješ. "Zase ty? Jdi pryč!" Otáčí se pryč.~ */
  IF ~~ THEN REPLY #37258 /* ~Odejdi.~ */ EXIT
END
