// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~그들은 말한다 - 네가 여럿으로 나뉘어졌다고. 너는 여럿 중 하나이다. 너는 여러 가지 이름을 지니고 있으며, 그것들은 각각 너의 육신에 흉터를 남겼다.~ */
  IF ~~ THEN REPLY #53751 /* ~계속한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~"길 잃은 자... 불사신... 마지막 화신... 천 번 죽은 사나이... 안식을 얻지 못하는 자... 여럿 중 하나... 삶의 죄수... 그림자를 부르는 자... 상처 입은 자... 불행의 원흉... 예메스(죽지 않는 자)..."~ */
  IF ~~ THEN REPLY #53754 /* ~계속한다.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~나는 지쳐가고 있다.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~이 패널은 달인의 솜씨로 만든 것이 명백하다. 그것은 밀면 벽 속으로 들어갈 것 같다.~ */
  IF ~~ THEN REPLY #53760 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~패널은 약간의 쉿 소리를 내며 벽으로 밀려 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53763 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
