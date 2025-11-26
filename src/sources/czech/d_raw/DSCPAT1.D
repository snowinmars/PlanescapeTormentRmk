// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Vidíš muže silně páchnoucího alkoholem. "Jo? CO chceš, hm?" Naklonil se blíž a prohlédl si tě od hlavy k patě. "Vypadá to, že potřebuješ FELČARA!" Hlasitě se zasmál svému ubohému vtipu. Závan alkoholu a natráveného jidla tě skoro složil k zemi.~ */
  IF ~~ THEN REPLY #3372 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"Hledám deník. Neviděl jsi nějaký?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~Hledám Sběrače jménem Pharod. Víš o něm něco?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"Viditelně mi nemůžeš pomoct. Měj se."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"No né, dyť je to můj starej přítel, Pan Jizva!" Začne se skrývaně řehtat, nebo se o to alespoň pokusí. V jeho opileckém stavu mu dělá potíže činit cokoliv potichu. "Co pro tebe může starej Fackovač udělat, jizvoune?"~ */
  IF ~~ THEN REPLY #10788 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"Hledám deník. Zdá se, že jsem jej někam založil."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"Já? Já jsem ANDOR!" Zapotácí se na nohou. "Bejval sem taky pekelnej rváč, ale to bylo předtím, než se mě zmocnil chlast. Kámoši mi říkali Fackovač, páč sem byl fakt dobrej, když sem to lidem dělal, ale teď mně říkaj Fackovač, protože mi to dělá spousta ženskejch, když s nima mluvím."~ */
  IF ~~ THEN REPLY #10794 /* ~"To je skvělý. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"To je skvělý... hmm... Andore. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~Na chvíli se zamyslí. "No jestli's ho ztratil v Úlu, je velká šance, že ho má někde ňákej Sběrač. Pořádně se povohlídni po Úlu. Nachází tam všechny druhy věcí. Možná ti můžou pomoct."~ */
  IF ~~ THEN REPLY #10797 /* ~"Dobře. Potřebuji ještě pár odpovědí, prosím."~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"Tohle místo? Doutnající nebožtík. Nejlepší místo na skleničku ve městě. Pokuď ti ovšem neva chlastat vedle jednoho či dvou fiendů. A jestli ti nevadí, když jim vobčas Rudá Smrt poblázní hlavu. Je tady spousta lidí. Je tady spousta zajímavejch věcí. Spousta."~ */
  IF ~~ THEN REPLY #10800 /* ~"Předpokládám, že ty jsi jedna z atrakcí. Odpověz mi ještě další otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"Ten? To je Ignus. Je to nějakej starej trouba mág, co měl úžasnej nápad podpálit celý Úl. Viděl's Uličku nebezpečných zákoutí? To je jeho práce. Skupina čarodějů se dala do kupy a seslali na něj nějakou magii a teďka je hospodskou raritou... hmm... maskotem. Můj bratranec byl jedním z těch čarodějů. Žádnej velkej zázrak jako mág, ale tohohle troubu dostal!"~ */
  IF ~~ THEN REPLY #10803 /* ~"To je skvělý, Fackovači. Odpověz mi ještě na jiné otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"Díky Fackovači. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"Co jako chceš vědět?"~ */
  IF ~~ THEN REPLY #10806 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"Hledám deník. Neviděl's v poslední době nějakej?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"Hledám Sběrače jménem Pharod. Víš o něm něco?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"Pharod? To jméno mi něco říká, ale... ach, sem si jistej, že víš jaký to je, když skončíš s hlavou nalitou chlastem. Prostě si nemůžu vzpomenout. Omlouvám se, jizvo."~ */
  IF ~~ THEN REPLY #10813 /* ~"Dobře. Potom mi odpověz na jiné otázky, jo?"~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"Dobře. Nashle."~ */ EXIT
END
