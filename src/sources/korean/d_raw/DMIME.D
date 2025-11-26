// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~이 남자의 얼굴은 온통 하얗게 칠해져 있다. 그의 이마에는 한 쌍의 아치 모양의 눈썹이 그려져 있으며, 빨간 분을 뿌려 볼과 입술을 강조하였다. 그는 뭐라고 말하고 있는 듯하나, 아무 소리도 들리지 않는다. 그는 두 손으로 투명한 벽처럼 보이는 것을 누르고 있다.~ */
  IF ~~ THEN REPLY #49774 /* ~"뭐? 당신 말이 들리지 않소..."~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~당신이 그를 만질 수 있는지 본다.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~그는 고개를 숙여 소리없는 한숨을 쉰 후 어깨를 으쓱한다. 그리고 그는 몇 결음 물러선 후 당신에게 잘 가라고 손짓을 한다, 그리고 다양한 팬터마임을 하기 시작한다... 밧줄 당기기, 계단 내려가기, 등등.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~당신이 그를 만질 수 있는지 본다.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~당신은 손을 내밀어 남자를 만지려 하나, 당신 손은 보이지 않은 힘에 의해 제지 당한다. 행위 예술가는 일종의 투명한 상자 또는 감옥 안에 갇혀 있는 듯하다.~ */
  IF ~~ THEN REPLY #49781 /* ~떠난다.~ */ EXIT
END
