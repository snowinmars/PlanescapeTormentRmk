// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~Я пьяный драчун, которому нравится шататься по Чиновничьему району и устраивать драки. Если увидишь меня, точно станешь моей жертвой, так что берегись.~ */
  IF ~~ THEN REPLY #2973 /* ~Нет, мне кажется, это ТЕБЕ лучше поберечься.~ */ EXIT
END
