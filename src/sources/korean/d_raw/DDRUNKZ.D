// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~이 남자는 불안하게 몸을 앞뒤로 흔들고 있다. 잠시 제대로 균형을 잡기도 하나, 그리고 나서는 당신 오른쪽 귀 바로 옆에 있는 뭔가를 향해 역겹고 뒤틀린 미소를 짓는다. ~ */
  IF ~~ THEN REPLY #9864 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~그는 천천히 고개를 끄덕인다, 그리고 그의 입 한쪽에서 녹색 액체가 흘러나와 그의 먼지로 범벅이 된 턱수염에까지 닿는다. 그는 대화를 하기는커녕 서 있기도 힘든 것 같다. ~ */
  IF ~~ THEN REPLY #9867 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END
