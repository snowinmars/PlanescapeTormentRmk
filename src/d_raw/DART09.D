// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~На этой картине показано нечто похожее на бесконечно длинный поток ядовито-зеленых газов, простирающийся в темноте. В правом нижнем углу можно увидеть горизонт разрушенной каменистой равнины... создается впечатление, что «голова» зеленого облака поднялась, чтобы обрушиться на нее. Надпись гласит: «Хазазот, пожирающий Нгара».~ */
  IF ~~ THEN REPLY #42673 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
