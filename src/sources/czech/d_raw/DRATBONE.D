// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~Vysoký hubený muž prozkoumává zem před sebou; někdy se zastaví a klekne si, jakoby v troskách něco hledal. Navzdory svým zvláštním vytáhlým údům se pohybuje rychle a ladně. ~ */
  IF ~~ THEN REPLY #16305 /* ~"Zdravím..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~Nechej ho žít.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~Když promluvíš, otočí se a přikrčí... ale nevíš, zda se chystá vrhnout na tebe nebo někam jinam. "Co? Mluv rychle..."~ */
  IF ~~ THEN REPLY #16307 /* ~"Nemohl bych se tě na něco zeptat?"~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"Ále, o nic nejde. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"Nemám vodpovědi, vodprejskni!" Předtím sis toho nevšiml, ale drží v ruce dlouhou zahnutou dýku.~ */
  IF ~~ THEN REPLY #16309 /* ~"Nic ti neudělá, když si se mnou promluvíš..."~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"Ty mi vyhrožuješ?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"Co?" Na chvilku na tebe pohlédne, pak si odplivne. "A jak bysem to jako já měl vědět, ha?"~ */
  IF ~~ THEN REPLY #16312 /* ~"Nerozumím."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"Prostě mi musíš věřit."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"O nic nejde. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"Co nechápeš, troubo? Hmph! Dávej pozor: Seš tady, aby ses ptal na votázky. A co když to budou votázky, na který nechci vodpovědět, ha? Zmlátíš mě? Budeš mě mučit? Ha?"~ */
  IF ~~ THEN REPLY #16315 /* ~"Prostě si promluvme. Jenom se tě na něco přeptám..."~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~Přísaha: "Neublížím ti, na to ti dávám své slovo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~Lež: "Neublížím ti, na to ti dávám své slovo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"Ne. Ani vomylem. Běž votravovat někoho jiného."~ */
  IF ~~ THEN REPLY #16319 /* ~Odejdi.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"Proč? Ratbone tě děsí? Připadáš si vohroženej, troubo?"~ */
  IF ~~ THEN REPLY #16320 /* ~"Ne, nejsem."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"Jo, připadám."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"Nech to plavat. Měj se hezky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"Ha ha! Podle toho jak čumíš. Tak jo, co vode mne chceš?"~ */
  IF ~~ THEN REPLY #16323 /* ~"Jak už jsem se zmínil, rád bych se na něco optal..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"Ále nic, nech to plavat. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"No, to je tvoje chyba. Vypadni a nech mě bejt."~ */
  IF ~~ THEN REPLY #16325 /* ~Odejdi.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~Zavolá na tebe když se otáčíš k odchodu: "Hej! Počkej chvilku..."~ */
  IF ~~ THEN REPLY #16326 /* ~"Ano?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~Nevšímej si ho a jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~Narovná se a schová zbraň. "Kdo tě poslal? Proč si tady?"~ */
  IF ~~ THEN REPLY #16328 /* ~"Nikdo mě neposlal. Jsem tu ze své vůle."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"Co tě vede k tomu, že si myslíš, že mě někdo poslal?"~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"O čem to tu *mluvíš* ?"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"To tě nemusí zajímat."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~Odplivne si. "Hmph. Pryč s tebou."~ */
  IF ~~ THEN REPLY #16332 /* ~Odejdi.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"Hmm..." Dívá se na tebe, dlouho a pečlivě; po dlouhém mlčení řekne: "Dobrá. Co vode mě chceš?"~ */
  IF ~~ THEN REPLY #16333 /* ~"Jak už jsem naznačil, něco mi leží na mysli..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"Vlastně nic, nech to plavat. Sbohem."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"Tak dobrá. Ptej se."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"Kdo jsi?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"Řekni mi ještě jednou, kdo jsi?"~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"Co tady děláš?"~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"Pověz mi o Sběrači a ochlastovi ještě jednou."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"Hledám člověka, jmenuje se Pharod."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"Hledám chlápka, slyší na jméno Pharod."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"Hledám jednoho maníka, jmenuje se Pharod."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"Pátrám po svém ztraceném deníku."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"Nic se neděje. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"Mě říkaj Ratbone. Kdo seš ty?"~ */
  IF ~~ THEN REPLY #16345 /* ~Lež: "Jsem a-a... Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"Nemám žádné jméno."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"Já... ani nevím."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"To se tě netýká."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~Mračí se na tebe. "Jo, určitě jsi."~ */
  IF ~~ THEN REPLY #16349 /* ~"Mohl bych ti položit ještě pár otázek?"~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"Ano, to jsem já. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~Ratbone se culí. "Ty určitě ne; To už sem si všim. Takže proč ne, ha?"~ */
  IF ~~ THEN REPLY #16351 /* ~Lež: "V pořádku... Já jsem, ehm, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"Protože si to prostě nepamatuji."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"Nemá to s tebou co do činění."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~Ratbone pozvedl obočí. "Opravdu? To je dost zvláštní, než aby to byla pravda... heh. Co se stalo? Někdo ti rozbil ten tvůj zjizvenej ksicht?"~ */
  IF ~~ THEN REPLY #16354 /* ~"Něco na ten způsob. Ale přejděme k dalšímu tématu..."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"Je to skutečně dlouhý příběh; radši si ho necháme až na někdy jindy. Sbohem."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"Oh? Hmm. Mluvit s tebou byl špatnej nápad. Vypadni; už s tebou nechci nic mít."~ */
  IF ~~ THEN REPLY #16356 /* ~"Stále mi vrtá hlavou..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"Tedy sbohem."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~Přerušil tě uprostřed věty: "Ne! nechci to slyšet. Pryč s tebou." Otočil se od tebe a znovu začal s hledáním.~ */
  IF ~~ THEN REPLY #16358 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"Heh! Už zapomněls, tupče? Ratbone!"~ */
  IF ~~ THEN REPLY #16359 /* ~"A mohl bych se ještě zeptat na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"To je vše, co jsem si přál zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"Nic co by tě zajímalo."~ */
  IF ~~ THEN REPLY #16361 /* ~"Vypadá to, že něco hledáš."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"Přejděme k jinému tématu..."~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"No, ve skutečnosti lov-" náhle přestal mluvit, podezíravě si tě prohlíží. "Co se staráš, eh?"~ */
  IF ~~ THEN REPLY #16364 /* ~"Jsem prostě jenom zvědavý."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~Pravda: "Zajímalo by mě, zda mohu nějak pomoci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~Lež: "Můžu nějak pomoci?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"Nemůžu. Ještě bych se zeptal na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"Nemůžu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"Hmm. Jo, lovím kraniokrysy."~ */
  IF ~~ THEN REPLY #16369 /* ~"Proč lovíš krysy?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"Tak to je vše, co jsem chtěl zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"Ne jenom vobyčejný krysy - kraniokrysy. Sou za ně odměny. Tos nevěděl? Měďák za každej vocas co doneseš."~ */
  IF ~~ THEN REPLY #16372 /* ~"Proč je na ně vypsána odměna?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"Kam odnášíš jejich ocasy?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"Zajímavé. Mohl bych se ještě přeptat na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"To bude všechno, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"Eh? Nejsou jako normální krysy; sou mnohem nebezpečnější. Čím jich je víc pohromadě, tím sou chytřejší... když jich je dost, sou tak chytrý, že můžou kouzlit jako kouzelníci. Úl - heh, vlastně celej Sigil - je dost nebezpečnej bez smeček geniálních kouzelnickejch krys!"~ */
  IF ~~ THEN REPLY #16376 /* ~"Kam odnášíš jejich ocasy?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"Mohu se ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"A to je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"Proč? Plánuješ taky nějakej lov na krysy?"~ */
  IF ~~ THEN REPLY #16379 /* ~"Ano, jsem."~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"Snad."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"Nikoliv, pouhá zvědavost."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"Tady to nedělej, tupče! V poslední době jich ubylo, takže nepotřebuju, aby se v mým rajónu proháněl nějakej další trotl."~ */
  IF ~~ THEN REPLY #16382 /* ~"Vyskytují se jen vzácně? A víš proč?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"Prostě bych to chtěl vědět."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"Mohl bych se zeptat na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"Kdepak, já ne. Asi byly hodně loveny. Nejsem jedinej sigilskej krysař, to víš. Jen tady, na Hadrníkově náměstí, pracuju sám."~ */
  IF ~~ THEN REPLY #16386 /* ~"Zajímavé. Můžeš mi ještě odpovědět na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"To bude všechno, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"Hmm." Chvilku po tobě pošilhává, pak si povzdechne. "Ať mě pepka klepne, že ti todlecto říkám. Běž na východ, vypadni z náměstí východním směrem a pak pokračuj na jih. Natrefíš na to jižně od Tržiště. Ale ne, abys tam šel lovit krysy! S bídou vystačí akorát tak pro jednoho krysaře!"~ */
  IF ~~ THEN REPLY #16388 /* ~"Není? A napadá tě proč?"~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"Díky. Zeptal bych se ještě na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"Díky, až někdy půjdu kolem, zaskočím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"Hmm. Abych pravdu řek, nechce se mi tu, jen tak pro nic za nic, cintat na pentli. Napřed koukej něco vyvalit ty. Co tady vůbec chceš?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"Hledám jednoho člověka jménem Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"Postrádám svůj deník."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"Sám ani nevím. Nejsem zdejší, jenom procházím."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"Nemyslím si, že by se tě to týkalo."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"Zapomeň, že jsem se na něco ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"He? Sakra, ty vole, to se nezmůžeš na nic lepšího? Tak třeba lži, dyž musíš... pokuds mi už teď nekecal!" Trpce se pousmál.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"Hledám jednoho člověka, jmenuje se Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"Pátrám po svém ztraceném deníku."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"Jenom tudy procházím, už jsem to jednou říkal."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~Rychle něco vymysli.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"Seš, že jo? Hmm..." Naklonil se k tobě a ztlumil hlas. "Seš blízko, tomu věř. Proč se po něm vlastně pídíš, co? Je tvůj přítel? Nepřítel?"~ */
  IF ~~ THEN REPLY #16401 /* ~"Ví něco, co se mi může hodit."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~Lež: "Je to můj přítel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~Lež: "Nepřítel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"Neřekl bych, že s tím máš co do činění."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"Ví? No, tak tos přišel na ten správnej flek. Teď by ses měl potloukat tady kolem a jen tak šmírovat. Ten chlápek je fakt dost dobře zašitej, ale tady na Hadrníkovým náměstí na něho dřív nebo pozdějc natrefíš. Spíš dřív."~ */
  IF ~~ THEN REPLY #16406 /* ~"Díky. Můžu položit ještě pár otázek?"~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"Tak to tedy vyrazím a najdu ho. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"Určitě je?" Ratbone si tě bedlivě prohlédl. "Hmm. Chtěl bys pro něj makat, ne? Akorát bych neřek, že vypadáš na... tudlectu makačku. No, ale z toho si nedělej vrásky... přišels na správný místo. Teď by ses měl potloukat tady kolem a jen tak šmírovat. Ten chlápek je fakt dost dobře zašitej, ale tady na Hadrníkovým náměstí na něho dřív nebo pozdějc natrefíš. Spíš dřív."~ */
  IF ~~ THEN REPLY #16408 /* ~"Díky. Ještě bych potřeboval pár věcí zjistit..."~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"V takovém případě se vydám ho hledat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~Uskočil a pak se smíchem potřásl hlavou. "Hehe! Nerad bych, aby se po mně začal shánět chlápek tobě podobnýho vzhledu! Neřek bych, že mi strejda Pharod poděkuje, dyž kdejakýmu ranaři budu vykládat, kde je zašitej. To bych si z fleku zadělal na průser..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~Přísaha: "Dávám ti své slovo, že neprozradím tvé jméno."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~Přísaha: "Dávám ti své slovo, že neprozradím tvé jméno."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~Lež: "Přísahám, že nevyjevím tvé jméno."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~Pravda: "Koukej vybalit všechno co víš nebo tvůj osud bude věrně kopírovat osud tvého předchůdce."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~Pravda: "Koukej vybalit všechno co víš nebo tvůj osud bude věrně kopírovat osud tvého předchůdce."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~Bluf: "Vyklop všechno co víš, ať se ti nestane to, co tvému předchůdci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~Bluf: "Vyklop všechno co víš, ať se ti nestane to, co tvému předchůdci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"Nic se neděje. Můžeme mluvit i o něčem jiném..."~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"Hrome! Chacha... neptej se mě proč, ale rozhod sem se ti věřit." Odmlčel se, aby si mohl odplivnout přes rameno. "Hlavně se, ty mamlase, nepřičiň, abych toho pozdějc litoval! Teď by ses měl potloukat tady kolem a jen tak šmírovat. Ten chlápek je fakt dost dobře zašitej, ale tady na Hadrníkovým náměstí na něho dřív nebo pozdějc natrefíš. Spíš dřív."~ */
  IF ~~ THEN REPLY #16419 /* ~"Díky. Ještě je tu pár nezodpovězených otázek..."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"Tak jo, vypravím se ho najít. Sbohem."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~Zarmouceně zavrtěl hlavou. "Lituju, to se nestane. Ale je blízko. Určitě ho sám bez mý pomoci taky najdeš."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~Pravda: "Koukej mluvit! Líná huba věští pro tvou budoucnost neštěstí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~Pravda: "Koukej mluvit! Líná huba věští pro tvou budoucnost neštěstí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~Bluf: "Prozraď mi co víš a nic se ti nestane."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~Bluf: "Prozraď mi co víš a nic se ti nestane."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"Ještě bych se chtěl zeptat na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~Ušklíbl se a plivl ti k nohám. "Pche. Hlavně potom cos mi dal slovo, že mi nic neuděláš. Vůbec sem s tebou neměl kecat, celý je to špatně. A teď vypadni; už nemáme nic na žvanění."~ */
  IF ~~ THEN REPLY #16427 /* ~"Pořád neznám odpověď na pár otázek..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"Tedy sbohem."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~Otráveně potřásl hlavou. "Jako bych ti to už předtim neříkal. Teď by ses měl potloukat tady kolem a jen tak šmírovat. Ten chlápek je fakt dost dobře zašitej, ale tady na Hadrníkovým náměstí na něho určitě natrefíš. Tak už se seber a mazej ho najít, než se ti to zas vykouří z palice a přídeš mě znovu otravovat!"~ */
  IF ~~ THEN REPLY #16429 /* ~"Díky. Nebude vadit, když se ještě zeptám na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"Jdu a najdu ho. Zatím sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~Ratboneho obličej prozrazuje nevrlost. "Už sem ti to říkal. Nevypáčíš ze mě, kde ho hledat. Je blízko. Najdi si ho sám."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~Pravda: "Koukej vybalit všechno co víš, děláš to pro své klidné stáří."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~Pravda: "Koukej vybalit všechno co víš, děláš to pro své klidné stáří."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~Bluf: "Koukej vyklopit informace, taky by ti už nemusely narůst další letokruhy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~Bluf: "Koukej vyklopit informace, taky by ti už nemusely narůst další letokruhy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"Potřeboval bych informace ohledně..."~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"Jestlis to ztratil tady, přeju hodně štěstí při hledání. S tím ti na žádnej pád nemůžu pomoct."~ */
  IF ~~ THEN REPLY #16437 /* ~"Můžeš mi ještě odpovědět na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"A co by ses jako chtěl dozvědět? Ratbone by tu pro tebe moh mít schovanejch pár odpovědí..."~ */
  IF ~~ THEN REPLY #16439 /* ~"Kde bych mohl najít nějakou práci?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"Kde se dá najít nějaká zábava?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"Nevadí. Tak se ještě optám..."~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"Nic se neděje. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"Makat, he? Tady v Úlu sotva na něco kápneš. Rozhodně o ničem poctivým nevím. V nejhorším bys moh dělat sběrače... ale doporučoval bych ti spíš, kouknout se jinam. Taková Dolní čtvrť by nemusela být marná."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"Co mi řekneš o lovení krys?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"Sběrač?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"Jakpak se člověk dostane do Dolní čtvrti?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"Můžeš mi ještě odpovědět na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"Ano, mohl bych se podívat i tam. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"To je úplná sranda. Jenom... hmm, vlastně ne. Cesta, kterou sem dřív chodil, je teď celá rozkopaná... do tý části se dostali dabusové a začli všecko předělávat. Abych pravdu řek, v tendle moment nemám ani tucha jak se dostat skrz." ~ */
  IF ~~ THEN REPLY #16450 /* ~"Dabus?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"Cos to říkal ohledně vstupu mezi Sběrače?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"Teď bych rád položil následující otázku..."~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"Jasan. Sběrači odnášej sigilský mrtvoly... nejvíc z Úlu... do Márnice. Mrtví -- Spalovači -- jim za ně dávaj prachy. Udržují to tu jakžtakž pořádku." ~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"Co mi řekneš o lovení krys?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"Jak se dostanu do Dolní čtvrti?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"Potřeboval bych informace ohledně..."~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"To je vše, co jsem potřeboval zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"Ty máš asi dlouhý vedení, co? Teda! Dabusové jsou služebníci Paní Bolesti, vládkyně Sigilu. A ani nedejchej o tom, že mě o ní budeš zpovídat! I pouhý kecání o ní nosí smůlu."~ */
  IF ~~ THEN REPLY #16458 /* ~"Cos to říkal ohledně vstupu mezi Sběrače?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"To bude všechno, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~Ratbone pozdvihl ruce jako kdyby se tě snažil zastavit: "Nene, depak! Ať tě ani nenapadne o tom uvažovat! Tady je jich tak málo, že s bídou stačí pro mě. Podle mýho byly zkrátka vylovený. Takže estli mi chceš fušovat do řemesla, buď té lásky a vyber si jinou oblast."~ */
  IF ~~ THEN REPLY #16461 /* ~"Cos to říkal ohledně vstupu mezi Sběrače?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"Jakpak se člověk dostane do Dolní čtvrti?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"Uvidíme. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"Nevím přesně po čem paseš, ale doporučju ti hledat jinde. Tady ti dokonce i 'dámy' můžou udělat problémy, jestli rozumíš, co ti říkám."~ */
  IF ~~ THEN REPLY #16465 /* ~"Ne, to tedy nevím."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"Kdepak bych mohl najít nějakou práci?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"Ještě bych se přeptal na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"To je vše, co jsem potřeboval slyšet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"Hm... tak to nech být."~ */
  IF ~~ THEN REPLY #16471 /* ~"Kde bych mohl najít nějakou práci?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"Je zde něco, na co bych měl dávat obzvlášť pozor?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"Ještě je tu pár nezodpovězených otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"To je vše, co jsem potřeboval zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"Nic přesnýho... jen tady zkrátka nikdy nevíš, odkud přiletí první rána. Takže si pořiď ještě druhej pár očí, co ti bude hlídat prdel a rozhodně si dávej bacha na hubu dyž mluvíš s neznámejma lidma. Dyž si budeš cintat na pentli před špatným chlápkem, můžeš se dostat do knihy mrtvejch -- nebo ještě někam hůř - dřív než řekneš švec."~ */
  IF ~~ THEN REPLY #16476 /* ~"Horší?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"Kde je možno najít nějakou práci?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"Kam bych měl vyrazit za zábavou?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"To je vše, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~Vážně přikývl. "Samo. Jen se nesnaž mi nakecat, že tě nenapadá žádnej horší osud než smrt..."~ */
  IF ~~ THEN REPLY #16481 /* ~"Kde se dá najít nějaká práce?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"Kde si tu může člověk trošku užít?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"Potřeboval bych informace ohledně..."~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"To je všechno, co jsem potřeboval zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"Fůra. Povím ti o jednom, na kterýho by sis měl dát fakt bacha... Sigilem se potuluje jeden flamendr. Nevypadá na nějakýho bouchače, ale to ti povídám, ten chlápek se narodil s kudlou v ruce, to je jistý, jakože je Sigil kulatej."~ */
  IF ~~ THEN REPLY #16485 /* ~"Kdo to je?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"Kde je možno najít nějakou práci?"~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"Kam bych měl vyrazit za zábavou?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"Teď bych rád položil další otázku..."~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"Počíhám si na něj. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"Kam deš, vole? Ještě sem neskončil, co sem ti chtěl říct: nejde ani tak o toho  chlapa, ale o jednoho plesnivýho Sběrače, co ho v jednom kuse nahání, chápeš? Teď se ti snažím narvat do palice, že ten Sběrač má krapet víc co do činění s mrtvolama po flamendrovi než to, že je nakonec odtáhne."~ */
  IF ~~ THEN REPLY #16490 /* ~"Sběrač?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"Co tím myslíš?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"Jak tohle vůbec víš?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"Co tím máš na mysli?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"Jak ses to vůbec dozvěděl?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"Dyť to jsou ti, co odnášej Sigilský mrtvoly -- především z Úlu -- do Márnice a nechaj si za to zacvakat."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"Co mělo znamenat to 'má s tím hodně společného'?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"Jak ses dozvěděl o tomto Sběrači?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"Co mělo znamenat to 'má s tím hodně společného'?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"Jak ses dozvěděl o tom Sběrači?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"Hmmm... koukám, že tě to docela bere, ale todle nejsou žádný obyčejný žvásty, estli mi rozumíš. Todle tajemství je sakra poctivý. Předtím, než tu začnu mlátit hubou, mi budeš muset prokázat službičku."~ */
  IF ~~ THEN REPLY #16499 /* ~"Vyslov své přání."~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"Inu, co naplat. Takže se tě zeptám na něco jiného."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"Fajn, fajn. S jedním kámošem sme se vsadili... je to, hm, taková soutěž, fakt. Na každej pád, všecko co potřebuješ vědět je, že po tobě chci krysí ocasy, tolik, kolik jen jich dokážeš splašit. Ale ne z obyčejnejch krys, na to bacha! Nene, já potřebuju ocasy těch psionických potvor. Dotáhni sem aspoň pět kousků a já pak vyklopím všecičko co vím o těch dvouch, o Sběrači a jeho zabijákovi."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"Mám pro tebe těch pět krysích ocasů."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"Psionické krysy?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"Rozumím."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"Přijde mi to jako mrhání časem."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"Přesně tak. Nejsou jako obyčejný krysy a sou o hodně tlustej fous nebezpečnější. Čím víc se jich sleze, tím sou fikanější... tak, že dokážou připravovat léčky, přepadat lidi a dokonce kouzlit, jako nějakej mág. Koukej si dát setsakra pozor až na ně vyrazíš!"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"Mám pro tebe těch pět krysích ocasů."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"Rozumím."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"Přijde mi to jako maření času."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"Správně. Ještě něco?"~ */
  IF ~~ THEN REPLY #16509 /* ~"Ano. Kde bych mohl najít práci?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"Ano. A co nějaké to rozptýlení?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"Ano; ještě bych se přeptal na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"Ne, vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"Přizpůsob se. Řek jem ti, co mi máš donýst, teda pokud se chceš o tom "páru" dovědět něco bližšího. Nějaký další dotazy?"~ */
  IF ~~ THEN REPLY #16513 /* ~"Ano. Kde se dá sehnat nějaká práce?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"Ano. A co nějaké to rozptýlení?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"Ano. Ještě bych se přeptal na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"Ne, ale nic. Sbohem."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"Uniká mi, proč ses vrátil; rozhodně nemám v plánu s tebou mluvit."~ */
  IF ~~ THEN REPLY #16517 /* ~"Zůstalo mi ještě pár otázek..."~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"Rád bych se omluvil."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"Chtěl bych se omluvit."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"Rád bych se omluvil."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"Ne, ty pako; zašels prostě moc daleko. Lhals mi a ještě navíc ses odvážil mi vyhrožovat... padej, vole."~ */
  IF ~~ THEN REPLY #16521 /* ~Odejdi.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"Hmmm." Chvíli stojí v zamyšlení, posléze si odplivne přes rameno. "Musím přiznat, že bych si moc přál, abych dostal víc druhejch příležitostí; tu tvou ti teda neupřu. Ale protentokrát si svou klapačku víc hlídej, hňupe."~ */
  IF ~~ THEN REPLY #16522 /* ~"Díky. Čili, můžeš mi ještě odpovědět na..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"Budu. Sbohem."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"Ne, ty debile. Dal sem ti ještě šanci. Teď di do hajzlu."~ */
  IF ~~ THEN REPLY #16524 /* ~Odejdi.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~Ratbone vzhlédl v momentě, kdy ses k němu přiblížil. "Ehm?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"Mám pro tebe ty krysí ocasy."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"Na srdci mi leží pár otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~Ratbone vzhlédl ve chvíli, kdy ses k němu přiblížil. "Skvělý, že se zas vidíme. Máš pro mě ty ocasy?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"Ano."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"Ještě ne. Zajímá mě ještě pár odpovědí..."~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"Ne, doposud ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~Vzal si ocasy a uložil je do kožené brašny, přičemž se pro sebe pochechtával. "Jo, to sou ty pravý! Sem ti zavázanej."~ */
  IF ~~ THEN REPLY #16531 /* ~"Teď bych si vyslechl to tvoje tajemství."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"Jistěže, jistěže. Že tu de o něco divnýho, sem si myslel hned, jak sem toho ochlastu viděl poprvý. Jedna věc je bojovat v Úlu a vyhnout se tak pozornosti, ale on zde setrvává už dlouho... a to přímo v Úlu. Nevím proč si nesebere svejch pět švestek a nevrátí se do svýho sídla."~ */
  IF ~~ THEN REPLY #16532 /* ~"Zaujalo tě to?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"Pokračuj..." ~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"Zbytek si budu muset poslechnout jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"Jasně, že jo. Nemilosrdní a další. Patrolujou v ulicích Sigilu -- nebo aspoň v některejch částech -- a prosazujou 'pořádek.' Zašklebil se. "A poctivě se vyhejbaj chudejm čtvrtím, například Úlu."~ */
  IF ~~ THEN REPLY #16535 /* ~"Chápu. Jenom pokračuj..."~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"Konec si budu muset vyslechnout příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"Po pravdě, přísahal sem, že nechám zlodějny, už je to delší doba -- a neptej se proč -- ale tehdy se tomu prostě nedalo odolat. Jednou takhle pozdě v noci sem se přikradl do toho blešího cirkusu, kde byl ubytovanej. Že neuhádneš, koho sem uviděl v okně jeho pokoje? Toho Sběrače!"~ */
  IF ~~ THEN REPLY #16537 /* ~"Prosím, pokračuj..."~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"Zbytek si budu muset doposlechnout jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"Takže od tý doby sem byl dvojnásob podezřívavej. Zvědavost vyhrála a já začal nenápadka toho Sběrače šmírovat. Nikdá nespí, ani nic nejí... a pokud chlastometr není zrovna někde v akci, tak si vybere co možná nejtmavější uličku, tam si dřepne a jen tak hledí do blba." ~ */
  IF ~~ THEN REPLY #16539 /* ~"Zajímavé. Pokračuj..."~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"Závěr si budu muset poslechnout příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"Ale to nejlepčí teprvá příde. Jedný tmavý noci, kdy si tak ležím na střeše nad ulicí kde se zrovna Sběrač poflakuje a kdopak to přišel na návštěvu?"~ */
  IF ~~ THEN REPLY #16541 /* ~"Ochlasta?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"Vyprávěj."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"Povíš mi to příště. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"Ne! *Fiend!*"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"Fiend, jsem si zcela jistej. Byla tak sladká, s křídlama podobná andělovi a její rty... rty měla... ehm, prostě, dokonalost sama. No, ale stejně šlo o fienda, na to vsadím krk na špalek -- svůdkyně, baatezu. Tomudle druhu říkáme Erinye tam, odkud pocházím."~ */
  IF ~~ THEN REPLY #16544 /* ~"Pokračuj...~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"Konec si budu muset vyslechnout jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"Dal bych nevím co, jen dybych moh slyšet, o čem tak ti dva vykecávali, ale už sem toto zažil a viděl dost, než abych se snažil na sebe upozorňovat fienda. Takže všecko co vím je, že spolu chvilku žvanili, pak se ten fiend rozesmál -- očividně se mu vysmíval -- a vytratil se. Sběrač jenom vrčel a syčel zatímco odcházela!"~ */
  IF ~~ THEN REPLY #16546 /* ~"Jsi si tím vším jistý?"~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"Proč by fiend rozmlouval se Sběračem?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"Interesantní příběh. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"Cha! Jenom klíďopíďo vyraž a sám si je prohlídni, pokavád mi nevěříš! Ale moc svý štěstí nepokoušej, protože ten ochlasta je fakt klasa, každej, co se s ním pustil do křížku, protože prudil jeho parťáka Sběrače, šel brzo čuchat ke kytkám. Odspoda."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"Proč by fiend debatoval se Sběračem?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"Proč by fiend rozmlouval se Sběračem?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"Zajímavá příhoda. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"Já se tady tak vykecávám a tobě, ty přiblblý sráči, to vůbec nedošlo! On není sběrač! Hehe... Esli někdy narazíš na fienda v ukecaný náladě... a to nejlíp na baatezu, na přiblblý tanar'ri se můžeš vy... tak se ho na to sám přeptej! Kdoví, co se z toho může vyklubat."~ */
  IF ~~ THEN REPLY #16552 /* ~"Díky za informace. Teď bych trochu změnil téma a zeptal se na..."~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"Popřemýšlím o tom, až nějakého potkám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"Já tady asi mlátil pantem jen tak z plezíru, co?! Esli si mě dobře poslouchal, tak potom fakt nechápu, jakto, že ti to nedocvaklo! On není sběrač! Haha... Esli někdy narazíš na fienda v ukecaný náladě... a to nejlíp baatezu, na přiblblý... " Zarazil proud řeči, když mu došlo, že kousek od něj stojí Fall-From-Grace. "Ehm, měl jsem na mysli 'uvědomělejší' tanar'ri... tak se ho sám na to přeptej! Kdoví, co se z toho může vyklubat."~ */
  IF ~~ THEN REPLY #16554 /* ~"Díky za informace. Změňme teď trošku téma - ještě mě zajímá..."~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"Když na nějakého narazím, zkusím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"Už jsem ti, himlhergot, jednou řekl, co tě to tajemství bude stát: pět krysích ocasů. Ale ne z obyčejnejch krys, bacha na to! Nene, já potřebuju ocasy těch psionickejch potvor. Dotáhni sem pět kusů a já pak vyklopím všecičko co vím o těch dvou, o podivným Sběračovi a jeho zabijákovi."~ */
  IF ~~ THEN REPLY #16556 /* ~"Rozumím."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"Přijde mi to jako mrhání časem."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~Ratbone k tobě vzhlédl. "Ehm?"~ */
  IF ~~ THEN REPLY #16558 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"Jenom procházím. Zdravím."~ */ EXIT
END
