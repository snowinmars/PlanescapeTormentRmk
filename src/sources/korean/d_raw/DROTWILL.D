// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~당신 시야에 예리한 인상의 사내가 들어온다. 그의 얼굴은 교활하고 자신에 넘치는 것처럼 보이나, 동시에 산만하다는 느낌도 준다. 그의 눈빛은 또렷하고 잔혹하다. 그는 나태한 동시에 태연하며, 그의 단단한 손에는 나이프가 하나 쥐어져 있다. "그래 이 타락자 윌리엄을 찾아온 또 다른 손님이군. 하고 싶은 말을 하시오, 여행자. 잘하면 당신을 그냥 보내 줄 수도 있으니까."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"나는 파로드를 찾고 있소."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"그냥 이 곳을 통과하는 중이오."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"나는 말썽은 원하지 않소."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"흑장미는 당신이 죽기를 바라오."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"크리스톨은 당신이 죽기를 바라오."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"당신과는 상관없는 일이오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"파로드를 원하나? 그래, 대가를 지불하겠다면 그가 어디 있는지 가르쳐 줄 수도 있지."~ */
  IF ~~ THEN REPLY #3718 /* ~"얼마요?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"미안하지만 난 관심이 없소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~그는 당신의 실력을 가늠하고 있다. "고작 동전 다섯 닢. 당신처럼 절박한 사람에게는 적절한 가격이지."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"좋소. 그는 어디 있소?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"관심없소."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"그는 넝마주이 광장 부근에 있을 거요. 가서 그와 그의 수집자 부하들을 찾으면 어렵지 않게 발견할 수 있을 거요."~ */
  IF ~~ THEN REPLY #3659 /* ~"사람들은 이미 내게 그 얘기를 했소!"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"그래, 그럼 좋아. 당신이 관심을 가질만한 일이 있지. 레이저 앤젤스라고 불리는 나약한 자매들을 이끄는 크리스톨이란 머저리가 있지. 가서 그녀를 처치하고 오면 보수에 대해 얘기하도록 하지.~ */
  IF ~~ THEN REPLY #3662 /* ~"내가 얻는 건 뭐요?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"하겠소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"하지 않겠소. 난 자객이 아니오."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"먼저 생각을 좀 해보겠소."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"그래, 낸 만큼 얻는 거지. 그런데... 여기 온 용건은 뭐지?~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"그냥 이 곳을 통과하는 중이오."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"나는 말썽은 원하지 않소."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"흑장미는 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"크리스톨은 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"당신과는 상관없는 일이오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"목표를 죽이고 나면 얘기를 하겠다고 내가 말하지 않았어? 내 말은 농담이 아니라고. 자 이제 할 거야, 안 할 거야?"~ */
  IF ~~ THEN REPLY #3674 /* ~"난 내 몫이 무엇인지 알고 싶을 뿐이오."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"아니오. 난 자객이 아니오."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"물론이오. 하겠소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"훌륭해! 일을 끝내면 돌아오시오, 그리고 일 처리는 확실하게. 나중에 구차한 변명 따위는 듣고 싶지 않으니까. 우린 약속을 했고 그걸 끝까지 지킬 거요."~ */
  IF ~~ THEN REPLY #3693 /* ~"그 일에 대해서는 걱정하지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"너무 성급하게 결론을 내리진 마시오. 동전 이백 닢이면 어떻소?"~ */
  IF ~~ THEN REPLY #3694 /* ~"사백 닢은 어떻소?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"아니, 하지 않겠소."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"하겠소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~썩은 윌리엄은 위험한 모서리의 골목에 있는 라이벌 갱의 리더인 크리스톨을 처치하는 대가로 동전 200닢을 주겠다고 제의했다. 나는 그 제의를 받아들였다.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"당신 노고에 상응하는 대가를 주지. 이백 닢이면 어때? 마음에 드오?"~ */
  IF ~~ THEN REPLY #3681 /* ~"그 이상은 어떻소?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"그렇소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~썩은 윌리엄은 위험한 모서리의 골목에 있는 라이벌 갱의 리더인 크리스톨을 처치하는 대가로 동전 200닢을 주겠다고 제의했다. 나는 그 제의를 받아들였다.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"아니, 하지 않겠소."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"그럼 삼백 닢. 내 최종 제안이오."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"아니, 하지 않겠소."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"좋소. 그녀는 이제 죽은 목숨이오."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~썩은 윌리엄은 위험한 모서리의 골목에 있는 라이벌 갱의 리더인 크리스톨을 처치하는 대가로 동전 300닢을 주겠다고 제의했다. 나는 그 제의를 받아들였다.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"만약 네가 원하는 게 그거라면. 상황을 제대로 보지 못했다니 안됐군." 그는 목소리들 높인다. "쉬브들! 이 쓰레기를 처치해!"~ */
  IF ~~ THEN REPLY #3701 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"일지? 일기나 장부가 아니라, 콕 찍어서 일지?" 그는 잠시 말을 멈춘다, 그리고 당신이 응답하려 하자 다시 말을 한다. "만약 이 곳을 거쳤다면 우리가 땔감으로 썼겠지. 하지만 본 적이 없소."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"나는 파로드를 찾고 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"그냥 이 곳을 통과하는 중이오."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"나는 말썽은 원하지 않소."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"흑장미는 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"크리스톨은 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"당신과는 상관없는 일이오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"그냥 지나가는 길이라고? 안됐군. 아무도 대가를 지불하지 않고는 여길 통과할 수는 없어."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"나는 이미 그 요금을 냈소."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~허풍: "나는 이미 그 요금을 냈소."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"무슨 요금 말이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"당신이 그걸 어떻게 받아내는지 보고 싶군."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~그는 웃으면 한 손을 들어 올린다. "너무 서두르지 말라고, 친구. 내가 원하는 대가는 그런 게 아니야. 전혀 다른 거라고. 이 골목의 반대쪽에서 우리의 라이벌 집단을 이끌고 있는 얼간이가 있지. 난 당신이 그녀의 이름을 사망자 명단에 적어 주었으면 해... 피로. 그녀의 이름은 크리스톨이야."~ */
  IF ~~ THEN REPLY #3713 /* ~"내가 얻을 건 뭐요?~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"하겠소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"하지 않겠소. 난 자객이 아니오."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"먼저 생각을 좀 해보겠소."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"그건 작은 피의 대가지. 당신 피가 아니라는 건 당신에겐 잘된 일이지, 그건 다른 사람의 피야. 내 영토를 넘보려고 할 정도로 무모한 크리스톨이란 자의 피다. 난 당신이 그녀를 찾아서 없애기를 바래."~ */
  IF ~~ THEN REPLY #3717 /* ~"내가 얻을 건 뭐요?~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"하겠소."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"하지 않겠소. 난 자객이 아니오."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"먼저 생각을 좀 해보겠소."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"그녀는 이미 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"그럼 내가 당신에게 적의가 없다는 건 다행한 일이지. 난 단지 당신에게 할 작은 부탁이 있을 뿐이야. 내 얘기를 듣겠소?"~ */
  IF ~~ THEN REPLY #3723 /* ~"뭐요?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"좋아, 그럼. 부탁받은 일을 할 거지?~ */
  IF ~~ THEN REPLY #3724 /* ~"그렇소."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"잘 모르겠소."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"그럼 시간을 낭비하지 말자고. 내 쉬브들이 날 지킬 테니."~ */
  IF ~~ THEN REPLY #3727 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"늘 확실한 게 좋지. 넌 이제 곧 확실히 죽을 거야." 그는 가볍게 손짓을 한다. ~ */
  IF ~~ THEN REPLY #34384 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"그렇게 생각하는 건 당신 자유지만 여기서 여기서 일어나는 일은 모두 내 소관이야. 다시 한 번 묻지... 여긴 뭘 하려고 온 거야?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"나는 파로드를 찾고 있소."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"나는 말썽은 원하지 않소."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"흑장미는 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"크리스톨은 당신의 죽음을 원하오."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"난 그건 당신과는 상관없는 일이라고 분명히 말했소."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"그런 소릴 하다니 애석하군. 그리고 당신이 곧 죽을 거라는 건 더욱 애석하고." 그는 팔을 흔들어 신호를 하면서 나이프를 뽑는다.~ */
  IF ~~ THEN REPLY #34392 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"자칭 정의의 사도인 흑장미는 찾았어? 약속한 대로 놈은 죽였어?~ */
  IF ~~ THEN REPLY #34394 /* ~"아직 아니오."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"나는 그를 찾아냈소, 하지만 그는 대신 당신을 죽이도록 날 설득시켰소."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"그는 죽었소. 난 내 보수를 지금 당장 받아야겠소."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"아직 아니라고? 뭐야, 당신은 그렇게 무능한 건가? 가서 놈을 찾아 숨통을 끊은 후에 돌아오라고!" 그는 격분하여 등을 돌린다. ~ */
  IF ~~ THEN REPLY #34397 /* ~"우선 질문할 것들이 있소..."~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"좋소, 그럼."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~타락자 윌리엄의 눈이 번득인다. "다 처치한 거야? 그럼 상을 줘야지. 주머니에서 꺼낼 테니까 자시..." 그는 재빨리 대거를 꺼내 당신 배를 찌르려고 한다.~ */
  IF ~~ THEN REPLY #34399 /* ~싸운다.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~도망친다.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~그의 눈이 칼날처럼 번득인다. "약속한 대로 그 염병할 년을 죽인 거야, 아니면 또 실패했다고 떠벌이려고 온 거야?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"아직 아니오."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"그녀는 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~그는 고개를 젓는다. "자칭 내 동료라는 여기 있는 얼간이들도 자기가 하겠다고 약속한 일은 하지. 넌 아무런 쓸모가 없어. 너라는 쓰레기를 없애서 오랜만에 이 도시에 기여를 해야겠군." 그는 나이프를 뽑는다. ~ */
  IF ~~ THEN REPLY #34403 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"그래 해냈군, 잘 했어. 이번에는 내 부하들을 계속 죽이고 있는 지긋지긋한 살인마를 처치해 줘야겠어. 보수도 두 배로 올려 주지. 어때, 괜찮게 들리지? 설마 이 제의를 거절하지는 않겠지?"~ */
  IF ~~ THEN REPLY #34405 /* ~"미안하지만 거절해야겠소."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"하겠소."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"그는 이미 죽었소. 난 내 보수를 지금 당장 받고 싶소."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"정말이야? 정말 이 일을 원하지 않는 거야?"~ */
  IF ~~ THEN REPLY #34407 /* ~"아니, 그럴 생각은 없소."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"생각해 보니 돈을 2배로 주겠다는 말에 마음이 동하는군. 하겠소." ~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"그것 참 애석하군. 할 수 없지. 얘들아, 이 쓰레기를 태워버릴 때가 됐다." 그는 천천히 나이프를 뽑으면서 당신을 향해 걸어간다...~ */
  IF ~~ THEN REPLY #34409 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"좋아, 좋아. 놈은 이 골목 안을 어슬렁거리고 있어. 내가 알기로 놈은 늘 그림자 속에 숨어 있어."~ */
  IF ~~ THEN REPLY #34411 /* ~"그를 찾아내겠소."~ */ JOURNAL #31878 /* ~썩은 윌리엄은 내게 위험한 모서리의 골목을 누비고 있는 살인자 흑장미를 죽여달라고 부탁했다. ~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"그 염병할 크리스톨이라는 년은 죽였어?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"아직 아니오."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"그녀는 죽었소."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~그는 이를 갈면서 단어를 하나씩 명확하게 발음한다. "그년을... 죽이기... 전에는... 돌아오지마. 알겠어?" 그는 등을 돌린다. "그년이 죽기 전엔 네 꼴도 보기 싫으니까 그렇게 알라고."~ */
  IF ~~ THEN REPLY #34414 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END
