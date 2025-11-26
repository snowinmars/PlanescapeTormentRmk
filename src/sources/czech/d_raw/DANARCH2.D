// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~Vidíš tenkého, krčícího se mužíka. Dlouhé hbité prsty se mu mírně třesou a během rozhovoru se vyhýbá přímému pohledu. "Překvapil jsi mě! Já... nikdy dřív jsem tě tady neviděl, cizinče. Co... Co ode mě chceš?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"Co je tohle za místo?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~Jeho hrubé chování rázem zmizelo a stalo se velmi obchodním. "Řekl ti to. Prozradil ti také tajný způsob podání ruky? Dal ti magický šifrovací prsten? Znáš skrytou hymnu spolku? Máš o tom alespoň ponětí?" Změřil si tě od hlavy k patě a řekl, "Zřejmě ne. Jak by to dopadlo příště, až bych se tě zeptal na heslo?" Povzdechl si. "Co chceš?"~ */
  IF ~~ THEN REPLY #44377 /* ~"Chtěl jsem si vybrat pár zvláštních věcí."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"Potřebuji místo, kde bych se schoval."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"Potřebuji se něco dozvědět tady o vašem spolku."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"Čeho se snažíš dosáhnout?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"Proč ses stal Anarchistou?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"Hádám, že nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"Doufejme, že se ti to zalíbí."~ */
  IF ~~ THEN REPLY #44387 /* ~"Jo, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"Víš, jaká je první zásada, když jsi tajný revolucionář?" Počkal dost dlouhou dobu, aby ses pokusil odpovědět, a pak řekl, "Je to zůstat ve *skrytu*. Nevynáším žádná tajemství, kamaráde, bez ohledu na to, *kdo* říkáš, že tě posílá. Teď, když jsme si to vyjasnili, co bys jinak chtěl?"~ */
  IF ~~ THEN REPLY #44395 /* ~"Chtěl jsem si vybrat pár zvláštních věcí."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"Potřebuji místo, kde bych se schoval."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"Čeho se snažíš dosáhnout?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"Proč si se stal Anarchistou?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"Hádám, že nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"Čeho zkoušíme dosáhnout, je tajné. To je důvod, proč se skrýváme, souhlas? Poznáš to, až to uvidíš, a neuvidíš to dlouho. Klademe své plány *opatrně*, rozumíš, co říkám? A teď, když jsme si promluvili o opatrnosti, co přesně chceš?"~ */
  IF ~~ THEN REPLY #44409 /* ~"Chtěl jsem si vybrat pár zvláštních věcí."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"Potřebuji místo, kde bych se schoval."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"Potřebuji se něco dozvědět tady o vašem spolku."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"Proč si se stal Anarchistou?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"Hádám, že nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"Podívej se kolem sebe, troubo. Vidíš snad někoho, kdo je od všeho osvobozen? Vidíš někoho, kdo nemá na zadku otisk něčí boty? Nemluvím o lidech, co si myslí, že je nutné se nechat sekýrovat. Někdo to musí zastavit."~ */
  IF ~~ THEN REPLY #44420 /* ~"A čím to chceš nahradit?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"Zní to jako dost dobrý důvod. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"Není na mě, abych to rozhodl, troubo. Jsem dobrý v ničení a v přenechání trosek jiným, aby je sesbírali. Bořím, aby jiní mohli budovat. Všichni máme svou specialitu. Jsem optimista - věřím, že lidi vytvoří něco dobrého. Dokud to neudělají, zůstanu u rozbíjení."~ */
  IF ~~ THEN REPLY #44424 /* ~"A kdo rozhoduje, co je dobré? Čím jsi tak výjimečný?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"Dobře pro tebe. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"Jsem něco zvláštního, protože s tím chci něco udělat. Co mě činí výjimečnou osobou, je hledání rovnosti. Dokud uvidím jediného obyčejného obyvatele Úlu chovat se jak Pán ze Zlata, budu přispívat svou trochou."~ */
  IF ~~ THEN REPLY #44428 /* ~"V pořádku. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"Já jsem Conall. Pracuju tady."~ */
  IF ~~ THEN REPLY #44430 /* ~"A co je tohle za místo?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~Zkoumavě se na tebe podíval, pátraje, jestli si neděláš legraci. "Sklepení Devátého světa. Sklad. Nepřečetl sis nápis, když jsi vcházel?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"Žádný strach. Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~"Díky za odpověď. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"Zase ty? Jestli tu něco chceš, přihlas se u vedoucí u dveří."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"Doslechl jsem se... od přítele..., že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"Co je tohle za místo?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"Máš potíže? Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #44449 /* ~"Chtěl jsem si vybrat pár zvláštních věcí."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"Potřebuji místo, kde bych se schoval."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"Potřebuji se něco dozvědět o vašem spolku."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"Čeho se snažíš dosáhnout?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"Proč si se stal Anarchistou?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"Nic, hádám. Sbohem."~ */ EXIT
END
