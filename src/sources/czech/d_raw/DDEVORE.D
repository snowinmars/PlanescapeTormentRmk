// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~Vidíš nízkého muže, oči mu září potlačovanou zlostí. Štěká rozkazy na dělníky. Obrátil se k tobě, naštvaně a netrpělivě. "Co chceš?"~ */
  IF ~~ THEN REPLY #48411 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"Mluvil jsem s Pochmurným Skalpem. Řekl mi, že máš něco, co patří jemu."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"Nic pro tebe nemám, příteli. Nic. A teď mě nech, ať můžu pokračovat v téhle operaci, dobře? Pokud se něco stane, tak se prostě vrať a my se o tebe postaráme, ale prozatím bychom neměli být vidět pohromadě."~ */
  IF ~~ THEN REPLY #48417 /* ~"Dobrá. Sbohem."~ */ JOURNAL #47845 /* ~Hokynář Devore mi řekl, že se mám stavit, když se něco pokazí. Na oplátku jsem souhlasil, že ho nechám o samotě.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"Co, zase ty? Co chceš?"~ */
  IF ~~ THEN REPLY #48419 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"Mluvil jsem s Pochmurným Skalpem. Řekl mi, že máš něco, co patří jemu."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"Jsem Devore. Tohle je moje skladiště. Tohle jsou mí zaměstnanci. A tohle je můj čas, kterým plýtváš."~ */
  IF ~~ THEN REPLY #48425 /* ~"Dobrá. Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~Povzdechl si. "Tohle je skladiště. Skladujeme tu věci - zbraně, zlato, alkohol, látky, jídlo - cokoli, co je třeba. Už jsi někdy slyšel o skladech, ne?"~ */
  IF ~~ THEN REPLY #48428 /* ~"Jistě. Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"Je to město, ve kterém se lidi pokoušejí vydělat si na živobytí. Děláme to tak, že pracujeme, jak můžeme a někdy nás otravuje a vyrušuje dobrodruh, který je přesvědčený, že celé dny jenom čekáme, až za náma někdo přijde položit nám spoustu pitomých otázek."~ */
  IF ~~ THEN REPLY #48431 /* ~"Dobrá, mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"Pochopil jsem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"Pochmurný Skalp? On jako není mrtvý? Když jsem ho naposledy viděl, mířil přímo... oh, chápu. Poslal tě, aby mě donutil dát mu jeho podíl. Nebo o něj hezky poprosit... nebo se snad něco děje s Anarchisty v Sigilu? Vždycky hrál složité hry. Měli jsme tenkrát jedinou šanci... teda, ONI měli, he he... vrazit do něj pár nožů. Půjdu pro jeho věci, hned se vrátím."~ */
  IF ~~ THEN REPLY #48434 /* ~"Pospěš si."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~Povzdychl si. "Co?"~ */
  IF ~~ THEN REPLY #48436 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"Mluvil jsem s Pochmurným Skalpem. Řekl mi, že máš něco, co patří jemu."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~Vrátil se s váčkem mincí a párem brutálně vyhlížejících rukavic. Nervózně se rozhlédl a řekl: "Na, vezmi si to. A teď se seber a vypadni."~ */
  IF ~~ THEN REPLY #48441 /* ~"Mám pro tebe ještě pár dalších otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"Sbohem."~ */ EXIT
END
