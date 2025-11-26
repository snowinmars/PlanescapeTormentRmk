// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~옷을 잘 차려 입은 중년 여성이 보인다. 그녀는 얼굴을 찡그리고 있으며, 누군가 또는 무엇인가를 기다리고 있는 듯하다.~ */
  IF ~~ THEN REPLY #58514 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~그녀는 멈추어서 당신을 잠시 쳐다본 후 대답을 한다.  "당신은 누구죠, 그리고 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #58517 /* ~거짓말: "내 이름은 아단이며 당신에게 몇 가지 질문할 것들이 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"난 내 이름을 기억하지 못하오."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~그녀는 손을 내민다. "안녕하세요. 나는 로버타예요."~ */
  IF ~~ THEN REPLY #58521 /* ~그녀의 손을 잡고 허리를 굽혀 인사한다: "만나서 반갑소, 로버타 부인."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"내게 질문하실 것이 있죠?"~ */
  IF ~~ THEN REPLY #58524 /* ~"그렇소, 부인."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"아무 것도 아니오, 부인. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"주저하지 말고 질문을 하세요."~ */
  IF ~~ THEN REPLY #58527 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 커스트에 있다고 들었소."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"당신은 화가 난 것 같소. 뭐라도 잘못되었소?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"이 곳에서 벌어지고 있는 흥미로운 일은 없소?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"커스트에 대해 내게 얘기해줄 수 있겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"누가 이 곳의 실력자요?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~그는 잠시 멈추고 생각을 한다. "나도 그런 소문은 들었어요. 하지만 난 그가 어디 있는지 몰라서 당신에게 도움을 줄 수가 없군요. 시 광장에 있는 행정부 건물에 가서 물어보세요."~ */
  IF ~~ THEN REPLY #58534 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~그녀는 눈살을 찌푸린다. "그래요... 내 남편인 칼 파휘도는 그가 있다고 말한 장소에 없어요. 그가 자신의 소재에 대해 거짓말을 한 건 이번이 처음이 아니에요, 그리고 난 요즘..." 그녀는 잠시 얘기를 중단한다. "나는 내 남편이 다른 여자, 그것도 창녀와 함께 있다고 생각하게 됐어요."~ */
  IF ~~ THEN REPLY #58539 /* ~"왜 그렇게 생각하시오?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~그녀는 한숨을 쉰다. "그는 결혼 전에 여자관계가 복잡했어요, 특히 창녀들과. 그리고 나는 소문을 들었어요..." 그녀는 화가 난 것 같다. "만약 소문이 사실이라면 난 그에게 깜짝 놀랄 선물을 줄 생각이에요."~ */
  IF ~~ THEN REPLY #58546 /* ~"깜짝 놀랄 선물?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"그래요." 그녀는 치마를 걷어 올려 허벅지를 보여준다.그 곳에는 칼집에 넣은 대거가 하나 매여 있다. 그녀는 칼을 뽑고는 사악한 미소를 짓는다. "나는 이 칼이 그의 등 뒤를 뚫고 나오는 거라면 충분히 놀랄 만한 선물이라고 생각하는데, 동의하지 않으세요?" 그녀는 칼을 치운다.~ */
  IF ~~ THEN REPLY #58555 /* ~"그래 당신은 그를 죽이려 하오?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~로버타 파휘도라는 여인은 자신의 남편 칼을 죽이고 싶어한다. 그녀의 남편은 다른 여자와 바람이 났고 로버타는 그것을 묵과할 수 없는 듯하다. 흥미롭군. ~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~자신이 한 말을 생각해보면서 그녀의 얼굴에서는 미소가 사라진다. 마침내 그녀는 한숨을 쉬고 칼을 칼집에 넣는다. "그럴 수만 있다면... 하지만 나도 바보군요. 칼과 난 더 이상... 관계를 갖지 않아요. 그에게 일격을 가할 정도로 가까이 갈 수도 없어요." 그녀는 잠시 다른 곳을 쳐다본다. "그가 좋아하는 부류의 여자만이..."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"나는 돈을 필요로 하는 키리라는 창녀를 아오. 아마 그녀라면 일을 해낼 수 있을 정도로 가깝게 접근할 수 있을지도 모르오..."~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~그녀는 잠시 당신을 쳐다본다. "알겠어요..." 그녀는 주위를 둘러보더니 가까이 다가와 속삭인다. " 내 대신 그녀에게 접근해 그녀를... 고용해 줄 수 있겠어요? 일이 끝나면 내가 당신들 두 사람에게 각각 동전 오백 닢씩 주겠어요."~ */
  IF ~~ THEN REPLY #58586 /* ~"그건 별로 많은 액수의 돈이 아니오."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"생각없소. 안녕히 계시오."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~나는 로버타 파휘도가 그녀의 남편을 죽이는 일을 돕는 것을 거부했다. ~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"돈이라면 환영이오. 키리와 얘기를 나누겠소."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~나는 로버타 파휘도가 그녀의 남편을 죽이는 일을 돕기로 합의했다. 나는 키리라는 창녀와 얘기를 해서 그녀가 일을 맡을지를 확인해야 한다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~그녀는 눈살을 찌푸린다. "흠... 그럴 수도 있지만 난 그 이상은 낼 수 없어요. 당신들 두 사람이 오백 닢씩 버느냐 마느냐는 당신에게 달렸어요."~ */
  IF ~~ THEN REPLY #58592 /* ~"사양하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~나는 로버타 파휘도가 그녀의 남편을 죽이는 일을 돕는 것을 거부했다. ~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"돈이라면 환영이오. 키리와 얘기를 나누겠소."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~나는 로버타 파휘도가 그녀의 남편을 죽이는 일을 돕기로 합의했다. 나는 키리라는 창녀와 얘기를 해서 그녀가 일을 맡을지를 확인해야 한다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~그녀는 미소짓는다. "좋아요. 그녀에게 아무 때나 편할 때 하라고, 그러나 너무 시간을 끌리지는 말라고 전하세요. 알을 마치고 내게 오면 대금을 지불하겠어요."~ */
  IF ~~ THEN REPLY #58595 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~그녀 잠시 생각을 한다. "젊은 아가씨가 사라졌다는 얘기를 들은 적이 있어요. 아마 술집 주인의 딸일 거예요. 자세한 내용은 몰라요. 그것 말고는 별다른 일은 생각나지 않는군요."~ */
  IF ~~ THEN REPLY #58598 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~그녀는 미소를 지으며 웃는다. "커스트는 똥통이에요, 그리고 우리는 그 곳을 채우는 똥이고요." 그녀는 어깨를 으쓱한다. "이 주제에 대해서는 더 이상 할 말이 없어요."~ */
  IF ~~ THEN REPLY #58601 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"토버스 길재프. 그는 시 광장에 있는 행정부 건물에 있어요."~ */
  IF ~~ THEN REPLY #58604 /* ~"토버스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"토버스 길재프는 ... 좀 괴짜죠." 그녀는 잠시 멈추고 생각을 한다. "나도 그에 대해서는 잘 몰라요, 그가 기스저라이이며 위저드라는 것 말고는."~ */
  IF ~~ THEN REPLY #58608 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~그녀는 약간 놀란 표정으로 당신을 쳐다본다. "정말인가요? 혹시 당신은 청원자인가요? 내가 알기로 그들은 흔히 기억을 잃는다고 하더군요."~ */
  IF ~~ THEN REPLY #58611 /* ~"청원자란 무엇이오?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~그녀는 잠시 멈추고 생각을 한다. "청원자들은... 죽은 후에 자신의 신념과 일치하는 차원에서 다시 태어난 자들을 가리켜요. 그들은 대개 전생의 기억을 잃어요. 아마 당신도 그런 경우일지 모르죠."~ */
  IF ~~ THEN REPLY #58613 /* ~"그럴지도... 이 환생이란 건 볓 번이나 가능하오?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"나는 이런 문제에 있어서 전문가는 아니에요, 하지만 내가 알기로 그런 일은 단 한 번밖에 일어나지 않아요. 환생한 후에 죽을 경우에는 그들은 자신이 속한 차원의 일부가 되죠. 만약 다른 차원에서 죽을 경우에는 완전히 소멸하고 말아요."~ */
  IF ~~ THEN REPLY #58615 /* ~"알겠소... 어쨌든 내겐 당신에게 말해줄 이름이 없소."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~로버타가 보인다. 당신이 다가가자 그녀는 미소짓는다. "안녕하세요. 어떤 도움을 원하시죠?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"당신은 아직도 당신 남편을... 처치하고 싶소?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"당신은 아직도 당신 남편을... 처치하고 싶소?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"당신은 아직도 당신 남편을... 처치하고 싶소?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~그녀는 미소짓는다. "물론이에요. 왜 물으시죠?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"나는 돈을 필요로 하는 키리라는 창녀를 아오. 아마 그녀라면 일을 해낼 수 있을 정도로 가깝게 접근할 수 있을지도 모르오..."~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"그냥 궁금할 뿐이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~그녀는 눈살을 찌푸린다."물론이에요. 하지만 당신은 내 제의를 거절했었어요. 그럼 당신은 내 제의를 재고하신 건가요? ~ */
  IF ~~ THEN REPLY #58628 /* ~"아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"돈이라면 환영이오. 키리와 얘기를 나누겠소."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~그녀는 눈살을 찌푸린다. "물론이에요. 당신은 이미 나와 계약을 했어요. 일은 마쳤나요?~ */
  IF ~~ THEN REPLY #58638 /* ~"아직 아니오, 하지만 노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~로버타가 보인다. 그녀는 처음으로 행복해 보인다. 그녀는 조심스럽게 주변을 둘러보고 있다. "안녕하세요. 돈을 받으러 오셨겠죠?" 그녀는 미소짓는다.~ */
  IF ~~ THEN REPLY #58640 /* ~"그렇소, 당신이 부탁한 일은 처리되었소."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~그녀는 대답을 하기 전에 다시 주변을 둘러본다. "좋아요. 내가 약속했던 돈이 여기 있어요." 그녀의 얼굴에 우려하는 빛이 잠시 스치고 지나간다. "어... 당신 친구는 칼을 정말 *철저히* 처치했더군요. 당신들 두 사람 모두를 치하해요." 그녀는 당신에게 묵직한 지갑을 준다. "당신 몫이에요. 키리에게는 이미 지불했어요."~ */
  IF ~~ THEN REPLY #58642 /* ~"고맙소. 당신과의 거래는 만족스러웠소."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~로버타가 보인다. "다시 만나 반가워요. 내 도움이 필요하신가요?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"나는 토버스 길재프를 만나고 싶소. 만남을 주선해 줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"아니, 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~로버타가 보인다. 당신을 보자 그녀는 격노한다. "너! 이 구더기투성이의 더러운 똥 같으니! 너 때문에 내가 어떤 꼴이 됐는지 좀 봐라!" 그녀의 얼굴은 어찌나 빨간지 당장이라도 폭발할 것 같다.~ */
  IF ~~ THEN REPLY #58646 /* ~"내 탓이라고? 자신의 배우자를 죽이려고 음모를 꾸민 건 내가 아니오."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~그녀는 눈을 가늘게 뜨고 문자 그대로 당신에게 말을 내뱉는다. "넌 내 신뢰를 배신했어! 칼은 날 여기로 보내기 전에 네 배신 행위에 대해 흡족스럽게 얘기를 하더군! 이 후레자식!"~ */
  IF ~~ THEN REPLY #58649 /* ~"창녀 얘기가 나왔으니까 말인데, 키리도 이 곳에 갇혔소?~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~그녀는 당신에게 비명을 지른다. "아아아아! 넌 그 답을 알잖아, 개자식! 순진한 척하면서 날 고문하려는 거군  !"~ */
  IF ~~ THEN REPLY #58652 /* ~"내가 모른다고 치고 그녀가 어떻게 되었는지 말해주시오."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"그 음흉한 창녀! 그년은 칼의 첩이 되어 감옥에 가는 걸 면했어!"~ */
  IF ~~ THEN REPLY #58655 /* ~"교활한 년이군... 자, 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~그녀 당신을 노려본다. 그녀의 눈은 증오로 불타고 있다. "그래... 가라고. 하지만 이건 기억해. 난 이 구덩이에서 영원히 있지는 않을 거야, 그리고 난 너와 그 창녀를 결코 잊지 않을 거야!~ */
  IF ~~ THEN REPLY #58657 /* ~그녀를 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~그녀는 가볍게 고개를 숙인다. "내가 달리 도울 일이라도 있나요?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"나는 토버스 길재프를 만나고 싶소. 만남을 주선해 줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"아니, 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~그녀는 미소짓는다. "토버스... 미안해요. 그는 요즘 워낙 바빠서 나도 그를 만날 기회가 없었어요."~ */
  IF ~~ THEN REPLY #58662 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
