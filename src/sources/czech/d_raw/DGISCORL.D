// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~Vidíš obchodníka s mohutným strništěm rudých, už dost prošedivělých vousů. Má na sobě několik vrstev jasně barevných rób, takže vypadá jako vlajka s rukama a nohama. Trochu se třese.~ */
  IF ~~ THEN REPLY #20656 /* ~"Zdravím."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"Jsi Giscorl?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Ignoruješ obchodníka a vydáš se prohlédnout si tržiště.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"Já, Giscorl." Pokloní  se a rozpaží své třaslavé ruce, přičemž si všimneš, že celé jeho paže jsou jen zkroucená a začernalá tkáň... asi zle popálená.~ */
  IF ~~ THEN REPLY #21070 /* ~"Uch, co to prodáváš?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"Uch... jak sis poranil své paže?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"Nechtěl jsem tě rušit. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Giscorl se k tobě otočí. "Já, Giscorl." Pokloní  se a rozpaží své třaslavé ruce. "Já, Giscorl."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"Mohu vidět co máš?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"Eh, co děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"Uch... jak sis poranil své paže?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"Tak nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"Giscorl kupuje látku." Giscorlův hlas odtikává jako hodiny, je plochý a přesně odměřený. "Giscorl prodává látku, pere látku, vyspravuje látku a..." Gestikuluje ve všech těch vrstvách oblečení. "...nosí látku."~ */
  IF ~~ THEN REPLY #21079 /* ~"Mohu vidět co máš?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"Uch... jak sis poranil své paže?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"Rozumím. Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~


"Dneska nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Vypadá to, že tě Giscorl neslyšel; odpovídá pouze svou naučenou monotónní mluvou: "Giscorl prodává látku, pere látku, vyspravuje látku a..." Gestikuluje ve všech těch vrstvách oblečení. "...nosí látku."~ */
  IF ~~ THEN REPLY #21083 /* ~"Mohu vidět, co máš?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"Ptal jsem se: jak sis poranil své paže?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"Rozumím. Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"Dneska nic, sbohem."
~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Giscorl jen monotónně brblá. "Giscorl k-kupuje látku, p-prodává látku, p-pere látku, v-vyspravuje látku, a..." Zase na sebe ukazuje, ale jeho ruce se tak třesou, že nemůže ani dokončit větu. ~ */
  IF ~~ THEN REPLY #21087 /* ~"Nevadí. Mohu vidět co máš?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"Aha, no nic. Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"Nechtěl jsem tě rušit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Giscorl zamrká. "Vypranou látku?"~ */
  IF ~~ THEN REPLY #21090 /* ~"Ano, Mebbeth... Hadrníkovo náměstí?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"Eh... hadr.. hadrník, vyzvednout?" Zamyšleně si poklepává prsty, jako kdyby něco počítal. "Vím. Vzpomínám si." Vztyčí třesoucí se ukazovák, jako kdyby ti naznačoval, abys počkal.~ */
  IF ~~ THEN REPLY #21091 /* ~Počkej až přinese prádlo.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~Vrací se zpět se splácnutou hromádkou zelených hadrů, tenkých jako papír, ale tak slisovaných, že spíš připomínají svou tuhostí dubovou fošnu. Hadry jsou tak nasáklé a zatvrdlé zelenkavým škrobem, že by potřebovaly snad věky máčet, než by zase povolily.~ */
  IF ~~ THEN REPLY #21092 /* ~"Haha, jak dlouho jsi to pral?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"Giscorl pere látku, škrobí látku každý pátý den, pere látku, škrobí látku každý pátý den." Očka zamrkají. "Giscorl pere již mnoho let. Vždy škrobí látku pátý den. Giscorlův rituál."~ */
  IF ~~ THEN REPLY #21093 /* ~"Ale vždyť jsou skoro zničené."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"Prát látku. To je Giscorlův rituál." Jeho hlas je dutý, skoro jako zombie. *Musím* škrobit látku každý pátý den."~ */
  IF ~~ THEN REPLY #3014 /* ~"Jaký má smysl dělat to každých pět dní, když to není třeba... no nic, tak mi to podej."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"Dej látku." Mávne rukou a nacpe ti ty hadry. Jsou těžké... skoro jak paleta cihel.~ */
  IF ~~ THEN REPLY #21095 /* ~"Vezmu je zpět Mebbeth. Sbohem."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~Přelétl jsi zrakem nabízené věci a on mávl rukou. "Já, Giscorl."~ */
  IF ~~ THEN REPLY #21097 /* ~"Vlastně se chci podívat na něco jiného..."~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"Uh... jak sis poranil své paže?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"Aha, no nic. Jsem zde, abych vyzvedl něčí prádlo... poslala mě Mebbeth... porodní bába... Hadrníkovo náměstí?"~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"Dnes už nic. Sbohem."~ */ EXIT
END
