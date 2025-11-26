// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MODMITE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~MODMITE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~Этот магический жезл позволяет вызывать модронских констуктов для сражения с врагами. Призываются от одного до трех конструктов. Они будут бесстрашно сражаться до самой смерти.~ */
  IF ~~ THEN REPLY #64182 /* ~Использовать.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Отложить.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~Этот магический жезл позволяет вызывать модронских констуктов для сражения с врагами. Призываются от одного до трех конструктов. Они будут бесстрашно сражаться до самой смерти.~ */
  IF ~~ THEN REPLY #64185 /* ~Использовать.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Отложить.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~Этот магический жезл позволяет вызывать модронских констуктов для сражения с врагами. Призываются от одного до трех конструктов. Они будут бесстрашно сражаться до самой смерти.~ */
  IF ~~ THEN REPLY #64189 /* ~Использовать.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Отложить.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~Жезл кажется холодным и безжизненным в твоих руках. Возможно, в этом месте он не будет работать.~ */
  IF ~~ THEN REPLY #67151 /* ~Отложить его.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~Жезл кажется холодным и безжизненным в твоих руках. Возможно, в этом месте он не будет работать.~ */
  IF ~~ THEN REPLY #67153 /* ~Отложить его.~ */ EXIT
END
