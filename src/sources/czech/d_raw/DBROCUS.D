// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~Mile se tvářící starší muž se k tobě otočil a slušně ti kývl na pozdrav. "Zdravím... mohu ti nějak pomoci?"~ */
  IF ~~ THEN REPLY #2888 /* ~"Ano, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~Starý muž se otočil a usmál. "Zase jednou zdravím. Můžu pro tebe něco udělat?"~ */
  IF ~~ THEN REPLY #39383 /* ~"Ano, mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"Jistě, jen se ptej, mladý muži."~ */
  IF ~~ THEN REPLY #39386 /* ~"Co tady děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"Hledám Vivianinu vůni... nevíš, kde by mohla být?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"Hledám Marissin závoj... nevíš, kde by mohl být?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš, kde je desátá studentka?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~Starý muž se příjemně usmál. "Většina mužů se zde, mladíku... baví s hodnými dámami toho zařízení."~ */
  IF ~~ THEN REPLY #39396 /* ~"A kterou z nich bys mi mohl doporučit?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~Pohladil si bradku a zamyšleně se zamračil. "Řekl bych... ne, to ne. Víš, mladý muži, nejsem si jistý, co vlastně hledáš. Kdybych věděl, jaká konverzace je pro tebe nejzábavnější, možná bych ti mohl dát návrh, takto ale nemohu."~ */
  IF ~~ THEN REPLY #39400 /* ~"To je v pořádku. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"No, tak bych si s nimi asi měl jít promluvit sám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~Starý muž se usmál, v očích se mu zajiskřilo. "Mohu ti říct, že toto je to *nejúžasnější* zařízení! Dámy zde jsou tak oh... čarovné, dokonce i ta Kimasxi s jedovatým jazýčkem, alespoň jejím vlastním zvláštním způsobem. Ale pokud chceš vědět více, mladý pane, promluv si s Fall-From-Grace... jako provozovatelka Nevěstince ti může povědět mnohem více než já."~ */
  IF ~~ THEN REPLY #39403 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"Ah, ano... to nádherné stvoření bude Ecco. Sladká dívenka... tak snadno se s ní mluví. Nejenom proto, že je tichá, ale protože na ní *něco* je." Šťastně si povzdychl. "Nejsem si ale jistý, *proč* nemluví."~ */
  IF ~~ THEN REPLY #39406 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"Ravel?" Starý muž nakrčil obočí. "Ravel Puzzlewell, noční čarodějnice? To je znepokojivé! Ne, o ničem takovém jsem neslyšel. Jenom nějaké povídačky, zřejmě nepravdivé."~ */
  IF ~~ THEN REPLY #39409 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"Ne, to ne. A obávám se, že i kdybych ji měl přímo pod nosem, neuvědomil bych si to... o čich už jsem přišel skoro úplně, víš." Poklepal se po nose. "Je to smutné, já vím, ale všichni stárneme. Říkali mi, že Vivian vydává vždy tu nejnádhernější vůni..."~ */
  IF ~~ THEN REPLY #39412 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~Zavrtěl hlavou. "Vím, o kterém závoji mluvíš... jednou nebo dvakrát jsem Marissu potkal mimo Nevěstinec, vždy měla svůj závoj... ale kde je teď, to skutečně netuším."~ */
  IF ~~ THEN REPLY #39415 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"Vím jenom málo kromě legend, které slyšelo každé dítě od svých rodičů - je to noční čarodějka, ale obzvláště zlá, která byla ze Sigilu vyhnána před dávnými, předávnými časy."~ */
  IF ~~ THEN REPLY #39418 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~Starý muž se zamračil a zatahal se za bradku. "Pokud *je* tady desátá studentka, mladíku, velice rád bych se s ní setkal! Ale pokud vím, je jich zde jenom devět."~ */
  IF ~~ THEN REPLY #39421 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
