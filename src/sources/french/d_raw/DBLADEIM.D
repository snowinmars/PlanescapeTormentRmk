// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~Cette lame étrange est une arme hideuse qui évoque le croisement entre une dague en fer et une massue en cuivre. Des veines noires rampent à la surface du métal, et le tranchant paraît si émoussé qu'il aurait du mal à couper le beurre. Elle est tiède au toucher.~ */
  IF ~~ THEN REPLY #55071 /* ~Laisse la lame tranquille.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~Cette arme étrange est très laide. On dirait une sorte de dague de fer combinée à une massue de cuivre. Quand tu l'as prise pour la première fois, elle était inerte mais, maintenant, elle est veinée d'artères noires qui courent sur sa surface. Elle est tranchante comme un rasoir. Dans ta main, la lame palpite avec énergie, comme un sorte de cœur malade..~ */
  IF ~~ THEN REPLY #63969 /* ~Tranche-toi la gorge avec l'arme.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Rengaine l'arme.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~Tu portes la lame à ta gorge et son tranchant s'enfonce dans ton cou…~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Tout devient noir…~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Tout devient noir…~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
