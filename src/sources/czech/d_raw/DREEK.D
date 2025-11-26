// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DREEK~

IF ~  Global("Reekwind","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Tento muž na tebe hledí podivnýma hmyzíma očima. Jsou *obrovské*... tak obrovské, že se zdá, jako by mu měly každým okamžikem vypadnout z důlků a odkutálet se po kočičích hlavách. Když tě spatřil, kývl hlavou. Ta mu nadskakovala jak ptákovi... a když ses k němu přiblížil, zjistil jsi, že vzduch kolem něho je prostoupen pachem moči a výkalů.~ */
  IF ~~ THEN REPLY #9339 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #11329 /* ~Opusť otrhaného muže v míru.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Muž popotáhl a utřel si nos do rukávu, potom otevřel pusu a odhalil tak své zčernalé hnijící dásně. "Příběhy-za-minci, páníčku?" Ovanul tě svým dechem; smrdí to, jako kdyby měl v ústech přímou linku do kanálu.. "Příběhy-za-minci?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #11330 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0
  SAY #11276 /* ~´Muž si odfrkl. "Jména, jména. Kdo jsi, kdo jsi." Při každém opakování škubnul hlavou. "Jména... jsou nebezpečná, nebezpečná." Rozhlédl se kolem a zašoupal nohama.~ */
  IF ~~ THEN REPLY #11331 /* ~"Nebezpečná?"~ */ DO ~SetGlobal("Reekwind","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #11332 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11277 /* ~"Když znáš jméno nebo nějaký máš, vobojí smrdí průserem." Podíval se na tebe. "Dostal jsem jméno, nežádal jsem ho. Smradodech." Uvědomil sis jeho páchnoucí dech a zápach moči a výkalů, který ho obklopuje. "Dostal sem to jméno, dostal sem ho."~ */
  IF ~~ THEN REPLY #11333 /* ~"... zajímavé jméno."~ */ GOTO 4
  IF ~~ THEN REPLY #11334 /* ~"Heh. To jméno ti sedí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Reekwind_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #11335 /* ~"Je to tvé pravé jméno?"~ */ GOTO 4
  IF ~~ THEN REPLY #11336 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #11278 /* ~"Není to mý pravý jméno, mý pravý jméno." Smradodech si mumlá něco dál, vždycky když řekne *jméno*, škubne hlavou. "Pravé jméno, nebezpečná věc, dává ostatním moc." Zírá na tebe velkýma očima. "Drž svý jméno v tajnosti, nikomu ho neříkej."~ */
  IF ~~ THEN REPLY #11337 /* ~"Co jsi tím myslel?"~ */ GOTO 5
  IF ~~ THEN REPLY #11338 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #11279 /* ~"Jména jsou jako pachy... dá se s nima stopovat." Smradodech zakašlal, oči mu přitom málem vypadly z důlků. Zakašlání asi nějak promíchalo jeho vnitřnosti, protože si mohutně uprdnul, jako by chtěl svým slovům dodat důraz. "Pokud někdo zná pravý jméno, dává mu to moc." Olízl si rty. "Moc *ubližovat*."~ */
  IF ~~ THEN REPLY #11339 /* ~"Nevím jak se jmenuju."~ */ JOURNAL #61613 /* ~V Úlu jsem potkal nemocného vypravěče, zapáchajícího chlapíka jménem "Smradodech." Když jsem s ním promluvil, varoval mě před nebezpečím jmen, říká, že když máš nějaké jméno, můžeš být pak snadno stopován, spatřen... loven. Z nějakého důvodu mě ta myšlenka zamrazila. Je to snad *důvod* proč jsem Bezejmenný? ~ */ GOTO 6
  IF ~~ THEN REPLY #11340 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #11280 /* ~Smradodechovy oči se rozšířily. Pohled na vyvalené bulvy je ti nepříjemný. "Tak to jsi blažený, blažený. Zůstaň beze jména a budeš jako duch ve Sférách, nevystopovatelný, neviděný, neobjevený." Zamlaskal. "Jméno vybraný, jméno daný... díky tomu tě můžou ostatní najít a ubližovat."~ */
  IF ~~ THEN REPLY #11341 /* ~"Tobě ublížili?"~ */ GOTO 7
  IF ~~ THEN REPLY #11342 /* ~"Aha. Sbohem.."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.1
  SAY #11281 /* ~Smradodech trhaně přikývl, pak se poškrábal. "Nechal jsem jednou uniknout svý jméno. Jen jednou, jen jednou." Oči se mu zamlžily, jako by byla vzpomínka bolestivá, pak se na tebe nejistě podíval. "Povím ti příběh, povím, ale tři měďáky musím vidět." Když vyslovil slovo *měďák*, usmál se a jeho páchnoucí dech tě trefil jako rána kladivem."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11343 /* ~"Výborně. Tady jsou tři měďáky."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11344 /* ~Lež: "Tolik s sebou nemám. Mám ale jiné otázky, nicméně..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11345 /* ~Pravda: "Tolik s sebou nemám. Mám ale jiné otázky, nicméně..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11346 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.0 17.3
  SAY #11282 /* ~Smradodech se postavil, podíval se doleva, doprava, pak ti pohlédl do očí. Tvář se mu zkroutila a pak se zabručením znovu vypustil mocný prd. Zápach tě málem porazil, ale on si toho nevšímá. "Prokletý, já jsem! Kráčel jsem po čtvrti..." Ztuhl, nos vysoko. Předvádí, jak pyšně se procházel po ulici a kýval na kolemjdoucí.~ */
  IF ~~ THEN REPLY #11347 /* ~Sleduj.~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
~ JOURNAL #63974 /* ~Smradodech mi řekl, že ne vždy byl tou smrdící troskou, kterou jsem potkal - zřejmě zkřížil cestu někomu, komu nepřirostl k srdci a výsledek byl, že ho dotyčný proklel. Patrně díky tomu, že proklínající znal Smradodechovo skutečné jméno, byl schopný na něj prokletí nalepit a od té doby Smradodech trpí. Podle Smradodechova popisu soudím, že proklínajícím byl trochu tlustý, plešatý muž, vypadající prý jako "tykev"... což zřejmě znamená, že preferuje oranžovou barvu oblečení. Nejspíš to bude někdo z Horní čtvrti, kde Smradodech kdysi žil. ~ */ GOTO 9
  IF ~~ THEN REPLY #11348 /* ~"Vlastně, já teď nemám čas na tvůj příběh. Mám ale jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11349 /* ~"Myslím že už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11283 /* ~Smradodech ztuhl. "Vstoupil jsem do cesty někomu. Jako tykev vypadal, a vztekle mě proklínal!" Smradodech vystrčil břicho, aby vypadal tlustě, přihladil si vlasy špinavou dlaní, takže vypadá skoro plešatě. Pak si začal ťukat prsty na své 'tlusté' břicho. Chodí kolem a obchází místo, kde byla jeho 'osobnost vyšší třídy'. "Celý zmatený, mumlá kletby, takhle to dělal." S odfrknutím a bezstarostným gestem Smradodech vrhl neviditelnou kletbu na svou imaginární osobu.~ */
  IF ~~ THEN REPLY #11364 /* ~Poslouchej.~ */ GOTO 10
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11366 /* ~"Počkej chvilku... *potkal* jsem toho člověka, který tě proklel. Jmenuje se Vraždosmysl, nebo ne?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Zdá se, že Smradodech byl proklet Jumblem Vraždosmyslem. ~ */ GOTO 11
  IF ~~ THEN REPLY #11368 /* ~"Vlastně, já teď nemám na příběh čas. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11370 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0 12.0
  SAY #11284 /* ~"Znal mý jméno, uklouzlo mi, to jo, a všechno mi vzal, všechno!" Znovu ztuhl, zhluboka se nadechl a opět zaujal pózu své 'osoby vyšší třídy', která se najednou sesula a Smradodech si mohutně uprdl, pak vydechl a naplnil vzduch svým vše přemáhajícím pachem. "Prokletý puchy, smrady a exkrementy! Přišel jsem sem povídat příběhy a dobrý jsem, dobrý teď. Smradodech má jméno, dané jméno, dané jméno..."~ */
  IF ~~ THEN REPLY #11372 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11375 /* ~"Počkej na moment... *potkal* jsem toho člověka, který tě proklel. Jmenuje se Vraždosmysl, nebo ne?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Zdá se, že Smradodech byl proklet Jumblem Vraždosmyslem. ~ */ GOTO 11
  IF ~~ THEN REPLY #11378 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 15.7
  SAY #11285 /* ~Při zvuku jména Smradodechovy tváře otekly, oči se mu vyvalily a najednou začal zvracet před sebe na zem. Celé jeho tělo se třese, ničeno kašláním a nevolností... po několika dlouhých minutách slabě přikývl a opsal si před srdcem polokruh.~ */
  IF ~~ THEN REPLY #11380 /* ~"Co se stalo, když jsi potkal... jeho?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 10
  IF ~~ THEN REPLY #11382 /* ~"Nešťastný příběh. Chci se tě ještě na něco zeptat..."~ */ GOTO 15
  IF ~  Dead("Jumble")
~ THEN REPLY #11384 /* ~"Je mrtvý, víš?"~ */ GOTO 13
  IF ~  !Dead("Jumble")
~ THEN REPLY #11386 /* ~"Pravděpodobně ho můžu donutit, aby sejmul kletbu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Reekwind_1","GLOBALGood",1)
~ GOTO 12
  IF ~~ THEN REPLY #11389 /* ~"sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.3
  SAY #11286 /* ~Smradodech se chvíli tváří nadějně, pak se ale zatvářil smutně. "Sliby, chyby, sliby, chyby..." Vzdychl, znovu a znovu, po každém ale škytnul. "Zkus, jestli chceš, jestli chceš..." ~ */
  IF ~~ THEN REPLY #11391 /* ~"Co se stalo, když jsi potkal... jeho?"~ */ GOTO 10
  IF ~~ THEN REPLY #11411 /* ~"Chci se tě ještě na něco zeptat..."~ */ GOTO 15
  IF ~~ THEN REPLY #11412 /* ~"Jdu za ním teď hned. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #11287 /* ~Smradodech si vzdychl a zakončil to páchnoucím škytnutím. "Tak to nic, to nic, to nic..."~ */
  IF ~~ THEN REPLY #11413 /* ~"Chci se tě ještě na něco zeptat..."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ GOTO 15
  IF ~~ THEN REPLY #11414 /* ~"Sbohem."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ EXIT
END

IF ~  OR(2)
Global("Reekwind","GLOBAL",1)
Global("reekwind","global",10)
~ THEN BEGIN 14 // from:
  SAY #11288 /* ~Smradodech si všiml, že se blížíš, nadšeně zakýval hlavou a zírá na tebe velkýma očima. Když ses přiblížil až k němu, znovu se do tebe opřel mocný zápach moči a výkalů, který ho obklopuje.~ */
  IF ~~ THEN REPLY #11415 /* ~"Zdravím, Smradodechu. Chci se tě ještě na něco zeptat..."~ */ GOTO 15
  IF ~~ THEN REPLY #11416 /* ~Nechej Smradodecha na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1 7.2 8.1 9.2 10.0 11.1 12.1 13.0 14.0 16.1 16.2 18.1 18.2 19.1 20.1 21.1 22.1 23.1 23.2 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 32.0 33.1 33.2 34.1 35.1 36.1 37.1 38.1 39.0 40.1 41.1 42.1 43.1 44.3 45.0 47.0
  SAY #11289 /* ~"Otázky, otázky..." Smradodech se naklonil a prohlíží si tě svýma velkýma očima. "Odpovědi, odpovědi...?"~ */
  IF ~~ THEN REPLY #11417 /* ~"Znovu se tě ptám, kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #11418 /* ~"Co se ti stalo?"~ */ GOTO 7
  IF ~~ THEN REPLY #11419 /* ~"Rád si poslechnu příběh."~ */ GOTO 16
  IF ~~ THEN REPLY #11420 /* ~"Můžeš mi říci něco o tomto místě?"~ */ GOTO 18
  IF ~  Global("Pharod","GLOBAL",0)
Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #11421 /* ~"Můžeš mi říci, kde mohu najít někoho jménem Pharod?"~ */ GOTO 33
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #11422 /* ~"Můžeš mi znovu říci o Pharodovi?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11423 /* ~"Ztratil jsem deník. Neviděl jsi nějaký?"~ */ GOTO 32
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11424 /* ~"Toho, kdo tě proklel, jsem našel v Městské hale. Jmenuje se Vraždosmysl."~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 11
  IF ~~ THEN REPLY #11425 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY #11290 /* ~"Povím ti příběh, povím, ale tři měďáky musím vidět." Když vyslovil slovo *měďák*, usmál se a jeho páchnoucí dech tě trefil jako rána kladivem."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11426 /* ~"Vynikající. Tady jsou tři měďáky."~ */ DO ~TakePartyGold(3)
~ GOTO 17
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11427 /* ~Lež: "Nemám s sebou tolik peněz. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11428 /* ~Pravda: "Nemám s sebou tolik peněz. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11429 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11291 /* ~Vzal si měďák, strčil ho do pusy a poté ho spolkl, což tě překvapilo. "Nejlepší měšec, nejlepší měšec je zde, v žaludku, v žaludku." Vydal páchnoucí sípot. "Příběh, příběh..." Zkousl rty a drbal si své špinavé hadry.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",0)
~ THEN REPLY #11430 /* ~Počkej, až vybere příběh.~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",0)
~ THEN REPLY #11431 /* ~Počkej, až vybere příběh.~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11432 /* ~Počkej, až vybere příběh.~ */ GOTO 24
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
~ THEN REPLY #11433 /* ~"Rád bych slyšel příběh o tom, jak jsi byl proklet."~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11434 /* ~"Rád bych slyšel příběh o tom, co se stalo Uličce nebezpečných zákoutí." ~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #11453 /* ~"Rád bych slyšel Ignusův příběh."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatGT(Protagonist,13,INT)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11457 /* ~"Chci slyšet příběh o muži, co přišel do tohoto města bez jména a paměti a mluvil s prokletým vypravěčem, který ho varoval před nebezpečím jmen."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11459 /* ~"Chci slyšet příběh o muži, co přišel do tohoto města bez jména a paměti a mluvil s prokletým vypravěčem, který ho varoval před nebezpečím jmen."~ */ GOTO 40
  IF ~~ THEN REPLY #11463 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY #11292 /* ~"Úl, Úl... znám historku, kterou ti mohu říci, znám, znám a řeknu ti ji, ale nejdřív musím dostat tři měďáky." Olízl si rty a společně s tím odfrkl tak, že ani prase by to lépe nesvedlo.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11468 /* ~"Vynikající. Tady jsou tři měďáky."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11479 /* ~Lež: "Tolik s sebou nemám. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11480 /* ~Pravda: "Tolik s sebou nemám. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11481 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.4 18.0
  SAY #11293 /* ~"Tamta čtvrť, tamta čtvrť..." ukázal na levou stranu, na vzdálenou zuhelnatělou uličku. "Ulička *Nebezpečných Zákoutí.* Nemotorně obrátil své ruce na kostru jedné z budov. "Nebyla vždy rohatá, nebyla vždy spálená a zuhelnatěná, jednou ožila, nikdy více."~ */
  IF ~~ THEN REPLY #11482 /* ~Poslouchej.~ */ GOTO 20
  IF ~~ THEN REPLY #11483 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11484 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #11294 /* ~"Plameny, oheň!" Vyhodil ruce vzhůru a pak s nimi mával, aby napodobil oheň. "Ulička vzplanula, velký kouř, popel byl všude... když to skončilo, jen *kostry* z budov zůstaly, kosti mrtvých budov, kosti mrtvých budov. Zákoutí... všude jsou zákoutí."~ */
  IF ~~ THEN REPLY #11485 /* ~Poslouchej.~ */ JOURNAL #63976 /* ~Smradodech mi vyprávěl o "Uličce nebezpečných zákoutí," uličce poblíž místa, kam se ukládá ke spánku. Říkal, že byla užívána jako běžná ulice, ale velký oheň, který tam jedné noci řádil, vehnal budovy i obyvatele v plameny, zanechávájíc po sobě jen kostry budov... a zbytky jejich usedlíků. Rozlámané dřevo starých vyhořelých domů jsou tím, co dalo Uličce její jméno. V současné době tam zřejmě mají útočiště skupinky zlodějských band. ~ */ GOTO 21
  IF ~~ THEN REPLY #11486 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11487 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11295 /* ~Shrbil se a začal šeptat. Pach jeho těla tě znovu silně zasáhl. "Nebezpečný, teď, špatní muži se tam usadili, usadili se tam." Uklonil se a při tom si mohutně uprdnul, jako když zaduje polnice. "Toto je příběh toho, jak se zrodila Ulička nebezpečných zákoutí."~ */
  IF ~~ THEN REPLY #11488 /* ~"Jak začal ten požár?"~ */ DO ~SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #11489 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11490 /* ~"Aha... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #11296 /* ~Udělal polokruh nad svým srdcem. "Člověk to tak udělal. Bestie to tak udělala. Muž, kterého dokonce i *fiendové* obdivují."~ */
  IF ~~ THEN REPLY #11491 /* ~"Kdo?"~ */ GOTO 23
  IF ~~ THEN REPLY #11492 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11493 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11297 /* ~"Příběh čaroděje je naplněn šílenstvím, smutkem, pálením, touhou... ten příběh ti mohu povědět, mohu ti ho povědět, já ti ho povím, ale musím vidět tři měďáky." Zasyčel a vydal zvuk, že to připomínalo hořící oheň. "Je to nebezpečný příběh, nebezpečný příběh."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11494 /* ~"Vynikající. Tady jsou tři měďáky."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
~ GOTO 24
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11495 /* ~Lež: "Tolik s sebou nemám. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11496 /* ~Pravda: "Tolik s sebou nemám. Mám ale nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11497 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2 17.5 23.0
  SAY #11298 /* ~"Ten čaroděj, to nebyl žádný slabý hokuspokus, ale *mocný* mág. " Smradodech pozvedl své ruce velmi uctivě, poté se ďábelsky zasmál. "Pálil Uměním a Umění spálilo jeho."~ */
  IF ~~ THEN REPLY #11498 /* ~Poslouchej.~ */ GOTO 25
  IF ~~ THEN REPLY #11499 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11500 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #11299 /* ~"Jméno, které dostal znělo Ignus, jméno ctěné, potom obávané, potom nenáviděné, potom potrestané." Smradodech vydal chřestivý sípot, pak zadržel vzduch a syčel, zdánlivě napodobujíce 'Ignuse.'~ */
  IF ~~ THEN REPLY #11501 /* ~Poslouchej.~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #11502 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11503 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11300 /* ~"Ignuse učil jeden z posledních velkých mágů a jako učeň se Ignus naučil hodně, hodně... a vlastně nic." Smradodech smutně otřásl svou hlavou. "V jeho srdci, které bylo černé jako uhlí, hořel oheň. Hořel, hořel a *hladověl*." Smradodech se popadl za hruď tak silně, až ho to zabolelo. "Když hladověl, Ignus hladověl  také. Jeho přáním bylo vidět Sféry *hořet.*"~ */
  IF ~~ THEN REPLY #11504 /* ~Sleduj.~ */ GOTO 27
  IF ~~ THEN REPLY #11505 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11506 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11301 /* ~"V noci..." Smradodech se shrbil a začal se pomalu plížit směrem k uličce, ve tváři šílený výraz. "Ignus přišel do Uličky když to byla Ulička Zákoutí, oheň v očích, oheň v srdci a on vypustil oba dva ven." Smradodech ukázal na Uličku, poté vyhodil ruce vzhůru, tiše křičel a smál se zároveň.~ */
  IF ~~ THEN REPLY #11507 /* ~Poslouchej.~ */ GOTO 28
  IF ~~ THEN REPLY #11508 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11509 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #11302 /* ~"Maso teklo jako vosk, lidé hořeli jako svíčky a Ignus se smál a smál..." Smradodech se zhroutil na zem, jeho tělo se zlomilo v předstírané bolestí. "Zlo, zlo bylo dokonáno a nezapomenuto, nezapomenuto." Stoupl si, nahrbil se na druhou stranu, podíval se doleva, doprava a začal mumlat, jako když s někým tajně mluví. "To, co muselo být vykonáno, bylo vykonáno..."~ */
  IF ~~ THEN REPLY #11510 /* ~Poslouchej.~ */ GOTO 29
  IF ~~ THEN REPLY #11511 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11512 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11303 /* ~Strnule si stoupl s důležitým výrazem ve tváři. "Trest byl rozhodnut, všichni čarodějové na hranicích, porodní báby, vykladači runového písma, hrabivé čarodějnice, všichni rádoby mágové... oni přišli, všichni měli sebou malý kousek Umění, aby potrestali Ignuse. Každý zvlášť byli jen mouchy..." Shnilými rty hlasitě zabzučel. "Dohromady, nebezpeční, nebezpeční."~ */
  IF ~~ THEN REPLY #11513 /* ~Poslouchej.~ */ GOTO 30
  IF ~~ THEN REPLY #11514 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11515 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11304 /* ~Zamumlal a poté pozvedl ruce... "Chytili Ignuse a vyhověli jeho přání..." Vířil rukama, jako by vyvolával kouzlo. "Přál si shořet, vyhověli mu a přitom využívali k vyvolávání kouzla jeho vlastní touhu. Udělali z jeho těla cestu do Ohnivé Sféry -- chtěli ho zabít, zabít..."~ */
  IF ~~ THEN REPLY #11516 /* ~Poslouchej.~ */ JOURNAL #63977 /* ~Smradodech mi vyprávěl příběh Ignuse, šíleného čaroděje, který byl zodpovědný za vznik Uličky nebezpečných zákoutí. Říkal, že Ignus byl mocným čarodějem, vyučeným jedním z posledních Velkých mágů. Ignus zahořel Uměním tak hodně, že ho jeho nutkání dohnalo k zapalování lidí i budov. Jedné noci, v jedné ulici v Úlu, pustil svoji sílu z řetězu, spálil ji a z obyvatel udělal chodící pochodně. Ať už z pomsty nebo ze spravedlnosti, několik menších mágů z Úlu se spolčilo a použilo své spojené vědění o Umění k obrácení Ignusova těla do průchodu k Elementální sféře Ohně. Doufali, že ho bolest zabije... ale nestalo se tak. Patrně jen způsobila, že se Ignus ponořil do hlubokého spánku.~ */ GOTO 31
  IF ~~ THEN REPLY #11517 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11518 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11305 /* ~"Nepodařilo se, nepodařilo se..." Smradodech si znovu uprdnul, aby zdůraznil neúspěch čarodějů. "Ignus žil, Ignus žil, jenom spal, přikryt plameny, plameny, usnul když vzplanul, nikdy šťastnější, nikdy šťastnější..." Zavřel oči, ovinul okolo sebe ruce a pomalu se otáčel. "Hořel... stále hořel..." Najednou otevřel oči. "Jednoho dne se vzbudí a potom, potom Sféry *shoří!*"~ */
  IF ~~ THEN REPLY #11519 /* ~"Nešťastný příběh. Mám pro tebe nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11520 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 15.6
  SAY #11306 /* ~Smradodech krknul a poškrábal se na rukou. Na moment se zamyslel, poté zatřepal hlavou. "Žádný deník, žádný deník jsem neviděl."~ */
  IF ~~ THEN REPLY #11521 /* ~"Mám pro tebe nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11522 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 15.4 15.5
  SAY #11307 /* ~Smradodech se najednou znovu shrbil a mlsně se na tebe díval. Chvíli chodil okolo tebe a tahal za sebou nohu jako když kulhá. "Král! Skvělý příběh, skvělý příběh! Mohu ti ho povědět, ale musím dostat tři měďáky..." ~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11523 /* ~"Vynikající. Tady jsou tři měďáky."~ */ DO ~TakePartyGold(3)
~ GOTO 34
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11544 /* ~Lež: "Tolik s sebou nemám. Mám nějaké otázky, ačkoli..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11548 /* ~Pravda: "Tolik s sebou nemám. Mám nějaké otázky, ačkoli..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11552 /* ~"Jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11308 /* ~Smradodech zůstal shrbený a upřeně se na tebe dívá. "Kdysi byl jeden ctižádostný člověk, Pharod se jmenoval, člověk, člověk s cíli a s *postavením*. Všechno zmizelo, zmizelo, rozplynulo se." Smradodech zašilhal, poté krknul a vzduch se naplnil pachem jeho vnitřností. "Rozplynulo se... a zapáchalo."~ */
  IF ~~ THEN REPLY #11554 /* ~Poslouchej.~ */ GOTO 35
  IF ~~ THEN REPLY #11556 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11558 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #11309 /* ~"Lhář, podvodník, muž který překrucoval zákon, to byl Pharod." Shrbil se, jako když píše na psacím stole. 'Psal' jen na moment, poté se najednou zastavil, bál se. "A tak jednoho dne zjistil, že překroutil sám sebe!"~ */
  IF ~~ THEN REPLY #11560 /* ~Poslouchej.~ */ GOTO 36
  IF ~~ THEN REPLY #11563 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11564 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11310 /* ~"Takový lhář to byl, že po smrti měl jít do strašného místa..." Smradodech smutně potřásal hlavou, znovu se nahrbil a vztekle se podíval do všech směrů. "Pharod to nemohl přijmout, nemohl, nemohl! Podváděl jiné, mohl také podvést i svou zkázu!"~ */
  IF ~~ THEN REPLY #11567 /* ~Poslouchej.~ */ GOTO 37
  IF ~~ THEN REPLY #11569 /* ~"Vlastně, já teď nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11572 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #11311 /* ~"Četl, pátral v knihách a radil se s věštci..." Smradodech si vyšlapoval vpřed a vzad, oči si stínil rukama, jako když se upřeně dívá do dáli. "...a oni mu říkali, že jen mezi otrhanci může najít to, co může podvést jeho zhoubu." Smradodech znovu krknul, potom vydal páchnoucí kašel. "Možná lhali..."~ */
  IF ~~ THEN REPLY #11575 /* ~Poslouchej.~ */ DO ~SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ JOURNAL #63978 /* ~Smradodech mi vyprávěl příběh o Pharodovi; zdá se, že Pharod byl jedním z členů "aristokracie" v Sigilu, ale svoji pozici využíval k překrucování práva, podvádění jiných a dokonce i odsoudil nevinného člověka. Jeho činy byly tak klamné, že po jeho smrti měla být jeho duše odsouzena do Nižších sfér - když se o tomto dozvěděl, polekal se a začal hledat cestu, jak se vyhnout svému osudu. Vypadá to, že se radil s několika věštci a bylo mu řečeno, že prostředek spásy sebe samého by mohl najít v odpadu Sigilu. Pharod odložil svoji vážnost a stal se Králem sběračů, posílá své gangy z Úlu drhnout ulice Sigilu v hledaní něčeho, co by mohlo osvobodit jeho duši... ale co to je, to neví. ~ */ GOTO 38
  IF ~~ THEN REPLY #11576 /* ~"Já teď vlastně nemám čas na příběh. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11577 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #11312 /* ~Smradodech se neohebně postavil, potom začal rozepínat domnělé oblečení. S každou částí 'oblečení', kterou odhodil, se stále víc hrbil. "Pharod odhodil své postavení, své cíle a dostal nový titul..." Smradodech se zastavil a mlsně se na tebe zadíval. Popadl své hadry a začal jimi třást. "A stal se Králem Otrhanců! Chtěl vládnout všem otrhancům, chtěl to všude prozkoumat a najít to, co potřeboval." Potřásá hlavou. "Stále hledá, stále..."~ */
  IF ~~ THEN REPLY #11578 /* ~"Uh... víš kde ho najdu?"~ */ GOTO 39
  IF ~~ THEN REPLY #11579 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11581 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #11313 /* ~Smradodech potřásá hlavou. "Žije mezi otrhanci a odpadky. Tam ho musíš najít, musíš ho najít..."~ */
  IF ~~ THEN REPLY #11582 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11584 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 17.6 17.7
  SAY #11314 /* ~Smradodech se na chvíli přestal škubat a škrábat a upřeně se na tebe dívá. "Ten příběh... ten příběh nic nestojí, nemá žádnou cenu a nemá žádnou cenu proto, protože to může být opravdu smutný příběh." ~ */
  IF ~~ THEN REPLY #11586 /* ~"Nicméně to chci slyšet."~ */ GOTO 41
  IF ~~ THEN REPLY #11587 /* ~"Vynikající. mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11589 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #11315 /* ~"Jak jen ten příběh začínal...?" Smradodech zachrochtal, poté vydal páchnoucí sípot který na chvíli zamlžil tvé vnímání.  Vypadá zamyšlený.~ */
  IF ~~ THEN REPLY #11591 /* ~"Může to začínat mužem, který se probudil v Márnici, myslel si, že je mrtvý, ale vpravdě, mrtvé jsou jen jeho vzpomínky."~ */ GOTO 42
  IF ~~ THEN REPLY #11593 /* ~"Vynikající. Mám ještě další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11596 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #11316 /* ~Smradodech pokýval hlavou, chvíli tě pozoroval a při tom se silně škrabal, jako by si dělal jizvy. "Mrtvý, ale ne bez života... žádná paměť, žádná paměť, žádné jméno..."~ */
  IF ~~ THEN REPLY #11598 /* ~"Utekl z Márnice, dostal se do Úlu a mluvil s mužem, který nechal jeho opravdové jméno zmizet a litoval toho."~ */ GOTO 43
  IF ~~ THEN REPLY #11599 /* ~"Vynikající. mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11600 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #11317 /* ~Smradodech vypadá hypnotizován tvými slovy. "Ano, ano, velké nebezpečí v pojmenovávání... možná..." Zastavil se. "Možná ten muž, se kterým Bezejmenný mluvil je varování před nebezpečím jmen." Vypadá, že o tom uvažuje. "Možná ten, který zapomenul své jméno je bohatší...?"~ */
  IF ~~ THEN REPLY #11601 /* ~"On? Je lepší snášet pravdu s veškerou její závažností nebo je lepší zůstat nevědomý? Který ze dvou mužů je na tom lépe?" ~ */ GOTO 44
  IF ~~ THEN REPLY #11602 /* ~"Vynikající. mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11603 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11318 /* ~Smradodech se odvrátil, vydal suchý kašel, vyplivl zelenou a vlhkou slinu a poté se otočil zpět k tobě. "To je tvá otázka, tvůj příběh..." Mluvil pomalu. "To *ty* si ji musíš zodpovědět."~ */
  IF ~~ THEN REPLY #11604 /* ~"Chci slyšet tvou odpověď."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 45
  IF ~~ THEN REPLY #11605 /* ~"Muž, který zná své pravé jméno je na tom lépe, protože zná sám sebe, a proto je to silnější člověk."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11607 /* ~"Muž, který své pravé jméno zapomněl je na tom lépe, protože je chráněn proti těm, kteří mu chtějí ublížit, i sám před sebou. Kam se pohne člověk se jménem, je následován. Když se pohne bezejmenný, jeho jméno ho po odchodu nepronásleduje."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",3)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11610 /* ~"Nevadí. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11611 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #11319 /* ~Smradodech potřásá hlavou. "Má odpověď, má odpověď..." Znovu zakašlal, krknul si a udělal další pachovou clonu. Olízl si rty, jako by se pokoušel zbavit pachuti v puse. "Má odpověď zní takto: Oba dva jsou hlupáci, ale jen jeden to o sobě ví."~ */
  IF ~~ THEN REPLY #11613 /* ~"Vynikající. Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11614 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 44.2
  SAY #11320 /* ~Smradodech si olízl rty. Pomalu pokýval hlavou, předtím než vydechl něco zamumlal, jako když mluví sám se sebou. Konečně se otočil zpátky k tobě. "To je příběh, příběh s ponaučením, který ukáže vypravěčovu náturu..." Zakašlal a vyplivl další hlen na dlažební kostky. "Příběh, který odpoví sám sobě, časem, časem...?"~ */
  IF ~~ THEN REPLY #11615 /* ~Pravda: "Snad. Co se stalo, stalo se a může být, že tento příběh nemá odpověď."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_2","GLOBALLaw",-2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11616 /* ~Pravda: "Musí to mít odpověď a každý příběh jednou končí. Odmítám přijmout jakoukoliv jinou možnost."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_2","GLOBALLaw",2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11617 /* ~Pravda: "Nevím. Já se nemohu rozhodnout."~ */ DO ~GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 46.2
  SAY #11321 /* ~Smradodech se chvíli škrábal, kýval, poté sáhl do kapes svého roucha a ukázal ti minci. "Za takový příběh: ořezaná mince." Směje se. "Nic víc, dokud ten příběh nebude u konce." ~ */
  IF ~~ THEN REPLY #11618 /* ~"Bezvadná cena. Dobře, možná jsou jiné otázky, na které mi můžeš odpovědět..."~ */ GOTO 15
  IF ~~ THEN REPLY #11619 /* ~"Sbohem."~ */ EXIT
END

IF ~  GlobalLT("reekwind","global",10)
GlobalGT("Reekwind","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11322 /* ~Vidíš Smradodecha... jeho oči se vrátily do původního rozměru a už se nesvírá v křečích tak, jak si ho pamatuješ. Směje se a vypadá značně čistější než předtím.~ */
  IF ~~ THEN REPLY #11620 /* ~"Zdravím, Smradodechu. Chci se tě na něco zeptat..."~ */ GOTO 49
  IF ~~ THEN REPLY #11621 /* ~Nechej Smradodecha být.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #11323 /* ~Překvapeně se na tebe dívá. "Je to... zastaveno. Vše skončilo, přesně jako tohle." Luskl prsty, poté se na sebe zvysoka podíval. "Mocnosti nad námi, já..." Směje se. "Já se znovu cítím *čistý*."~ */
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11622 /* ~"Rád to slyším. Vraždosmysl nechtěl odstranit prokletí, ale já jsem to z něj dostal."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11623 /* ~"Rád slyším, že se ti vede dobře."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11624 /* ~"Rád to slyším. Vraždosmysl nechtěl odstranit prokletí, ale já jsem to z něj dostal."~ */ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11625 /* ~"Rád slyším, že se ti vede dobře."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2 49.3
  SAY #11324 /* ~"Děkuji ti, pane. Já..." Vypadá rozrušeně. "Nemám nic, co bych ti za to mohl dát, ale jsi v mé dobré přízni..." Třese se. "Má to pro mne nesmírnou cenu." Zamračil se, poté se napřímil. "Budu vyprávět příběh o tvé laskavosti všem, kdož budou naslouchat."~ */
  IF ~  Global("Reekwind","GLOBAL",3)
~ THEN REPLY #11626 /* ~"Máš nějaké příběhy, které jsi mi neřekl? To by bohatě stačilo..."~ */ DO ~SetGlobal("Reekwind","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #11627 /* ~"Díky Smradodechu. Rád jsem ti pomohl."~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #11325 /* ~"Ovšem, ovšem!" Smradodech se rozhlédl okolo... "Myslel jsem, že mám dost příběhů k vyprávění, ale... nevíš o něčem, co bych tam mohl připsat?"~ */
  IF ~~ THEN REPLY #11628 /* ~"Mám ten deník."~ */ JOURNAL #63979 /* ~Výměnou za pomoc při zbavení prokletí, zapsal mi Smradodech do deníku všechny příběhy, které znal:

Prvním příběhem byla pověst o "Uličce nebezpečných zákoutí," uličce poblíž místa, kam se ukládá ke spánku. Byla užívaná jako běžná ulice, ale velký oheň, který tam jedné noci řádil, vehnal budovy i obyvatele v plameny, zanechávájíc po sobě jen kostry budov... a zbytky jejich usedlíků. Rozlámané dřevo starých vyhořelých domů jsou tím, co dalo Uličce její jméno. V současné době tam zřejmě mají útočiště skupinky zlodějských band.

Druhým příbhem byl příběh o Ignusovi, šíléném čaroději, zodpovědném za vznik Uličky nebezpečných zákoutí. Ignus byl mocným čarodějem, vyučeným jedním z posledních Velkých mágů. Ignus zahořel Uměním, tak hodně, že ho jeho nutkání dohnalo k zapalování lidí i budov. Jedné noci, v jedné ulici v Úlu, pustil svoji sílu z řetězu, spálil ji a z obyvatel udělal chodící pochodně. Ať už z pomsty nebo ze spravedlnosti, několik menších mágů z Úlu se spolčilo a použilo své spojené vědění o Umění k obrácení Ignusova těla do průchodu k Elementální sféře Ohně. Doufali, že ho bolest zabije... ale nestalo se tak. Patrně jen způsobila, že se Ignus ponořil do hlubokého spánku.

Třetím a posledním příběhem bylo povídání o Pharodovi; zdá se, že Pharod byl jedním z členů "aristokracie" v Sigilu, ale svoji pozici využíval k překrucování práva, podvádění jiných a dokonce i odsoudil nevinného člověka. Jeho činy byly tak klamné, že po jeho smrti měla být jeho duše odsouzena do Nižších sfér - když se o tomto dozvěděl, polekal se a začal hledat cestu, jak se vyhnout svému osudu. Vypadá to, že se radil s několika věštci a bylo mu řečeno, že prostředek spásy sebe samého by mohl najít v odpadu Sigilu. Pharod odložil svoji vážnost a stal se Králem sběračů, posílá své gangy z Úlu drhnout ulice Sigilu v hledaní něčeho, co by mohlo osvobodit jeho duši... ale co to je, to neví.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #11326 /* ~Smradodech si vzal deník. "Ah..." Chvíli čmáral, poté ti ho dal zpět do rukou. "Tady máš."~ */
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Díky Smradodechu."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Díky Smradodechu."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 50.1 52.0 52.1
  SAY #11327 /* ~"Eh... jestli už nikdy nepoužiješ tohle jméno, já ti... budu vděčný."~ */
  IF ~~ THEN REPLY #11632 /* ~"Dobrá. Jak ti mohu říkat?"~ */ GOTO 54
  IF ~~ THEN REPLY #11634 /* ~"Dost jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #11328 /* ~"Moje jméno je --" Najednou chytil sám sebe a usmál se. "Ne, asi si to pro tuto chvíli nechám pro sebe." Uctivě na tebe kýval. "Znovu ti děkuji, dobrý pane."~ */
  IF ~~ THEN REPLY #11636 /* ~"Sbohem."~ */ EXIT
END
