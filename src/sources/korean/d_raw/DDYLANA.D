// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~누더기를 입고 있는 중년 여성이 보인다. 당신이 다가가자 그녀는 적의에 찬 눈으로 당신을 노려본다.~ */
  IF ~~ THEN REPLY #57456 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"꺼져요. 가까운 길도 빙빙 돌아서..." 그녀는 당신을 째려본다.~ */
  IF ~~ THEN REPLY #57459 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~그녀는 눈살을 찌푸린다. "당신은 무지한 건가요, 아니면 그냥 멍청한 건가요? 내가 꺼지라고 했잖아요! 나는 당신과 얘기하기도 싫고 당신 질문에 대답할 생각도 없어요!"~ */
  IF ~~ THEN REPLY #57462 /* ~"만약 당신이 내 질문 몇 가지에 대답해준다면 떠나도록..."~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"난 당신 태도가 마음에 들지 않소. 당신으로부터 억지로 답을 얻어내야 할 것 같군."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~그녀는 당신을 째려본다. "좋아요. 빨리 해요."~ */
  IF ~~ THEN REPLY #57466 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"이 장소에 대해 어떤 것을 아시오?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 이 곳에 있다고 들었소."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"당신이 왜 알려는지 모르겠군..." 그녀는 말을 멈춘다. "딜라나."~ */
  IF ~~ THEN REPLY #57471 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~그녀는 한숨을 쉰다. "나는 시로 맥주 따위를  들여오는 밀수꾼과 일을 하고 있었어요. 그러다 어느 날 밤 경비병들에게 잡혔지요. 그는 나를 저버리고 뇌물을 먹여 자기만 풀려 났어요..." 그녀는 어깨를 으쓱한다. "그래서 내가 여기 있는 거죠."~ */
  IF ~~ THEN REPLY #57475 /* ~"당신은 놈에게 복수할 거리가 하나 있는 것 같구려."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~그녀는 미소짓는다. "그래요. 참고로 그의 이름은 부어샤예요. 그를 만나는 일이 있거든 등 뒤를 조심하세요."~ */
  IF ~~ THEN REPLY #57479 /* ~"그러리다. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"얘기할 게 뭐가 있겠어요? 여긴 염병할 감옥이라고요. 감방에서 지나면서 햇빛을 볼 날이 다시 오기만을 기다리고 있는 거죠."~ */
  IF ~~ THEN REPLY #57482 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~그녀는 생각을 하느라 눈살을 찌푸린다. "아니, 난 그렇게 생각하지 않아요. 내가 여기 있는 사람들을 모두 다 아는 것은 아니지만, 디바가 있다면 모를 리가 없겠죠, 적어도 이 구역에는 없을 거예요."~ */
  IF ~~ THEN REPLY #57485 /* ~"이 구역?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"그래요, 감옥은 세 구역으로 나뉘어져 있어요. 바깥쪽 고리, 가운데 고리. 그리고 안쪽 고리. 죄가 무거울 수록 안쪽으로 가게 되죠."~ */
  IF ~~ THEN REPLY #57489 /* ~"이 곳은 어느 구역이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"이 곳은 가운데 고리예요. 안쪽 고리만큼 나쁘진 않죠."~ */
  IF ~~ THEN REPLY #57493 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~그녀는 뭔가 말하려다가 멈춘다. "그래... 당신은 그런 일을 할 사람으로 보이는군요."~ */
  IF ~~ THEN REPLY #57496 /* ~"그래, 내 질문에 답해주겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~딜라나가 보인다. 그녀는 당신을 다시 만난 것이 반갑지 않은 듯하다. "또 왔나요... 왜?"~ */
  IF ~~ THEN REPLY #57499 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
END
