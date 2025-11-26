// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~이 젊은 여자로부터는 술 냄새가 심하게 난다, 그리고 그녀의 검은색 피부에도 불구하고 그녀의 아름답지만 잔인하게 생긴 얼굴이 술에 취해 빨개졌다는 건 명백하다. 그녀는 날씬하기는 하나 근육이 발달되어 있으며, 이국적인 보석과 반투명의 비단옷으로 몸을 치장하고 있다. 그녀의 팔뚝과 넓적다리에는 수많은 흉터가 있는데, 싸우다가 생긴 상처들 같다. ~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~그 여자 가까이에 가지 않는다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"대체 어떤 괴물이 *널* 낳았지?" 그녀는 역겨움에 얼굴을 찡그린다, 그리고 당신 귀에 거슬리게 웃는다. "정말 고약한 냄새로군! 무덤에서라도 기어 나온 거야?" 당신은 그녀의 엉덩이에 곡선형의 긴 나이프가 달려 있다는 것을 눈치챈다. 그녀는 그 칼의 자루끝에 손을 가볍게 얹고 있다. ~ */
  IF ~~ THEN REPLY #32541 /* ~"*뭐라고* 했지, 이 계집년아?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~허풍: "아다나? 당신이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"당신은 대체 뭐가 잘못된 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"당신과 말싸움을 할 생각은 없소. 날 내버려 두고 당신 갈 길이나 가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~그녀를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"대체 어떤 괴물이 *널* 낳았지?" 그녀는 역겨움에 얼굴을 찡그린다, 그리고 당신 귀에 거슬리게 웃는다. "정말 고약한 냄새로군! 무덤에서라도 기어 나온 거야?" 당신은 그녀의 엉덩이에 곡선형의 긴 나이프가 달려 있다는 것을 눈치챈다. 그녀는 그 칼의 자루끝에 손을 가볍게 얹고 있다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"오, 꼭 봐야겠군. 그래, 말해봐, 이 자식아. 너한테서 하수도 냄새가 나는 거야, 아니면 하수도에서 *네* 냄새가 나는 거야?"~ */
  IF ~~ THEN REPLY #32547 /* ~"*뭐라고* 했지, 이 계집년아?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~허풍: "아다나? 당신이오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"당신은 대체 뭐가 잘못된 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"당신과 말싸움을 할 생각은 없소. 날 내버려 두고 당신 갈 길이나 가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~그녀를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~여자는 놀라서 당신을 보며 눈을 깜박인다. ~ */
  IF ~~ THEN REPLY #32553 /* ~"아다나? 날 기억하지 못하겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"내가 말했지, 아다나. 난 당신을 사랑한 적도 없고, 사랑하지도 않을 거요. 당신이 내게 주었을지도 모르는 약간의 쾌락은 당신의 존재가 내게 주는 고통과 비교할 때 하찮은 것이오. 이제 날 그냥 내버려 두시오."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"아... 사과하리다. 난 당신이 아다나라고 생각했는데, 잘 보니 당신은 그녀보다 두 배는 더 못생겼고 냄새도 더 지독하군."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~그녀는 당신을 잠시 조심스럽게 살핀 후 미소를 짓는다. "네 몸에 난 깊은 상처들 때문에 네가 착각을 한 모양이군." 그녀는 낄낄거린다. "나는 네 친구가 아냐, 그리고 너같은 놈하고 알고 지낼 생각도 없어."~ */
  IF ~~ THEN REPLY #32557 /* ~"아... 사과하리다. 난 당신이 아다나라고 생각했는데, 잘 보니 당신은 그녀보다 두 배는 더 못생겼고 냄새도 더 지독하군."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~그녀는 어리둥절한 표정으로 잠시 동안 당신이 하는 말을 듣는다. 그러더니 갑자기 으르렁거리면서 무기를 뽑아 들려고 한다.~ */
  IF ~~ THEN REPLY #32559 /* ~그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~경비병들을 부른다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~그녀는 충격 때문에 헐떡거린다. "이 얼간아... 너 미쳤어? 경비병들이 내 말보다 네 말을 믿을 거라고 생각해?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"당신은 분명히 취했고, 당신 몸에 난 흉터를 보니 싸움을 생업으로 하는 사람 같소. 아마 이런 계통의 일로 이미 평판이 자지하겠군. ~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"당신은 분명히 취했고, 당신 몸에 난 흉터를 보니 싸움을 생업으로 하는 사람 같소."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~그녀는 이를 갈면서 당신을 노려본다. "다른 곳에서 또 만나면 국물도 없어, 이 개새끼야!" 그녀는 돌아서서 화급하게 떠난다.~ */
  IF ~~ THEN REPLY #32563 /* ~"아, 나는 우리가..."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~그녀가 떠나가자 지루하다는 듯이 하품을 한다.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~그녀는 이를 갈면서 당신을 노려본다. "그럼 이 일은 없었던 걸로 하고 각자 갈 길이나 가자고."~ */
  IF ~~ THEN REPLY #32566 /* ~"좋소. 당신은 이미 내 시간을 충분히 허비했소. 안녕히 계시오."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"물론이오. 안녕히 계시오."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"물론이지, 하지만 먼저..." 그녀는 잠시 멈춘다, 그리고 입을 비죽거리며 사악한 미소를 짓는다. "...하나만 물어보지. 어떻게 하면 한 번 나서 죽을 동안 너처럼 추악해질 수가 있지?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"그래... 증거를 원하면 당신 스스로를 한 번 보시오."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~그는 놀라서 당신을 잠시 쳐다본다, 그러나 곧 으르렁거리며 자신의 대거에 손을 뻗는다...~ */
  IF ~~ THEN REPLY #32571 /* ~그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~경비병들을 부른다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"내게 등을 보이고 돌아설 생각은 하지마, 이 개야. 네가 이 거리에 있다는 사실만으로도 나에 대한 모독이야. 그러니 사과를 해야겠어." 그년은 한쪽 발을 내민다. "내 부츠를 핥아, 그리고 내 앞에서 사라지면 모두 다 용서를 해주지."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~몸을 구부려 그녀의 부츠를 핥는다.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~몸을 구부려 그녀의 부츠를 핥는다.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~몸을 구부려 그녀의 부츠를 핥는다.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~몸을 구부려 그녀의 부츠를 핥으며 그녀를 해칠 기회를 노린다.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~그녀의 위협을 무시하고 떠난다.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~당신이 돌아서서 떠나려고 하자 그녀는 으르렁거리며 대거를 뽑으려고 한다... ~ */
  IF ~~ THEN REPLY #32579 /* ~그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~경비병들을 부른다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~그녀의 만족스럽고 조롱하는 듯한 날카로운 웃음소리는 거리에 울려 퍼진다. "자, 여기서 꺼져, 겁쟁아. 감히 네가 다시 내게 말을 걸면 네 말이 내 귀에 닿기도 전에 네 심장을 파내겠어."~ */
  IF ~~ THEN REPLY #32581 /* ~"좋아, 집어치우자고. 어디 네가 그 작은 칼을 쓰는 걸 한 번 볼까, 이 계집년아."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~떠난다.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"돼지새끼들!" 그녀가 날카롭게 소리를 지른다. "둘 다 죽여버리겠어!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~당신이 그녀 앞에 무릎을 꿇자 그녀는 한 손을 엉덩이에 앉고 고개를 들어 올린다. 그녀의 만족스럽고 조롱하는 듯한 날카로운 웃음소리는 거리에 울려 퍼진다.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~그녀의 맨다리에서 살을 한 덩어리 물어서 뜯어낸다.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~그녀의 맨다리에서 살을 한 덩어리 물어서 뜯어낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~그녀의 다리를 아래쪽으로부터 잡아당긴다.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~그녀의 다리를 아래쪽으로부터 잡아당긴다.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~그냥 그녀의 부츠를 핥는다.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~당신의 시도에도 불구하고... 그녀는 민첩하게 당신 손아귀에서 빠져나간다. "넌 네 *목숨*으로 그 대가를 치를 거다, 이 개새끼!" 그녀는 대거를 뽑아 든다...~ */
  IF ~~ THEN REPLY #32588 /* ~그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~경비병들을 부른다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~당신은 그녀의 다리 아래쪽을 잡고서 그녀의 장딴지 살을 물어뜯는다. 그녀는 뒤로 물러서면서 고통 때문에 비명을 지른다, 그리고 대거를 뽑아 든다. 당신이 물어뜯은 덕분에 그녀는 술이 깬 것 같다. "세상에, 너 미쳤어?!"~ */
  IF ~~ THEN REPLY #32590 /* ~그녀에게 미소지으며 입술에서 피를 닦아낸다.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"난 오늘 네 부츠를 핥지 않겠다, 이년아. 이제 꺼져라, 내가 더 큰 덩어리를 물어뜯기 전에." ~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~그냥 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~그녀는 눈에 띄게 몸을 떤다, 그리고 그녀는 극도의 혐오감으로 얼굴을 일그러뜨리며 도저히 믿을 수가 없다는 표정을 짓는다. "우! 너같은 놈은 다시는 꼴도 보고 싶지 않아! 이 짐승..." 그녀는 떠나려고 당신에게 등을 올린다.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~물어뜯는 소리를 내 떠나가는 그녀를 조롱한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~물어뜯는 소리를 내 떠나가는 그녀를 조롱한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"안녕히 계시오."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~그녀가 조용히 떠나도록 내버려 둔다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~그녀가 조용히 떠나도록 내버려 둔다.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~당신은 발목을 잡고 그녀의 다리를 아래쪽으로 잡아당긴다. 잠시 그녀는 공중에 붕 뜬다, 그리고 그녀는 소스라치게 놀라 입을 'O'자로 크게 벌린다. 찰나 후 그녀는 매우 아플 것 같은 '쿵' 소리를 내며 땅바닥에 떨어진다. 그녀는 곧바로 일어난다, 그리고 그녀의 두 눈은 분노로 이글거린다. "널 *죽이겠어!*" 그녀는 자신의 대거를 뽑는다..." ~ */
  IF ~~ THEN REPLY #32599 /* ~그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~경비병들을 부른다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"문제는 네가 너무 *추악하게* 생겼다는 거지." 그녀는 불쾌하다는 표정으로 냉소한다. "널 보기만 해도 내 속이 울렁거려."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"그건 네 어머니가 널 낳았을 때 한 말이 아니었나?"~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"나처럼 되기 전에 떠나는 게 네 신상에 좋을 거다."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~그녀를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"아니, 아니... 난 도저히 너처럼 될 순 없어. 자기 똥을 먹는 놈은 *거의* 없으니까."~ */
  IF ~~ THEN REPLY #32605 /* ~"네 주둥아리를 한 번만 더 놀리면 그걸 아주 좋아하게 만들어 주지."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"만약 내가 배설물을 원했다면 네 대가리를 쥐어짰을 거다."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~그녀를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"제대로 질문을 하려면 '그 *냄새*는 대체 뭐지'라고 해야지." 그녀는 코를 킁킁거리더니 역겨움에 코를 찌푸린다. "너군! 바로 너야, 이 구더기가 끓는 시체 같으니!"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~허풍: "기다리시오... 난 당신을 알아볼 수가 있소, 아다나!~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~허풍: "기다리시오... 난 당신을 알아볼 수가 있소, 아다나!~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"당신은 대체 뭐가 잘못된 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"당신과 말싸움을 할 생각은 없소. 날 내버려 두고 당신 갈 길이나 가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~그녀를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"대체 어떤 괴물이 *널* 낳았지?" 그녀는 역겨움에 얼굴을 찡그린다, 그리고 당신 귀에 거슬리게 웃는다. "정말 고약한 냄새로군! 무덤에서라도 기어 나온 거야?" 당신은 그녀의 엉덩이에 곡선형의 긴 나이프가 달려 있다는 것을 눈치챈다. 그녀는 그 칼의 자루끝에 손을 가볍게 얹고 있다. ~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~젊은 여자는 잠시 어리둥절해 한다, 그러더니 그녀는 훨-후럼-그레이스를 알아본다. 그녀는 놀라고 또 부끄러워 한다. "그레이스 선생님! 저는 당신을 미처 알아보자 못했어요... 정말 인정하기도 부끄러운 일이에요. 그 어떠한 멍청이라 하더라도 당신의 고귀한 모습은 쉽게 알아볼 수 있었을 테니까요. ~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"넌 굼벵이만도 못한 존재가 분명하군."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~그레이스가 그녀와 얘기를 하도록 한다.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~그녀는 부끄러워 하는 듯하다. "그래요, 선생님... 저는 선생님 앞에서 그런 말을 한 것을 후회하고 있어요."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"어..." 그녀는 얼굴을 찌푸린다, 그러나 곧 다시 마음의 평정을 찾는다. "어쨌든 무슨 일 때문에 외출을 하신 거죠, 선생님? 혹시 무슨 용건이라도?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~사하바는 고개를 푹 숙인다. "그럼 저는 선생님과 선생님 동료 분들께 사과를 드리고 이만 실례하도록 하겠어요, 그레이스 선생님. 제가 너무 경솔하게 말을 했어요. 그런 거친 말을 하게 된 것은 모두 술 때문이에요, 그리고 저는 옛 선생님 앞에서 스스로의 품위를 떨구는 짓을 해 정말 몸둘 바를 모르겠어요." 그녀는 고개를 숙여 인사한 후 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #32617 /* ~떠난다.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"그래, 그래... 이게 누구지? 벌통의 빈민굴에서 기어 나온 자그마한 티플링 여왕님?" 그녀는 입을 삐죽 내민다, 그리고 마치 어린 아이에게 얘기하는 듯한 말투로 말한다. "길이라도 잃었니, 작은 티플링아? 어머, 이것 좀 봐! 꼬리도 달렸네. 정말... 귀여워!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"그러지 않는 게 좋을 걸, 마족 찌꺼기." 그녀는 안나가 무기를 뽑아도 별로 신경이 쓰이지 않는 듯하다, 그리고 그녀는 그러면 못 쓴다는 투로 혀를 찬다. "조심해, 아니면 네 꼬리를 잘라서 내 개들에게 먹이로 줄 테니.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"그만해. 그녀에게 사과해라, 아니면 널 토막낼 테니."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"그만해. 그녀에게 사과해라, 아니면 널 토막낼 테니."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~안나에게 맡긴다.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"관두시오, 안나. 그년은 그럴 가치도 없소,"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"마계에서 온 역겨운 새끼 같으니, 넌 타나리조차 받아 주지 않을 화냥년의 사생아야!" 그녀는 칼을 뽑는다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"칼을 도로 집어넣지 않으면 내가 네 몸에 꽂아 주겠다."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"칼을 도로 집어넣지 않으면 내가 네 몸에 꽂아 주겠다."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~경비병들을 부른다.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~일이 벌어지도록 그냥 내버려 둔다.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"이건 대체 무슨 일이지?! 너같은 기스가 차원의 똥 구덩이인 림보에서 이토록 *멀리* 떨어진 곳까지 무슨 일이지?" 그녀는 눈을 가늘게 뜨고 다콘의 대답을 기다린다.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~그녀는 눈살을 찌푸린다. "이봐, 기스, 난 너희 족속들에게는 식인 개구리들이 번성하는 림보의 수프 속이 더 어울린다고 생각하는데."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"너에겐 시체안치소가 더 어울릴 것 같군."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"너에겐 시체안치소가 더 어울릴 것 같군."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~다콘에게 맡긴다.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~그녀는 잠시 대답을 기다린 후 계속해서 다콘에게 잡소리를 늘어놓는다. "왜 림보로 돌아가지 않지, 기스?" 그녀는 자신의 턱을 어루만지며 생각을 한다. "아니, 너희 족속들이 사는 곳은 애스트럴계였나? 너희는 절말 헷갈려. 기스양키, 기스저라이. 누가 그 차이를 알 수 있겠어..." ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~계속한다.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~여자는 갑자기 미소를 짓는다. "오, 내게 농담을 해봐, 기스!" 그녀는 즐거운 듯 손뼉을 친다. "너희 종족의 그 유명한 유머를 내게 좀 들려줘, *기스양키!*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~그녀는 다콘을 조소한다. "기스, 내가 시길의 거리에서 널 만났을 때 나는 기스 쓰레기를 보며 말했지, '침을 뱉을 가치도 없는 놈이군.' 너는 섬길 신도 없어 동족의 후레자식을 근친상간 하듯 숭배하며, 개구리들과 교미를 하는 *기스양키* 개새끼에 불과해." 그녀는 자기 대거의 칼자루를 잡는다. "어디 네 나약한 칼을 뽑아 보시지, 기스 쓰레기."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"그만해라, 이년아. 입을 닥쳐."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"그만해라, 이년아. 입을 닥쳐."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~그녀를 당신이 직접 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"그녀를 공격하시오, 다콘."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~다콘의 반응을 기다린다.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~그녀는 기다린다, 하지만 여전히 다콘은 아무런 대답도 하지 않는다. "기스, 난 마인드 훌레이어들이 아직도 너희들을 노예로 부리고 있었으면 좋겠어, 다원 우주가 너희들의 번식으로 인해 위협받지 않도록 말이야."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"그만해라, 이년아. 입을 닥쳐."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"그만해라, 이년아. 입을 닥쳐."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~그녀를 당신이 직접 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"그녀를 공격하시오, 다콘."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~다콘의 반응을 기다린다.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~다콘은 마치 바위처럼 침묵한다. 여자는 으르렁거리며 달려들 준비를 한다. "그럼 베이터에나 떨어져, 겁쟁이!"~ */
  IF ~~ THEN REPLY #32640 /* ~다콘이 그녀와 싸우는 걸 돕는다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~경비병들을 부른다.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~일이 벌어지도록 그냥 내버려 둔다.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~그녀는 놀라서 아무런 말도 하지 못한다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"뭐... 누가... 감히-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"나... 나..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~여자는 칼을 뽑아 들고는 마치 광분한 야수처럼 으르렁거리며 모트에게 덤벼든다.~ */
  IF ~~ THEN REPLY #32643 /* ~모트가 그녀와 싸우는 걸 돕는다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~경비병들을 부른다.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~일이 벌어지도록 그냥 내버려 둔다.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~이 젊은 여자는 당신과 더 이상 얘기하려고 하지 않는다. ~ */
  IF ~~ THEN REPLY #32646 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~젊은 여자는 잔인한 표정으로 냉소하며 부츠의 앞부분을 내민다. "또 내 부츠를 핥으려고 왔어, 이 자식아? 그렇게 해줄 순 없어! 내가 너보고 다시는 내게 말을 걸지 말라고 했지? 내가 칼을 뽑기 전에 어서 꺼져."~ */
  IF ~~ THEN REPLY #32647 /* ~"너에게는 질렸다, 이년아... 칼을 뽑아라."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~그 자리에서 그녀와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~사하바는 고개를 끄덕여 당신에게 인사하나, 당신과 얘기할 생각은 없다. ~ */
  IF ~~ THEN REPLY #32650 /* ~떠난다.~ */ EXIT
END
