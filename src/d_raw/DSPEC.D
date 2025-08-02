// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~Этот житель Улья наблюдает за работой дабуса. Он чешет затылок и поворачивается к тебе. «Клянусь жизнью Леди, не могу себе уяснить, что они делают с этим домом... эти дабусы без конца что-то сносят и отстраивают заново... не пойму, к чему все это».~ */
  IF ~~ THEN REPLY #9363 /* ~«Тогда не волнуйся об этом».~ */ EXIT
END
