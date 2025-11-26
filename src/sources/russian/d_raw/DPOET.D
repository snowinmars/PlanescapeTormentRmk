// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~Этот добродушный старик лишь на миг бросает на тебя взгляд, после чего возвращается к своей декламации.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Поддразнить поэта.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Поддразнить поэта.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Поддразнить поэта.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Ты начинаешь выкрикивать что-то вроде «Стихи — отстой!» и тому подобное, но лишь обращаешь на себя пару раздраженных взглядов... но не более.~ */
  IF ~~ THEN REPLY #43842 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~Ты кричишь и глумишься над поэтом, высмеивая его стихотворный слог, внешний вид и вероятное домоседство. Ты обращаешь на себя несколько раздраженных взглядов и короткий сердитый взгляд самого поэта... но не более. ~ */
  IF ~~ THEN REPLY #43844 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~Ты кричишь и глумишься над поэтом, высмеивая его стихотворный слог, внешний вид и вероятное домоседство. Ты дополняешь это тем, что перебиваешь пару его стихов, дополняя их своими собственными непристойными рифмами, что вызывает тихий смех зевак и заставляет старого поэта, изо всех сил старающегося не обращать на тебя внимание, оскалиться.~ */
  IF ~~ THEN REPLY #43846 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~Старый поэт бросает на тебя хмурый взгляд и возвращается к декламации.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Подразнить поэта еще немного.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Подразнить поэта еще немного.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Подразнить поэта еще немного.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Уйти.~ */ EXIT
END
