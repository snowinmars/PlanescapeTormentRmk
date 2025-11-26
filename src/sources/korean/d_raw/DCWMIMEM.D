// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~이 신사는 일종의 행위 예술가를 곤혹스런 표정으로 바라보고 있다. ~ */
  IF ~~ THEN REPLY #49757 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~남자는 당신 쪽으로 시선을 돌리나, 그의 관심의 대부분은 아직도 행위 예술가를 향하고 있다. "기묘하지 않소? 딱하게 됐소."~ */
  IF ~~ THEN REPLY #49760 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"이건 상관없어. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~그는 계속 검은 옷을 입은, 말이 없는 남자를 지켜본다, 그리고 그는 고개를 저으며 당신에게 대답한다. "지금은 곤란하오. 제발. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #49764 /* ~"기다리시오... 적어도 이곳에서 무슨일이 벌어지고 있는 건지 말해주시오."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"몇 가지만 물어봅시다."~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"제발. 나 말고도 당신과 얘기할 사람은 많소. 내가 공연을 관람할 수 있도록 날 좀 그냥 내버려 두시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #49768 /* ~"기다리시오... 적어도 여기서 무슨 알이 벌어지고 있는지는 말해주시오."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"보다시피 이 남자는 행위 예술가요. 그는 주로 몸짓만으로 남을 흉내내거나 여러 가지 동작을 취하곤 했소 - 밧줄을 잡아당기는 시늉을 하고, 투명한 상자에 갇힌 척 하고, 통행인을 흉내내는 등의 연기 말이오. 그는 지나가던 메이지의 기묘한 걸음걸이를 놀렸고, 그 때문에 저주를 받게 되었소. 그는 이제 투명한 상자 안에 실제로 갇혔으며, 말도 할 수가 없게 되었소. 참으로 얄궂지 않소?"~ */
  IF ~~ THEN REPLY #49771 /* ~"약간 그렇소. 몰어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"정말 기이하오. 안녕히 계시오."~ */ EXIT
END
