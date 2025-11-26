// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~Atraktivní mladá žena se mile usmála. "Můžu ti s něčím pomoci, pane?"~ */
  IF ~~ THEN REPLY #49533 /* ~"Jak bych se mohl dostat do některé z těch komnat?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"Můžu si zde odpočinout?"~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"Momentálně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"Musel bys být členem Společnosti vjemu, pane, přijatý Splinterem. Je uvnitř přímo u vchodu do Haly, pokud bys s ním chtěl mluvit." ~ */
  IF ~~ THEN REPLY #49537 /* ~"Mohl bych si zde přesto odpočinout?"~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"Městská hala na večer často pronajímá neobsazené pokoje; samozřejmě by sis tu tedy mohl odpočinout, nějaký by měl být volný. Mám ti ho zamluvit, pane?"~ */
  IF ~~ THEN REPLY #49540 /* ~"Ano, prosím."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"Ne díky. Sbohem."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~Atraktivní mladá žena se mile usmála. "Buď zdráv, pane." Přivřela oko, zalistovala tlustou knihou, zastavila se u na první pohled nahodilé stránce a oko opět otevřela. "Ach... tady je klíč k tvému pokoji..." Podala ti malý klíč. "Nejvýchodnější komnata na tvůj návrat čekala po hodně dlouhou dobu.  Chtěl by sis nyní odpočinout, pane?"~ */
  IF ~~ THEN REPLY #49542 /* ~"Ano, to by se hodilo."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"Ne... ale co jsi myslela tím 'čekala na můj návrat'?"~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"Teď zrovna ne. Sbohem."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~Úřednice se na tebe udiveně podívala. "Moje kniha naznačuje, že toto je tvůj klíček, pane, a že je jím už po hodně dlouhou dobu. Pokud tomu tak není, pak jsem se prostě spletla. Chtěl by sis nyní odpočinout, pane?"~ */
  IF ~~ THEN REPLY #49546 /* ~"Ano, to by se hodilo."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~Atraktivní mladá žena se mile usmála. "Buď zdráv, pane. Chtěl by sis nyní odpočinout?"~ */
  IF ~~ THEN REPLY #49549 /* ~"Ano, to by se hodilo."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END
