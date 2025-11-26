// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"Zaplatils zabitím tý děvky Krystall. Pro šéfa je to dobrý, ale já mám stejně chuť ti jednu... No... vypadni vodsaď."~ */
  IF ~~ THEN REPLY #34569 /* ~"Dojemné. Sbohem."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"Brzo od tebe budeme chtít prachy. Prachy nebo krev. Promluv si s výběrčím - a nepokoušej se tomu uniknout. Jasný?"~ */
  IF ~~ THEN REPLY #34571 /* ~"To si nemyslím."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"Dobrá tedy."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"Zaplatils, tak zmiz, jo? Už tě tu nepotřebuju."~ */
  IF ~~ THEN REPLY #34575 /* ~"No jo. Sbohem."~ */ EXIT
END
