// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17378 /* ~Bezzubá stará bába páchne rybinou a slanou vodou vůbec. Pozorně sleduje tvůj příchod a věnuje ti široký úsměv, jemuž dominuje růžová. "Dáš si rybu, synu? A co takhle rybí hlavu?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22064 /* ~"Mebbeth říkala, že prodáváš inkoust. Poslala mě nějaký koupit."~ */ GOTO 8
  IF ~~ THEN REPLY #17386 /* ~"Tvůj syn? To sotva."~ */ GOTO 2
  IF ~~ THEN REPLY #17387 /* ~"Vydržím bez ryb, ale položil bych ti pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #17388 /* ~"Co vlastně nabízíš, můžeš být kapku konkrétnější?"~ */ GOTO 6
  IF ~~ THEN REPLY #17389 /* ~"Díky, ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17379 /* ~Stará ženština tě počastuje širokým bezzubým úsměvem. "Co takhle rybu, mé dítě? Nebo spíš rybí hlavu?" Intenzivní smrad z ryb ji obklopuje jako závoj.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22069 /* ~"Mebbeth říkala, že prodáváš inkoust. Poslala mě nějaký koupit."~ */ GOTO 8
  IF ~~ THEN REPLY #17390 /* ~"Zvládnu to i bez ryb, ale rád bych se na něco zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #17391 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #17380 /* ~"Ó ano, jistě. Nejsi než dítě, když to srovnáme s mými lety. Ha ha, klučina..."~ */
  IF ~~ THEN REPLY #17392 /* ~"Podle mého se pleteš. Jen se podívej zblízka."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17381 /* ~Přišourá se až k tobě; zápach rybiny tě málem složil na kolena. Nejprve úkosem pohlédne na tvou tvář, zamračí se, poté se šilhavě zahledí do tvých očí. V překvapení sebou trhne a uvolá: "Můj ty světe! Kolik jenom jar tyto zraky již *spatřily* ?"~ */
  IF ~~ THEN REPLY #17394 /* ~"No já nevím... kolik si tak myslíš?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17382 /* ~"Nevím, nemůžu říct. Příliš, řekla bych. Ale na tom nesejde!" Nakloní se blíže, aby ti mohla pošeptat. "Nestojí to za to, abychom kvůli tomu uváděli kolemjdoucí do rozpaků; bude to naše malé tajemství." Dál pokračuje již normálním tónem: "Takže, rybičku, mé dítě? He He!" Načež ti uštědří přátelský štulec.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22076 /* ~"Mebbeth říkala, že prodáváš inkoust. Poslala mě nějaký koupit."~ */ GOTO 8
  IF ~~ THEN REPLY #17395 /* ~"Já si tedy rybu nedám, nicméně jsem na něco zvědavý..."~ */ GOTO 5
  IF ~~ THEN REPLY #17396 /* ~"Cože to vlastně nabízíš?"~ */ GOTO 6
  IF ~~ THEN REPLY #17397 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.1 4.1 6.2 7.1
  SAY #17383 /* ~Zavrtí svou malou, vrásčitou hlavou. "Nemám odpovědi... pouze ryby."~ */
  IF ~~ THEN REPLY #17401 /* ~"Výborně. Cože to vlastně nabízíš, můžeš být drobet konkrétnější?"~ */ GOTO 6
  IF ~~ THEN REPLY #17402 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 4.2 5.0
  SAY #17384 /* ~"No přece ryby, můj nedovtipný chlapče! Všechny druhy ryb - a samozřejmě pro chuďase, co si nemůžou dovolit koupit celou, tu mám rybí hlavy. Drobné hlavičky! Ha ha!"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22077 /* ~"Mebbeth říkala, že prodáváš inkoust. Poslala mě nějaký koupit."~ */ GOTO 8
  IF ~~ THEN REPLY #17403 /* ~"Odkud vlastně ty ryby bereš?"~ */ GOTO 7
  IF ~~ THEN REPLY #17404 /* ~"Nemám ryb zapotřebí, jen bych se rád na něco pozeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #17405 /* ~" Nepotřebuju žádné ryby - ani jejich hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #17385 /* ~"Dováží je do Sigilu ze všech možných sfér, mé dítě! Copak, dal by sis? Pokud nemáš dost v kapse, můžeš si vzít samotnou hlavu..."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22078 /* ~"Mebbeth říkala, že prodáváš inkoust. Poslala mě nějaký koupit."~ */ GOTO 8
  IF ~~ THEN REPLY #17406 /* ~"Nechci žádnou rybu, to, co chci, jsou odpovědi na mé otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #17407 /* ~" Nepotřebuju žádné ryby - ani jejich hlavy, ať to beru z kterékoliv strany. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0 4.0 6.0 7.0
  SAY #22065 /* ~"Inkoust?" Pochichtává se. "Ne, pane, neprodávám žádnej ingoust, já prodávám jen ryby..."~ */
  IF ~~ THEN REPLY #22070 /* ~"Seš si jistá? Mebbeth... porodní bába z Hadrníkova náměstí... popiš ji podrobnějc."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",7)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #22066 /* ~"Heh! Dobře, Kossah-Jai bylo mé dívčí jméno a jméno mé babičky, takže je to jedna z nás... víš, vobě už jsou zapsaný v Knize mrtvejch, takže jenom *tahle* Kossah-Jai má význam. Žádnej nápad, co je zač... porodní bába na Hadráku, řikáš?" Na chvíli se zamyslí. "Neznám ji, neznám."~ */
  IF ~~ THEN REPLY #22071 /* ~"Takže... nemáš žádný inkoust? Dobrá, Nemohu říct, že to je tak velké PŘEKVAPENÍ. Proklínám Mebbeth, že mě nechá běhat v kruhu-"~ */ GOTO 10
  IF ~~ THEN REPLY #22072 /* ~"Dobrá, tedy. Řekla mi, že bys mi mohla pomoci, ale když ne v tomhle případě, nevadí."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22067 /* ~"Hele počkej... kámoši porodní báby nemůžou bejt všici špatný. Vim, jak bys moh´ dostat ingoust... ale možná to nebude ten, kerej hledáš... ingoust, vo kerym mluvim, krvácí z žaber ryby *brogota-fin,* jasný."~ */
  IF ~~ THEN REPLY #22073 /* ~"Tahle *brogota-fin*... krvácí inkoust?"~ */ GOTO 11
  IF ~~ THEN REPLY #22074 /* ~"Ale ty tuhle *brogota-fin* asi nemáš, správně?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #22068 /* ~Zamračí se. "Víš... věc je v tom, že ta ryba nejni k *jídlu*, má příšernou chuť, vopaří jazyk... můžeš se zeptat Meir'am, její sudy s rybama najdeš dole jižnější cestou." Chichotá se. "Možná, že jednu z ryb, co potřebuješ, má na *svym* klacku..."~ */
  IF ~~ THEN REPLY #22075 /* ~"Pujdu se teda po ní kouknout jinam. Sbohem."~ */ JOURNAL #21903 /* ~Kossah-Jai, jedna z rybářek na tržišti, mi řekla, že zná jeden způsob, jak získat inkoust pro Mebbeth, je to z ryby *brogota-fin,* nicméně ona je neprodává. Řekla mi, ať zkusím Meir'am, další rybářku, co prodává na ulici jižně od tržiště.~ */ EXIT
END
