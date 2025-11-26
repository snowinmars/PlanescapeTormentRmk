// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~건장한 경비병은 당신을 아래위로 훑어본다. "당신이 이야기해야 할 사람은 내가 아니라 저들이오..." 그는 자신이 지키고 서 있는 방 안에 있는 몇 명의 아름답긴 하나 야한 아가씨들을 가리킨다. ~ */
  IF ~~ THEN REPLY #67975 /* ~"실은 난 당신과 얘기를 하고 싶었소..."~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~그는 고개를 젓는다. 당신은 투구의 틈새를 통해 그가 눈알을 부라리는 것을 볼 수가 있다. 그는 더 이상 한 마디도 하지 않는다.~ */
  IF ~~ THEN REPLY #67977 /* ~떠난다.~ */ EXIT
END
