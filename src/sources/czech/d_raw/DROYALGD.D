// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~Obrovský kostlivec - mnohem větší než průměrný člověk - má na sobě zdobené bronzové brnění, pokryté složitými rytinami. Když ses přiblížil, na chvíli k tobě sklopil zrak, ale pak se zase dívá přímo před sebe.~ */
  IF ~~ THEN REPLY #51342 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~Nechej gigantického kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"Zdravím tě, Živý," zaduněl hlas. "Jsem zde jako Královská Stráž jeho lordstva a milosti, Tichého Krále. Musím tě požádat, abys mě nerušil od mého úkolu svými otázkami."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"Proč potřebuje stráž? Stejně je mrtvý..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"Proč potřebuje stráž? Stejně je mrtvý..."~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"Mohl bys mi aspoň říct, kdo jsi... nebo kdo jsi byl?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~Gigantický kostlivec se zavrtěl, rozhlédl se kolem a pak na tebe zavrčel skrze zatnuté zuby. "Ticho, ty hlupáku! Řekni to ještě jednou a už nebudeš patřit mezi Živé!"~ */
  IF ~~ THEN REPLY #51416 /* ~"Fajn. Mohl bys mi aspoň říct, kdo jsi... nebo kdo jsi byl?"~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"Tichý Král je více než jenom mrtvola, Živý. I v těch dávných dobách, kdy k nám mluvil, byl *více* než jenom skvělý člověk. Tichý Král je *instituce*. Taková, kterou teď, stejně jako posledních dvě stě let, bráním a budu bránit. Jeho ohromná síla vůle žije dále prostřednictvím hlasů Hargrimma a Ošuntělé Mary. A dokud se mé kosti nezmění na prach pod botami mocnějšího nepřítele, bude to tak navždy." ~ */
  IF ~~ THEN REPLY #51419 /* ~"Aha. Kdo jsi... nebo byl?"~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"Jsem ve smrti, stejně jako jsem byl za živa, jeden z Devadesáti Devíti Synů Západních Hor, kteří byli založeni poté, co byli členové Amaharu odděleni a svrhnuti na povrch Ith'hyru. Přísahou vázaní k obraně naší královny jsme se ztratili v tomto světě, když byla naše země a naše paní zničená rozzuřeným polobohem, bratrem Amahara. Mnoho z nás putuje po sférách, ale někteří z nás - jako já - jsme se rozhodli zůstat v Sigilu. Když jsem zemřel, skončil jsem zde a později jsem se probudil ve stavu, v jakém jsi mě nyní nalezl. Pak jsem si vybral nového pána, kterého budu bránit. Tichého Krále."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"Proč ho bránit? Stejně je mrtvý..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"Proč ho bránit? Stejně je mrtvý..."~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"Aha. Sbohem."~ */ EXIT
END
