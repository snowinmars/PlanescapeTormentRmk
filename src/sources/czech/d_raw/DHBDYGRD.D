// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Gigantický muž má na sobě obrovské zdobené rudé brnění. Dívá se na tebe s opatrností, ale beze strachu.~ */
  IF ~~ THEN REPLY #31238 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~Jeho hluboký hlas se rozléhá v jeho helmě. "Zdravím tě, občane. Jsem Samozřejmost... bodygard Přičinlivosti, Čvrté Magistrátky Čtvrti. Musíš mě omluvit, mé povinnosti jsou u jejího boku. Sbohem."~ */
  IF ~~ THEN REPLY #31240 /* ~"Jen moment... Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #31242 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~Gigantický muž má oblečené ohromné zdobené rudé brnění. Skrze průzor jeho helmy vidíš podezřívavý pohled..~ */
  IF ~~ THEN REPLY #31243 /* ~"Zdravím..."~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~Náhle pozvedl zbraň. "Je to, jak jsem si myslel. Ty jsi on!" Zaútočil na tebe a přivolává další strážné.~ */
  IF ~~ THEN REPLY #31245 /* ~Braň se.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Uteč.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
