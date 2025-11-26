// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~Ce vieil homme à l'air gentil ne t'accorde qu'un bref coup d'œil avant de reprendre sa récitation.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Interpelle le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Interpelle le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Interpelle le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Tu l'interpelles en lançant "la poésie pue !" et en sifflant, mais il ne te renvoie rien d'autres que quelques coups d'œil ennuyés…~ */
  IF ~~ THEN REPLY #43842 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~Tu interpelles et conspues le poète, en te moquant du style de ses vers, de son apparence et de son mode de vie. Il te renvoie quelques coups d'œil ennuyés et un bref regard irrité… mais rien de plus. ~ */
  IF ~~ THEN REPLY #43844 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~Tu interpelles et conspues le poète, en te moquant du style de ses vers, de son apparence et de son mode de vie. En plus de cela, tu interromps quelques-uns de ses vers en les complétant par des rimes paillardes de ta composition, ce qui te vaut des petits rires étouffés de la part de quelques spectateurs ; le vieux poète, quant à lui (qui fait de son mieux pour t'ignorer) grince des dents.~ */
  IF ~~ THEN REPLY #43846 /* ~Pars.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~Le vieux poète te jette un coup d'œil renfrogné avant de reprendre sa récitation.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Interpelle de nouveau le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Interpelle de nouveau le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Interpelle de nouveau le poète.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Pars.~ */ EXIT
END
