// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~Я дрянь, я лгунья, я воровка, я твоя мать, я гнойная болячка, которая надоедает... Стоп, это уже было у Мередит Брукс. А я — всего лишь торговец, который лжет, и через мою ложь ты сможешь узнать правду. Может быть.~ */
  IF ~~ THEN REPLY #3366 /* ~Мне бы было очень интересно узнать, как дизайнер ухитрится все вытянуть. Это будет забавно!~ */ EXIT
END
