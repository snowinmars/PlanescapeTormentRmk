// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~Vidíš muže ve starých roztrhaných šatech. Když se k němu blížíš, udělá okliku, aby se ti vyhnul a pokračuje v chůzi dál. ~ */
  IF ~~ THEN REPLY #1549 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"Hej! Zadrž na chvíli!"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~Muž tě ignoruje a začíná zrychlovat chůzi.~ */
  IF ~~ THEN REPLY #1551 /* ~"Pane? "~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"Hej! Zadrž na chvíli!"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~Otočí se, letmě se podívá nalevo a napravo od tebe, jako kdyby hledal, jestli s tebou nejsou tví přátelé. Vytáhne dýku. "Nejlíp bys udělal, kdybys mě nechal bejt, nebo budeš nosit tuhle ocel 'mezi svejma žebrama!"~ */
  IF ~~ THEN REPLY #1554 /* ~"Buď zticha. Právě chci položit otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Napadni ho.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~Posmívá se. "Sem si jistej, že jo a pro takový jako seš ty nemám žádný vodpovědi. Jdi do prdele!"~ */
  IF ~~ THEN REPLY #1558 /* ~Napadni ho.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"Pak tedy sbohem."~ */ EXIT
END
