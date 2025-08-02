// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~Ты видишь пустую пентаграмму. Воздух в ней сух и холоден. Все вокруг пропитано ощущением великого зла.~ */
  IF ~~ THEN REPLY #54185 /* ~Оставить его в покое.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~Осмотреть свиток Доны Куишо.~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~На миг все вокруг темнеет, и ты чувствуешь ветер, сквозящий в твоем сердце и голове. Когда твой взор проясняется, перед тобой возвышается огромная нечисть!~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END
