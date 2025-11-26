// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~싸구려 옷을 입은 초로의 여인이 보인다. 그녀는 본래 모습보다 더 젊고 매력적으로 보이려고 지대한 노력을 기울인 것 같다. 그녀에게 가까이 다가가자 싸구려 술 냄새가 풍긴다.~ */
  IF ~~ THEN REPLY #10125 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~그녀는 돌아서서 당신을 마주본다. 그녀의 얼굴은 술을 너무 많이 마셔 새빨갛다. "안녕하세요오오오. 즐거운 시간을 보낼... 상대를 원하나요?" 그녀는 당신에게 미소짓는다, 그리고 처음으로 당신을 제대로 본다. "어머, 당신은 정말 엉망이군요. 당신은 무슨... 일을 당한 거죠?"~ */
  IF ~~ THEN REPLY #10128 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"당신과는 상관없는 일이오."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~그녀는 당신에게 다가와서 당신 가슴에 자신의 손을 얹는다. "질문할 필요는... 없어요. 당신에게 돈이 있다면... 내겐 재능이 있어요. 내 집은 저기예요. 그럼 가자고요."~ */
  IF ~~ THEN REPLY #10132 /* ~"난 그것에는 관심이 없소. 내겐 정보가 필요하오."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"얼마요?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~그녀는 손을 입술에 얹는다. "이것... 보세요. 나도 먹고 살아야 해요. 당신은 약간 혼란스러워 하는 것 같아요... 하지만 당신 눈엔 내가 학자로 보이나요? 내가 당신에게 줄 수 있는 유일한 답은 여기 있어요." 그녀는 당신을 향해 팔을 벌린다. ~ */
  IF ~~ THEN REPLY #10136 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"얼마요?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~그녀는 킬킬거린다. "아, 이제 말이 통하는군요... 다섯 닢이면 소리를 지르겠지만 말은 하지 않겠어요..." 그녀는 기대하는 눈빛으로 당신을 쳐다본다.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"갑시다..."~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"미안하오. 돈이 없소."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~그녀는 당신을 자기 거처로 데려간다. 한 시간 정도 지난 후 그녀는 다시 당신을 데리고 거리로 나온다. "또 오세요... 난 손님을 만족시키려고 노력하니까." 그녀는 미소를 지으며 잘 가라고 손을 흔든다. ~ */
  IF ~~ THEN REPLY #10143 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~그녀는 당신을 보며 눈살을 찌푸린다. "이것 보세요. 그렇게 무례하게 나올 필요는 없잖아요. 친절하게 굴 생각이 없다면 난 당신을 상대하지 않겠어요. 꺼지라고요!" 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #10145 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END
