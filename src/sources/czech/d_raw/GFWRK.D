// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~Pracovník se otočil a utekl od tebe.~ */
  IF ~~ THEN REPLY #5504 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~Tahle osoba tě důsledně ignoruje, když tě stráže vyprovázejí k východu.~ */
  IF ~~ THEN REPLY #5506 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"Slyšel jsem, že blízko těla našli kovářův bodec. Pravdou však je, že jich tu najdeš plno. Vsadím se, že viníkem je Thildon -- ve slévárně nikdy nebylo horšího člověka."~ */
  IF ~~ THEN REPLY #5508 /* ~"Děkuji za pomoc. Ale potřebuji odpovědět na pár otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"V pořádku, to je to, co jsem chtěl vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"Ptej se tedy."~ */
  IF ~~ THEN REPLY #5511 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"Co děláš?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"Kdo je tvůj šéf?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"Proč? Patříš k Hamižným? Já svoje daně platím!"~ */
  IF ~~ THEN REPLY #5516 /* ~"Hamižní? Kdo?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"Ne, byl jsem jen zvědavý. Zůstaňme přáteli."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"Zapomeň na to. Chtěl jsem vědět něco jiného."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"Zapomeň na to."
~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"Vydělávám si svou denní mzdu a chci se zlepšit. Udržuji tohle místo v čistotě. Musím dohlídnout, aby kováři měli dostatek materiálu, když ho potřebují. Dohlížím na to, aby se hotový výrobek dostal tam kam má... jednoduše toto je moje práce."~ */
  IF ~~ THEN REPLY #5521 /* ~"Tak tedy tvoje práce pozůstává jednoduše z čistění a kecání do všeho možného?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"Jasně. Mám ještě nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"OK. Tak se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"Proč? Ty děláš pro něj?~ */
  IF ~~ THEN REPLY #5525 /* ~"Um... ano."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"Děláš si srandu?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"Víš... výběrčí daní? To jsi absolutní hňup? Musím se vrátit k práci." ~ */
  IF ~~ THEN REPLY #5528 /* ~Kašli na to.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"Teď není vhodný čas být přátelský, hlavně když máš šéfa, který ti čumí přes rameno. Teď jsme zaneprázdnění. Můžeme být přátelé, až když skončím s tímhle projektem?"~ */
  IF ~~ THEN REPLY #5530 /* ~"Jasně. Chtěl bych odpovědi na nějaké jiné otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"Pokud se na to chceš dívat takhle. Když jsem se učil tuhle dlouhou řeč, představoval jsem si, že je to test, v němž musím uspět. Můj celý život je vlastně test houževnatosti."~ */
  IF ~~ THEN REPLY #5533 /* ~"Proč se na to nedíváš jako na test bystrosti a neodejdeš?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"Myslíš, že to pomůže?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"Vím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"Tak tedy, on je solí země. Skutečný džentlmen. Bohužel o něm nemůžu říct více dobrých věcí, musím se vrátit k práci. Měj se." Pracovník se otočil a ignoruje další naléhání.~ */
  IF ~~ THEN REPLY #5537 /* ~Jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"Jeden z mnoha mizerných bastardů, na které jsem kdy ve svém životě, bohužel, narazil... a přitom já vyrostl v Úlu mezi skutečnými přemožiteli. Doufám, že brzo zemře... bolestivě a hrůzostrašně. Ale pak zemře taky mnoho z nás."~ */
  IF ~~ THEN REPLY #5539 /* ~"Vím. Mám další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"Už jdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"Odejít za čím? Kdo si mne najme? Systém mi určil, že nejsem vhodný pro jinou než podřadnou práci, protože jsem se narodil v Úlu. Sakra, jsem šťastný, že můžu dělat to, co dělám a nemusím trpět hladem."~ */
  IF ~~ THEN REPLY #5542 /* ~"Oh, prosím tě, můžeš dělat všechno co chceš, je však třeba vložit do toho srdce."~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"To je přesvědčivé. Ale nemyslíš, že bys to mohl dělat lépe?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"Kupodivu, ano. Dává mi naději, že skončím v tomhle, nebo příštím, životě jako lepší člověk. Nemůžu opomenout, že kdybyste jako já museli žrát ze žumpy, těšili byste se i z maličkostí. Nižší třídě tu růže pod nohy nikdo nehází, troubo." Otočil se pryč. "Jdu se vrátit ke své práci. Sbohem."~ */
  IF ~~ THEN REPLY #5545 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"Cože? A pak skončit jako zjizvený zombík, jako ty? Díky, ne. Nevím co jsi provedl a co jsi zač, ale já jsem šťasten takový, jaký jsem. Pomalý postup životem lépe podporuje a naplňuje mou víru. Teď mě, prosím tě omluv, jdu zpět do práce." Otočil se a ignoruje tě.~ */
  IF ~~ THEN REPLY #5547 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"Řekl jsi, že... ty žiješ svůj život a já svůj. Souhlasí? Musím jít pracovat." Otočil se a ignoruje tě.~ */
  IF ~~ THEN REPLY #5549 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"Řeknu ti, že s těmito událostmi, které kolem teď probíhají, si i já těžko uvědomuji co se tu vlastně děje. Je to jako bych nikdy neopustil Úl... jak ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #5551 /* ~"Můžeš mi zodpovědět pár otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"Nemůžeš nijak. Zapomeň na to."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~Vidíš otrhance z Úlu, jak se motá kolem. Nemůžeš ani určit pohlaví tohoto škubana. "Co ode mě chceš?"~ */
  IF ~~ THEN REPLY #5554 /* ~"Jenom pár odpovědí."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"Co chceš?"~ */
  IF ~~ THEN REPLY #5557 /* ~"Jenom pár odpovědí."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"Nic."~ */ EXIT
END
