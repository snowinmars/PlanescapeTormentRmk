// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~Vidíš muže s pokožkou pokrytou hustou vyrážkou, na jeho tváři je spousta velkých nežitů. Podle jeho oblečení bys ho tipoval na nějakého oficiálního představitele, ale oblečení je špinavé a pokryté krysími chloupky. Neustále se škrábe.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~Nechej muže být, rozhlédni se po obchodě.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"Aiiiiigh!" Malý muž zaječel a poskočil. Popadl se za hruď, zhluboka se nadechl a postrčil si brýle po svém nosu, zbrázděném vyrážkou. "Ano? Ano? A co pro tebe můžu udělat..." Poškrábal se po nose a pak si tě pozorněji prohlédnul, hlavně tvé jizvy. "Já... no... nemám toho moc, vlastně skoro nic, takže jestli jsi mě přišel okrást, opravdu sis zvolil špatné místo i osobu."~ */
  IF ~~ THEN REPLY #2403 /* ~"Nepřišel jsem tě okrást. Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"'Vlastně skoro nic,' jo? No, tak proč mi nedáš *všechno*, co *máš*, a rozejdeme se jako přátelé."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"Aiiiiigh! U mocností... nestraš mě tak!" Postrčil si brýle na oči a zlobně se na tebe podíval. "A co pro tebe můžu udělat tentokrát, hmmmm?"~ */
  IF ~~ THEN REPLY #2401 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"Hodila by se mi ta hotovost, co máš u sebe. Pak půjdu."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"Dneska nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"Já? Já jsem Ctěný Phineas T. Lort Třicátýdevátý, hlavní představitel Úřadu pro sledování škůdců a nemocí, pobočka Úl. Je to mé privilegium..." Poškrábal se na hrudníku. "Informovat tě, že my, v byrokratickém smyslu slova *my*, abych mluvil o Sigilské byrokracii jako celku, vyplácíme odměny za zabíjení škůdců a zajišťujeme, že se..." Znovu se poškrábal. "Nebudou po ulicích Sigilu, středu vesmíru a města, podle kterého se *měří* všechna ostatní města, rozšiřovat nemoci a škůdci."~ */
  IF ~~ THEN REPLY #2408 /* ~"Odměny?"~ */ JOURNAL #66745 /* ~Mluvil jsem s Inspektorem pro kontrolu škůdců Phineasem T. Lortem, který mi řekl, že platí odměny za krysí ocásky, v hodnotě jeden meďák za ocásek. Řekl bych, že jeden měďák je lepší než žádnej... možná kdybych mu přinesl ocásků pořádnou hromadu, vymáčknul bych z něj lepší cenu.~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"Aha. No, myslím, že už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"Ano, ano... my, v byrokratickém smyslu slova *my*, abych mluvil o sigilské byrokracii jako celku, přijímáme důkazy o zabití mozkových škůdců, alias kraniokrys, či též kraniálních nebo kostlivých krys, z oblasti Úlu, kde se v posledních několika letech dost přemnožily - jak ukázaly poslední výzkumy o populaci kraniokrys. Sigilská byrokracie mi dala moc zaplatit odměnu..." Dramaticky se odmlčel. "...jedné měděné mince za kraniokrysu, dodanou do mého úřadu."~ */
  IF ~~ THEN REPLY #2411 /* ~"' Kraniokrysa '?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"Nemám krysy, ale mám u sebe nějaké ocásky."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"Aha. No, tak to raději půjdu... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"Kraniokrysy jsou druhem škůdců, kteří se stávají inteligentnějšími, když jich je víc na jednom místě blízko sebe. Jedna kraniokrysa, to je pouhopouhá nepříjemnost, která vykusuje otvory do dřeva a hrabe se v jídle. Pět, deset nebo více a jejich inteligence naroste tak, že přesáhne inteligenci lidí, jako jsem já." Poškrábal se a pak si odfrkl. "Myslím, že dvě nebo tři kraniokrysy by v důvtipu překonaly i *tebe*, pane."~ */
  IF ~~ THEN REPLY #2415 /* ~"Ještě jednu takovou poznámku a kopnu tě tak, že budeš nosit svoji tlustou prdel jako klobouk!"~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"Kolik kraniokrys je v Sigilu?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"Pověz mi o kraniokrysách víc."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"Nemám krysy, ale mám u sebe nějaké ocásky."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~Phineas zamrkal, konečně si uvědomil tvé vzezření. ""Hmmm. Stahuju mou nevhodnou poznámku, zvláště ve světle tvé předchozí ukázky dominance a fyzické nadřazenosti v této společenské situaci."~ */
  IF ~~ THEN REPLY #2420 /* ~"Kolik kraniokrys je v Sigilu?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"Pověz mi o kraniokrysách víc."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"Nemám krysy, ale mám u sebe nějaké ocásky."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"Skvělé! Vynikající!" Nadšeně zatleskal. "Ukaž..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~Odevzdej ocásek a vezmi si odměnu.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"No, mám pocit, že si ještě nechám. Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"Možná příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"Víc, než by stačilo lovci na celý život... možná na několik životů."~ */
  IF ~~ THEN REPLY #2433 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"Aha. No, dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"Čím více jich je poblíž, tím nebezpečnějšími se stávají... některé získávají schopnost kouzlit, mohou odolávat magickým efektům a také mohou přijít s velice... mazanou taktikou." Posunul si brýle, které mu málem spadly z nosu. "Jak asi rozumíš, snažíme se jejich počet v Sigilu co nejvíce zredukovat."~ */
  IF ~~ THEN REPLY #2436 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"Aha. No, dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"No, to je docela epický příběh... víš, narodil jsem se zde v Sigilu..."~ */
  IF ~~ THEN REPLY #2439 /* ~"Uh..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"...a pak jsem si uvědomil, že jsem nějak urazil své kolegy a zjistil jsem, že mě 'povýšili' na toto místo a nechali mě tady posledních... *mnoho*... let." Povzdychl si a pak se poškrábal na nose.~ */
  IF ~~ THEN REPLY #2441 /* ~"Uh... *zív* ...Mám nějaké otázky..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"Aha... no, uh, díky za tvůj čas. Sbohem."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"Má vyrážka? Nakažlivá? Ne, ne... alespoň si to nemyslím. Je to symptom pozice, obávám se. Práce mě doslova přerostla." Znovu se poškrábal.~ */
  IF ~~ THEN REPLY #2444 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"Aha. No, dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"Ech... no jistě..." Sáhl do pokladny, otevřel víko a chvíli uvnitř šátrá. Vytáhl ruku, ve které je několik mincí, které ti podal. "Doufám, že za tento čin cítíš alespoň trochu studu. Bez těchto peněz nebude úřad schopný pokrýt své náklady."~ */
  IF ~~ THEN REPLY #2447 /* ~"Mé srdce pro tebe krvácí. Sbohem."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"Mohu pouze spekulovat, že okradení o vše, co mám, ti nestačilo. Proč ses vrátil?"~ */
  IF ~~ THEN REPLY #51468 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~Phineas si vesele hvízdá. "Děkuju, děkuju, děkuju ti, dobrý muži. Město Sigil a já oceňujeme tvou snahu."~ */
  IF ~~ THEN REPLY #2456 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"Díky. Jestli seženu ještě nějaké ocásky, vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"Hmnnnnn? A tvá otázka zní...?"~ */
  IF ~~ THEN REPLY #2459 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"Co tady děláš?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"Jak mohl někdo tak... impozantní jako ty skončit na takovémhle místě?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"Pověz mi o těch kraniokrysách."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"Mám nějaké krysí ocásky. Přišel jsem si pro odměnu."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"Ta tvoje vyrážka, není nakažlivá?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"Žádné další otázky. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"Aiiiiigh! Prosím, nezabíjej mě..." Phineas zaječel a vystrašeně poskočil. Podíval se na tebe, jakoby čekal někoho jiného. "Díky Mocnostem, to jsi jenom ty..." Odmlčel se a snaží se dát se dohromady.~ */
  IF ~~ THEN REPLY #51477 /* ~"Nezabíjej? Máš nějaké problémy?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"Řeknu ti, že tady nechci být. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~Ztěžka polknul a rozhlédl se kolem. "Kraniokrysy... Vypadá to, že se rozhodly zbavit Sigil mé přítomnosti. Plnil jsem své povinnosti v Úřadě pro dohled nad škůdci příliš pečlivě." Prosebně se na tebe podíval.~ */
  IF ~~ THEN REPLY #51480 /* ~"O čem to mluvíš?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"Už jsem slyšel dost, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"Dnes jsem našel ve své vlastní kanceláři velký exemplář krysy. Zajal jsem ji a vzal dolů, abych si to s ní vyřídil." Jeho oči se rozšířily, dech se zrychlil. "Před mýma vlastníma očima se zvětšila na stvoření velikosti muže a řekla, že byla poslána, aby mě zabila za zločiny, které jsem spáchal na kraniokrysách!"~ */
  IF ~~ THEN REPLY #51483 /* ~"Co jsi udělal?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"Už jsem slyšel dost, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"Utíkal jsem jako o život. Děkuju mocnostem, že jsem se dostal zpět sem. Zamknul jsem za sebou dveře. Jsem si jistý, že je tam to stvoření v pasti." Zírá na tebe, pak jeho oči přejely po tvých mnohých jizvách. Znovu se ti zadíval do očí. "Zabij pro mě tu zrůdu... vyplatí se ti to, zaručuju."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"Co mi dáš, když to udělám?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"Co mi dáš, když to udělám?"~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"Promyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~Chvíli přemýšlí a pak se usmál. "Zapomenu, že jsi mě okradl a nedám to dál, městským autoritám..." Na chvíli se odmlčel a sleduje tvou reakci. "A zaplatím ti navíc stovku měďáků."~ */
  IF ~~ THEN REPLY #51490 /* ~"Dobře, udělám to."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"Promyslím si to. Sbohem."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"Nechci se do toho zaplést. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~Chvíli přemýšlí a pak se usmál. "Zaplatím ti dvě stě měďáků, když mě zbavíš toho monstra."~ */
  IF ~~ THEN REPLY #51494 /* ~"Dobře, udělám to."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"Promyslím si to. Sbohem."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"Nechci se do toho zaplést. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~Usmál se a uklonil se ti. "Výborně. Tady je klíč k mému sklepu. Postarej se o tu bestii a já ti pak zaplatím."~ */
  IF ~~ THEN REPLY #51498 /* ~Vezmi si klíč a jdi.~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~Šel jsem do Úřadu pro dohled nad nemocemi a škůdci za Phineasem T. Lortem. Byl docela vyděšený a brblal něco o nějaké potvoře, což bude zřejmě krysodlak v jeho sklepě. Souhlasil jsem, že pro něj krysodlaka zabiju. Za odměnu pochopitelně.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~Vidíš Phinease. Dívá se na tebe, brýle mu spadly na špičku nosu. "Zase jednou mě ctíš svou přítomností. Možná jsi přišel přijmout mou žádost o odstranění toho monstra v mém sklepě?"~ */
  IF ~~ THEN REPLY #51500 /* ~"Dobře, udělám to."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"To si nemyslím, sbohem." ~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~Vidíš Phinease. Dívá se na tebe, brýle mu spadly na špičku nosu. "Zase jednou mě ctíš svou přítomností. Možná jsi přišel přijmout mou žádost o odstranění toho monstra v mém sklepě?"~ */
  IF ~~ THEN REPLY #51504 /* ~"Dobře, udělám to."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"To si nemyslím, sbohem." ~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~Vidíš Phinease. Dívá se na tebe, brýle mu spadly na špičku nosu. "Zase jednou mě ctíš svou přítomností. Splnil jsi úkol, který jsem ti zadal?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"Ano, to stvoření je mrtvé a já si přišel pro svou odměnu."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"Ne, ještě ne."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~Phineas se na tebe usmál. "To jsou jistě skvělé zprávy. Jakouže odměnu jsem ti za tvou pomoc přislíbil?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"Sto měďáků a že zapomeneš, že jsem si... od tebe půjčil peníze."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"Dvě stě měďáků."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"Díky za tvou službu. Jsem tvým dlužníkem." Uklonil se ti.~ */
  IF ~~ THEN REPLY #51514 /* ~"Sbohem."~ */ JOURNAL #54870 /* ~Zabil jsem krysodlaka a dostal od Phinease odměnu. Byla to nuzná odměna, když se zamyslím nad tím, jakou mi to dalo práci, ale prachy jsou prachy.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~Zamračil se na tebe. "Ocenil bych, kdyby ses o tu záležitost postaral co nejdříve. Nashledanou."~ */
  IF ~~ THEN REPLY #51516 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~Vidíš Phinease. Posune si brýle na nose a věnuje ti přátelský  pohled. "Oh, můj příteli. A co je to, co pro tebe mohu udělat *tentokrát*, hmmmmm?"~ */
  IF ~~ THEN REPLY #64157 /* ~"Nemusíš vyskakovat z kůže, když příjdu."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~Povzdychne si, a pak se na tebe usměje. "Po tvém hrdniském činu se cítím... tak nějak lehce. Musím připustit, že tak uvolněně jsem se necítil už roky." Ustane, aby se na chvíli zamyslel. "Děkuji ti za to. A teď, co pro tebe mohu udělat?~ */
  IF ~~ THEN REPLY #64161 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"Nic, sbohem."~ */ EXIT
END
