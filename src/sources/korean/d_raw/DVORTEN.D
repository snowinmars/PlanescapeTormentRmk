// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~하모니움 사관이 보인다. 당신이 다가가자 그는 지루하다는 표정으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #44833 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~그는 지루하다는 표정으로 당신을 쳐다본다. "안녕하시오. 3급 사관 보텐이오."~ */
  IF ~~ THEN REPLY #44838 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~그는 한숨을 쉰다. "결례를 범하긴 싫지만 나는 근무중이라 질문에 답할 시간이 없소." 그는 잠시 멈춘다. "정보를 원한다면 가서 삐걱거리는 무릎의 엡과 얘기를 하시오."~ */
  IF ~~ THEN REPLY #44836 /* ~"삐걱거리는 무릎의 엡이 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"그는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"그는 내 옛 친구요. 내 생각에 이제 그는 가이드 노릇을 하고 있는 것 같소, 그러니 그는 당신에게 대부분의 것들에 대해 설명을 해줄 수 있을 거요."~ */
  IF ~~ THEN REPLY #44842 /* ~"그는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~그는 잠시 생각을 한다. "내가 마지막으로 들은 바로 그는 벌통 어딘가에 있는 불타는 시체 바에서 주로 시간을 보낸다고 하오."~ */
  IF ~~ THEN REPLY #44845 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~하모니움 3급 사관 보텐이 보인다. 그는 당신에게 가볍게 인사를 한다. "다시 만나 반갑소."~ */
  IF ~~ THEN REPLY #44847 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
