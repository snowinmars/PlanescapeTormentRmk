// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~This kindly-looking old man spares you only the briefest of glances before returning to his recitation.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Heckle the poet.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Heckle the poet.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Heckle the poet.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Your heckling, consisting of little more than cries of "Poetry stinks!" and the occasional raspberry, draws a few annoyed glances... but nothing more.~ */
  IF ~~ THEN REPLY #43842 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~You heckle and jeer at the poet, making fun of his style of verse, appearance, and postulated home life. You draw a handful of annoyed glances and a brief, angry stare from the poet himself... but nothing more.~ */
  IF ~~ THEN REPLY #43844 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~You heckle and jeer at the poet, making fun of his style of verse, appearance, and postulated home life. You top it off by interrupting a few of his verses and completing them with bawdy rhymes of your own, which draws some chuckles from onlookers and sets the old poet - doing his best to ignore you - to gritting his teeth.~ */
  IF ~~ THEN REPLY #43846 /* ~Leave.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~The old poet glances at you, frowning, before returning to his recitation.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Heckle the poet some more.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Heckle the poet some more.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Heckle the poet some more.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Leave.~ */ EXIT
END
