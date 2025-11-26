// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~Vidíš atraktivní mladou ženu, oděnou do pěkných šatů. Bezcílně bloudí po okolí, jen se dívá na zboží.~ */
  IF ~~ THEN REPLY #37171 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~Vzhlédne, podívá se na tebe a pak se zamračí. "Nebavím se s cizinci. A když se na tebe podívám, patříš do této kategorie... Zmizni mi z očí, otrapo."~ */
  IF ~~ THEN REPLY #37173 /* ~"Mám ještě otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"Dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Ještě více se zamračila a dala si ruku na ústa. "Je mi to jedno, otrapo. Nech mě být, nebo zavolám stráže!"~ */
  IF ~~ THEN REPLY #67883 /* ~"No tak pojďte..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~Ukáže ti neslušné gesto. "Jak chceš... Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #37178 /* ~Odejdi před tím, než přijdou.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~Žena se k tobě otočí a ihned tě pozná. Pak se zamračí. "Co mám udělat, abys mě nechal být?"~ */
  IF ~~ THEN REPLY #37179 /* ~"Pokud by bylo možné odpovědět mi na nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"Promiň, musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~Ukáže ti neslušné gesto. "Neznám odpověď na tvoje bláznivé otázky. Najdi si mudrce." Ukazuje ke dveřím. "Teď odejdi, nebo zavolám stráže!"~ */
  IF ~~ THEN REPLY #37181 /* ~"Přivolej je..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"Tak dobře, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~Žena se k tobě otočí a ihned tě pozná. Pak se zamračí. "Co mám udělat, abys mě nechal být?" Vzdychne si a zvedne znechuceně ruce. "Už jednou jsem zavolala stráže, a můžu znovu... Ať už je to k něčemu, nebo ne."~ */
  IF ~~ THEN REPLY #37183 /* ~"Přivolej je..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"Tak dobře, sbohem."~ */ EXIT
END
