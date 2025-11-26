// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~Vidíš muže průměrné postavy oblečeného do temně černého roucha. Jeho ulízané vlasy a elegantní bradka dokreslují jeho pohledné rysy. Když si všiml tvého příchodu, odložil knihu, do které něco psal, a dlouhými kroky k tobě sebevědomě přikročil, s úsměvem na rtech. "Imponující... Musím se přiznat, že jsem nikdy nečekal, že by ses dostal až tak daleko."~ */
  IF ~~ THEN REPLY #32476 /* ~"Jsem rád, že jsem tě nezklamal. To ty jsi zodpovědný za ty chodící mrtvé?"~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"Odporný Nekromancere! Přišel jsem ukončit znesvěcení, které způsobuje tvá přítomnost na tomto místě!"~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"Promiň, že tě ruším. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"Kdo jsem, to tebe zajímat nemusí. Co chci, to je otázka, která by pro tebe měla být nejdůležitější." Během řeči si tě prohlíží od hlavy k patě, jako bys ho nějakým způsobem fascinoval.~ */
  IF ~~ THEN REPLY #32479 /* ~"Dobrá tedy... co chceš?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"Pleteš se. Co chceš, mě nezajímá. Jsem tady, abych tě zabil."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"To nic. Budu muset jít."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~Ustoupil a nakrčil obočí. "Chci... tvou krev."~ */
  IF ~~ THEN REPLY #32482 /* ~"To je nějaká výhrůžka?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"To je ale náhodička... já jsem si totiž přišel pro *tvou* krev! Připrav se na smrt!"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"Uh... nemám zájem. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~Muž otevřel ústa, jako by chtěl odpovědět, pak se ale náhle zarazil. Po tváři se mu rozlévá zlý úšklebek a začíná se smát. "Ano... předpokládám, že ano." Směje se ještě více, nejspíš ho jeho vlastní soukromý žertík docela pobavil. Všiml sis, že se jeho ruce začínají pohybovat. Pomalu poletují dopředu a dozadu, vytvářejíce ve vzduchu složité vzory.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"Vážně? No, v tom případě snaž se ze všech sil." Domýšlivě se usmál a pozdvihl ruce. Pomalu začínají vykreslovat ve vzduchu složité vzory.~ */
  IF ~~ THEN REPLY #32485 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"Obávám se, že už nikam nepůjdeš."  Domýšlivě se usmál a pozdvihl ruce. Pomalu začínají vykreslovat ve vzduchu složité vzory.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
