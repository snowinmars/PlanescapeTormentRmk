// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Этот пожилой мужчина пялится на кружку с элем; на его лице лежит печать страданий. Помятая оловянная кружка выглядит необычно: на ней выгравировано несколько странных рун и бородатых лиц, ее покрывает тонкий слой инея. При твоем приближении он поднимает голову. «Приветствую... сэр...» Кажется, он немного пьян.~ */
  IF ~~ THEN REPLY #3023 /* ~Татуировка злобы~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~«Что-то не так?»~ */ EXIT
END
