// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~Ohromné zařízení duní energií. Vypadá to jako obrovská květina, vytvořená uměle, ozdobená kovovými obrubami a baňkami. Spousta knoflíků, přístrojů a průduchů tě dokonale mate.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Sabotuj odpalovací mechanismus v základně stroje.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Hrej si s ovládáním..~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Nechej to být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~Odpalovací mechanismus vypadá nebezpečně nestabilně. Jediným škubnutím jsi ho uvolnil z uložení. Změna v cyklu vibrací stroje je jemná, ale tvé ucho jasně rozpoznalo, že se od předchozího stabilního bzučení liší. Měl bys raději odejít.~ */
  IF ~~ THEN REPLY #66191 /* ~Odejdi.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~Neměl jsi žádný úspěch, nic jsi nezměnil.~ */
  IF ~~ THEN REPLY #66192 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~Mocné bzučení stroje začíná přidávat na intenzitě. Měl bys raději rychle odejít, nebo tě exploze stroje roztrhá na kousky.~ */
  IF ~~ THEN REPLY #66193 /* ~Odejdi.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
