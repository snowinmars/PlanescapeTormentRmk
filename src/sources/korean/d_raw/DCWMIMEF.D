// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~이 젊은 여자는 일종의 행위 예술가를 다소 어리둥절한 표정으로 바라보고 있다. 당신이 다가가자 그녀는 당신 쪽으로 고개를 돌린다.~ */
  IF ~~ THEN REPLY #49740 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"저런 건 일찍이 본 적이 없어요. 그의 연기는 짜증스럽지만, 동시에 묘하게 흥미롭군요."~ */
  IF ~~ THEN REPLY #49743 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"관두시오. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~그녀는 투명한 상자 또는 감옥에 갇힌 남자를 계속 지켜본다. "나중에 다시 오세요. 지금은 제발 날 그냥 내버려 두세요." ~ */
  IF ~~ THEN REPLY #49747 /* ~"기다리시오... 적어도 이곳에서 무슨일이 벌어지고 있는 건지 말해주시오."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"몇 가지만 물어봅시다."~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~여자는 짜증난 표정으로 당신을 노려본다. "당신이 무슨 생각을 하고 있는지는 모르겠지만, 나는 알지도 못하는 사람이 질문으로 날 귀찮게 하는 걸 좋아하지 않아요. 제발 날 그냥 내버려 두세요!" ~ */
  IF ~~ THEN REPLY #49751 /* ~"기다리시오... 적어도 이곳에서 무슨일이 벌어지고 있는 건지 말해주시오."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"나도 잘은 모르겠어요. 이 남자는 주로 남을 흉내내거나 몸짓으로 남을 웃기게 하는데, 지금까지 한 마디 말도 하지 않았어요. 아까 어떤 메이지가 지나가자 예술가는 그의 기묘한 걸음걸이를 흉내냈어요. 화가 난 메이지는 그를 저주했죠... 내가 생각하기에 이제 그는 더 이상 말을 할 수가 없으며, 전에 연기로 묘사하던 것과 같은 투명한 상자 안에 실제로 갇히게 되었어요. 처음에는 그도 무척 당황을 했지만, 이제는 진정을 하고 연기를 계속하고 있어요."~ */
  IF ~~ THEN REPLY #49754 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
