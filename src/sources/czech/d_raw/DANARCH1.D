// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~Vidíš ženu středního věku s ošetřovanou tváří a soucitným výrazem. Vypadá, že vede těžký život. "Mohu ti s něčím pomoci, cizinče?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"Kdo jsi"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"Hledám poletující drzou lebku. Neviděla si ji někde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"Nic nepotřebuju. Omlouvám se. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"Pomoc s hledáním?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"Kdo jsi"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"Hledám poletující drzou lebku. Neviděla si ji někde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"Nic nepotřebuju. Omlouvám se. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"Tak brzy zpět? Zmařit někomu plány?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"Ještě ne. Jen potřebuji pár odpovědí."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"Ten Harmonický důstojník? Je mrtvý."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Ohlásil jsem Leeně úspěšnou vraždu důstojníka Harmonia.~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"Ne nedávno. Jen jsem potřeboval pár odpovědí."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"Ještě ne. Jen potřebuji pár odpovědí."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"Pracuji na tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~Velmi pečlivě si tě prohlíží. Mumlá si něco pro sebe, co zní jako, "Tak rychlé změny..." Soustředěně se ti podívala hluboko do očí. "Jsi jeden z nás, ano? Dokaž to."~ */
  IF ~~ THEN REPLY #44269 /* ~"Jak?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"Nemám, čím bych to dokázal."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"Osoba, která mi dala tu informaci, je Scofflaw Penn. Řekl, že budeš znát jeho jméno."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"Já jsem Leena. Dohlížím na tyhle dva." Mávla rukou ke svým společníkům.~ */
  IF ~~ THEN REPLY #44273 /* ~"Čím se tu zabýváte?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"Co je to za místo?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"Tohle je sklad a já jsem správce. Ukládají se tu věci, vyzvedávají se odtud věci..." Pokrčila rameny. "Nic moc k vyprávění, opravdu."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"Chápu. Mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"Poletující drzou lebku? Je mi líto. Nikde tady v okolí jsem ji neviděla. Jestli hledáš lebky, měl bys zkusit Kosti noci - vypadáš, že se ti líbí jizvy, a stejně jistě jako vyrovnaní nenávidí fiendy, tě Lothar pár dalšími vyzdobí."~ */
  IF ~~ THEN REPLY #44281 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"Byl jsi úspěšný při svém... dobrodružství? Odpověz čestně."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"Ano. Je mrtvý."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Ohlásil jsem Leeně úspěšnou vraždu důstojníka Harmonia.~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~Pravda: "Ještě ne."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~Lež: "Ano. Je mrtvý."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"Hmm... co že jsem to měl udělat?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"Máš odstranit toho pokrytce a zloděje Harmonického Vortena. Teď jdi a nemrhej mým časem!"~ */
  IF ~~ THEN REPLY #44307 /* ~"Jen jsem se chtěl zeptat na pár věcí..."~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~Otáčí se a dává rozkazy svým poskokům. Ignoruje tě.~ */
  IF ~~ THEN REPLY #44310 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"Prosím, nelži mi. Znamená to, že ke mně nemáš úctu, a vypadáš v mých očích ještě víc pošetilý. Teď jdi a postarej se o svůj úkol."~ */
  IF ~~ THEN REPLY #44312 /* ~"Jen jsem se chtěl zeptat na pár věcí!"~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"Tak dobře. Vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"Dobře, dobře... začínal se dostávat trochu moc blízko k jedné z našich operací, aniž by to věděl. Tohle by mělo ty rudě obrněné utlačovatele poslat na jinou stopu." Oči se jí zaleskly. "Dokázal jsi svou úlohu. Co by sis přál?"~ */
  IF ~~ THEN REPLY #44315 /* ~"Jen jsem se chtěl zeptat na pár věcí..."~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"Místo k přespání."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"Chtěl bych si vybrat pár zvláštních věcí."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"Protentokrát nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"Co jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #44320 /* ~"Potřebuji tu na chvíli zůstat."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"Potřebuji nějaké extra zboží."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"Pověz mi něco o tvém spolku."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"Čeho myslíš, že tady dosáhneš?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"Proč jsi Anarchista?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"Co mi můžeš říct o Revoluční lize?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"Už nic, hádám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"Promluv si tady s Conallem. On to tady má na starosti."~ */
  IF ~~ THEN REPLY #44328 /* ~"V pořádku. Odpověz mi ještě na něco..."~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~Její oči se rozšířily. "Víš, on je na vysokém místě. Aspoň to pověděli moji zvědové. Co potřebuješ?"~ */
  IF ~~ THEN REPLY #44331 /* ~"Jen pár odpovědí..."~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"Právě teď nic. Jen jsem si myslel, že bych se mohl představit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"Skutečně, znáš ho. Na druhou stranu, my nemůžeme vědět, jestli sis spíše nekoupil heslo z něčích ochotných úst, nebo nejsi-li jen další třepotavá návnada. První řešení, dokážeš svou spolehlivost. Druhé, zemřeš."~ */
  IF ~~ THEN REPLY #44334 /* ~"Dokážu to."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"Zkus mě zabít, jestli si troufáš."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"Dobře." Hvízdla na své společníky a ti na tebe okamžitě zaútočili!~ */
  IF ~~ THEN REPLY #44337 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"Existuje jistý Vorten, důstojník Harmonických. Najdeš ho v Úlu vedle vstupu do Dolní čtvrti. Sejmi ho a vrať se zpět oznámit mi úspěch." Začala se od tebe odvracet, ale ještě se zarazila. "Neobtěžuj se lhát - mám oči *všude*."~ */
  IF ~~ THEN REPLY #44340 /* ~"Jdu na to."~ */ JOURNAL #39497 /* ~Leena, ve skladišti v Dolní Čtvrti, mi řekla, ať dokážu loajalitu k Anarchistům tak, že zavraždím důstojníka Harmonia Vortena.~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"Zapomeň. Nejdřív bys mě musela zabít."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"Tady jsme tři. Zodpovídáme se jednomu muži, jehož jméno nevyzradím, a pracujeme nezávisle. Čas od času nám vnější osoba někoho představí a záleží na tom, co o něm víme, jestli mu vypomůžeme, nebo ne. Conall je náš skladník, Otis je rváč a já jsem myslitel."~ */
  IF ~~ THEN REPLY #44343 /* ~"Jak víš, komu můžeš věřit?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"Měl jsem další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"Doufáme, že dokážeme zničit moderní systém, zřítit celou tu špinavou strukturu. Chceme obnovit klid, jestli chceš."~ */
  IF ~~ THEN REPLY #44347 /* ~"Hmm. Měl jsem další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"Chápu. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"Myslíš bez rodin, roztrhaných vojenskými praktikami Harmonických? Bez smogu vyvrhávaném Božími lidmi, v němž chřadnou a umírají mí přátelé? Bez duši drtících požadavků Osudových a požitkářských radovánek Vnímavých, kteří se baví zatímco jiní trpí? Ó ne, nemá to smysl. Proč na všem vidím vždycky to horší?"~ */
  IF ~~ THEN REPLY #44350 /* ~"Dobře. Můžeš mi dát ještě pár odpovědí?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"Už víš příliš mnoho, zvlášť na někoho, kdo není členem našeho spolku. Funguje to následovně: Dělíme se na spolky, takže jedna skupina nemůže svou nedbalostí nebo nešťastnou náhodou zničit druhou. Občas ukončíme spolupráci kvůli nedorozumění, ale z velké části jsme trnem v patě despotických stran, které právě Sigilu vládnou. Vadíme jim tolik, že nás berou vážně."~ */
  IF ~~ THEN REPLY #44353 /* ~"Tak jak se vzájemně udržujete ve styku? Jste nějak organizováni?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"Zdá se to prospěšné... a riskantní. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"Nevím. Proto si navzájem důvěřujeme. Ale i mezi sebou musíme našlapovat lehce. Nikdy si plně neuvěříme. Jde o nebezpečnou hru, ale je nutné ji hrát, pokud chceme dosáhnout svobody."~ */
  IF ~~ THEN REPLY #44357 /* ~"Když si navzájem nemůžete věřit, jak víš, že směřujete k cíli?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"Měl jsem další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"Právě nyní nemáme jiný cíl, než zničit stávající příživnický řád. Nejdřív nastane rozklad zkaženého. Uzdravení společnosti může začít, teprve až odstraníme nádor."~ */
  IF ~~ THEN REPLY #44361 /* ~"Správně. Zodpověz mi ještě pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"Na Velkém Prstenu máme rozptýlené bezpečné základny. Nejlepší je, jak jsem naposled slyšela, že jsme získali silnou skupinu v Curstu, vstupním městě do Carceri. Pravděpodobně se nechtějí odhalit, dokud se nestane něco VELKÉHO. Město je plné zrádců a když jsou lidé takoví, je lépe se držet při zemi." ~ */
  IF ~~ THEN REPLY #44364 /* ~"Díky. Měl jsem nějaké další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"Díky. Sbohem."~ */ EXIT
END
