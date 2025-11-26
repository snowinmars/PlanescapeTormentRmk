// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~이 작고 강인하게 생긴 깡패는 빨간색과 검은색으로 염색된 넝마 조각들을 걸치고 있다. 당신이 다가가자 그는 당신을 흘긋 본다. ~ */
  IF ~~ THEN REPLY #26001 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~깡패를 그냥 내버려둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~이 사내는 아무 말도 하지 않고 당신을 노려만 본다. 그는 이 작은 집단의 우두머리가 아닌 것 같다.~ */
  IF ~~ THEN REPLY #26000 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
