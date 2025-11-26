// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~키가 크며, 어깨까지 닿는 긴 검은 머리와 날카로운 푸른 눈을 한 남자가 보인다. 그의 눈이 어찌나 강렬하게 이글거리고 있는지 그의 시선이 닿는 곳은 모두 불타지 않을까 걱정이 될 정도이다. 그의 옆에는 그가 말을 할 때마다 멍한 미소를 짓는 젊은 아가씨가 서 있다. 그는 당신 쪽으로 시선을 돌리고는 환한 미소를 짓는다. 그는 한쪽 손을 내민다. "나는 달란이오. 만나서 반갑소."~ */
  IF ~~ THEN REPLY #49374 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"만나서 반갑소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~달란은 다시 당신을 보면서 환한 미소를 짓는다. "잘 지내고 있소?"~ */
  IF ~~ THEN REPLY #49378 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"뭘 알고 싶소?"~ */
  IF ~~ THEN REPLY #49381 /* ~"나는 이 도시에 디바가 있다는 얘길 들었소."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"그 여자는 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~그는 웃으며 고개를 젓는다. "다른 질문이 있소?"~ */
  IF ~~ THEN REPLY #49386 /* ~"그렇소. 당신은 이 디바에 대해 무엇을 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"저기 있는 당신 친구는 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"나는 시인, 역사가, 배우, 그리고 전천후 공연가요. 또한 아웃랜즈에서 손가락이 제일 날랜 사람이기도 하오." 그는 다시 미소를 짓는다. "적어도 나는 모든 사람들에게 날 그렇게 소개하오."~ */
  IF ~~ THEN REPLY #49391 /* ~"그럼 내게 이 디바에 대해 얘기해주시오..."~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"당신 친구는 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~그는 능글맞게 웃는다. "그녀는 친구요. 그 이상은 알려고 하지 마시오." 그녀는 보조개를 짓고, 그의 옆에서 부끄러운 듯 얼굴을 붉힌다.~ */
  IF ~~ THEN REPLY #49395 /* ~"그럼 좋소, 내게 이 디바에 대해 얘기해주시오..."~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"그럼 당신 자신에 대해 얘기해주시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"알았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~그는 소리내어 웃는다. "모든 것에는 가격이 있기 마련이오, 그리고 난 아직 그 정보에 대해 가격을 매기지 않았소. 그 건에 대해서는 나중에 얘기합시다."~ */
  IF ~~ THEN REPLY #49399 /* ~"만약 내가 그것을 달라고 당신을 협박한다면?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"그럼 저기 있는 당신 친구에 대해 얘기해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"그럼 당신 자신에 대해 얘기해주시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~그의 손이 무기 있는 데로 간다. "그럼 누가 더 뛰어난 전사인지 결정해야겠소."~ */
  IF ~~ THEN REPLY #49404 /* ~"긴장을 푸시오. 난 그냥 질문을 했을 뿐이오. 날 위해 몇 가지 질문에 더 대답해주시오,"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"나중에. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"흠. 이 일에 대해서는 생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~키가 크며, 어깨까지 닿는 긴 검은 머리와 날카로운 푸른 눈을 한 남자가 보인다. 그의 눈이 어찌나 강렬하게 이글거리고 있는지 그의 시선이 닿는 곳은 모두 불타지 않을까 걱정이 될 정도이다. 그의 옆에는 그가 말을 할 때마다 멍한 미소를 짓는 젊은 아가씨가 서 있다. 그는 당신 쪽으로 시선을 돌리고는 환한 미소를 짓는다. "나는 달란이오. 당신이 열쇠를 찾고 있는 걸로 알고 있소."~ */
  IF ~~ THEN REPLY #49408 /* ~"그렇소. 그걸 위해 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~달란이 지니고 있는 열쇠의 부분을 받기 위해서 나는 안'이지우스라는 기스양키 관료와 이야기를 해야만 한다. 그는 시의 중심부에 있는 카케리로 통하는 문 부근에 있다. ~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"당신은 열쇠를 원하오, 그렇지 않소?~ */
  IF ~~ THEN REPLY #49413 /* ~"그렇소. 그걸 위해 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~달란이 지니고 있는 열쇠의 부분을 받기 위해서 나는 안'이지우스라는 기스양키 관료와 이야기를 해야만 한다. 그는 시의 중심부에 있는 카케리로 통하는 문 부근에 있다. ~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"아주 간단한 일이오. 시의 지도자들 중 한 사람이... 정치적으로 어려움을 겪고 있소. 시 평의회에서 그의 라이벌이 그를 골탕먹이고 있소. 가서 그와 얘기를 하고, 가능하다면 그를 돕도록 하시오. 그의 이름은 안'이지우스로 기스양키요. 그는 시의 중심에 있는 카케리로 통하는 관문 근처에 있소. ~ */
  IF ~~ THEN REPLY #49416 /* ~"그 일에 대해 몇 가지만 물어봅시다. 그는 당신 친구요? 당신은 어떤 특정한 결과를 원하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"좋소. 곧 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~그는 한층 더 능글맞게 웃는다. "당신 판단에 맡기도록 하겠소. 내 말이 무슨 뜻인지 곧 알게 될 거요."~ */
  IF ~~ THEN REPLY #49421 /* ~"좋소. 곧 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~달란은 팔로 여자 친구의 어깨를 감싸면서 다시 그의 전매특허인 미소를 짓는다. "어떻게 되어가고 있소? 무슨 진척이라도 있소?"~ */
  IF ~~ THEN REPLY #49423 /* ~"노력 중이오. 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"나중에. 지금은 중요한 할 일이 있소..." 그는 방 안을 대충 둘러본다. "당신이 일을 끝낸 후에 얘기합시다."~ */
  IF ~~ THEN REPLY #49426 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"당신의 멋진 솜씨에 대해서는 들었소. 그건 참 흥미로운 전개였소. 커스트의 정치판은 마음에 들었소?" 그는 자신의 에일 맥주를 들이킨다. "자, 내가 당신에게 주는 보수요." 그의 목소리는 마치 무슨 의식이라도 거행하고 있는 것처럼 굵고 낮아진다. "신들과 천국의 빛으로부터 가장 멀리 떨어진..." 그는 다시 보통 목소리로 말한다. "열쇠의 마지막 부분에 대해서는 저기 있는 도나 퀴쇼와 얘기하시오."~ */
  IF ~~ THEN REPLY #49428 /* ~"먼저 당신에게 몇 가지 질문을 더 하고 싶소..."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~달란은 대가로서 그가 지닌 열쇠의 일부분을 내게 주었고, 다음에는 도나 퀴쇼에게 가보라고 말해주었다. 그의 부분은 다음과 같다: "신들과 천국의 빛으로부터 가장 멀리 떨어진..."~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~달란은 대가로서 그가 지닌 열쇠의 일부분을 내게 주었고, 다음에는 도나 퀴쇼에게 가보라고 말해주었다. 그의 부분은 다음과 같다: "신들과 천국의 빛으로부터 가장 멀리 떨어진..."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"또 왔소? 질문할 게 더 있는 거요?" 그와 함께 있는 여자는 전과 미묘하게 다르다... 당신 눈에는 그녀가 다른 사람처럼 보인다, 하지만 그녀의 행동거지가 어찌나 흡사한지 과연 당신 생각이 옳다고 단언할 수가 없다.~ */
  IF ~~ THEN REPLY #49432 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"무엇을 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #49435 /* ~"저기 있는 당신 친구는 누구요?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"당신은 왜 내가 그 문제를 처리하기를 바랐던 거요? 당신은 그 일과 무슨 연관이 있었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"그녀는 친구요, 그냥 친구요, 그리고 우린 잘 지내고 있소. 달리 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #49439 /* ~"그렇소. 당신은 왜 내가 그 문제를 처리하기를 바랐던 거요? 당신은 그 일과 무슨 연관이 있었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"왜냐하면 안'이지우스은 내가 이 도시에서 공연하는 것을 금지했고..." 그는 바닥에 침을 뱉는다. "샤바는 우리의 오랜 우정에도 불구하고 날 돕기를 거절했기 때문이오. 그녀는 자신이 개입할 때가 아니라고 했소. 또한 그는 권력에 굶주린 잡종이고, 그녀는 자신의 권력 확대에만 관심이 있는 갈보이기 때문이오. 나는 어떤 방식으로든 그들 중 하나, 또는 양쪽 모두 파멸할 것이라는 것을 알고 있었소."~ */
  IF ~~ THEN REPLY #49442 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END
