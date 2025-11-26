// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~MONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~이것은 평범하게 생긴 무거운 금속제 주전자로, 마개에는 경첩이 달려 있다. 평범한 외관에도 불구하고 별로 만지고 싶은 생각이 들지 않는다. 당신은 그 안에 어떤 종류의 괴물이 들어 있다는 얘기를 들었다, 하지만 주전자의 주둥이 부분을 들여다 보아도 캄캄하기만 할 뿐 아무 것도 보이지 않는다. ~ */
  IF ~~ THEN REPLY #50432 /* ~주전자를 열어 안에서 뭐가 나오는지 본다. ~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~주전자를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~처음에는 아무 것도 없다... 그러나 이내 점성의 검은 액체가 주전자의 주둥아리에서 거품을 내며 나오기 시작한다, 그리고 그것은 바닥에 떨어져 김을 내뿜는 끈적끈적한 타르질 액체의 웅덩이가 된다. 주전자는 당신 손 안에서 녹아서 사라지고. 웅덩이는 꿈틀거리면서 솟아올라 장신의 흉칙한 괴물로 변한다. ~ */
  IF ~~ THEN REPLY #50435 /* ~"대체 뭔...?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~이것은 평범하게 생긴 무거운 금속제 주전자로, 마개에는 경첩이 달려 있다. 평범한 외관에도 불구하고 별로 만지고 싶은 생각이 들지 않는다. 당신은 그 안에 어떤 종류의 괴물이 들어 있다는 얘기를 들었다, 하지만 주전자의 주둥이 부분을 들여다 보아도 캄캄하기만 할 뿐 아무 것도 보이지 않는다. ~ */
  IF ~~ THEN REPLY #64981 /* ~물주전자를 거꾸로 뒤집어 뭔가 나오는지 본다.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~물주전자를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~점성의 검은 액체가 주전자의 주둥아리에서 나와 바닥에 떨어진다. 바닥이 엉망이 되는 것 이외에는 아무 일도 일어나지 않는다. ~ */
  IF ~~ THEN REPLY #64984 /* ~빈 물주전자를 던져버린다.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
