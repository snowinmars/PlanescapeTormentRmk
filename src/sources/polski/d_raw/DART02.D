// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~Masywny róg z wykutego ołowiu, owinięty w mosiężne łańcuchy. Róg jest strasznie zniekształcony, jakby zgniotła go jakaś ogromna siła. Wystrzępione ostrza wystają na całej długości, niemal jakby używany był jako maczuga, a zarazem róg bojowy, przez jakieś gigantyczne monstrum. Na niewielkiej tabliczce przytwierdzonej pod spodem widać napis 'Róg bitewny Acheronu'.~ */
  IF ~~ THEN REPLY #34189 /* ~Oprzyj głowę o ścianę i spróbuj zadąć w róg.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~Mimo, że próbujesz dąć z całych sił, z rogu nie wydobywa się żaden dźwięk. Odrywasz usta od ustnika, smakując krew, dym i metal.~ */
  IF ~~ THEN REPLY #42671 /* ~Odejdź.~ */ EXIT
END
