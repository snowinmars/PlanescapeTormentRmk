// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~Tenhle chlapík se zarputilým výrazem v obličeji se tváří jako prodavač rozličných příručních zbraní.
"Á - jen račte, pojďte blíže. Přišel jste si prohlédnout má ostří, he?"~ */
  IF ~~ THEN REPLY #17302 /* ~"Ano, přišel."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"Ne, ale rád bych ti položil pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"Tak se znova potkáváme, kámo. Přišels nakoupit tu nejlepší ocel ze Sigilu, co?"~ */
  IF ~~ THEN REPLY #17305 /* ~"Ano, přišel."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"Ne, ale chci se na něco zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"Mám tady práci, pane..." Náhle se odvrátil, zakryl ústa a rozkašlal se. "Omlouvám se. Tak jak už sem řek, nemůžu jen tak přestat s kšeftem proto, že tu s váma kecám."~ */
  IF ~~ THEN REPLY #17311 /* ~"Jsi marod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"Předveď mi tedy své zboží."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"Pak ti tedy zaplatím za tvůj čas."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"Co se dá dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~Starý prodavač se napřed kolem sebe rozhlédl a když zjistil, že v blízkosti se nenachází žádný potenciální zákazník, natáhl svou ruku k tobě.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Vlož tři mince do jeho dlaně.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"Nech to plavat. Jaké máš zboží?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"Zapomeň na to. Nazdar."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~Přikývne a zastrčí tři měděné mince někam pod šaty. "Tak na co ses chtěl kámo poptat?"~ */
  IF ~~ THEN REPLY #17357 /* ~"Řekni mi něco o tomto místě."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"Hledám jednoho chlápka, slyší na jméno Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"Sháním deník, co jsem ztratil."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"Nechejme to být. Jaképak máš zboží?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"Toto? Toto je jen další tržiště v Úlu, nejhorší čtvrti v našem požehnaném městě, Sigilu." Trpce se pousmál a pak pokrčil rameny. "Dokavaď budeš mít oči otevřené a budeš si dávat bacha - jo a abych nezapomněl, po setmění určitě zalez někam do bezpečí - tak to není zas tak špatný plac. Jako všechny brlohy.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"Hledám chlápka, říká si Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"Sháním deník, co jsem ztratil."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"Tak copak tu prodáváte?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"To je vše, co jsem chtěl zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"Hmm. Ne, to jméno mi nic neříká. Je mi líto brácho."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"To je teda pomoc za všechny prachy..."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"Řekni mi něco o tomto místě."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"Sháním deník, co jsem před časem ztratil."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"Nech to plavat. Kouknem se na tvůj kšeft."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"To nic,nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"Smůla, v poslední době sem žádnej neviděl. Jesli potřebuješ nový deník, někerej z kupců tady by moh mít ňákej na skladě." Pokrčil rameny.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"To teda byla pomoc za všechny prachy..."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"Řekni mi něco o našem okolí."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"Hledám jednoho chlápka, jmenuje se Pharod."~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"Nech to být. Kouknem na tvoji nabídku."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"Nic, nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~Starý kupec se usmál pod vousy a odkašlal si. "Zaplatils mi za strávený čas a ne za odpovědi, kámo. Strašně rád bych ti pomoh, kdybych jenom moh, fakt že jo. Co takhle teď kouknout zboží co tu mám?"~ */
  IF ~~ THEN REPLY #17324 /* ~"Ano."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"Přímo teď ne. Řekni mi něco o našem okolí.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"Ne, ale sháním chlápka jménem Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"Teď zrovna ne. Právě hledám svůj deník, někde jsem ho ztratil."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~Ha ha! Nikoliv, brácho, jenom starý. Ale každopádně díky za zájem." Usmál se.~ */
  IF ~~ THEN REPLY #17369 /* ~"Můžeš mi říct něco o této čtvrti?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"Hledám chlápka, jmenuje se Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"Sháním deník, co jsem před časem ztratil."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"Můžu se mrknout na vaše zboží?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"Dej si pozor. Sbohem."~ */ EXIT
END
