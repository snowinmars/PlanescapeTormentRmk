// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~Kostlivec se k tobě s chřestěním obrátil. Většinu jeho kostí drží pohromadě kožené pásky. Má na sobě navlečenou zelenou tuniku potřísněnou vínem.~ */
  IF ~~ THEN REPLY #2567 /* ~"Hezká tunika. Fakt."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~Použij na těle svou schopnost Kosti-Vyprávějte~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~Prozkoumej kostlivce.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~Prozkoumej kostlivce.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"Co tenhle kostlivec, Morte? Nechceš ho použít jako tělo?"~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~Kostlivec neodpovídá.~ */
  IF ~~ THEN REPLY #2571 /* ~"Skvěle jsme si pokecali, kostro. Buď zdráv."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~Kostlivec neodpovídá. Možná se mu nechce. Anebo nemůže.~ */
  IF ~~ THEN REPLY #2573 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Tato kostra je v dobrém stavu; kosti prošly bělící lázní a nenesou na sobě ani stopy po užívání původním majitelem.~ */
  IF ~~ THEN REPLY #7074 /* ~Nechej kostru na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~Podobně jako s kostrami v Márnici, někdo si dal tu práci a svázal kosti této kostry koženými popruhy, umístil je tak, aby kopírovaly svaly a šlachy u živoucích těl. Narozdíl od koster v Márnici však zde nejsou vidět žádné šrouby... nevidíš, jak jsou klouby propojeny. Souhrnně vzato, kostra je v dobrém stavu; kosti prošly bělící lázní a nenesou na sobě ani stopy po užívání původním majitelem.~ */
  IF ~~ THEN REPLY #7075 /* ~Nechej kostru na pokoji.~ */ EXIT
END
