// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~Tento muž velice připomíná Paličku Kilnna, samozřejmě bez hýbající se kůže a jiných zajímavých mutací. "Opět zdravím pane. Co pro tebe já, Palička, můžu udělat?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"Doufal jsem, že dostanu nějaké léčivé lektvary."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"Rád bych si něco koupil..."~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"Vlastně jen procházím. Sbohem Kilnne."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~Vidíš Kilnna, alchymistova pomocníka. "Opět zdravím, potřebujete něco'?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"Doufal jsem, že dostanu nějaké léčivé lektvary."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"Rád bych si něco koupil..."~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"Vlastně jen procházím. Sbohem Kilnne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"Už si mluvil s Paličkou? Von pro tebe něco udělá."~ */
  IF ~~ THEN REPLY #42086 /* ~"Promluvím si s ním. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"Dělám celej den ve skladišti... nejsem ten pravej pro tvý votázky."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"Starý inženýr ze slévárny mně řekl, že potřebuje vzorek mojí krve a kůže, aby mohl rozfungovat jeden stroj. Potřebuju, abys to pro mě zařídil."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"Můžu si teda něco koupit?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"Už si mluvil s Paličkou? Von pro tebe něco udělá."~ */
  IF ~~ THEN REPLY #42092 /* ~"Promluvím si s ním. Sbohem."~ */ EXIT
END
