// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRODMM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRODMM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~Tato magická hůl umožní uživatelovi vyvolat konstrukt Modrona, který mu pomůže v boji s nepřáteli. Vyvoláni budou jeden až tři konstrukti. Konstrukti budou bojovat bez bázně až do své smrti.~ */
  IF ~~ THEN REPLY #64182 /* ~Použít.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Dát pryč.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~Tato magická hůl umožní uživatelovi vyvolat konstrukt Modrona, který mu pomůže v boji s nepřáteli. Vyvoláni budou jeden až tři konstrukti. Konstrukti budou bojovat bez bázně až do své smrti.~ */
  IF ~~ THEN REPLY #64185 /* ~Použít.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Dát pryč.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~Tato magická hůl umožní uživatelovi vyvolat konstrukt Modrona, který mu pomůže v boji s nepřáteli. Vyvoláni budou jeden až tři konstrukti. Konstrukti budou bojovat bez bázně až do své smrti.~ */
  IF ~~ THEN REPLY #64189 /* ~Použít.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Dát pryč.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~Tyč je v tvých rukou chladná a neživá. Možná že v této oblasti nebude fungovat.~ */
  IF ~~ THEN REPLY #67151 /* ~Odlož to.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~Tyč je v tvých rukou chladná a neživá. Možná že v této oblasti nebude fungovat.~ */
  IF ~~ THEN REPLY #67153 /* ~Odlož to.~ */ EXIT
END
