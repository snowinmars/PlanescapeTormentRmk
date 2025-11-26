// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~짙은 검은색의 긴 법복을 입은 보통 키의 남자가 보인다. 그의 머리는 단정하게 손질되어 있으며, 완벽한 솜씨로 다듬은 그의 턱수염은 그의 잘생긴 얼굴을 한층 돋보이게 해준다. 당신이 온 것을 눈치챈 그는, 쓰고 있던 책을 내려놓고 미소를 지으며, 자신감에 넘치는 걸음으로 당신에게 다가온다. "감탄했소... 솔직히 나는 당신이 여기까지 올 수 있으리라고는 생각하지 못했소."~ */
  IF ~~ THEN REPLY #32476 /* ~"당신이 실망했다니 기쁘군. 당신이 걸어다니는 시체들의 배후에 있는 인물이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"더러운 사령술사! 나는 너의 이 장소에 대한 신성 모독에 종지부를 찍으려고 이 곳에 왔다."~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"내가 누구인가는 당신에게 있어 별로 중요한 일이 아니오. 당신이 해야 할 질문은 내가 뭘 원하는가 일 거요. 그는 말을 하면서 흥미로운 듯 당신을 아래위로 쳐다본다."~ */
  IF ~~ THEN REPLY #32479 /* ~"좋소... 당신은 뭘 원하오?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"틀렸소. 당신이 뭘 원하든 내가 알 바가 아니오. 난 당신을 죽이러 여기 왔소."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"관두시오. 그만 가야겠소."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~그는 뒤로 한 걸음 물러서며 한쪽 눈썹을 치켜 올린다. "나는 당신... 피를 원하오."~ */
  IF ~~ THEN REPLY #32482 /* ~"그걸 협박이라고 한 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"이런 우연이 있나. 나도 당신 피를 보려고 왔는데, 죽을 준비나 하시오!"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"어... 관심없소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~그는 대답을 하려다가 갑자기 멈춘다. 그는 얼굴에 사악한 미소를 지으면서 웃기 시작한다. "그래... 그렇다고 할 수 있소." 그는 자기가 한 말이 꽤나 웃기는지 한층 더 세게 웃는다. 당신은 그의 손이 허리 쪽에 가 있다는 사실을 눈치챈다. 그는 손을 천천히 앞뒤로 움직이며 공중에 복잡한 패턴을 그린다. ~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"그래? 그럼 어디 한 번 해보시오." 그는 거만게 웃으며 양손을 앞쪽으로 들어 올린다. 그는 손을 천천히 앞뒤로 움직이며 공중에 복잡한 패턴을 그린다. ~ */
  IF ~~ THEN REPLY #32485 /* ~공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"미안하지만 당신은 아무 데도 갈 수가 없소." 그는 거만하게 웃으며 양손을 앞쪽으로 들어 올린다. 그는 손을 천천히 앞뒤로 움직이며 공중에 복잡한 패턴을 그린다. ~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
