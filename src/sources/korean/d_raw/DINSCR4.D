// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~나는 우리가 우리의 삶을 *바로잡을* 때까지 계속 죽고 다시 태어날 것이라고 생각한다. 하지만 그를 위해 우리가 무엇을 해야하는지는 알 수가 없다. 문제는 바로 거기에 있다.~ */
  IF ~~ THEN REPLY #53714 /* ~계속한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~그것은 일종의 윤회인가? 내가 이해하는 바로는 화신들 중 일부는 끔찍한 죄를 저질렀으나 또 다른 일부는 선행밖에 하지 않았다. 이러한 화신들의 존재 목적은 일종의 형벌인가? 모르겠다. 이 조각들을 통해 내가 전할 수 있는 유일한 진실: 나는 알지 못한다.~ */
  IF ~~ THEN REPLY #53717 /* ~계속한다.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~어느 시점에서 *나*는 *우리*로부터 분리되는가? 어느 시점에서 나는 이러한 다른 화신들의 업보의 굴레로부터 해방되는가? 어느 시점에서 나는 과거의 삶의 짐을 떨쳐버리고 *내*가 될 수 있는가?~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~이 패널은 뛰어난 솜씨로 만들어졌으며 벽에 딱 들어맞는다. 그것은 누르면 벽 속으로 들어갈 것 같다.~ */
  IF ~~ THEN REPLY #53723 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~이 패널은 쉽사리 벽 속으로 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53726 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
