// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~To dziwne ostrze jest brzydkie. Ukształtowano je tak, że wygląda jak jeden z symboli na twoim lewym ramieniu. Czarne żyły pokrywają powierzchnię metalu, a jego ostrze wygląda tak, jakby nie było w stanie przeciąć nawet masła. Jest nieco ciepłe w dotyku.~ */
  IF ~~ THEN REPLY #55071 /* ~Zostaw ostrze w spokoju.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~To dziwne ostrze jest brzydkie. Ukształtowano je tak, że wygląda jak jeden z symboli na twoim lewym ramieniu. Czarne żyły pokrywają powierzchnię metalu, a jego ostrze stało się niesamowicie ostre. Pulsuje mocno w twoim uścisku, jak chore serce.~ */
  IF ~~ THEN REPLY #63969 /* ~Podetnij sobie nim gardło.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Schowaj broń do pochwy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~Przesuwasz ostrzem po gardle i czujesz jak wgryza się ono w twój kark...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Zapadnij w ciemność...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
