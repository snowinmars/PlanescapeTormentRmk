// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"당신은 내가 결코 무력하지 않다는 것을 알게 될 거요. 더 이상 다가오지 마시오."~ */
  IF ~~ THEN REPLY #6343 /* ~완료.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"당신은 명백히 이 곳에 속하지 않소. 당장 떠나시오, 침입자, 아니면 경비병들이 거친 수단으로 당신을 배제하게 될 것이오."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"간단히 하나만 물어봅시다."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"간단히 하나만 물어봅시다."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"지금 떠나시오. 이 일이 우리 모두가 후회할 사태로 발전하기 전에."~ */
  IF ~~ THEN REPLY #6349 /* ~"내 질문 하나에만 대답해주기오!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~얼굴에 흉터가 있는 기스저라이 여인이 보인다. 그녀는 기스저라이의 기준으로는 미인일지도 모른다. "나는 당신을 도울 수가 없소. 내가 경비병들을 부르기 전에 어서 떠나시오. 내가 당신에게 이만한 친절이라도 베푸는 건 당신 동료 때문이오." 그녀는 다콘에게 고개를 숙이고 말한다. "저를 용서하세요, 영예로운 분."~ */
  IF ~~ THEN REPLY #6352 /* ~"그건 다 좋은데 내 질문에 좀 대답해주어야겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"알겠소." 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"그럼 선택한 여지가 없군." 그녀는 잠시 멈춘 후 소리를 지른다. "경비병! 내게로 오시오!"~ */
  IF ~~ THEN REPLY #6355 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~그녀는 다시 다콘을 향한다. "죄송해요." 그녀는 돌아서서 당신을 마주본다. "내 입장을 명확하게 하도록 하겠소. 당장 떠나시오. 아니면 경비병을 불러 당신을 밖까지 '호위'하도록 하겠소. 우리의 프로젝트는 타협의 대상이 될 수 없소."~ */
  IF ~~ THEN REPLY #6356 /* ~"난 당신이 내 질문에 대답해 주기를 바랄 뿐이오!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"그럼 선택한 여지가 없군." 그녀는 잠시 멈춘 후 소리를 지른다. "경비병! 내게로 오시오!"~ */
  IF ~~ THEN REPLY #6360 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~그녀는 다시 다콘에게 얘기한다. "영예로운 분... 다시 이 곳에 오지 마세요. 당신을 배제하려고 경비병을 부르는 건 제가 원하는 바가 아니에요. 떠나 주세요."~ */
  IF ~~ THEN REPLY #6362 /* ~"이것 보시오, 내 질문 한두 개에만 대답해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~그녀는 자신의 검은 눈으로 다콘을 바라본다. "영예로운 분... 제게는 선택의 여지가 없어요. 우리의 선조들 앞에서 절 용서하세요." 그녀는 돌아서서 목소리를 높인다. "경비병!"~ */
  IF ~~ THEN REPLY #6365 /* ~완료.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~당신 시야에 머리가 벗겨지고, 볼에 상처가 있으며, 마치 고양이처럼 우아하게 걷는 기스저라이 여인이 들어온다. 그녀는 당신을 향해 고개를 돌리다 다콘을 발견한다. 그녀는 눈이 동그래진다. 그녀는 그에게 인사한다. "당신은 내 가슴에 기쁨을 가져다 주시는군요. 제 이름은 켈'레라입니다. 제가 어떻게 도와드릴까요?"
