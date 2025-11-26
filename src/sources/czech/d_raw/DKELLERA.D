// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"Zjistíš, že nejsem bezbranný, zjizvenče. Nepřibližuj se."~ */
  IF ~~ THEN REPLY #6343 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"Určitě sem nepatříš. Okamžitě odejdi, vetřelče, nebo stráže zvolí drsnější postup než je pouhé vyvedení."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"Měl bych ještě jednu rychlou otázečku."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"Měl bych ještě jednu rychlou otázečku."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"Odejdi. Teď. Než se stane chyba, které bychom všichni litovali."~ */
  IF ~~ THEN REPLY #6349 /* ~"Odpověz na otázku!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~Vidíš githzeraiskou ženu se zjizvenou tváří. Podle githzeraiských měřítek by mohla být krásná. "S tím ti nemohu pomoci. Odejdi než zavolám stráže. Zatím jsem to neudělala jen kvůli tvému společníkovi." Poklonila se Dak'konovi a řekla, "Odpusť mi, Ctihodný."~ */
  IF ~~ THEN REPLY #6352 /* ~"To je všechno v pořádku a správné, ale potřeboval bych, abys mi odpověděla na pár otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"Velmi dobře." Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"Nedáváš mi na vybranou." Zmlkla a pak zakřičela, "STRÁŽE! KE MNĚ!"~ */
  IF ~~ THEN REPLY #6355 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~Opět se obrátila k Dak'konovi. "Omlouvám se." Otočila se zpět k tobě. "Dovol mi, abych se jasně vyjádřila. Odejdi. Ihned. Nebo budu nucena zavolat stráže, aby tě odtud 'vyvedly'. Náš projekt nemůže být prozrazen."~ */
  IF ~~ THEN REPLY #6356 /* ~"Chtěl bych jen, abys mi odpověděla na pár otázek!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"Nedáváš mi na vybranou." Zmlkla a pak zakřičela, "STRÁŽE! KE MNĚ!"~ */
  IF ~~ THEN REPLY #6360 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~Opět promluvila k Dak'konovi. "Ctihodný... už sem nechoď. Nechci na tebe volat stráže. Odejdi."~ */
  IF ~~ THEN REPLY #6362 /* ~"Podívej, jen mi odpověz na otázku nebo dvě."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~Její černé oči se upřely na Dak'kona. "Ctihodný... nedáváš mi na výběr. Odpusť mi před našimi předky." Otočila se a zvýšila hlas. "Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #6365 /* ~Hotovo.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~Vidíš githzeraiskou ženu, holohlavou, se zjizvenými tvářemi a kočičí grácií při chůzi. Jak se k vám otočila, zadívala se pátravě na Dak'kona. Její oči se rozšířily. Promluvila k němu, "Přinášíš radost mému srdci. Jmenuji se Kel'lera. Mohu ti pomoci?"~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"Pak se ptej a já ti odpovím, pokud budu moci. Tvůj společník nese břemeno našeho tajemství jako část své vlastní cti a i kdybych nevěděla, že mohu věřit tobě, vím, že mohu věřit jemu."~ */
  IF ~~ THEN REPLY #6371 /* ~"Řekni mi, co dělá tohle zařízení."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"Jaká jsou slabá místa toho zařízení?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"Pro koho se dělá toto zařízení?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"Pro koho se dělá toto zařízení?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"Co mi můžeš říct o vraždě?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"Co mi můžeš říct o technicích?"~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~Bokem k Dak'konovi: "Kdo je to a proč se k tobě chová s takovým respektem?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"Zatím nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"Naše zařízení používá určitý typ magického ohně, který zraňuje i ty, kteří jsou proti obyčejnému ohni odolní. Pracujeme na vylepšení, které by dokázalo překonat i případnou magickou odolnost bytostí. "~ */
  IF ~~ THEN REPLY #6380 /* ~"Jaké to může mít jiné uplatnění?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"Výborně. Odpověz mi na jiné otázky."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"To je vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~Pohlédla na Fall-from-Grace a její ústa se půvabně zakřivila. "Omlouvám se, ctihodný, ale nemohu o tom hovořit. Jsem jak smluvně, tak i magicky vázána, že o tom nebudu hovořit v doslechu ... zástupců, řekněme určité... víry." Obrátila se k sukubě. "Omlouvám se, lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~Pohlédla neklidně na Dak'kona, který si tě chvíli měřil pohledem a pak se otočil zpět, aby ji kývnutím uklidnil. "Dobře. Nejzranitelnějším místem je palebný mechanismus na zadní části zařízení. Příliš velké poškození mechanismu by bylo fatální pro nás všechny. Nastala by řetězová reakce, která by zničila všechny, kteří jsou nějak svázáni s tímto zařízením. Sabotér by měl možná včas utéci; ale ti z nás, kteří jsou spojeni se zařízením, by neunikli."~ */
  IF ~~ THEN REPLY #6388 /* ~"Spojeni? Jak to myslíš?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"Dobře. Odpověz mi na jiné otázky."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"Děkuji mnohokrát." Odejdi.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~Dozorkyně se znepokojeně otočila k Fall-from-Grace a zaskřípala zuby. "Nemohu o tom hovořit."~ */
  IF ~~ THEN REPLY #6392 /* ~"Tak dobře. Odpověz mi na nějaké otázky."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"Bez ohledu na to, že by to byla úžasná zbraň? Dalo by se to využít jako vynikající těžební zařízení. Pokud by se pořádně vyladilo, mohlo by kácet celé řady stromů v lese, nebo celá pole obilí. Mohlo na nějakou dobu zpevnit povrch hmoty z Limba - už jsme v tomto směru něco lehčího zkoušeli - nebo může být použito jako pohon mezi sférami Carceri. Jeho použití jsou omezena pouze představivostí. Není to jenom zbraň ničení."~ */
  IF ~~ THEN REPLY #6395 /* ~"Zajímavé. Odpověz mi na nějaké jiné otázky."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"Velmi dobře. Sbohem." Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~Rychle se rozhlédla, povzdechla a odpověděla: "Ačkoliv jsem se neúčastnila vyjednávání, věřím, že to byli baatezu, kteří si opatřili naše služby. Symbol, který nosíte, vám zajišťuje určitou diplomatickou imunitu před baatezu, jež byste mohli potkat."~ */
  IF ~~ THEN REPLY #6398 /* ~"Jsem si jist, že to bude užitečné. Odpověz mi na jiné otázky, pokud můžeš."~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~'Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"Moc vám toho neřeknu. Moji kováři a já jsme tady téměř bez přestávky už pěkně dlouho. Navrhuji vám, abyste si promluvili s někým, kdo může být ve slévárně i v noci. Napadají mě dvě jména: Thildon, dozorce práce a chlapec Saros, který ho nějak moc sleduje."~ */
  IF ~~ THEN REPLY #6401 /* ~"Thildon a Saros? Dobrá. Odpověz mi na jiné otázky, pokud můžeš."~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"Thildon a Saroso? Podívám se po nich. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~Zamračila se, čímž přidala několik záhybů do svého zjizveného obličeje. "Promluvte si s některým z mých kovářů, pokud se chcete *dozvědět* o technicích. Ode mne o technicích neuslyšíte nic hezkého."~ */
  IF ~~ THEN REPLY #6404 /* ~"Proč ne?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"V pořádku. Pak mi odpověz na nějaké jiné otázky."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"Velmi dobře." Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"Proč? Protože nevypadají, že by sdíleli lásku k tomuto projektu jako jejich kolegové. Protože jsou to snílci a sami neudělají nic. Protože, konečně, nemyslím, že jejich záměry jsou dobré pro nás, ale spíše jen pro ně samotné."~ */
  IF ~~ THEN REPLY #6408 /* ~"Chápu. Pak mi řekni odpověď na něco jiného."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"Chci říci, že jsme k tomuto stroji byli připoutáni kvůli magickým rituálům, které jej mají okouzlit. Pokud nastane nějaká chyba, nebo, ještě hůře, záměrná sabotáž, já a všichni, které vidíte v této místnosti, zcela jistě shoříme na popel. A co je ještě horší, zaniknou samotné naše duše, roztrhají se na kusy a nám zbude jen klid studeného, temného zapomnění. Už chápete proč to utajení?"~ */
  IF ~~ THEN REPLY #6411 /* ~"Už je mi to jasné. Pokud bys mohla odpovědět na nějaké jiné mé otázky..."~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"Zeptej se a já ti odpovím, pokud budu moci. Věřím, že tvůj společník je diskrétní." ~ */
  IF ~~ THEN REPLY #6414 /* ~"Řekni mi, co dělá tohle zařízení."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"Jaká jsou slabá místa toho zařízení?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"Pro koho se dělá toto zařízení?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"Pro koho se dělá toto zařízení?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"Co mi můžeš říct o vraždě?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"Co mi můžeš říct o technicích?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~Bokem k Dak'konovi: "Kdo je to a proč s tebou jedná s takovým respektem?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"Zatím nic. Sbohem."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~Zjizvená, holohlavá žena se k tobě otočí s neuvěřitelným půvabem. Její oči si s blýskáním prohlížejí tvé tělo, měří si tě a říká, "Tvůj symbol ti dává práva přístupu. Co ještě bys ode mne mohl chtít?"~ */
  IF ~~ THEN REPLY #6423 /* ~"Chtěl bych jen odpověď na nějaké otázky."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"Takhle se mnou nemluv, nebo tě nechám zbičovat."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"Zatím nic. Sbohem."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"Tak se ptej a pak mi dáš pokoj. Abys věděl, čeká na mne spousta práce."~ */
  IF ~~ THEN REPLY #6427 /* ~"Řekni mi, co dělá tohle zařízení."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"Jaká jsou slabá místa toho zařízení?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"Pro koho se dělá toto zařízení?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"Pro koho se dělá toto zařízení?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"Co mi můžeš říct o vraždě?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"Co mi můžeš říct o technicích?"~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"Zatím nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~Její úzké oči se stáhly do štěrbin. "Ty se mi opovažuješ vyhrožovat? Zmiz a dej mi čas, abych mohla zapomenout na tuto urážku, nebo zavolám stráže a nechám je, aby vaše zkrvavené mrtvoly vyhodily na ulici."~ */
  IF ~~ THEN REPLY #6435 /* ~"To spíše zemřu."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"Tak tedy dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"To se dá snadno zařídit. STRÁŽE! Zabijte ty vetřelce!"~ */
  IF ~~ THEN REPLY #6438 /* ~Připravit se na boj.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"Naše zařízení používá určitý typ magického ohně, jenž zraňuje i ty, kdož jsou proti obyčejnému ohni odolní. Pracujeme na vylepšení, které by dokázalo překonat i případnou magickou odolnost bytostí. "~ */
  IF ~~ THEN REPLY #6440 /* ~"Jaké to může mít jiné uplatnění?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"Výborně. Odpověz mi na jiné otázky."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"To je vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"Bez ohledu na to, že by to byla úžasná zbraň? Dalo by se to využít jako vynikající těžební zařízení. Pokud by se pořádně vyladilo, mohlo by kácet celé řady stromů v lese, nebo celá pole obilí. Mohlo na nějakou dobu zpevnit povrch hmoty z Limba - už jsme v tomto směru něco lehčího zkoušeli - nebo může být použito jako pohon mezi sférami Carceri. Jeho použití jsou omezena pouze představivostí. Není to jenom zbraň ničení."~ */
  IF ~~ THEN REPLY #6444 /* ~"Zajímavé. Odpověz mi na nějaké jiné otázky."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"Velmi dobře. Sbohem." Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"Nevidím žádný důvod, proč byste měli vědět tuto informaci, ať už jste či nejste Boží lidé. Neprozradím to."~ */
  IF ~~ THEN REPLY #6447 /* ~"A co když tě donutím?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"No dobře. Pak bys mi snad mohla odpovědět na jiné otázky?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"V pořádku. Pěkný den."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~Rychle se rozhlédla, povzdechla a odpověděla: "Ačkoliv jsem se neúčastnila vyjednávání, věřím, že to byli baatezu, kteří si opatřili naše služby. Symbol, který nosíte, vám zajišťuje určitou diplomatickou imunitu před baatezu, jež byste mohli potkat."~ */
  IF ~~ THEN REPLY #6451 /* ~"Jsem si jistý, že to bude užitečné. Odpověz mi na nějakou jinou otázku, pokud můžeš."~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~'Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~Pohlédla na Fall-from-Grace a její ústa se půvabně zakřivila. "Omlouvám se, ctihodný, ale nemohu o tom hovořit. Jsem jak smluvně, tak i magicky vázána, že o tom nebudu hovořit v doslechu ... zástupců, řekněme určité... víry." Obrátila se k sukubě. "Omlouvám se, lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~Dozorce se znepokojeně otočila k Fall-from-Grace a zaskřípala zuby. "Nemohu o tom hovořit."~ */
  IF ~~ THEN REPLY #6458 /* ~"Tak dobře. Odpověz mi na nějaké otázky."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"Moc vám toho neřeknu. Moji kováři a já jsme tady téměř bez přestávky už pěkně dlouho. Navrhuji vám, abyste si promluvili s někým, kdo může být ve slévárně i v noci. Napadají mě dvě jména: Thildon, dozorce práce a chlapec Saros, který ho nějak moc sleduje."~ */
  IF ~~ THEN REPLY #6461 /* ~"Thildon a Saros? Dobrá. Odpověz mi na jiné otázky, pokud můžeš."~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"Thildon a Saros? Podívám se po nich. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~Zamračila se, čímž přidala několik záhybů do svého zjizveného obličeje. "Promluvte si s některým z mých kovářů, pokud se chcete něco *dozvědět* o technicích. Ode mne o technicích neuslyšíte nic hezkého."~ */
  IF ~~ THEN REPLY #6464 /* ~"Proč ne?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"V pořádku. Pak mi odpověz na jiné otázky."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"Velmi dobře." Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"Proč? Protože nevypadají, že by sdíleli lásku k tomuto projektu jako jejich kolegové. Protože jsou to snílci a sami neudělají nic. Protože, konečně, nemyslím, že jejich záměry jsou dobré pro nás, ale spíše jen pro ně samotné."~ */
  IF ~~ THEN REPLY #6468 /* ~"Chápu. Pak mi odpověz na něco jiného."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~Podívala se na tebe a zpět na něho. "Samozřejmě, slovutný, jestliže mluvíte za něj a přijmete odpovědnost za to, že co se zde řekne zůstane utajeno." Neochotně obrátila svoji pozornost k tobě. "Chcete se mne na něco zeptat?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"Ano."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"Ano."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"Ne. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~Kel'lera se poklonila.~ */
  IF ~~ THEN REPLY #6367 /* ~"Co to znamená?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"Výborně. Mohla bys mi odpovědět na nějaké jiné otázky, pokud můžeš."~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"Výborně. Pak jsem tu skončil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~Kel'lera se poklonila.~ */
  IF ~~ THEN REPLY #6385 /* ~"Co to znamená?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"Dobrá. Pak mi tedy odpověz na jiné otázky, pokud můžeš."~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"Tak tedy dobrá. Pak jsem tady hotov. Sbohem."~ */ EXIT
END
