// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~노동자는 당신으로부터 도망친다.~ */
  IF ~~ THEN REPLY #5504 /* ~완료.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~이 사람은 당신이 경비병들에게 출구로 끌려 나갈 동안 애써 무시하려고 노력한다.~ */
  IF ~~ THEN REPLY #5506 /* ~완료.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"내가 듣기로 사체 부근에서 대장장이용 송곳을 찾았다고 하오. 하지만 그런 건 어디에서나 흔히 볼 수 있는 거니까. 내 생각에 범인은 틸돈이오. 주조소에서 그보다 더 성질이 고약한 사람은 없소. ~ */
  IF ~~ THEN REPLY #5508 /* ~"협조에 감사하오. 하지만 내 질문에 대답해주어야겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"물어보시오."~ */
  IF ~~ THEN REPLY #5511 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"뭘 하고 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"누가 당신 보스요?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"왜? 당신은 테이커(훼이티드)의 일원이오? 난 이미 세금을 냈소."~ */
  IF ~~ THEN REPLY #5516 /* ~"테이커? 그게 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"아니, 그냥 궁금했을 뿐이오. 친절하게 하려고 말이오."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"관두시오. 애초부터 알고 싶었던 건 따로 있었소."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"내 일당을 벌고 있소. 내 자신을 향상시키려 노력하고 있소. 이 곳을 깨끗하게 유지하고 있소. 재료가 대장장이들이 필요로 할 때 공급되도록 만전의 준비를 기하고 있소. 완성된 제품이 가야할 곳으로 가도록 확인하오...이런 것들이 내 일이오. ~ */
  IF ~~ THEN REPLY #5521 /* ~"그래 당신 일은 기본적으로 청소와 불평하는 일이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"알겠소. 당신에게 또 다른 질문을 하고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"왜? 당신은 그를 위해 일하오?"~ */
  IF ~~ THEN REPLY #5525 /* ~"음... 그렇소."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"농담하는 거요?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"시의 세금 징수원 말이오. 당신은 일자무식이오? 나는 하던 일로 돌아가겠소."~ */
  IF ~~ THEN REPLY #5528 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"난 당신을 친절하게 대할 여유가 없소, 특히 감독이 저기서 저렇게 지켜보고 있을 때는 말이오. 우린 요즘 바쁘오. 이 프로젝트가 끝나면 나도 당신을 친절하게 대할 테니 그 때 다시 보는 게 어떻겠소?"~ */
  IF ~~ THEN REPLY #5530 /* ~"좋소. 또 다른 질문에 대답해 주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"만약 당신이 그런 식으로 생각한다면 할 수 없지. 나는 지금 이 갓즈맨 이야기에 대해 배우고 있소, 그러니 그건 고집의 시험인 모양이오. 나는 내 인생 전부를 고집의 시험으로 본다오."~ */
  IF ~~ THEN REPLY #5533 /* ~"왜 그것을 고통의 시험이라고 보고 그냥 포기하지 않는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"그게 정말 도움이 되오?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"그렇다면 그는 이 세상의 소금같은 존재로군. 정말 신사 말이오. 그는 아무리 칭찬해도 부족하오, 하지만 난 하던 일로 돌아가야겠소. 안녕히 가시오." 노동자는 돌아서서 그 후의 질문에 대해서는 일체 대답하지 않는다.~ */
  IF ~~ THEN REPLY #5537 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"내가 만난 사람들 중에서 가장 더럽고 역겨운 자식이오... 그리고 난 이렇게 보여도 벌통에서 별 놈들을 다 보며 자란 몸이라오. 그 작자가 빨리, 그것도 끔찍하고 고통스럽게 죽었으면 좋겠소. 하지만 다른 노동자들도 같은 생각이오."~ */
  IF ~~ THEN REPLY #5539 /* ~"알겠소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"관두고 어디로 가란 말이오? 누가 날 고용할 거요? 현 체제 하에서 벌통 출신인 내가 할 수 있는 일이라고는 허드렛일뿐이오. 젠장, 난 내가 이 정도 일이라도 얻은 것도 감사하고 있소. 당신이 내게 더 좋은 직장을 구해주면 모를까, 난 지금도 행복하오. 굶어 죽는 것보다는 훨씬 낫소."~ */
  IF ~~ THEN REPLY #5542 /* ~"오, 제발. 마음만 먹는다면 무슨 일이든 할 수가 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"그건 설득력이 있소. 하지만 당신이 더 잘할 수 있다고 생각하지는 않소?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"놀랍게도 그렇소. 내가 현세나 내세에서 더 나아질 거라는 희망을 내게 주시오. 내가 뭔가 명확한 사실을 잊고 있는지도 모르겠소, 하지만 나처럼 시궁창의 오물을 먹은 적이 있는 사람은 인생이 내게 던져 주는 작은 친절에도 감사할 줄 아는 법이오. 노동자 계급의 삶이란 그렇게 달콤한 것이 아니오." 노동자는 돌아선다. "난 하던 일로 돌아가야겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #5545 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"아니 당신과 같은 상처투성이 좀비가 되란 말이오? 사양하겠소. 나는 당신이 어떤 일을 했는지는 모르나 나는 내 현재에 만족하오. 살면서 천천히 진보하는 것이 내 신념에는 더 어울리오. 미안하오만 나는 이제 하던 일로 돌아가야겠소." 노동자는 돌아서서 당신을 무시한다.~ */
  IF ~~ THEN REPLY #5547 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"자, 당신은 당신 삶을 살고 나는 내 삶을 살도록 합시다. 좋소? 나는 이제 하던 일로 돌아가야만 하오." 노동자는 돌아서서 당신을 무시한다.~ */
  IF ~~ THEN REPLY #5549 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"요즘 이 곳에서는 너무 일들이 많이 일어나 나는 무슨 일들이 일어나고 있는지 다 파악도 못하겠소. 마치 아직도 벌통에 있는 기분이오... 무슨 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #5551 /* ~"내 질문에 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"당신은 날 도울 수 없소. 그러니 신경 쓰지 마시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~상자를 나르는 단조로운 복장의 벌통 주민이 보인다. 이 불쌍한 사람은 그 성별조차 알아보기가 어렵다. "내게서 뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #5554 /* ~"몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #5557 /* ~"몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"아무 것도 없소."~ */ EXIT
END
