// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~Tu aperçois un pentacle vide. L'air y est sec et froid. Un sentiment très maléfique imprègne cette zone.~ */
  IF ~~ THEN REPLY #54185 /* ~Laisse-le tranquille.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~Examine le parchemin de Dona Quisho. ~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~L'air s'assombrit pendant un instant et tu ressens comme du vent souffler dans ta tête et ton cœur. Lorsque ta vision s'éclaircit, un immense fiélon se tient devant toi !~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END
