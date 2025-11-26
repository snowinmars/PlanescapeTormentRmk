// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~Diese merkwürdige Klinge ist eine häßliche Waffe, die mehr wie eine verschmolzene Kreuzung aus Eisendolch und Kupferkeule aussieht. Schwarze Adern kräuseln sich über die Oberfläche des Metalls, und die Schneide scheint so stumpf zu sein, daß sie nicht einmal weiche Butter teilen könnte. Sie fühlt sich warm an.~ */
  IF ~~ THEN REPLY #55071 /* ~Laß die Klinge in Ruhe.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~Diese seltsame Klinge ist eine häßliche Waffe. Sie sieht mehr wie eine geschmolzene Mischung aus einem Eisendolch und einer Kupferkeule aus. Als du sie zum ersten Mal hieltest, war sie unbeweglich, aber jetzt ziehen sich schwarze Adern in feinen Linien über sie, und die Klinge ist scharf wie ein Rasiermesser geworden. Die Klinge pulsiert heftig  in deiner Hand, wie ein krankes Herz.~ */
  IF ~~ THEN REPLY #63969 /* ~Schneide mit der Waffe deine Kehle durch.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Stecke die Waffe in die Scheide.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~Du ziehst die Klinge über deinen Hals, und die Schneide beißt sich in dein Fleisch...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Dunkelheit umgibt dich...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
