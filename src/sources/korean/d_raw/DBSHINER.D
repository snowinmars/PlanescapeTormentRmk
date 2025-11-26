// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~당신이 텐트 안에 들어서자 이 청년은 미소를 지으며 앉으라고 손짓한다. "신발을 닦으러 오셨나요? 동전 두 닢만 주시면 아주 깨끗하게 닦아 드립니다..." ~ */
  IF ~~ THEN REPLY #51712 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"다시 오신 것을 환영합니다. 혹시 신발을 닦으러 오셨나요? 동전 두 닢만 주시면 아주 깨끗하게 닦아 드립니다..." ~ */
  IF ~~ THEN REPLY #51714 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"그럼 안녕히 가십시오... 신발을 닦을 일이 생기면 다시 와 주십시오."~ */
  IF ~~ THEN REPLY #51716 /* ~떠난다.~ */ EXIT
END
