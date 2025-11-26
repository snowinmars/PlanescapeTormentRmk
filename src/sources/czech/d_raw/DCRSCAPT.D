// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~Vidíš uštvaně vyhlížejícího muže ve velmi působivé zbroji. Velí několika dalším strážím při obraně města. "Nemám čas si vykládat!" zavrčel. "Jestli chceš bejt užitečnej, zlikviduj devu, nebo rozmázni pár těchhle gehrelethů! Nezdržuj mě!" Obrátil si se zpět ke svým mužům.~ */
  IF ~~ THEN REPLY #60329 /* ~"Co se to děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"Dobře. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"Co se děje? Odkud jsi spadl? Ten přiblblej deva se vyloupl ze země a stáhl nás do Carceri. Přesně to se děje! A teď bojujeme s gehrelethy, který se rozhodli z nás udělat štavnatou svačinu. 'Sme uprostřed krize, troubo. Takže mi vypadni z cesty!" Prudce tě odstrkuje stranou a už dál nehodlá odpovídat na tvoje otázky.~ */
  IF ~~ THEN REPLY #60332 /* ~"Tak sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"Kámo, pleteš se mi v cestě... jestli toužíš udělat něco pro blaho města, prostě sejmi pár devových obdlud a PŘESTAŇ MĚ VOTRAVOVAT!"~ */
  IF ~~ THEN REPLY #60334 /* ~"Dobře, dobřet..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~Vidíš kudrnatého muže s tváří vojáka. Je oblečený ve stejnokroji Curské stráže - ale vypadá o něco velitelštěji. Obrátil se k tobě a pohdravě si tě prohlédl. "Co chceš?"~ */
  IF ~~ THEN REPLY #60336 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"Rád bych viděl člověka, co to tu má na starost."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"Žena jménem Lady Roberta je zapletená do plánů vraždy jejího manžela Carla. Myslím, že je jedním z Burgherových přisluhovačů."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"Jsem se chtěl udat pro vraždu Carla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"Jeden z městských úředníků mě požádal, abych jednoho z nich zavraždil. Myslel jsem, že by bylo dobré tě upozornit."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"Chci, abyste mě zatkli."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"Hledám devu."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"Co?"~ */
  IF ~~ THEN REPLY #60346 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"Rád bych viděl člověka, co to tu má na starost."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"Žena jménem Lady Roberta je zapletená do plánů vraždy jejího manžela Carla. Myslím, že je jedním z Burgherových přisluhovačů."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"Jsem se chtěl udat pro vraždu Carla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"Jeden z městských úředníků mě požádal, abych jednoho z nich zavraždil. Myslel jsem, že by bylo dobré tě upozornit."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"Chci, abyste mě zatkli."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"Hledám devu."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"Tohle je Curst. Co potřebuješ vědět? Že je to město bohaté na zrádce, vedené šílencem a nacpanější intrikami víc, než je v Carceri gehrelethů, kde se můžeš věřit cizinci dát stejnou důvěru jako vlastní rodině? Že je to město lsti a vysněné pomsty? Podívej se kolem, kámo, a udělej si vlastní obrázek."~ */
  IF ~~ THEN REPLY #60355 /* ~"Dobře. Tak mi odpověz ještě na pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"Jednající osobu? A to k čemu?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"Žena jménem Lady Roberta je zapletená do plánů vraždy jejího manžela Carla. Myslím, že je jedním z Burgherových přisluhovačů."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"Jsem se chtěl udat pro vraždu Carla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"Jeden z městských úředníků mě požádal, abych jednoho z nich zavraždil. Myslel jsem, že by bylo dobré tě upozornit."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"Chci, abyste mě zatkli."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"Hledám devu."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"Je, že? Postaráme se o to, příteli. Občané Curstu jsou ti vděční."~ */
  IF ~~ THEN REPLY #60365 /* ~"Skvěle. Měl jsem pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"Skvěle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"Vskutku. Nepovídej. Pojď o tom popřemýšlet, pověz to stěnám cely, kde tě zavřeme. Budeš spolupracovat?"~ */
  IF ~~ THEN REPLY #60368 /* ~"Podrobím se."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"Žertuješ? Ani nápad."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~Oči v hledí získaly tvrdý výraz. "Musíš jmenovat. Kdo plánuje co?"~ */
  IF ~~ THEN REPLY #60371 /* ~"Siabha má v plánu zavraždit An'izia."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Oznámil jsem kapitánovi Curstských stráží, že se Siabha pokouší zavraždit An'Iziuse. Velice rád to slyšel, přísahal, že ji zatkne. Doufám, že jsem udělal správnou věc...~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"An'izius mi řekl, abych křivě obvinil Siabhu, která chtěla totéž provést An'iziovi. Oba jsou vinni."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"An'izius se pokouší zabít Siabhu."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Oznámil jsem kapitánovi Curstských stráží, že se An'Izius pokouší zavraždit Siabhu. Velice rád to slyšel, přísahal, že ho zatkne. Doufám, že jsem udělal správnou věc...~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"Zapomeň na to, nic jsem neřekl."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"A za jaký zločin? Pokračuj. Zmiz odtud. Mám hodně práce." Zaujatě sleduje okolí a očividně tě přehlíží.~ */
  IF ~~ THEN REPLY #60376 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~Naklonil k tobě hlavu. "Proč bys tady měl hledat zrovna devu? Kam moje paměť sahá, nebyl deva v Curstu pěkně, pěkně dlouho. Z toho všeho zla a zrady ve vzduchu by šel rovnou do hlíny." Směje se.~ */
  IF ~~ THEN REPLY #60378 /* ~"Tak dobře. Odpověz mi ještě na něco..."~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"Tak dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~Jeho oči se zúžily do tenkých čárek. "Nějakou dobu stráví v mé věznici. Mám pro ni vyjímečný trest. Pošlu oddíl. Mé díky, cizinče."~ */
  IF ~~ THEN REPLY #60381 /* ~"Na to nemysli. Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"Tak oba, he? Dobře. To mi upevní v tomhle městě pozici. Budou pryč dřív, než se naděješ. Mé díky, cizinče."~ */
  IF ~~ THEN REPLY #60384 /* ~"Na to nemysli. Mám další otázky..."~ */ JOURNAL #60386 /* ~Upozornil jsem kapitáná Curstské stráže, že Siabha i An'Izius zkoušejí jeden na druhého svalit vinu ze smyšlených zločinů. Byl rád, že to slyší. Doufám, že jsem udělal správnou věc...~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"Jistě. Sbohem."~ */ JOURNAL #60386 /* ~Upozornil jsem kapitáná Curstské stráže, že Siabha i An'Izius zkoušejí jeden na druhého svalit vinu ze smyšlených zločinů. Byl rád, že to slyší. Doufám, že jsem udělal správnou věc...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"Takže ten githyankijský mizera udělal konečně chybu, he? Bude skvělým přírůstkem do věznice. Pošlu pro něj oddíl. Máš moje díky, cizinče."~ */
  IF ~~ THEN REPLY #60391 /* ~"Na to nemysli. Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~Zahleděl se na tebe. "Nezapomenu na to. Raději mi tu informaci dej, nebo ti ji vymáčknu z toho zjizveného krku."~ */
  IF ~~ THEN REPLY #60395 /* ~"Siabha má v plánu zavraždit An'izia."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Oznámil jsem kapitánovi Curstských stráží, že se Siabha pokouší zavraždit An'Iziuse. Velice rád to slyšel, přísahal, že ji zatkne. Doufám, že jsem udělal správnou věc...~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"An'izius mi řekl, abych křivě obvinil Siabha, který chtěl totéž provést An'iziovi. Oba jsou vinni."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"An'izius se pokouší zabít Siabhu."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Oznámil jsem kapitánovi Curstských stráží, že se An'Izius pokouší zavraždit Siabhu. Velice rád to slyšel, přísahal, že ho zatkne. Doufám, že jsem udělal správnou věc...~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"Budeš to ze mě muset vymlátit."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
