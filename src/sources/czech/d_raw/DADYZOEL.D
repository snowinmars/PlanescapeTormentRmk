// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~Tento mírně zženštilý, dobře oblečený mladík pozoruje kolemjdoucí s opovržlivým úšklebkem. Jeho ruka spočívá na nádherně zdobeném jílci šavle. V hedvábných šatech a s botami z nejjemnější kůže vypadá, jako by byl z jiného světa.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"Zdravím..."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"Zdravím..."~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Minout toho člověka.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Ačkoliv by se svými jemnými rysy a zaoblenými rty mohl být považován za hezkou ženu, jeho hlas, vzdor své měkkosti, je bezpochyby mužský: "Hmm, cizinec. Další 'frajer'...", to slovo vyprskl, jako by ho uráželo, "...přišel vyzvat mou čepel na souboj?"~ */
  IF ~~ THEN REPLY #15354 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"Proč ne? Jo."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"Proč ne? Jo."~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"Ano, ale vadila by sázka na výsledek?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"Ano, ale vadila by sázka na výsledek?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"Pak tedy zmiz. Nemám čas na takové, jako jsi ty." Odhání tě.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"Pak jsi mě tedy podcenil, pane. Budeš poslouchat mé otázky, nebo ne?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"Udělej si čas. Odpovíš na mé otázky."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"Udělej si čas. Odpovíš na mé otázky."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"Pak nebudu plýtvat tvým časem."~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~Oči mladého muže se lesknou jako vybroušený led; chladný úsměšek se objeví na jeho tváři. "Cože? Zopakuj to, ty neohrabaná zvířecí trosko. Cos to řekl?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"Slyšelas mě, ženo."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"Slyšelas mě, ženo."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"Nic. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~Zachytíš pouze záblesk, jak tasí svou šavli. Olízne si rty a mírně se usmívá: "Hlavně nezakrvácej mé boty, ano?" Za ním stojí špinavá postava v plášti a pozoruje tě chamtivýma očima...~ */
  IF ~~ THEN REPLY #15368 /* ~Postav se útoku.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Uteč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"Ne, ne, ne... to není tak snadné." Zavírá oči a zavrtí lítostivě hlavou. "Odejdeš jako mrtvola, nebo zbabělec. Jinou volbu nemáš"~ */
  IF ~~ THEN REPLY #15370 /* ~"Samozřejmě, není třetí možnost?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"Vidím tu jen jedinou mrtvolu."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Odejdi.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~Zachytíš pouze záblesk, jak tasí svou šavli. "Vidíš svůj odraz v mých očích, tupče? Hlavně nezakrvácej mé boty, ano?" Za ním stojí špinavá postava v plášti a pozoruje tě chamtivýma očima...~ */
  IF ~~ THEN REPLY #15373 /* ~Odpověz na útok.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Utéč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~Jak odcházíš, povídá: "Přesně, jak jsem předpokládal, zbabělec." Sotva slyšitelný hlas zpoza jeho postavy nesouhlasně mručí.~ */
  IF ~~ THEN REPLY #15375 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Ignoruj jeho komentář a odejdi.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Ignoruj jeho komentář a odejdi.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~Chvilku se zdá být překvapený, ale nakonec přikývne. "Vždy *je* možnost. Hmm... Navrhuji, abys mne poprosil o odpuštění, a pomodlil se k nějaké Mocnosti, abych byl v dobré náladě."~ */
  IF ~~ THEN REPLY #15378 /* ~"NIKDY. Budeme bojovat."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"Pak tě tedy žádám o odpouštění, spletl jsem se."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"Tohle neudělám. Sbohem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~Mračí se a koulí očima. "Velmi dobře, já -" Náhle zmlkne a zmateně se dotkne svých spánků.~ */
  IF ~~ THEN REPLY #15381 /* ~Čekej a dívej se, co se stane.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"Jsi v pořádku?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Zaútoč na něj, dokud se nekryje.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Odejdi, zatímco se je zmatený.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"Já... errr... ne, nemohu ti odpustit!" Zatřepe hlavou, a jeho vzezření se mění ze zmateného na vzteklé. "Uteč nebo zemři!"~ */
  IF ~~ THEN REPLY #15385 /* ~Zaútoč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Odejdi.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~Jak odcházíš, volá za tebou: "Vrať se zpět ty bezpáteřný chudáku!"~ */
  IF ~~ THEN REPLY #15387 /* ~Otoč se a postav se mu.~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Pokračuj v chůzi.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~Jak se otáčíš, aby ses mu postavil, bleskurychle tasí svou čepel. "Á, výborně; tak tedy budeš bojovat! Nejlépe uděláš, když nepotřísníš mé boty svou krví, jo?" Za ním stojí špinavá postava v plášti a pozoruje tě chamtivýma očima...~ */
  IF ~~ THEN REPLY #15389 /* ~Postav se jeho útoku.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Utéč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~Hořce se usmívá. "Mě nemůžeš zastrašit ty zvíře. Navrhuji ti, abys odešel dříve, než tvá krev začne stékat do Sigilských kanálů."~ */
  IF ~~ THEN REPLY #15391 /* ~Pravda: "Dám ti ještě jednu šanci promluvit před tím, než tebe a tvůj meč přelomím napůl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Lež: "Dám ti ještě jednu šanci promluvit před tím, než tebe a tvůj meč přelomím napůl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Odejdi.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"*Musím*? Hmm... tvá drzost je zábavná, co po mně chceš?"~ */
  IF ~~ THEN REPLY #15394 /* ~"Kdo jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"Co tady děláš?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"Chci se bít."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"Chci se bít."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"Hledám může jménem Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"Hledám svůj deník, který jsem ztratil."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"Ale, nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"Jména... 'lidí'... tady mě moc nezajímají. Ani kdybych ho potkal, neznal bych toho tvého Pharoda."~ */
  IF ~~ THEN REPLY #15401 /* ~"Mám další otázky..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"Tak tedy sbohem."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"Tak tedy sbohem."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"Tak tedy sbohem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"Umíš *číst?*" Usmívá se. "Takže... tys ho ztratil tady? Nepochybně ti ho ukradli a použili jako podestýlku místní zdegenerovanci. Být tebou, tak bych zapomněl, že jsem ho kdy měl. Určitě bys ho už nechtěl i kdybys ho našel."~ */
  IF ~~ THEN REPLY #15405 /* ~"Mám další otázky..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"Tak tedy sbohem."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"Tak tedy sbohem."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"Tak tedy sbohem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"Můžeš mne oslovovat Adyzoel, z domu Eriane-Ard."~ */
  IF ~~ THEN REPLY #15409 /* ~"Mám další otázky..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"Možná si zase spolu promluvíme, Adyzoele. Sbohem."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"Možná si zase spolu promluvíme, Adyzoele. Sbohem."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"Možná si zase spolu promluvíme, Adyzoele. Sbohem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~Pekelně se usmívá a odhaluje krásné zuby, bílé, jako zrovna padlý sníh, jistojistě ostré jako břitvy. "Ó, tohle a tamto. Chceš zkoušet mé dovednosti. Říkáš si o problémy."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"Myslím, že bych mohl být dobrým testem tvých dovedností."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"Myslím, že bych mohl být dobrým testem tvých dovedností."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"Mám nějaké další otázky..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"Tak tedy doufám, že si své problémy někde najdeš. Sbohem."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"Tak tedy doufám, že si své problémy někde najdeš. Sbohem."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"Tak tedy doufám, že si své problémy někde najdeš. Sbohem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~Oči mladého muže se lesknou jako vybroušený led; chladný úsměšek se objeví na jeho tváři. "Výborně..." Zachytíš pouze záblesk, jak tasí svou šavli. "Hlavně nezakrvácej mé boty, ano?" Za ním stojí špinavá postava v plášti a pozoruje tě chamtivýma očima...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"Čekej"~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Postav se jeho útoku.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Uteč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~Jeho oči se rozzáří. " Proč ne, to je výb..., náhle se zmateně zarazí a dotkne se spánků.~ */
  IF ~~ THEN REPLY #15422 /* ~Počkej, co se stane.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"Jsi v pořádku?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Zaútoč na něj, zatímco nedává pozor.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Odejdi, zatímco je zmatený.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"Já... errrr... ne, žádné sázky! Vyhraješ, budeš žít, prohraješ, zemřeš. To je jednoduché."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"Tak fajn. Pojďme se bít."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"Tak fajn. Pojďme se bít."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"Tak na to zapomeň. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"tak na to tedy nemysli. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"Dobře, dobře, pokračuj."~ */
  IF ~~ THEN REPLY #15430 /* ~"Kdo jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"Co tady děláš?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"Chci se bít."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"Chci se bít."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"Hledám muže jménem Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"Hledám svůj deník, který jsem někde ztratil."~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"Nic, nevadí. Sbohem."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Adyzoel přikyvuje hlavou. "Á, už jsi tu zase. Přišel jsi konečně bojovat, nebo mě zase otravovat s otázkami?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"Jsem zde, abych bojoval."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"Jsem zde, abych bojoval."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"Žádný. Sbohem."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"Žádný. Sbohem."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~Úsečně ti odpovídá: "Tak tedy sbohem. Musím tě požádat abys mě už víckrát neotravoval, jestliže mě nebudeš chtít vyzvat k boji."~ */
  IF ~~ THEN REPLY #15444 /* ~Odejdi.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Jak se otáčíš k odchodu, Adyzoel opovržlivě pronese: "Řekl jsem ti posledně, když jsme spolu mluvili: už mě víckrát neotravuj, jestliže mě nechceš vyzvat k boji. Až se potkáme znova, budu to brát jako hotovou věc; zkřížíme své zbraně, ať se ti to bude líbit, nebo ne."~ */
  IF ~~ THEN REPLY #15445 /* ~Odejdi.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~Vzpomínáš si, že Adyzoel tě žádal, abys ho víckrát neotravoval, pouze v případě, že jej budeš chtít vyzvat na souboj.~ */
  IF ~~ THEN REPLY #15446 /* ~Stejně s ním promluv.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~Vzpomínáš si, že Adyzoel říkal, že pokud se k němu přiblížíš, bude to brát jako výzvu a ihned na tebe zaútočí.~ */
  IF ~~ THEN REPLY #15448 /* ~Stejně s ním promluv.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"Ha! Zbabělé zvíře se vrátilo!"~ */
  IF ~~ THEN REPLY #15450 /* ~"Mám nějaké otázky..."~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"Slyším tady štěkot nějakého psa? Přišel jsem bojovat ty mizernej chlape."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"Slyším tady štěkot nějakého psa? Přišel jsem bojovat ty mizernej chlape."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Otoč se a odejdi.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~Ušklíbne se a odkloní od tebe hlavu. "Už nepromluvím ani slovo s takovou bezpáteřní věcí, jako jsi ty. Bojuj se mnou, nebo vypadni."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"Tak tedy s tebou budu bojovat."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"Tak tedy budu s tebou bojovat."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"Odejdu. Sbohem."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"Už ti nedovolím, abys mě déle obtěžoval, zbabělče. Už tě nechci nikdy vidět, pokud mě nebudeš chtít vyzvat na souboj. Až se znovu potkáme, zkřížíme své zbraně, i když se ti to třeba nebude líbit."~ */
  IF ~~ THEN REPLY #15457 /* ~Odejdi.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Adyzoel vypadá naprosto překvapený. "Cože, už zase? Odkud ses zase připlazil, ty prase? Byl jsem si jist, že jsem tě vyřídil."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"Ne tak docela. Přišel jsem kvůli jinému souboji."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"Ne tak docela. Přišel jsem kvůli jinému souboji."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"Ne, mám nějaké další otázky..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"Chyboval jsi. Sbohem."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~Mladý muž se zarazil a na chvíli upřeně civí na Morteho. "A *ty* jsi ksakru co?"~ */
  IF ~~ THEN REPLY #15462 /* ~"Prostě ho ignoruj; je neškodný."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Nechej Morteho mluvit.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~Muž jen neartikulovaně zařve a od úst mu odlétnou sliny: "Aaargh!" Bleskurychle tasí šavli a obličej mu zrudne hněvem. "Dost! JÁ *ŽÁDÁM* satisfakci!"~ */
  IF ~~ THEN REPLY #15464 /* ~"Můžu se jen zeptat, jestli odpustíte mému společníkovi."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"Cože, Morte? Chceš s ním bojovat?"~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"Velmi dobře... ale budeš muset bojovat s námi oběma."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"Dobrá! Pak tedy oba zemřete!" Zatímco se připravuje k útoku, všimneš si, že za ním stojí špinavá postava v plášti a pozoruje tě chamtivýma očima...~ */
  IF ~~ THEN REPLY #15467 /* ~Odpověz na útok.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Uteč.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"Co?" Mladík nevěřícně zírá na Morteho. "To je ale *divný* mimir!"~ */
  IF ~~ THEN REPLY #15469 /* ~"Mimir?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"Můžeš mu odpustit jeho urážky?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"Budeme bojovat... ale budeš se bránit nám oběma."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"Ticho, ty blekotající blázne!" Uklidní se a vrátí šavli do pochvy. "Oba dva: Bojujte nebo utečte, nic jiného nepřijímám." Ačkoliv je ovládán svým hněvem, mladíkovy oči se blýskají ledovou nenávistí. ~ */
  IF ~~ THEN REPLY #15472 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Otoč se a utíkej.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"Ty tam; nech toho chudáka. Není na tom už beztak dost špatně, že ho ještě musíš otravovat?"~ */
  IF ~~ THEN REPLY #15474 /* ~"To není tvá záležitost."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"Sklapni, nebo budeš další na řadě."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"Velmi dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"Cokoli z toho udělám. Teď už nech tohle žalostné stvoření na pokoji nebo mi za to zaplatíš."~ */
  IF ~~ THEN REPLY #15477 /* ~"Zaprvé, řekni mi, jestli ti na tom tak opravdu záleží."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"Ty a platit? Vyzkoušej to."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"Protože... protože..." Zmateně se zarazí a dotkne se rukama spánků. Zdá se být omámený.~ */
  IF ~~ THEN REPLY #15480 /* ~"Jsi v pořádku?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Počkej.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Odejdi, zatímco je zmatený.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~Setřásá ze sebe zmatek. "Tohle není tvůj problém, teď si vyber; bojuj se mnou, nebo vypadni."~ */
  IF ~~ THEN REPLY #15483 /* ~"Cokoli z toho udělám. A teď mi něco řekni."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~"Budeme bojovat."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~"Budeme bojovat."~ */ EXTERN ~DMORTE~ 169
END
