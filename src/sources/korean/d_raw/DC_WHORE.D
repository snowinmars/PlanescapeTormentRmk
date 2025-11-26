// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~당신이 다가가자 옷을 야하게 입은 이 비속한 여자는 상냥하게 웃으며 브래지어의 한쪽 끈을 내리기 시작한다. "동전 스무 닢만 주시면 전 당신 거예요..."~ */
  IF ~~ THEN REPLY #67958 /* ~"실은 물어볼 것들이 좀 있소..."~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"괜찮은 가격인 것 같소. 돈은 여기 있소..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"어... 다른 사람들도 있는데?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~그녀는 한숨을 쉬고 브래지어를 다시 올린다. "아니, 그런 일은 없을 거예요."~ */
  IF ~~ THEN REPLY #67962 /* ~"적어도 왜 밖에 경비병이 있는지는 말해주시오..."~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"좋소... 그럼 동전 20닢을 줄테니 나와 좋은 시간을 보내는 건 어떻겠소?"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"좋아요" 그녀는 짓궂은 미소를 지으며 머리를 만지작거린다. "재미있는 것처럼 보이면 그들도 합류할지도..." 그녀는 윙크를 하고 당신에게 오라고 손짓한다. ~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"당신이 옳소... 안 할 이유는 없지. 돈은 여기 있소..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"실은 물어볼 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"오. 저 사람 말인가요?" 그녀는 홀을 응시하면서 복도에 서 있는 건장한 경비병을 쳐다본다, "나와 내 친구는 우리를 보호해 달라고 그에게 돈을 주었어요, 그뿐이에요. 그 때문에 불안하신가요? 걱정 마세요. 그는 엿보지 않으니까. 자, 이리로 오세요. " 그녀는 두 팔을 활짝 펴고 당신을 부른다.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"안 할 이유는 없지. 돈은 여기 있소..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"어... 다른 사람들도 있는데?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~관계를 가진 후 당신은 옷을 입고 소지품을 챙긴다.

"흠... 당신은 쉽게 지치지 않는군요. 마음에 드셨다면 또 오세요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #67971 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~떠난다.~ */ EXIT
END
