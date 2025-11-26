// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~Tato hnijící ženská mrtvola třese svou hlavou a smutně sténá. Když se přiblížíš, otočí se a vztáhne k tobě svou ruku jakoby tě žádala o pomoc.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"Zdravím..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"Zdravím..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~Nechej zombii o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~Zombie v odpovědi jemně sténá: "Ggnhuuu... fnnnnuuugh?" S každám výdechem, zápach hnijícího masa zaplňuje vzduch.~ */
  IF ~~ THEN REPLY #23521 /* ~"Chci se na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"Rozloučím se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"Stuuuhhh... mmmaaa-uuhrrr?" Nemůžeš rozluštit co zombie sténá, ale vypadá to, že se tě na něco ptá.~ */
  IF ~~ THEN REPLY #23523 /* ~"Nerozumím ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~Zombie při odpovědi lehce zasténá. Jen tvé schopnosti v hovoření s mrtvými ti umožní rozumět jí: "Jméééno? Mééé jméééno?"~ */
  IF ~~ THEN REPLY #23524 /* ~"Ne... je to proč jsi tak sklíčený?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"Ne, neznám. Měl bych?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"Ne. Chtěl jsem se na něco zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"Ne. Rozloučím se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"Zzzapomněěěla jseeem... mééé jméééno!" Její mléčné oči se zalily černou zahleněnou substancí -- jedinými slzami mrtvol.~ */
  IF ~~ THEN REPLY #23528 /* ~"Mohu ti pomoci vypátrat tvé jméno?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"Proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"Proč je to pro tebe tak důležité?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"To je zlé. Ještě bych se chtěl na něco zeptat..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"Snad ho najdeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~Mrtvola pomalu kýve hlavou. "Mááá hrooobka..." Ukazuje jižním směrem. "Vlhkééé katakomby..."~ */
  IF ~~ THEN REPLY #23533 /* ~"Ale jak ho poznám?"~ */ JOURNAL #23566 /* ~Nějaká zombice mě požádala, abych zjistil její jméno. Říkala, že by mělo být vytesáno do jejího hrobu - hned za nějakou 'zašpičatěnou truhlou' přišroubovanou k podlaze -- v katakombách Přemožených národů, jižně a západně od Mrtvých národů, kde jsem ji potkal.~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"Pak ho tedy půjdu hledat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"Třeba ho vypátrám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"Truuuhla... ohrooocenááá truuuhla, přiiišroubovanááá... blííízko mééé hrooobky..."~ */
  IF ~~ THEN REPLY #23539 /* ~"Proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"Proč je to pro tebe tak důležité?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"Pak ho tedy půjdu hledat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"Možná ho vypátrám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~Ukazuje ti své rozkládající se ruce. Jen co tak učiníš, upadne jí nehet a padá na podlahu s jemným *cvaknutím.* "Uhnííívá pryyyč... brzy, niiic nezbýýývááá... niiic kromě kostííí a jméééna..."~ */
  IF ~~ THEN REPLY #23557 /* ~"Já sám nemám jméno. Jsme si jistý, že si bez něj vystačíš stejně dobře."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"Takže ti můžu pomoci najít jméno?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"Proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"Aha. Chci se na něco zeptat..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"Doufej, že ho najdeš. Sbohem."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"Pak tedy budu hledat dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~Stojí tam, tiše tě pozoruje.~ */
  IF ~~ THEN REPLY #23586 /* ~"Pochopila jsi to? Můžeš si vybrat nové jméno."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~Zavrtěla hlavou, ustoupila jakoby byla vystrašená. "Ale... nééé..."~ */
  IF ~~ THEN REPLY #23588 /* ~"Copak nevidíš, jak jsi se změnila? Sedělo by ti ještě tvé pravé jméno?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~Pozastavila se, dává si ruce na líce. Mrtvola si kouše spodní ret.~ */
  IF ~~ THEN REPLY #23591 /* ~"Ano, vidíš? Teď můžeš nechat své staré jméno být. Staň se někým novým."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"Ale... kdooo? Jakééé jméééno?" Vypadá zmatená, ohromená.~ */
  IF ~~ THEN REPLY #23593 /* ~"Cokoliv chceš. Cokoliv."~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"Popřemýšlej o nějakém. Sbohem."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~Dlouho tiše stojí, upřeně hledíc do podlahy. Náhle zvedla hlavu. "Tyyy... jméééno? Pojmeeenuješ... mě?"~ */
  IF ~~ THEN REPLY #23599 /* ~Přemýšlej o nějakém jménu pro ní.~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~Vymyslel jsem jméno pro bezejmennou zombii, dost jí to potěšilo.~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"Myslím, že nejlepší by bylo, kdyby sis vybrala své vlastní. Sbohem."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~Myslíš na jméno, ale předtím než promluvíš, zombie tě utiší, dává si ruku k uchu. Šeptáš jí jméno... mrtvola kýve, pak se směje. "Áááno... děěěkuji ti..."~ */
  IF ~~ THEN REPLY #23603 /* ~"Jistě. Pořád se chci na něco zeptat..."~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"Zajisté. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"Jááák sééé cííítíš... cééélý?"~ */
  IF ~~ THEN REPLY #23608 /* ~Pravda: "Možná máš pravdu, ale já si myslím, že postrádám mnohem víc, než jen své jméno."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~Lež: "Cítím se celý, se jménem, nebo bez něj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~Zombie jen tak tiše zavrtěla hlavou.~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"Mohu ti tedy pomoci zjisit tvé jméno?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"Proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"Chci se zeptat na něco jiného"~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"Doufej, že ho najdeš. Sbohem."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"Budu hledat dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~Dlouho mlčí. "Uuuuhhh?" Zombie krčí rameny, jedno z jejích ramen se ale nezvedlo tolik co druhé. "Zzzeptej se Mmmary, Oššššuntělééé Maaaary."~ */
  IF ~~ THEN REPLY #23631 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"Možná se jí zeptám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"Ona nááás véééde. Hlídááá nááás."~ */
  IF ~~ THEN REPLY #23637 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~Když se ti zombie podívala do tváře, její mrtvé oči se leskly, poznala mě. "Uuuhhhn." Natahuje po tobě svou hnijící ruku, jakoby žádala o pomoc.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"Nazdárek..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"Zdravíčko..."~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~Nech zombici o samotě.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~Když se ti zombie podívala do tváře, její mrtvé oči se leskly, poznala mě. "Mééé jméééno... zjistiiil si mééé jméééno?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~Pravda: "Našel jsem ten hrob, ale to jméno bylo... rozpadlé. Nečitelné."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~Řekl jsem bezejmenné zombici, že jméno na jejím hrobě bylo nečitelné... začala vyšilovat.~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~Lež: "Ano, tvé jméno je... uh..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~Lhal jsem a řekl jsem bezejmenné zombici, že jméno na jejím hrobu bylo čitelné a řekl jsem jí jedno, které jsem si vymyslel. Byla tím potěšena.~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"Ne... ale proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"Ještě ne. Proč je to pro tebe tak důležité?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"Ještě ne, ale chci se na něco zeptat..."~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"Ne, ale budu hledat dál."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~Mrtvola na tebe horlivě kýve když ti oznamuje. "Jméééno! Jááá vybralááá jméééno..."~ */
  IF ~~ THEN REPLY #23661 /* ~"Je to tak? Co jsi si vybrala?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezejmenná zombice si konečně nechala poradit a vybrala si pro sebe jméno, 'Leicha.'~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"Dobře, mám z tebe radost. Chci se na něco zeptat..."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezejmenná zombice si konečně nechala poradit a vybrala si pro sebe jméno, 'Leicha.'~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"To je dobře. Teď odcházím... Sbohem."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezejmenná zombice si konečně nechala poradit a vybrala si pro sebe jméno, 'Leicha.'~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"Juchuuuuuu..."~ */
  IF ~~ THEN REPLY #23665 /* ~"Zajímavé... to sedí akorát. Chci se na něco zeptat..."~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"To je dobře. Měj se, Leicho."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~Mrtvola se šourá směrem k tobě, usmívajíc se. "Děěěkuuuji ti... zááá pooomoc s mýýým jmééénem..."~ */
  IF ~~ THEN REPLY #23667 /* ~"Samozřejmě. Chci se na něco zeptat..."~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"N... n... nééé..." Zombie se drží za třesoucí se hlavu. "To nééémůže býýýt prááávda..."~ */
  IF ~~ THEN REPLY #23669 /* ~"Proč si prostě nevybereš nějaké nové jméno?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"Omlouvám se... Sbohem."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~Tato ženská zombie strnule hledí do dálky s otevřenou pusou.~ */
  IF ~~ THEN REPLY #23671 /* ~"Chci se na něco zeptat..."~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~Opusť jí.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~Mrtvola je naprosto potichu... nebere tě na vědomí.~ */
  IF ~~ THEN REPLY #23673 /* ~Nech jí o samotě.~ */ EXIT
END
