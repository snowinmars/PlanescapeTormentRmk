// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ257.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ257~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6507 /* ~이 시체의 두 눈은 서로 가까이 모여 있으며, 눈알들 중 하나는 왼쪽으로, 다른 하나는 오른쪽으로 약간 비틀어져 있다. 당신은 그 상처투성이 이마에 새겨진 "257"이라는 번호를 간신히 읽을 수 가 있다. 시체가 머리에 여러 번 타격을 입은 탓에 번호를 읽기가 어려운 것 같다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6510 /* ~"눈알이 그렇게 돌아가 있으면 현기증이 나지 않소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6511 /* ~"눈알이 그렇게 돌아가 있으면 현기증이 나지 않소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6512 /* ~"난 당신이 좀비가 아니라는 걸 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6513 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6514 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #6515 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6508 /* ~시체의 두 눈에서는 지성의 빛이라고는 찾아볼 수가 없다. 단지 각기 오른쪽과 왼쪽을 조용히 바라보고 있을 뿐이다. ~ */
  IF ~~ THEN REPLY #6516 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6509 /* ~혼령이 얼마나 강렬한 기세로 육신으로 귀환했는지, 한 번의 엄청난 근육 수축과 함께 시체는 뒤로 날아간다! 잠시 후 시체는 다시 일어서서 미친 듯이 춤추고 흔들어댄다. 그는 팔을 마구 흔들고 꿰맨 곳을 뜯어내며, 그의 몸이 격렬하게 움직임에 따라 헐거워진 살이 퍼덕퍼덕 흔들리고, 두 눈을 부릅뜬 채 희번덕거리고 있다. 그 동안에도 그는 계속 미친 듯이 낄낄거리고 있다...~ */
  IF ~~ THEN REPLY #6517 /* ~"어... 당신에게 물어볼 것이 하나 있소, 혼령..."~ */ GOTO 3
  IF ~~ THEN REPLY #9558 /* ~혼령을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9553 /* ~시체는 노래하면서 뛰어오르고 회전한다. 그의 목소리의 크기와 높낮이는 무작위로 변화한다. "당신은 혼령이고 난 산 자니 당신이 내 질문에 대답해야 해!" 그는 당신의 당황한 표정을 보고 즐거워 한다. 그는 뼈만 앙상한 손가락으로 입을 잡아당겨 기괴한 미소를 짓고, 희고 창백한 혓바닥을 놀리면서 미친 듯이 웃는다.~ */
  IF ~~ THEN REPLY #9559 /* ~"좋소... 물어보시오."~ */ GOTO 4
  IF ~~ THEN REPLY #9560 /* ~"아니, 내가 *당신*에게 질문하겠소..."~ */ GOTO 5
  IF ~~ THEN REPLY #9561 /* ~혼돈스런 혼령 곁을 떠난다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 4.0 5.0
  SAY #9554 /* ~혼령은 조용해진다. 하지만 그것도 잠시뿐, 그는 귀가 얼얼할 정도로 큰 소리로 말도 안 되는 횡설수설을 늘어 놓는다. 그 불협화음이 어찌나 불쾌한지 당신이 무릎을 꿇게 만들 정도이다. 그리고 그것은 시작과 마찬가지로 갑작스럽게 끝난다. 시체는 그 곳에 서서 조용히 씰룩거린다.~ */
  IF ~~ THEN REPLY #9562 /* ~"알아듣지를 못했소. 날 위해 반복할 수 있겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zom257_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #9563 /* ~"이해하지 못하겠소. 하지만 질문할 것이 하나 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #9564 /* ~"당신이 하는 말을 이해할 수가 없소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 5.1
  SAY #9555 /* ~혼령은 다시 노래한다. "죽은 자는 산 자의 질문에 대답할 것이다. 지금까지 그래 왔고, 지금도 그러며, 앞으로도 그럴 것이다. 당신은 내 답을 질문할 것이다!" 그는 당신 표정을 보고 몹시 즐거운 듯하다. 그가 어찌나 신나게 뛰노는지 과연 시체가 그런 충격을 견딜 수 있을지 걱정될 지경이다. 그가 미친 듯이 움직임에 따라 그 뼈에 금이 가고 갈라지며, 건이 끊어지는 소리가 들린다.~ */
  IF ~~ THEN REPLY #9565 /* ~"좋소... 물어보시오."~ */ GOTO 4
  IF ~~ THEN REPLY #9566 /* ~"이해를 못하는군. 내가 *당신*에게 질문하고 있는 거요..."~ */ GOTO 5
  IF ~~ THEN REPLY #9567 /* ~포기하고 횡설수설하는 혼령 곁을 떠난다. ~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.2
  SAY #9556 /* ~혼령이 시체로부터 사라짐에 따라 시체는 입을 비틀어 다분히 고의적인 미소를 짓는다. 그것의 번뜩이는 미친 듯한 눈은 정신병자가 사람을 꿰뚫어 보듯이 당신을 바라보며, 그는 귀중한 진주로 목걸이를 만들듯 하나의 단어를 조심스럽게 형성해 속삭인다. "림보..."~ */
  IF ~~ THEN REPLY #9568 /* ~"뭐?"~ */ GOTO 7
  IF ~~ THEN REPLY #9569 /* ~그를 무시하고 돌아선다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9557 /* ~...그리고 혼령이 사라진 후 당신 기분은 오히려 전보다 더 불안하다. 좀비는 조용히 하던 일을 재개한다.~ */
  IF ~~ THEN EXIT
END
