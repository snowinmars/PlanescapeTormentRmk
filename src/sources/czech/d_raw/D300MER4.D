// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~Tato půvabná dívka se usmívá a kyne všem kolemjdoucím, přičemž ovšem nezapomíná nahlas vychvalovat své zboží. "Talíře! Džbány! Číše! Korbely! Kupte si poháry, jimiž si připíjeli ti nejvznešenější z pánů!" Její zrak padl na tebe; vzápětí tě gestem přivolává, jako bys byl její dávný známý.~ */
  IF ~~ THEN REPLY #17433 /* ~"Mohl bych vidět, co tu prodáváš?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"Chtěl bych se na něco zeptat..."~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~Předstírej, že ji nevidíš mávat a jdi pryč.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~Přiblížíš se a žena ti věnuje vřelý úsměv. "Mám tu čest vás opět uvítat, pane. Co byste si tak dneska chtěl pořídit, hmm?"~ */
  IF ~~ THEN REPLY #17436 /* ~"Co máš teď na prodej?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"Nic, jenom bych se chtěl na něco zeptat..."~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"Nic. Pouze jsem procházel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"Nabízím talíře, džbány, číše, korbely, příbory a další podobné zboží. Vše nejlepší kvalita, pane." Poodstoupí a nadzdvihne víko bedny stojící na nákladním voze za ní. "Prosím, neostýchejte se, jenom přistupte blíže a sám si vyberte... jakékoliv dotazy vám ráda zodpovím."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"Potřebuji něco, v čem se udrží inkoust... nemáš na prodej korbel nebo pohárek?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~Jdi blíž, prozkoumej obsah bedny.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"Zrovna teď ne. Mám pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"Možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~Zblízka sis prohlédl obsah bedny: je plná... talířů, pohárů, džbánů, konvic, obsahuje i příbory a další nožířské zboží. Jakost je proměnlivá, ale některé kousky skutečně nevypadají nejhůř. Jak je tak prozkoumáváš, přitiskne se k tobě: "Zahlédl jste něco, co by se vám líbilo? Ano?" Její dlouhé, vlající vlasy ti kloužou po rameni; voní po čemsi známém - sladkém - snad vanilce ?~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"Potřebuji něco, v čem se udrží inkoust... nemáš na prodej korbel nebo pohárek?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"Odkud tohle všechno pochází?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"Ne, není tam nic co bych potřeboval, ale měl bych pár otázek ..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"Ne, nic z toho pro mne nemá žádný užitek. Sbohem."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"Ne, není tam nic co bych potřeboval, ale měl bych pár otázek ..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"Ne, nic z toho pro mne nemá žádný užitek. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~Rozpustile se na tebe zazubí. "Všichni z mých milenců jsou lupiči, pane a toto zboží je jejich kořist, původně patřilo vznešeným zde v Sigilu." Když spatří tvůj výraz, znovu se rozesměje. "To byl pouze šprým! Můj táta a bratr se vyučili na dráteníky; tyto předměty byly vyřazeny z používání v obydlí urozených. Naši je pouze spravili."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"Potřebuji něco, v čem se udrží inkoust... nemáš na prodej korbel nebo pohárek?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"Tak jo. Mám pár otázek..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"To je všechno co jsem si přál vědět. Sbohem."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"Tak jo. Mám pár otázek..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"To je všechno co jsem si přál vědět. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"Počkat, pane, vydržte!" Uchopí tě za předloktí; její dotek je lehoučký jak pírko. "Jste si naprosto *jist*, že zde nenaleznete nic, co byste potřeboval? Něco pro váš domov nebo dárek někomu..." Nesměle si skousne ret a poněkud pozdvihne hlavu.~ */
  IF ~~ THEN REPLY #17454 /* ~"No... to je krásný talíř zrovna támhle..."~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"Eh... ne, nic co bych potřeboval. Moje otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"Lituji... nic co bych potřeboval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"Počkat, pane, nechoďte ještě!" Uchopí tě za předloktí; její dotek je lehounký jak pírko. "Jste si naprosto *jist*, že zde nenaleznete nic, co byste potřeboval? Třeba pro váš domov nebo dárek někomu..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"Co říkáte na tohle, pane?"~ */
  IF ~~ THEN REPLY #17459 /* ~"Ne, uh, to - počkej. To je směšné. Nepotřebuju žádné talíře. Mám otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"Podívej, omlouvám se. Já skutečně nepotřebuju žádné talíře. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~Vypadá tak smutně, že jsi téměř přemožen pocitem viny. Pomalu opět zakrývá bednu se zbožím. "Omlouvám se pane, ale bohužel nemám čas odpovídat na otázky. Musím prodat vše co jen dokážu - moje rodina je velká a vždy hladová."~ */
  IF ~~ THEN REPLY #17461 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~Vypadá tak ublíženě, že tě pocit viny téměř přemohl. Pomalu zakrývá bednu se zbožím. "Tak tedy sbohem, pane. Pokud byste někdy v budoucnu cokoliv potřeboval, prosím vás - vraťte se. Nikde jinde než zde nenakoupíte kvalitní zboží za takovéto ceny." Smutně se s tebou loučí.~ */
  IF ~~ THEN REPLY #17462 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~"Omlouvám se pane, ale bohužel nemám čas odpovídat na otázky. Musím prodat vše co jen dokážu - moje rodina je velká a vždy hladová." Nadzvedla víko bedny stojící za ní. "*Určitě* se nechcete ani podívat, co tu mám? Hmmm?" ~ */
  IF ~~ THEN REPLY #17463 /* ~"Dobře. Podívám se."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"Možná jindy. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~Obchodnice pozdvihne svůj roztomilý, drobný nosík. "Pche! To natolik žárlíš, že bys chudé prodavačce překazila její obchod ? Protože tento laskavý muž je můj zákazník, ty Sférami-poznamenaná, a ne nějaký kus masa co by někdo mohl vlastnit nebo se o něj rvát." Pro zdůraznění vyřčeného kývne hlavou.~ */
  IF ~~ THEN REPLY #17465 /* ~Počkej na to...~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~Přikývne. "Oh, ano... mnoho druhů. Jsou v cenách od několika měďáků do několika stovek..."~ */
  IF ~~ THEN REPLY #22236 /* ~"Zrovna teď hledám ten nejlevnější, který máš." ~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~Pozvedne obočí. Sáhne do dopravní klece na své straně, a pak ti s ubíjejícím pohledem hodí korbel. Je pokryt zářezy a jeho ucho jen tak tak, že neupadne.~ */
  IF ~~ THEN REPLY #22237 /* ~"Uh... tenhle vypadá, že ležel někomu v lebce."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~Nepatrně se usměje.~ */
  IF ~~ THEN REPLY #22238 /* ~"To bude dobrý. Díky a sbohem."~ */ JOURNAL #21909 /* ~Dostal jsem od jednoho z kupců otlučený korbel. Teď se můžu vrátit k Meir'am a ukázat jí ho.~ */ EXIT
END
