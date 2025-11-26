// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~Я, наверное, единственный человек из всех в Нижнем районе, кто не против поговорить с незнакомцем. Я редчайшее исключение из всей массы.~ */
  IF ~~ THEN REPLY #3039 /* ~Неважно. Может быть, мы поговорим снова, когда ты будешь готов, и тогда я проверю, действительно ли ты исключение или нет.~ */ EXIT
END
