// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~이 청년은 서두르고 있는 듯하다. 그는 당신이 자신을 멈춰 세우자 기분 나쁘다는 표정으로 당신을 바라본다. 그가 빨리 떠나고 싶어한다는 것은 명백하다. ~ */
  IF ~~ THEN REPLY #47025 /* ~"당신에게 물어볼 것들이 몇 가지 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"당신은 누구요?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"이 지역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"관두시오. 가던 길이나 가시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~그는 잠시 발길을 멈추나 당신 말에 전혀 귀를 기울이고 있지 않다는 건 명백하다. "모르겠소." 그는 그 말만 내뱉고 떠난다.~ */
  IF ~~ THEN REPLY #47030 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
