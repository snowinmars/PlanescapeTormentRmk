// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUELL~

IF ~  Global("Quell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #29455 /* ~Stařec si něco požvykuje, tiše si něco mumlá ... a chvíli na to se ozve křupání, když schroupne tu věc v ústech a polkne ji. Jeho husté, na pohled mosazné obočí se na chvíli svraští, potom se zvedne a nakonec se znovu svraští. "Hmmm..."~ */
  IF ~~ THEN REPLY #29456 /* ~"Nazdar..."~ */ GOTO 1
  IF ~~ THEN REPLY #29457 /* ~Dej mu pokoj.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29458 /* ~Aniž by se na tebe nějak zvlášť podíval, sáhl si ten chlap do tuniky a vytáhl nahnědlou kuličku. Na chvíli si ji zvědavě prohlížel a potom si ji strčil do úst.~ */
  IF ~~ THEN REPLY #29459 /* ~"Řekl jsem 'zdravím...'"~ */ GOTO 2
  IF ~~ THEN REPLY #29460 /* ~Dej mu pokoj.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29461 /* ~Zamračil se a přitom tě odháněl rukou. Poté si zamyšleně přikývl a vychutnával chuť toho, co si dal do úst, ať už to bylo cokoliv.~ */
  IF ~~ THEN REPLY #29462 /* ~"Mám... několik otázek..."~ */ DO ~SetGlobal("Quell","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #29463 /* ~Dej mu pokoj.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29464 /* ~Muž před tebou se samolibě usmívá, okousává si palec a najednou se zarazí ... jeho tváře se nafoukly, divoce se zakuckal a vyplivl velkou černou mouchu, která začala s hlasitým bzučením lítat po místnosti. "*Zatracené* Minaurosianské bonbóny!" vykřikl a mávl po ní pěstí. Pak se k tobě obrátil. "Co chceš?!"~ */
  IF ~~ THEN REPLY #29465 /* ~"Chtěl jsem se dozvědět něco o tobě..."~ */ GOTO 4
  IF ~~ THEN REPLY #29466 /* ~"Chtěl jsem se zeptat na tady tohle místo..."~ */ GOTO 4
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29467 /* ~"Co všechno víš o Ravel Puzzlewell?"~ */ GOTO 4
  IF ~~ THEN REPLY #29468 /* ~"Nic, sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 5.0
  SAY #29469 /* ~Strčil si do úst malý červený bonbónek. "To se vždycky potloukáš kolem mocných mágů a otravuješ je svým tupým tlacháním?! Blábolení, žvásty, klábosení, OTRAVNÉ KECY!" Při tomto výčtu mu zároveň se slovem 'kecy' bonbón vystřelil z úst a vysokým obloukem přistál na podlaze se slizkým *plip.* Smutně se na něj dívá.~ */
  IF ~~ THEN REPLY #68083 /* ~"Má otázka...?"~ */ GOTO 6
  IF ~~ THEN REPLY #29470 /* ~"Je mi, uh, líto tvého bonbónu."~ */ GOTO 6
  IF ~~ THEN REPLY #29471 /* ~Zvedni jej a sněz jej.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY #29473 /* ~Nevěřícně zaúpěl a plácl se do čela. "Nic? *SBOHEM?*"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.0 4.1
  SAY #29474 /* ~"Bylo to tak hrozně *dobré,* příliš..." zanaříkal. Najednou se zavrčením vzhlédl vzhůru. "LÍTO?! To by ti teda *mělo* být líto, hovnivále! Mágové zasluhují úctu, zatímco tupouni, jako ty by měli vědět kam patří - znát své místo!" Začal skákat nahoru a dolů. "Své místo! Své místo!"~ */
  IF ~~ THEN REPLY #29475 /* ~"Uklidni se, chci ti jenom dát pár otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #29476 /* ~Seber kouzelníkův bonbón a sněz jej.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1
  SAY #29478 /* ~Sebral jsi bonbón a strčil si jej do úst; je sladko-kyselý. Při tom pohledu kouzelníkovi klesla brada. "Můj... můj báječný Bytopický Ovocný bonbón!"~ */
  IF ~~ THEN REPLY #29479 /* ~"Tak ten chutnal skvěle. Mohl bych dostat ještě jeden?"~ */ GOTO 8
  IF ~~ THEN REPLY #29480 /* ~"Uklidni se, chci ti dát jenom pár otázek..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29483 /* ~"Ještě jeden?! *Ještě* jeden?! Taková drzost! Z jakého důvodu si myslíš, že si zasloužíš další bonbón, ty nevychovaný hulváte?!"~ */
  IF ~~ THEN REPLY #29484 /* ~"Nejde o to, že si *zasloužím* bonbón, já ho *chci*. A teď mi ho pěkně dej."~ */ GOTO 12
  IF ~~ THEN REPLY #29485 /* ~"Ale jdi... chci jenom, abys mi jeden dal."~ */ GOTO 9
  IF ~~ THEN REPLY #29486 /* ~"Zapomeň na to."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 12.0
  SAY #29487 /* ~"Nic ti nedám! A bude se ti to *líbit*." A aby to zdůraznil, mlaskl z bonbónem v puse. "Mmmmmm. Je *táááák* dobrý." Párkrát jej otočil v ústech se zavřenýma očima, jako by byl v extázi. "Je *táááák* dobrý."~ */
  IF ~~ THEN REPLY #29488 /* ~"Já ho *chci* a ty mi ho *dáš*. Ihned mi ho dej."~ */ GOTO 12
  IF ~~ THEN REPLY #29489 /* ~"Tak dobře... zapomeň na to."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.2 9.1 12.1
  SAY #29490 /* ~"Taky že jo! Zapomenuto! Už jsem na to zapomněl, ty oplzlý, nemyslící chvastoune! Sbohem."~ */
  IF ~~ THEN REPLY #29491 /* ~"Ale... chtěl jsem se zeptat..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.1 10.0 13.1
  SAY #29493 /* ~"To mě *nezajímá*, nakvašený hovězí mozečku!" Vypoulil svoje oči, jak na tebe zaměřil svůj palec: "A teď padej! A! TEĎ! PADEJ! A nevracej, dokud nebudeš schopen projevit náležitou úctu... přines s sebou něco, čím projevíš svou úctu - nějaký dárek!" Najednou se přiblížil a zašeptal mezi rty: "Bonbóny nebo čokoláda by byly fajn. Nechci ale nic obyčejného, pamatuj na to - přines něco *exotického.* A teď jdi!"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29494 /* ~"Počkej... mám s sebou tuhle čokoládu z dovozu. Mohl bych ti ji dát, jako dárek..."~ */ GOTO 14
  IF ~~ THEN REPLY #68057 /* ~"Fajn... Poohlídnu se po Čtvrti po něčem vhodném."~ */ JOURNAL #68058 /* ~Docela excentrický mág jménem Quell se mnou odmítá mluvit, protože jsem mu neprokázal dostatečnou úctu a nedal mu žádný dar. Naznačil, že by přijal čokoládu nebo nějaké cukroví, ale ne jen tak obyčejné... musí být 'exotické'. Řekl jsem mu, že se poohlédnu po Úřednické Čtvrti, jestli se někde něco takového neprodává.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0
  SAY #29495 /* ~"Jak si *dovoluješ* tak netaktně na mě *požadovat* sladkosti, jako by jsi měl nějaké božské právo dané ti největšími z Mocných! Mám si snad *pokleknout* k tomuto vašemu rozmaru, Vaše Výsosti? Předat vám své nashromážděné dobrůtky na znamení vaši svatosti? Neměl bych je nejprve pomazat vzácnými oleji nebo je posvětit nejprve?" Při svém každém slově těžce dupl nohou: "Ne! Ne! Ne! Nemyslím!"~ */
  IF ~~ THEN REPLY #29496 /* ~"Ale no tak... tak mi přece dej jeden."~ */ GOTO 9
  IF ~~ THEN REPLY #29497 /* ~"Tak dobře. Zapomeň na to."~ */ GOTO 10
END

IF ~  Global("Quell","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29498 /* ~Mágův výraz ztuhl, když tě pozoruje jak přicházíš. "Neuvěřitelné! Páchnoucí, malomyslný blbečku, ty ses zas a znova rozhodl mě otravovat svou nechutnou přítomností?" Na chvíli přerušil své kázání, aby snědl malý větrový bonbón. "Kéž by ses naučil správným *způsobům!*"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29499 /* ~"Přinesl jsem ti jako dárek importovanou čokoládu."~ */ GOTO 14
  IF ~~ THEN REPLY #29500 /* ~"Vlastně jsem se chtěl na něco zeptat..."~ */ GOTO 11
  IF ~~ THEN REPLY #29501 /* ~"Nyní odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #29502 /* ~"Doopravdy?" Jeho chování se ihned změnilo. "To je od tebe velmi milé a zdvořilé! Můžu ji vidět?"~ */
  IF ~~ THEN REPLY #29503 /* ~Ukaž mu čokoládu.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29504 /* ~"Tak doopravdy, ne."~ */ GOTO 15
  IF ~~ THEN REPLY #29505 /* ~"Bude to muset počkat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #29506 /* ~Naprosto vyvedený z míry zařval. "COŽE?!"~ */
  IF ~~ THEN REPLY #29507 /* ~"Dělal jsem si srandu. Tady to je..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29508 /* ~"Myslím si, že si to doopravdy nezasloužíš. Byl jsi příliš sprostý."~ */ GOTO 16
  IF ~~ THEN REPLY #29509 /* ~"Přinesu ti to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29510 /* ~"Co... ccco- *COŽE?*" Začal kolem poskakovat. "Absurdní! Groteskní! Směšné! Být *SPROSTÝ* by znamenalo přeměnit tě na misku Baatorských kořeněných fazolí, sníst a nakonec roznést po celém Sigilu ve formě páchnoucích pšouků z mé zadnice! Buď si jist, že *TO* by bylo opravdu sprosté! A já, já *takový* nejsem!"~ */
  IF ~~ THEN REPLY #29511 /* ~"Ať už tak nebo tak, nedostaneš nic, dokud se neomluvíš."~ */ GOTO 17
  IF ~~ THEN REPLY #29512 /* ~"Jenom jsem žertoval. Na, tady to máš..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29513 /* ~"Možná ti to přinesu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #29514 /* ~Okamžitě se zklidnil, jeho oči se podezřívavě zúžily. "Mohl bych nejprve ten dárek *vidět*?"~ */
  IF ~~ THEN REPLY #29515 /* ~Nechej ho, ať se mrkne na čokoládovou náhražku.~ */ GOTO 18
  IF ~~ THEN REPLY #29516 /* ~"Doopravdy jsem pouze žertoval. Na, vem si to..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29517 /* ~"Možná to přinesu později. Sbohem."
~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29518 /* ~Jeho pokrývka hlavy vyskočila do vzduchu a přitom udělala *pop,* když přistála zpět na jeho hlavě. "Týýý... týý joo. Je to... je to opravdu...?" Olízl si rty a přitom opatrně sáhl po náhražce čokolády.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #29519 /* ~"Ale ne. Omluv se. Teď hned."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29520 /* ~"Ale ne. Omluv se. Teď hned."~ */ GOTO 20
  IF ~~ THEN REPLY #29521 /* ~Nechej ho, ať si to vezme.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29522 /* ~"Možná to přinesu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29523 /* ~Skřípe zuby a hryže se do rtů. Lomcuje přitom tiše pěstmi. Nakonec přestane, očistí si oblečení a pomalu vydechuje. "Dobře, pane. Omlouvám se." Všiml sis, že má přitom jednu ruku za zády.~ */
  IF ~~ THEN REPLY #29524 /* ~"Hmm. Dobře, tady máš: vem si tu sošku čokolády."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29525 /* ~"Možná to přinesu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #29526 /* ~Skřípe zuby a hryže se do rtů. Lomcuje přitom tiše pěstmi. Nakonec přestane, očistí si oblečení a pomalu vydechuje. "Dobře, pane. Omlouvám se." Všiml sis, že má přitom jednu ruku za zády.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 290
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29527 /* ~"Buď zticha, ty skrčku... oh! Teda, chci říct, přece nic takového nedělám!" Kouzelník se na tebe nevinně usmívá a předkládá ti své ruce k prohlídce.~ */
  IF ~~ THEN REPLY #29528 /* ~"Hmm. Dobře, tady máš: vem si tu náhražku čokolády."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29529 /* ~"Možná ti to přinesu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.1 17.1 18.2 19.0 21.0
  SAY #29530 /* ~Sebral to z tvé ruky. "Ách... jsou hrozně vzácné a úžasně lahodné." Uhryzl velký kousek a zbytek zastrčil do své tuniky.~ */
  IF ~~ THEN REPLY #29531 /* ~"Chtěl jsem se na něco zeptat..."~ */ GOTO 23
  IF ~~ THEN REPLY #29532 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29533 /* ~Zamračil se na tebe a slízl zbytky čokolády ze svých prstů. "Kdo ti řekl, abys mě otravoval svými hloupými otázkami?!" Vyčítavě na tebe civí. "Takže... řekni, s čím mě chceš otravovat, nebo zmizni!" Vytáhl z rukávu sladovou kuličku a začal ji jíst.~ */
  IF ~~ THEN REPLY #29534 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29535 /* ~"Chtěl bych nakoupit nějaká kouzla."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29537 /* ~"Mohl bych dostat nějaký bonbón?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29539 /* ~"Chtěl bych koupit nějaké bonbóny."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29540 /* ~"Co mi můžeš povědět o tomto místě?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29541 /* ~"Co víš o Ravel Puzzelwell?"~ */ GOTO 34
  IF ~~ THEN REPLY #29542 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 26.2 27.0 28.1 29.0 30.1 32.1 33.0 34.1 35.5 36.2 38.2 39.1 40.1 41.2 42.1 43.1 46.0 47.1 48.2 49.0 50.1 51.2 52.1 53.4 54.1 55.1 56.0 57.3
  SAY #29538 /* ~Protočil panenky a mávnutím ruky ti naznačuje, abys pokračoval.~ */
  IF ~~ THEN REPLY #29543 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29544 /* ~"Chtěl bych nakoupit nějaká kouzla."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29546 /* ~"Mohl bych dostat nějaký bonbón?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29547 /* ~"Chtěl bych koupit nějaké bonbóny."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29548 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29549 /* ~"Co víš o Ravel Puzzelwell?"~ */ GOTO 34
  IF ~~ THEN REPLY #29550 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #29551 /* ~"Jmenuji se... Quell." Zvedl panovačně ruku, jako by ti chtěl zabránit představit se. "...ani se neobtěžuj s představováním: v této části Sigilu jsi asi ten nejdrzejší otrapa a už jsem o tobě hodně slyšel!"~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #29552 /* ~"Je mi doopravdy *ctí* tě potkat. Škoda, že díky Mocnostem to nepočkalo do doby, kdy by ses zkroutil a zemřel. Tím bys mě ušetřil zbytečného žertování s tebou! S radostí bych vyměnil své hrozivé magické síly za pouhopouhé slabé zaklínadlo, které by prorazilo tvou zabedněnou lebku a naučilo tě alespoň základům dobrých 'mravů!'"~ */
  IF ~~ THEN REPLY #29553 /* ~"Mravy? A co bude s čokoládou, kterou jsem ti přinesl?"~ */ GOTO 27
  IF ~~ THEN REPLY #29554 /* ~"Hrozivé magické síly? Mohl bys mě něco naučit?"~ */ GOTO 48
  IF ~~ THEN REPLY #29555 /* ~"Chtěl jsem se ještě zeptat na..."~ */ GOTO 24
  IF ~~ THEN REPLY #29556 /* ~"To je vše, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #29557 /* ~Otevřel svá ústa a s pozvednutým prstem se chystal promluvit, najednou se zastavil. "Hmm. Tak jo, jsem připraven, sire." Pokrčil rameny a snědl další bonbón.~ */
  IF ~~ THEN REPLY #29558 /* ~"Tak jak jsem si myslel. Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29559 /* ~"To dělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #29560 /* ~Vypadá zmateně. "Já? Čepici? Snažíš se mě zmást... nenosím žádnou čepici!" Sešpulil rty a podezřívavě se na tebe ze strany podíval skrze přimhouřené oči.~ */
  IF ~~ THEN REPLY #29561 /* ~"Jestliže to není čepice, tak co pak je ta rudá věc na tvé hlavě?"~ */ GOTO 29
  IF ~~ THEN REPLY #29562 /* ~"Ne, ale mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29563 /* ~"Dobře... nic si z toho nedělej. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29564 /* ~"To je naprosté šílenství! Nemám na své hlavě nic... opakuji, nic! A víc se touto záležitostí nemíním zabývat, díky."~ */
  IF ~~ THEN REPLY #29565 /* ~"Hmm. Mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29566 /* ~"Dobře... nic si z toho nedělej. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY #29567 /* ~"Bonbón?! Pro jistotu se zeptám ještě jednou: *Bonbón?!* Jak tě to vůbec napadlo, že bych *dal* bonbón někomu bez košile a s takovou drzostí jako jsi ty, hmm?" Čeká na odpověď se zkříženýma rukama a poklepává nohou.~ */
  IF ~~ THEN REPLY #29568 /* ~"*Prodal* bys mi nějaký?"~ */ DO ~SetGlobal("Quell_Candy","AR0604",1)
~ GOTO 31
  IF ~~ THEN REPLY #29569 /* ~"Nic. Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29570 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29571 /* ~"Tak tohle... tohle *můžu.* Ale musím tě varovat! Neprodávám obyčejné bonbóny, ale čokoládové bonbóny... *síly!*" Toto poslední slovo vysloví zvláště zřetelně a chtivě si přitom mne ruce...~ */
  IF ~~ THEN REPLY #29572 /* ~"Čokoládové bonbóny... síly?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29573 /* ~Přikyvuje. "Jojo. Ale pozor, nejsou *levné,* takže jestli zrovna nemáš dost peněz, doporučuji ti, aby ses o ně přestal *ihned* zajímat. Chtěl bys vidět, co ti můžu nabídnout, hmmm?" Zvedl hlavu a mazaně se na tebe dívá.~ */
  IF ~~ THEN REPLY #29574 /* ~"Ano."~ */ DO ~StartStore("Quell_C",Protagonist)
~ JOURNAL #28833 /* ~Potkal jsem mága, jenž nosí jméno Quell v Soukromém senzoriu Městské haly. Prodává velkou škálu kouzelných čokolád. Každá z nich je napuštěna různou směsicí magických přísad, které začnou působit krátce po pozření.~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~"Ne, ale chtěl bych se na něco zeptat..."~ */ GOTO 24
  IF ~~ THEN REPLY #29576 /* ~"Ne děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.4 24.4
  SAY #29577 /* ~"Stojíš sám uprostřed Městské haly... *úplně* sám až do chvíle, kdy *se* přišouráš k... soukromému senzoriu. Promluv si s mužem stojícím ve společenské místnosti Městské haly, jmenuje se Splinter, pokud budeš mít nějaké další hloupé otázky ohledně tohoto místa."~ */
  IF ~~ THEN REPLY #29578 /* ~"Dovol, abych se tě ještě na něco zeptal..."~ */ GOTO 24
  IF ~~ THEN REPLY #29579 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.5 24.5
  SAY #29580 /* ~Při zmínce o jejím jménu, polkl bonbón, který cucal, s hlasitým *gulp,* a začal se škubat bolestí. "Co mám říct?! A proč bych to vůbec měl říkat? Takové věci, takové příběhy je lepší nechat v zaprášených knihách a hluboko v myslích starců! Zlo, zlo! Takové jméno, takové jméno... a kolik temných příběhů se kolem něj rojí, tolik jako mušek na mrtvole."~ */
  IF ~~ THEN REPLY #29581 /* ~"To je hezký, ale já potřebuju, abys mi to řekl."~ */ GOTO 35
  IF ~~ THEN REPLY #29582 /* ~"Nelam si s tím hlavu; mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29583 /* ~"Zapomeň, že jsem se vůbec ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29584 /* ~Obrátil oči v sloup a hodil si další bonbón do úst. "Je to noční čarodějnice, drahý chlapče, která přišla do Sigilu... byla samé zlo a žvanění. Žila temnou magií. Byla připravená srážet hlavy s Paní Bolesti. Pitomá, ztřeštěná, střelená stará čarodějnice... jedině si pro sebe vymohla bludiště. Teď už je pravděpodobně mrtvá."~ */
  IF ~~ THEN REPLY #29585 /* ~"Temná magie?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29586 /* ~"Jak ji můžu najít?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29587 /* ~"Jak ji můžu najít?"~ */ GOTO 38
  IF ~~ THEN REPLY #29588 /* ~"Ztracena v bludišti?"~ */ GOTO 57
  IF ~~ THEN REPLY #29589 /* ~"Paní Bolesti?"~ */ GOTO 57
  IF ~~ THEN REPLY #29590 /* ~"Mám ještě jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29591 /* ~"To je vše, co jsem se chtěl dozvědět, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.1 57.0
  SAY #29592 /* ~"Ano, ano, ano..." Je zřejmé, že se mu o ní mluví těžce. "Ravel fušovala... ne, nefušovala, ale *vynikala* ve všech školách magie. Ona znala temnou magii, magii iluze a stínové podstaty, stíny, pozůstatky mrtvých věcí."~ */
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29593 /* ~"Jak ji můžu najít?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29594 /* ~"Jak ji můžu najít?"~ */ GOTO 38
  IF ~~ THEN REPLY #29595 /* ~"Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29596 /* ~"To je vše, co jsem se chtěl dovědět, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.0 57.1
  SAY #29597 /* ~"Jak bys mohl, CO?!" Jeho bonbón se vykutálel rovnou z jeho pusy na dlaždice. Než se stačíš vůbec na něj podívat, chytl jej a strčil jej s nenávistným pohledem zpět do své pusy.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.2 36.1 37.0 57.2
  SAY #29598 /* ~"Proč... proč by ses *ptal* na takovou věc? Jsi *ŠÍLENÝ?* Co bys mohl potřebovat od takové zlé potvory?"~ */
  IF ~~ THEN REPLY #29599 /* ~"Ví něco o mé minulosti."~ */ GOTO 39
  IF ~~ THEN REPLY #29600 /* ~"Netrap se tím - co jsi to říkal o 'temné magii?'"~ */ GOTO 36
  IF ~~ THEN REPLY #29601 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29602 /* ~"Zapomeň na to, že jsem se vůbec ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #29603 /* ~"Pochybuji... ztratila se v bludišti před mnoha stoletími. Je nadobro pryč - zapsána v knize mrtvých. A i kdyby se z jakéhosi důvodu *nějak* stále držela života svými zčernalými a krvavými pařáty, co by *asi* tak mohla vědět o *tobě?* I kdyby nebyla věrnou podobou zla a byla *ochotna* dokonce ti pomoci..."~ */
  IF ~~ THEN REPLY #29604 /* ~"Musím doufat, že je naživu, a že mi pomůže."~ */ GOTO 40
  IF ~~ THEN REPLY #29605 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29606 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #29607 /* ~"Při šesti bradavkách a nateklém břichu Leshe, do skučících větrů Pandemonia se vřítila svíčka třepotající nadějí! *Blik-blik-úúúúššš!* Nebuď větším bláznem, než musíš být!"~ */
  IF ~~ THEN REPLY #29608 /* ~"Přesto trvám na tom, že ji musím najít, ať už je mrtvá nebo živá."~ */ GOTO 41
  IF ~~ THEN REPLY #29609 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29610 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #29611 /* ~"Pokud je mrtvá - jakože s největší pravděpodobností je - pak jaký je tvůj plán, jestli se můžu zeptat? Máš všechno důkladně promyšlené, že? Quell jenom kecá ze své díry, nesmysly! *Jaký* je tvůj plán, jestli je už zapsána v knize mrtvých, he?"~ */
  IF ~~ THEN REPLY #29612 /* ~"Nevím. Něco vymyslím."~ */ GOTO 42
  IF ~~ THEN REPLY #29613 /* ~"Co si myslíš, že bych měl udělat?"~ */ GOTO 47
  IF ~~ THEN REPLY #29614 /* ~"Zapomeň na to. Mám jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29615 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29616 /* ~"Ale, ale, ale, to je ten nejlepší plán, jaký jsem kdy slyšel! Průzračná, oslepujíce bílá geniální myšlenka! Bez nápadu, jak se dostat do bludiště, bez nápadu, jak se dostat ven, žádný nápad, co dělat, jestli je mrtvá a bezesporu žádný nápad, co dělat, jestliže je naživu. Stejně tak bych mohl mluvit k lemurovi o všech pitomostech, které z tebe prýští!"~ */
  IF ~~ THEN REPLY #29617 /* ~"Můžeš mi říct, jak se dostanu do jejího bludiště?"~ */ GOTO 43
  IF ~~ THEN REPLY #29618 /* ~"Zapomeň na to. Mám jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29619 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 47.0
  SAY #29620 /* ~"Jsi blázen! Šílenec! Vypatlanec! Slyšel jsi aspoň jedno slovo z toho, co jsem ti říkal?! Je uvězněná v mezi-dimensionálním *bludišti* za to, že chtěla překonat *PANÍ BOLESTI!* To znamená, že je alespoň desetinásobně pitomější než ty a aspoň stokrát silnější! Je také s největší pravděpodobností mrtvá, mrtvá, mrtvá, trojnásobně mrtvá a... jestli nějakým zázrakem není... budeš mrtvý *ty*!"~ */
  IF ~~ THEN REPLY #29621 /* ~"Rozumím, ale doopravdy potřebuji tvoji pomoc. Můžeš mi říci, jak se k ní dostat nebo ne?"~ */ GOTO 44
  IF ~~ THEN REPLY #29622 /* ~"Zapomeň na to. Mám jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29623 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #29624 /* ~Quell ztichl a začal si hryzat ret. Po chvíli zašmátral ve své tunice a hodil si mátový bonbón do úst. "Myslíš to vážně? Doopravdy vážně? Proč jsi tak vážný, proč jsi tak Baatorsky rozhodnutý, tak umíněný?" Povzdechl si. "Dobrá, narodil ses Bezradný, zemřeš Bezradný."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #29625 /* ~"Ano...?"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",1)
~ JOURNAL #28832 /* ~Jistý mág jménem Quell mi pověděl, že klíč k portálu do Ravelina bludiště je podle všeho částí Ravel.~ */ GOTO 45
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #18041 /* ~"Ano...?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #29626 /* ~"Každé bludiště má portál; *vím*, že je to pravda. Cesta dovnitř, cesta ven... to je způsob jakým je Paní vytváří. Neznám ten správný portál - jeho umístění nebo alespoň formu; - ale doslechl jsem se, že klíčem je... je kousek Ravel."~ */
  IF ~~ THEN REPLY #29627 /* ~"Kousek Ravel? Ale jestliže se Ravel ZTRATILA V BLUDIŠTI, jak mám..."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29628 /* ~"V tom případě to budeš muset nějak udělat. Najdi něco, co je potřísněno Ravel, možná... to je vše, co vím! Vše! Víc mě tím neobtěžuj! Jestli chceš někoho otravovat touto otázkou, jdi do Nevěstince duševních rozkoší -- je tam jedna žena, která snad potkala někoho nebo ví něco, co ti pomůže."~ */
  IF ~~ THEN REPLY #29629 /* ~"Děkuji. Nemám další otázky..."~ */ JOURNAL #66703 /* ~Quell mi řekl, že bych měl jít do Nevěstince duševních rozkoší, jestli chci najít klíč k Ravelinu bludišti. Prohlásil, že alespoň jedna z dam určitě potkala někoho, kdo mi může pomoct.~ */ GOTO 24
  IF ~~ THEN REPLY #29630 /* ~"Děkuji ti za tvou pomoc. Sbohem."~ */ JOURNAL #66703 /* ~Quell mi řekl, že bych měl jít do Nevěstince duševních rozkoší, jestli chci najít klíč k Ravelinu bludišti. Prohlásil, že alespoň jedna z dam určitě potkala někoho, kdo mi může pomoct.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY #29631 /* ~"To je první výborná otázka, jakou ses mě zeptal! Já? *Já* si myslím, že by ses měl vzdát toho nesmyslného nápadu, že vstoupíš do bludišť a budeš si povídat s babiznami a snadno se vrátíš do kobky, z které jsi vylezl! Je to daleko rozumnější než riskovat, že naštveš Paní."~ */
  IF ~~ THEN REPLY #29632 /* ~"Můžeš mi říct, jak se mohu dostat do jejího bludiště?"~ */ GOTO 43
  IF ~~ THEN REPLY #29633 /* ~"Zapomeň na to. Mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29634 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 26.1
  SAY #29635 /* ~"*Učit* tě?! Hah! Jsi aspoň *kouzelník?*"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29636 /* ~"Ano, jsem."~ */ GOTO 50
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #29637 /* ~"Ne, ale doufal jsem, že ze mě kouzelníka uděláš."~ */ GOTO 49
  IF ~~ THEN REPLY #29638 /* ~"Zapomeň na to. Mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29639 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #29640 /* ~S pohrdáním se na dívá. "Oooo, kéž bych měl Bigbyho boty Zadko-nakopávačky, hned bych je na tebe hodil! NE!!! S největší pravděpodobností z tebe *neudělám* kouzelníka, blbečku! Znamenalo by to, že zdegraduju Umění, jakým nyní je!"~ */
  IF ~~ THEN REPLY #29641 /* ~"V tom případě mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29642 /* ~"Nelam si s tím hlavu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #29643 /* ~"Oh! Jaké to divy má mnohovesmír pro mě dnes přichystány! Jen dál, ukaž mi svou knihu kouzel."~ */
  IF ~~ THEN REPLY #29644 /* ~Dovol mu se na ni podívat.~ */ GOTO 51
  IF ~~ THEN REPLY #29645 /* ~"Myslím, že ne. Můžu se tě ještě na něco zeptat..."~ */ GOTO 24
  IF ~~ THEN REPLY #29646 /* ~"Možná příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29647 /* ~Vytrhnul ti to z rukou a šíleně se na to dívá. "Co je to za smetí?! Řeknu ti to: hnůj! Hnůj, hnůj, hnůj! Jak vůbec můžeš přečíst nějaká kouzla z takto zamazaných stránek... to jsi tu knihu používal jako barovou osušku? Je hrozně nasáklá alkoholem, je ulepená a zakrvácená! To se vůbec nestaráš o svou knihu kouzel?! Jak můžu něco naučit člověka, který nemá žádný respekt před Uměním?!"~ */
  IF ~~ THEN REPLY #29648 /* ~"Proč je její vzhled tak důležitý?"~ */ GOTO 52
  IF ~~ THEN REPLY #29649 /* ~"Jsou v ní má kouzla. Nezáleží na tom, jak vypadá."~ */ GOTO 53
  IF ~~ THEN REPLY #29650 /* ~"Zapomeň na to. Mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29651 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 54.0
  SAY #29652 /* ~"Tvá kniha kouzel by měla být obrazem toho, jak si vážíš síly, která se v ní skrývá. Tvoje podřadná knížečka je vhodná tak akorát pro ta nejzákladnější slova! *Opravdová* kouzla by měla být zapisována vzácnými inkousty na listech z jemného pergamenu s pozlacenými okraji! Vše má své místo anebo je nemá vůbec!" Začal bláznivě skákat kolem.. "To pravé místo! To pravé místo!"~ */
  IF ~~ THEN REPLY #29653 /* ~"Hmmm... rozumím. Můžeš mě vyučovat nebo ne?"~ */ DO ~SetGlobal("Quell_Spells","AR0604",1)
~ GOTO 55
  IF ~~ THEN REPLY #29654 /* ~"Zapomeň na to. Mám ještě jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29655 /* ~"Zapomeň, že jsem se vůbec ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #29656 /* ~"To je směšné! Absurdní! Nejvtipnější názor, jaký jsem kdy vyslechl! Kdo tě *naučil* Umění?"~ */
  IF ~  Global("Mage_Training","GLOBAL",1)
~ THEN REPLY #29657 /* ~"Porodní bába na Hadrníkově náměstí, Mebbeth."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",2)
~ THEN REPLY #50720 /* ~"Paní Trnočesá, tady v Městské hale."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",3)
~ THEN REPLY #67160 /* ~"Mág, kterého jsem potkal v Dolní Čtvrti, Sebastion."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",4)
~ THEN REPLY #67161 /* ~"Žena, kterou jsem potkal v Curstu, Kitla."~ */ GOTO 54
  IF ~~ THEN REPLY #29658 /* ~"Zapomeň na to. Mám ještě jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29659 /* ~"Zapomeň, že jsem se vůbec ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #29660 /* ~"Nechť je potom zostuzeno jejich jméno za to, že šíří nesmírné kecy! A podívej se na ta kouzla! Co je to za ubohou pomatenost, kterou ze sebe dostali? Je to magie znečištěná hoodoo jmény a mumbo-jumbo rituály! Nicotná, nevýznamná magie o síle třepetající svíčky, ale se vznešenými jmény!"~ */
  IF ~~ THEN REPLY #29661 /* ~"Tak proč je její vzhled důležitý?"~ */ GOTO 52
  IF ~~ THEN REPLY #29662 /* ~"Zapomeň na to. Mám ještě jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29663 /* ~"Zapomeň, že jsem se vůbec ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #29664 /* ~Zavřel své oči a na chvíli masíroval své spánky. Nakonec promluvil chladným hlasem: "Je zřejmé, že tě nemůžu nic naučit. Avšak můžu ti prodat nějaké kouzla, kdybys chtěl *koupit*. Chtěl bys je vidět? Hmmm?"~ */
  IF ~~ THEN REPLY #29665 /* ~"Ano, chtěl bych."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29666 /* ~"Ne teď. Mám ještě jiné otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29667 /* ~"Ne díky. Sbohem."~ */ EXIT
END

IF ~  Global("Quell","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #29668 /* ~Quell se kolem sebe rozhlíží, když se k němu blížíš. "Sakra! Nemám se kam schovat!" Hlasitě si povzdechl. "Dobrá, ven s tím! Co ode mě potřebuješ *teď,* hmm?" Strčil si bonbón do úst a s očekáváním se na tebe dívá.~ */
  IF ~~ THEN REPLY #29669 /* ~"Mám pár otázek..."~ */ GOTO 24
  IF ~~ THEN REPLY #29670 /* ~"Nic, jenom jsem procházel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 35.3 35.4
  SAY #29671 /* ~Vztekle přikývl. "Paní bolesti, ona... 'vládne' městu Sigil; udržuje Mocnosti mimo a tak podobně. Jedním z trestů, které má přichystané pro ty, kdož zkříží její cestu je bludiště... ulomí kousek Sigilu, zkroutí, odhodí kdovíkam a viník je uvězněn uvnitř. Je pak odvržen, odvržen od sfér!"~ */
  IF ~~ THEN REPLY #29672 /* ~"Zmínil ses o 'temné magii?'"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29673 /* ~"Jak bych ji mohl najít?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29674 /* ~"Jak bych ji mohl najít?"~ */ GOTO 38
  IF ~~ THEN REPLY #29675 /* ~"Mám ještě další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #29676 /* ~"To je vše, co jsem chtěl vědět, sbohem."~ */ EXIT
END
