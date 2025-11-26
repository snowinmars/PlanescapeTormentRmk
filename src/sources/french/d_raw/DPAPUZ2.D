// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~On dirait que le dabus était en train de réparer ce bâtiment. Plusieurs planches neuves et solides ont été clouées sur les précédentes. Avec l'outil adéquat, on doit pouvoir inverser les réparations.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Utilise le pied-de-biche pour forcer les planches.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~Tu soulèves les nouvelles planches de la façade du bâtiment une à une. Une fois la dernière planche enlevée, le bâtiment émet un grincement bruyant tandis qu'il devient instable sous le poids de sa charpente branlante.~ */
  IF ~~ THEN REPLY #49603 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~La structure délabrée semble au bord de l'effondrement. Plusieurs planches ont été récemment clouées pour renforcer le bâtiment affaissé.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Examine la structure de plus près.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~La structure délabrée semble au bord de l'effondrement. Les planches que le dabus a clouées ont été enlevées, et le taudis a retrouvé son état délabré.~ */
  IF ~~ THEN REPLY #58923 /* ~Pars.~ */ EXIT
END
