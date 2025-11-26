// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~Tento muž velice připomíná Paličku Kilnna, samozřejmě bez hýbající se kůže a jiných zajímavých mutací. "Opět zdravím pane. Co pro tebe já, Palička, můžu udělat?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"Doufal jsem, že dostanu nějaké léčivé lektvary."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"Chci si něco koupit..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"Jen tak procházím. Sbohem Paličko."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"Jasně vodměna, jo? Tak se na to mrknem... zatím sem zamozřejmě nic nevyrobil... ale budu potřebovat speciální přísady. Hmmm... potřebuji srdéčko cibule, nebo přáškovaný hematit, nebo vlas anděla, nebo nit z aasimonova hávu, nebo krev ze stvoření schopného regenerace, jako třeba trola nebo..."~ */
  IF ~~ THEN REPLY #42056 /* ~"Mé rány se vlastně hojí *velmi* rychle."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~Palička pozvedl obočí. "Opravdu? No pak bych mohl použít vaši krev. Prosím... mohl byste mi dát vzorek?"~ */
  IF ~~ THEN REPLY #42058 /* ~Dej mu trochu krve.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~Poté co si nabral trochu krve, se vytratil do zadní části obchůdku. Za chvíli se Palička vrátil s několika věcmi, které vypadají jako zatvrdlé kapky krve. "Pokud je položíte na jazyk, tak tyhle Amulety ze sražené krve vyléčí vaše zranění a na nějakou dobu zvýší vaší odolnost před utržením dalších."~ */
  IF ~~ THEN REPLY #42060 /* ~"Díky Paličko. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"Přijmi moje díky. Rád bych si teď něco koupil..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"Sbohem Paličko a díky."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"Přijměte mou nejponíženejší omluvu pane, ale dokážu mluvit jenom o obchodu. Jak jste si již mohl všimnout, sotva kdy odsud odcházím. Bude lepší, když najdete něko jiného, kdo vám bude schopný odpovědět."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"Starý inženýr ze slévárny mě řekl, že potřebuje vzorek mojí krve a kůže aby mohl rozfungovat jeden stroj. Potřebuju abys to pro mě zařídil."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"Rád bych si něco koupil..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"Nuže dobrá." Pravou rukou vzal ostrou čepel; jeho levá uchopila sklenici s širokým hrdlem. Odřízl z tvého předloktí maly kousek kůže, vložil ji do lahvičky, společně s pár kapkami krve. Pak ti na ruku připlácl kousek obvazu a podal ti lahvičku. "Potřebujete ještě něco pane?"~ */
  IF ~~ THEN REPLY #42068 /* ~"Ano... Rád bych něco koupil."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"Ne to je vše. Díky a sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~Vidíš alchymistu Paličku. "Opět zdravím pane. Co pro vás můžu udělat?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"Doufal jsem, že dostanu nějaké léčivé lektvary."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"Rád bych si něco koupil..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"Vlastně jen procházím. Sbohem Paličko."~ */ EXIT
END
