// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"뭐... 난 내 뒤에 있는 문을  분명히 잠갔소! 꺼지시오, 알겠소 ?"~ */
  IF ~~ THEN REPLY #67948 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"문을 잠그는 걸 깜빡한 건 내 실수일지도 모르오... 하지만 난 당신이 내 방을 떠나기를 바라오. 나가시오, 제발." 그는 문을 가리킨다. .~ */
  IF ~~ THEN REPLY #67950 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~이 사람은 화난 얼굴로 당신을 쳐다보며 문을 가리킨다. 그는 당신과 더 이상 한 마디도 할 생각이 없는 듯하다.~ */
  IF ~~ THEN REPLY #67952 /* ~떠난다.~ */ EXIT
END