~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"그럼 물어보시오, 만약 내가 답할 수 있는 것이라면 답하리다. 당신의 동료는 그분의 명예를 위해 이 일에 대한 비밀을 지킬 것이오. 나는 내가 당신을 신뢰할 수 있을지 모르겠소. 하지만 그분은 확실히 신뢰할 수가 있소."~ */
  IF ~~ THEN REPLY #6371 /* ~"이 장치가 어떤 일을 하는지 말해주시오."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"이 장치의 약점은 무엇이오?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"이 장치는 누가 발주하였소?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"이 장치는 누가 발주하였소?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"살인 사건에 대해 내게 어떤 애기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"기술자들에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~옆에 있는 다콘에게: "그녀는 누구이며, 왜 그녀가 당신에게 그토록 경의를 표하는 거요?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"우리의 기계는 보통의 불에 내성이 있는 생명체들조차도 해칠 수 있는 마법의 화염을 내뿜소. 현재 우리는 목표물의 마법 내성조차도 무시할 수 있는 방법을 고안하고 있소."~ */
  IF ~~ THEN REPLY #6380 /* ~"그것에는 또 어떤 용도가 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"좋소. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~그녀는 그레이스를 흘깃 본 후, 자신의 입을 우아하게 움직인다. "죄송해요, 영예로운 분, 하지만 저는 이 일에 대해 얘기를 할 수가 없어요. 저는 계약과 마법에 의해 특정한 신념의 '화신'이 있는 곳에서는 이 일에 대해 얘기하지 못하도록 제약받고 있어요." 그녀는 서큐버스를 향해 돌아선다. "죄송합니다, 그레이스 여사."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~그녀는 불안한 눈으로 다콘을 바라본다. 다콘은 잠시 당신을 바라본 후 그녀 쪽으로 돌아서서 고개를 끄덕임으로서 그녀를 안도시킨다. "좋소. 발사 장치에서 가장 취약한 부분은 기계의 후부요. 만약 그 부분이 큰 손상을 입는다면 우리는 모두 끝장이오. 기계가 파괴되면 연쇄 반응이 시작되어 기계에 묶인 자들 모두를 소멸시키오. 기계를 파괴한 자는 도망칠 시간이 있겠지만 우리들처럼 기계에 묶인 자들은 그럴 수가 없소."~ */
  IF ~~ THEN REPLY #6388 /* ~"묶인? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"좋소. 다른 질문들도 좀 대답해주시오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"고맙소." 떠난다.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~감독은 다시 돌아서서 훨-후럼-그레이스를 불편한 시선으로 바라보며 이를 간다. "그것에 대해서 얘기할 수가 없소."~ */
  IF ~~ THEN REPLY #6392 /* ~"그럼 좋소. 내 질문에 좀 답해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"그것의 무기로서의 가치 이외의 용도 말이오? 그것은 우수한 광업 기계로 사용될 수가 있소. 또한 농업 및 임업에도 사용되어, 광활한 논밭을 추수하거나 숲 전체를 벌목할 수도 있소. 그것은 림보의 물질을 일정 시간 동안 안정시킬 수도 있는데, 이에 대해서는 이미 소규모의 실험에 성공했소. 그 기계는 심지어 카케리의 한 구체에서 다른 구체로 이동할 때의 추진기관으로도 사용될 수가 있소. 그것의 활용 범위는 오직 사용자의 상상력에 의해서만 제한을 받소. 우리가 만드는 기계는 단순한 파괴 병기가 아니오."~ */
  IF ~~ THEN REPLY #6395 /* ~"흥미롭군. 다른 질문들도 좀 대답해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"좋소. 안녕히 계시오." 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~그녀는 주위를 둘러보고 한숨을 귄 다음 대답을 한다. "내가 직접 협상에 참여한 것은 아니지만, 우리에게 이 프로젝트를 발주한 건 바테주라고 들었소. 당신이 지니고 있는 그 징표는 당신에게 바테주에 대한 어느 정도의 외교관 면책 특권을 부여할 것이오."~ */
  IF ~~ THEN REPLY #6398 /* ~"그건 편리할 것 같소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~"정보를 주어 고맙소.안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"내가 당신에게 얘기해줄 수 있는 건 별로 없소. 나와 내 대장장이들은 여기서 살다시피 하고 있으니까. 나는 당신에게 해가 진 후에도 주조소에 남아있을 만한 사람들과 얘기하라고 권하고 싶소. 내 머리에 떠오르는 두 사람은 노동자 감독인 틸돈과 그를 늘 훔쳐보고 있는 사로스란 청년이오."~ */
  IF ~~ THEN REPLY #6401 /* ~"틸돈과 사로스? 알겠소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"틸돈과 사로스? 알겠소. 가서 그들을 조사하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~그녀는 눈살을 찌푸리자 그녀의 흉터가 있는 얼굴에 주름이 몇 줄 더 생긴다. "기술자들에 대해 알고 싶으면 내 대장장이들 중 한 사람과 얘기하시오. 나는 그들을 좋게 평할 수가 없소."~ */
  IF ~~ THEN REPLY #6404 /* ~"그건 왜요?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"좋소. 그럼 다른 질문에도 대답해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"알겠소." 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"왜냐고? 그것은 그들이 동료들과는 달리 이 프로젝트에 열의를 보이지 않기 때문이오. 또한 그들은 실제로 행동을 할 생각은 않고 꿈만 꾸는 몽상가들이기 때문이오. 그리고 궁극적으로 나는 그들이 우리 전체보다는 자신들만의 이익을 추구한다고 생각하기 때문이오."~ */
  IF ~~ THEN REPLY #6408 /* ~"알겠소. 그럼 다른 것에 대한 질문에 좀 대답해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"내 말은 우리가 이 기계에 힘을 부여하는 마법 의식의 요구 조건에 의해 이 기계에 구속되었다는 뜻이오. 만약 착오가 발생하거나 누군가가 파괴 공작을 감행한다면 당신이 지금 이 방 안에서 보고 있는 모든 사람들은 재가 되어버릴 것이오. 뿐만 아니라 우리들의 영혼조차 산산이 부서지거나 영원히 소멸되고 말 것이오. 왜 우리가 그토록 보안을 철저하게 유지하는지 이제는 알겠소?"~ */
  IF ~~ THEN REPLY #6411 /* ~"알 것 같소. 다른 질문에도 대답해주면 고맙겠소..."~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"알 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"질문하시오, 내가 대답할 수 있는 거라면 대답하리다. 나는 당신 동료의 분별력을 믿소."~ */
  IF ~~ THEN REPLY #6414 /* ~"이 장치가 어떤 일을 하는지 말해주시오."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"이 장치의 약점은 무엇이오?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"이 장치는 누가 발주하였소?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"이 장치는 누가 발주하였소?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"살인 사건에 대해 내게 어떤 애기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"기술자들에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~옆에 있는 다콘에게: "그녀는 누구이며, 왜 그녀가 당신에게 그토록 경의를 표하는 거요?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~머리가 벗겨지고 흉터가 있는 기스저라이 여인이 놀랄 정도로 우아한 동작으로 당신에게 다가온다, 그녀는 당신을 위아래로 쳐다보며 당신을 평가한다. "당신의 징표는 당신이 이 곳에 출입할 권리를 부여하오. 그 밖에 나로부터 또 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #6423 /* ~"나는 몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"내가 그런 말투로 말하지 마시오, 아니면 채찍질을 당하게 될 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"하고 싶은 질문을 하고 빨리 끝내시오. 내 손을 기다리고 있는 일이 많다는 사실을 알기 바라오."~ */
  IF ~~ THEN REPLY #6427 /* ~"이 장치가 어떤 일을 하는지 말해주시오."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"이 장치의 약점은 무엇이오?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"이 장치는 누가 발주하였소?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"이 장치는 누가 발주하였소?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"살인 사건에 대해 내게 어떤 애기를 해줄 수가 있겠소?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"기술자들에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~그녀는 실눈을 뜨고 당신을 바라본다. "당신은 감히 여기서 날 협박하겠다는 거요? 당장 나가서 이러한 모욕을 잊을 수 있는 시간을 내게 주시오, 아니면 경비병들을 불러 당신의 피투성이 시체를 거리에 버리도록 하겠소."~ */
  IF ~~ THEN REPLY #6435 /* ~"차라리 죽겠소."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"그럼 그렇게 해주지. 경비병! 이 침입자를 죽이시오!"~ */
  IF ~~ THEN REPLY #6438 /* ~싸울 준비를 한다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"우리의 기계는 보통의 불에 내성이 있는 생명체들조차도 해칠 수 있는 마법의 화염을 내뿜소. 현재 우리는 목표물의 마법 내성조차도 무시할 수 있는 방법을 고안하고 있소."~ */
  IF ~~ THEN REPLY #6440 /* ~"그것에는 또 어떤 용도가 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"좋소. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"그것의 무기로서의 가치 이외의 용도 말이오? 그것은 우수한 광업 기계로 사용될 수가 있소. 또한 농업 및 임업에도 사용되어, 광활한 논밭을 추수하거나 숲 전체를 벌목할 수도 있소. 그것은 림보의 물질을 일정 시간 동안 안정시킬 수도 있는데, 이에 대해서는 이미 소규모의 실험에 성공했소. 그 기계는 심지어 카케리의 한 구체에서 다른 구체로 이동할 때의 추진기관으로도 사용될 수가 있소. 그것의 활용 범위는 오직 사용자의 상상력에 의해서만 제한을 받소. 우리가 만드는 기계는 단순한 파괴 병기가 아니오."~ */
  IF ~~ THEN REPLY #6444 /* ~"흥미롭군. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"좋소. 안녕히 계시오." 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"나는 당신에게 왜 그러한 정보가 필요한지 모르겠소. 갓즈맨이든 아니든 나는 당신에게 그 정보를 줄 수 없소."~ */
  IF ~~ THEN REPLY #6447 /* ~"만약 내가 억지로 말하도록 만든다면?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"좋소. 그럼 다른 질문들에도 대답해줄 수 있겠소?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~그녀는 주위를 둘러보고 한숨을 귄 다음 대답을 한다. "내가 직접 협상에 참여한 것은 아니지만, 우리에게 이 프로젝트를 발주한 건 바테주라고 들었소. 당신이 지니고 있는 그 징표는 당신에게 바테주에 대한 어느 정도의 외교관 면책 특권을 부여할 것이오."~ */
  IF ~~ THEN REPLY #6451 /* ~"그건 편리할 것 같소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~"정보를 주어 고맙소.안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~그녀는 주위를 둘러보고 한숨을 귄 다음 대답을 한다. "내가 직접 협상에 참여한 것은 아니지만, 우리에게 이 프로젝트를 발주한 건 바테주라고 들었소. 당신이 지니고 있는 그 징표는 당신에게 바테주에 대한 어느 정도의 외교관 면책 특권을 부여할 것이오."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~감독은 다시 돌아서서 훨-후럼-그레이스를 불편한 시선으로 바라보며 이를 간다. "그것에 대해서 얘기할 수가 없소!"~ */
  IF ~~ THEN REPLY #6458 /* ~"그럼 좋소. 내 질문에 좀 답해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"내가 당신에게 얘기해줄 수 있는 건 별로 없소. 나와 내 대장장이들은 여기서 살다시피 하고 있으니까. 나는 당신에게 해가 진 후에도 주조소에 남아있을 만한 사람들과 얘기하라고 권하고 싶소. 내 머리에 떠오르는 두 사람은 노동자 감독인 틸돈과 그를 늘 훔쳐보고 있는 사로스란 청년이오."~ */
  IF ~~ THEN REPLY #6461 /* ~"틸돈과 사로스? 알겠소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"틸돈과 사로스? 알겠소. 가서 그들을 조사하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~그녀는 눈살을 찌푸리자 그녀의 흉터가 있는 얼굴에 주름이 몇 줄 더 생긴다. "기술자들에 대해 알고 싶으면 내 대장장이들 중 한 사람과 얘기하시오. 나는 그들을 좋게 평할 수가 없소."~ */
  IF ~~ THEN REPLY #6464 /* ~"그건 왜요?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"좋소. 그럼 다른 질문에도 대답해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"알겠소." 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"왜냐고? 그것은 그들이 동료들과는 달리 이 프로젝트에 열의를 보이지 않기 때문이오. 또한 그들은 실제로 행동을 할 생각은 않고 꿈만 꾸는 몽상가들이기 때문이오. 그리고 궁극적으로 나는 그들이 우리 전체보다는 자신들만의 이익을 추구한다고 생각하기 때문이오."~ */
  IF ~~ THEN REPLY #6468 /* ~"알겠소. 그럼 다른 질문에도 대답해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~그녀는 당신을 바라본 후, 다시 난처하다는 표정으로 다콘을 바라본다. "물론이에요, 영예로운 분, 만약 당신께서 그를 대변하여 말씀하시고 여기서 한 얘기를 비밀로 지키겠다고 약속하시겠다면." 그녀는 마지못해 당신에게로 시선을 돌린다. "내게 할 질문이 있소?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"그렇소."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"그렇소."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"아니, 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~켈'레라는 고개를 숙인다.~ */
  IF ~~ THEN REPLY #6367 /* ~"그건 무슨 뜻이오?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"좋소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"알겠소. 그럼 이 곳에서의 내 용무는 끝났소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~켈'레라는 고개를 숙인다.~ */
  IF ~~ THEN REPLY #6385 /* ~"그건 무슨 뜻이오?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"좋소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"알겠소. 그럼 이 곳에서의 내 용무는 끝났소. 안녕히 계시오."~ */ EXIT
END
