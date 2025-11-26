// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~이 생명체의 몸의 대부분은 숫양과 인간의 혼합이다. 그의 머리도 뒤죽박죽으로, 코는 넓고 납작하며 염소와 같은 귀와 소용돌이처럼 감긴 뿔이 달려 있다. 그의 더러운 털가죽은 정교한 패턴으로 깎여 있으며, 그의 마구에는 테두리가 넷 달린 거대한 기마용 창이 걸려 있다. 그는 당신이 있다는 사실을 눈치채지 못한 듯하다.~ */
  IF ~~ THEN REPLY #12469 /* ~"안녕하시오..."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"토 만났군, 팡랑자. 내게 뭐 원하는 커라토 있소?"~ */
  IF ~~ THEN REPLY #12471 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"난 탕신에게 타시는 내 갈 킬을 가로막지 말라고 했소! 싸울 준피를 하시오, 투 타리..."~ */
  IF ~~ THEN REPLY #12473 /* ~"하지만..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~그는 놀라운 속도로 당신을 향해 돌아선다. 그는 수상하다는 눈초리로 당신을 바라본다. 그의 목소리는 굵고 나직하게 울리며, 인간의 목소리와는 명확히 다르다. 또 발음이 독특하다. "뭘 원하시오, 투 타리..." 그는 손을 창 가까운 곳에 두고 있다. ~ */
  IF ~~ THEN REPLY #12475 /* ~"단지 당신과 얘기하기 위해. 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"당신이 싸움을 원했다면 제대로 걸렸소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~그는 진정한 듯 손을 무기에서 뗀다. 하지만 그는 아직도 당신으로부터 일정 거리를 유지한다...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"뭘 물어포고 싶소?"~ */
  IF ~~ THEN REPLY #12478 /* ~"왜 나를 그토록 경계하는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"이 도시에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"우리 주변의 빈민굴에 대해 얘기해주시오."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"나는 일지를 잃어버렸소. 그것을 본적이 있거나, 아니면 어디 가면 찾을 수 있을지 혹시 아시오?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~그는 순식간에 마구에서 창을 뽑아 공격할 태세를 취한다. "우리가 싸우기 전에 나는 탕신이 왜 나를 콩켝했는지 알코 싶소, 투 타리." 그가 무게중심을 앞뒤로 움직임에 따라 쇠편자를 단 그의 발굽이 땅바닥에 부딪히면서 밝은 불꽃을 튀긴다.~ */
  IF ~~ THEN REPLY #12485 /* ~"그럴 뜻은 없었소..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"나? *나를* 위협한 건 *당신*이오."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"나? *나를* 위협한 건 *당신*이오."~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"넌 날 모욕했다. 이 다리 넷 달린 염소 엉덩이 얼간아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"그렇게 하고 싶은 기분이 드니까..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~돌아서서 떠난다.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~도망친다.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~그는 창을 약간 내리린다. 그는 분노를 가라앉히려는 듯 한숨을 쉰다. "좋소, 그럼. 크렇케 성큽하게 피를 포려코 할 필요는 없지. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #12492 /* ~"나는 뭘 좀 물어보고 싶소..."~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"마음을 바꿨소. 난 당신 피를 봐야겠소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"뭐? 아니, 투 타리, *내*케 타카온 컨 *탕신*이오. 탕신이 싸움을 원한다면 난 키꺼이 응하겠소, 하지만 탕시이 지큼 물러선타고 해서 탕신 명예가 상처입지는 않을 커요..."~ */
  IF ~~ THEN REPLY #12494 /* ~"좋소... 나는 질문을 하나만 하고 싶었을 뿐이오..."~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"아니야... 그건 당신이었소, 그리고 당신은 그걸 후회하게 될 거요."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"그럼 관두시오. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"뭐" 그는 당신의 비난이 믿기지 않는다는 표정이다. "아니, 투 타리, *내*케 타카온 컨 *탕신*이오. 탕신이 싸움을 원한다면 난 키꺼이 응하겠소, 하지만 탕시이 지큼 물러선타고 해서 탕신 명예가 상처입지는 않을 커요..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"아, 또 탕신이군, 투 타리. 이젠 뭐요?"~ */
  IF ~~ THEN REPLY #12497 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"좋아, 이 톨태가리에 흉터투성이인 똥먹는 원숭이 캍으니! 만약 네가 이 싸움에서 살아 남는타코 해도 타시는 내 킬을 가로막지 마!" 그는 돌격할 준비를 하며 발굽으로 땅을 찬다.~ */
  IF ~~ THEN REPLY #12499 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~그는 당신으로부터 뭔가를 기다리는 듯 잠시 아무 말도 하지 않는다. "아.. 이 토시가 어떻타는 커요?"~ */
  IF ~~ THEN REPLY #12501 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"그건 정확히 어디에 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"관두시오. 다른 것에 대해 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"내 질문은 잊으시오, 별로 중요한 게 아니니까. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"크컨 쿄차로요, 투 타리. 탕신도 모튼 킬은 시킬로 통한타는 컬 알지 앟소?"~ */
  IF ~~ THEN REPLY #12505 /* ~"패스(pass)? 패스(path) 말이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"그래, 알겠소... 시길은 정확하게 어디에 있는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"다른 것에 대해 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"어디? 흠..." 그는 생각에 잠겨 쳐다보며, 자신의 염소 수염을 당긴다. "...시킬은 타원 우주의 중심인 아웃랜즈에 있소. 하지만 어느 콧에서토 시킬로 올 수 있키 때문에 시킬은 타른 콧에서토 존재한타고 할 수 있소. 알겠소?"~ */
  IF ~~ THEN REPLY #12509 /* ~"그렇게 생각하오. 하지만 이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"그렇소. 다른 것에 대해 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"그렇소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~그는 잠시 슬픔에 잠긴다. "이콧은... 비참하코 터러운 콧이오... 불친절하코 때로는 절팍한 사람들로 카특한. 바리아우르가 팡문하키에는 펼로 좋은 장소카 아니오, 투 타리." 그는 어깨를 으쓱한다. "하지만 내케는 일이 있어 여키 오케 퇸 커요."~ */
  IF ~~ THEN REPLY #12512 /* ~"방문? 당신은 이 곳에 살지 않소?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"용건? 당신은 무엇 때문에 이 곳에 온 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"알겠소. 당신에게 다른 질문을 하겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"그럼 당신이 당신 용건을 보도록 그만 보내주리다. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~그는 고개를 저으며 웃는다. "아니, 아니오, 투 타리. 어떤 바리아우르토 이런 콧에선 살 수카 없소."~ */
  IF ~~ THEN REPLY #12516 /* ~"당신은 어디서 왔소?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"무슨 용건으로 이 곳에 온 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"알겠소. 당신에게 다른 질문을 하겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"그럼 당신이 당신 용건을 보도록 그만 보내주리다. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"나중에, 투 터리. 우리카 보타 나은 장소에서 만나케 퇴면 말해주리다."~ */
  IF ~~ THEN REPLY #12520 /* ~"당신은 이 곳을 방문 중이라고 했소. 당신은 이 곳에 살지 않소?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"그럼 다른 것에 대해 물어봅시다...'~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"그럼 다시 만날 때까지 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"이스가드의 평원에서 왔소, 투 타리. 그콧은 내 코향이오." 그는 즐거운 추억을 되새기며 미소짓는다. ~ */
  IF ~~ THEN REPLY #12523 /* ~"무슨 용건으로 이 곳에 온 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"그렇다면 다른 질문이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~그는 당신을 흥미로운 눈으로 본다. "크컷들에 태해 정확히 뭘 알코 싶은 커요?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"나는 내 자신을 즐길 곳을 찾고 있소."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"나는 내 자신을 즐길 곳을 찾고 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"나는 일거리를 찾고 있소."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"나는 일지를 잃어버렸소. 그것을 본적이 있거나, 아니면 어디 가면 찾을 수 있을지 혹시 아시오?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"실은 아무 것도 아니오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"생각해 보니 아무 것도 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"내 생칵에 여키서 즐킬 만한 커라콘 없소, 투 타리. 아마 타른 쿠역에서 찾아포는 컷이 좋을 커요."~ */
  IF ~~ THEN REPLY #12533 /* ~"만약 내가 일자리를 찾고 있다면?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"다른 구역? 아마도. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~그는 눈살을 찌푸린다. "벌통에서 정직한 일커리는 커의 없소... 벌통에서 풍푸한 컨 말썽뿐이오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"내 자신을 즐길만한 장소는?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"내 자신을 즐길만한 장소는?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"그럼 다른 질문에 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"당신이 옳을지도 모르오. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"나는 여키 사람들을 몇 명 아오, 투 타리... 하지만 '파로드'란 사람은 그틀 중 한 사람이 아니오. 탕신 친구요?"~ */
  IF ~~ THEN REPLY #12537 /* ~"나는 정말 모르오. 당신에게 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"아마도. 실은 나 자신도 잘은 모르겠소. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~그는 그냥 고개를 젓는다. "아니오, 투 타리, 크런 케 아니오."~ */
  IF ~~ THEN REPLY #12539 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"좋소. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"레이디?" 그는 누가 엿듣고 있는지 살피려는 듯 주변을 둘러본다. "나는 크녀가 이콧 시킬 전역을 지패하고 있으며, 이콧 사람들이 크녀의 이름을 입에 탐는 컷은 풀행을 푸른타코 생칵한타는 컷 팎에 모르오."~ */
  IF ~~ THEN REPLY #12541 /* ~"알겠소. 다른 질문에 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"고맙소. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~그는 약간 화가 난 듯하다. "크래, 크렇케 말했소. '킬.'"~ */
  IF ~~ THEN REPLY #12543 /* ~"아니, 당신은 또 실수했소. 통과(pass)가 아니라 길(path)이요."~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"좋소. 시길은 정확하게 어디에 있는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"알겠소. 다른 것에 대해 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"좋소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~그는 자신의 검은 눈을 좁게 뜨고, 의심과 분노로 가득 찬 눈으로 바라본다. "크래, 크렇케 말했소. *탕신*이 *내* 말을 이해하려고 노력하는 게 좋을 커요, 투 타리..."~ */
  IF ~~ THEN REPLY #12547 /* ~"난 할 수 있소: 야, 야, 야! 보크, 보크, 보크!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"당신이 옳소. 사과하리다. 다른 것에 대해 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"어쨌든 간에. 안녕히 계시오, 네 다리."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"당신이 옳소. 사과하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~그는 역겹다는 표정으로 비웃으며 무기에 손을 댄다... 그러더니 냉정을 되찾는다. "타시는 내 칼 킬을 카로막지 마라, 퇘지같은 놈, 아니면 내카 널 죽일 테니." 그는 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #12551 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~그가 떠나려 할 때 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
