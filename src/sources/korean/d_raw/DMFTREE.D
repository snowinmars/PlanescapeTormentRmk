// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~지치고 슬픔에 젖은 듯한 노인이 자신의 앞에 있는 타서 죽은 나무를 응시하고 있다. 그는 뭔가 생각해 내려고 하는 듯 혼잣말을 하며 턱을 두드리고 있다. 때때로 그는 애처롭게 고개를 젓는다. ~ */
  IF ~~ THEN REPLY #16643 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~생각하고 있는데 당신이 말을 걸자 그는 잠시 놀란 듯하다. 그는 조용하고 신중하기는 하나 슬픔으로 가득 찬 어조로 말한다. "오... 반갑소, 친구. 당신도 안녕하시오?"~ */
  IF ~~ THEN REPLY #16645 /* ~"괜찮은 것 같소."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"비참하오."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"그게 무슨 상관이 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"그 일에 대해선 지금은 일단 접어둡시다. 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~그는 미소를 짓는다, 하지만 그의 눈은 아직도 슬픔에 차 있다. "다행한 일이오. 당신의 행운이 계속되기를 바라겠소." 그는 다시 나무 쪽으로 돌아서려고 한다.~ */
  IF ~~ THEN REPLY #16650 /* ~"당신은 어떻소?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"기다리시오. 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~그는 더욱더 낙담한 듯하다. "안됐소, 친구... 당신의 운세가 나아지기를 바라겠소." 그는 다시 나무 쪽으로 돌아서려고 한다.~ */
  IF ~~ THEN REPLY #16653 /* ~"당신은 어떻소?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"기다리시오. 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~그는 놀란 듯하다, 하지만 이내 확신을 가지고 고개를 끄덕인다. "그렇소, 친구. 적어도 내게는... 하지만 그건 별 의미가 없는 것 같소." 그는 다시 나무 쪽으로 돌아서려고 한다.~ */
  IF ~~ THEN REPLY #16656 /* ~"그럼 나도 괜찮소."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"그렇다면 비참하오."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"별로 도움이 안된다고? 그게 무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"기다리시오. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~그는 가볍게 어깨를 으쓱하고 살며시 미소를 짓는다. "나는 괜찮소, 하지만 동시에 난 매우 슬프오."~ */
  IF ~~ THEN REPLY #16661 /* ~"그건 왜요?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"안됐군. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"안됐군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~그는 자신의 뒤에 있는 나무를 가볍게 두드린다. "이 곳 벌통에 있는 나무들 때문이오. 그들은 죽어가고 있소, 친구. 그런데도 아무도 신경을 쓰지 않소." 당신 얼굴의 표정을 보자 그는 당신에게 잠시 말을 하지 말라고 부탁하려는 듯 양손을 든다. "어떤 사람들에게는 아무런 의미도 없는 일일지도 모르나, 내게는 매우 중요한 일이오. 나는 이 구역에 남은 삶과 아름다움의 마지막 조각들의 무관심 속에서 죽어가는 것은 너무나도 딱한 일이라고 생각하오. 당신도 그 기분을 이해할 수 있겠소, 친구?"~ */
  IF ~~ THEN REPLY #16664 /* ~"그래... 당신이 맞소, 그건 슬픈 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"아니오. 모든 생명은 언젠가는 죽소. 그런데 언제 그리고 어떻게 죽느냐를 가지고 왜 그렇게 고민을 하시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"아니, 할 수 없소. 나무들이 쓸모가 있지 않는 한 누가 관심이나 가지겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"그렇소. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"그건 긴 얘기요... 지나가는 평범한 행인이 가던 길을 멈추고 들으려고 할 그런 얘기는 아니오. 사람들로 하여금 행동을 취하도록 고무하려고 한 내 노력은 예외없이 무시되었다고만 말해 두겠소."~ */
  IF ~~ THEN REPLY #16669 /* ~"당신은 사람들이 뭘 하기를 원한 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~그는 한숨을 쉰다. "생각했던 대로요. 당신도 다를 바가 없소. 내가 명상을 할 수 있도록 날 그냥 내버려 두시겠소?" 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #16672 /* ~떠난다.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"나는 그들이..." 그는 적절한 표현이 떠오르지 않아 화가 난 듯하다. "...*관심*을 가져 주기 바라오. 그것이 지나친 요구요, 친구?" 그는 진지한 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #16673 /* ~"무엇에 대해 신경을 쓰단 말이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"그럴 수도 있겠소. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~그는 놀란 듯하다, 그리고 엉겁결에 말한다. "정말이오? 오! 내 말은 정말 멋지단 뜻이오! 혹시..." 그는 잠시 말을 멈춘다, 그리고 갑자기 의심을 하는 듯하다. 그는 다시 냉정을 되찾고 평상시와 마찬가지로 천천히 말한다. "어쨌든 그건 좋은 일이오. 당신은 내게 질문할 것들이 있는 것 같소만..."~ */
  IF ~~ THEN REPLY #16676 /* ~"그렇소... 어, 질문할 것들이 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"아니, 아직 아니오. 무엇을 부탁할 생각이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~그가 순수하게 기뻐하는 것은 이번이 처음인 것 같다. 그는 기쁨에 넘쳐 설명한다. "이 곳에서는 그 어느 것도 생존하기가 어렵소. 당신도 주변을 한 번 둘러보면 내 말의 의미를 이해할 것이오. 이 곳에서는 *설령* 충분한 물과 빛이 공급되더라도 나무들이 성장하기는 어려울 것이오..."~ */
  IF ~~ THEN REPLY #16679 /* ~"계속하시오..."~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"이 얘기는 나중에 듣도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~그는 열심히 고개를 끄떡인다. "하지만 충분한 수의 사람들이 *관심*을 가진다면... 나무들이 살기를 진심으로 *원한다면*... 그들이 생존할 수 있다는 사실을 나는 아오! 그들은 다시 푸르게 되어 번창할 것이오!"~ */
  IF ~~ THEN REPLY #16681 /* ~"뭐? 그건 말이 되질 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"당신이 옳을지도 모르오."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"아마 그럴지도. 질문할 것들이 좀 있소."~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"그렇게 될지도 모르오. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~그는 고개를 저으며 알겠다는 듯 미소를 짓는다. "당신은 새내기인 모양이오. 나도 이제 그걸 알겠소. 당신은 시길이 어떻게 움직이는가에 대해 모르고 있는 것 같소, 친구. 이 곳에서는 믿음이 전부요!"~ */
  IF ~~ THEN REPLY #16685 /* ~"당신이 옳을지도 모르오."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"아마 그럴지도. 질문할 것들이 좀 있소."~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"아마 그럴지도. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"나는 *옳소,* 그리고 나는 그것에 대해 확신하오." 확신감이 마치 오라처럼 그를 에워싼다. 당신이 처음 말을 걸었을 때와는 전혀 다른 사람처럼 느껴진다. "내가 당신에게 부탁하는 것은 그것뿐이오, 친구... 그들에 대해 관심을 가지고 그들이 회복하기를 바라시오. 만약 충분한 수의 사람들이 그것을 바란다면 그것은 언젠가 현실이 될 것이오. 날 위해 그렇게 해줄 수 있겠소?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~진실: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~진실: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~거짓말: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~거짓말: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"아니, 도울 수 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"훌륭하오, 정말 훌륭하오! 정말 고맙소. 당신은 내게 자신과 사명감을 되찾아 주었소. 아마 당신처럼 내 얘기를 들어줄 사람을 더 발견할 수 있을지도 모르오... 우리가 변화를 일으킬 수 있을지도 모르오. 자, 내가 당신을 위해 어떤 일을 해드리면 되겠소?"~ */
  IF ~~ THEN REPLY #16694 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"없소, 하지만 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"훌륭하오, 정말 훌륭하오! 정말 고맙소. 당신은 내게 자신과 사명감을 되찾아 주었소. 아마 당신처럼 내 얘기를 들어줄 사람을 더 발견할 수 있을지도 모르오... 당신 동료들은 어떻소? 날 위해 그들에게 부탁을 해줄 수 있겠소?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"안나? 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"나중에. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"아마 다른 기회에. 안녕히 계시오."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"기다리시오, 친구... 내 말을 들으시오." 확신감이 마치 오라처럼 그를 에워싼다. 당신이 처음 말을 걸었을 때와는 전혀 다른 사람처럼 느껴진다. "내가 당신에게 부탁하는 것은 그것뿐이오, 친구... 그들에 대해 관심을 가지고 그들이 회복하기를 바라시오. 만약 충분한 수의 사람들이 그것을 바란다면 그것은 언젠가 현실이 될 것이오. 날 위해 그렇게 해줄 수 있겠소?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~진실: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~진실: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~거짓말: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~거짓말: "그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"아니, 도울 수 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"당신 주변을 둘러보시오, 친구. 이 곳에서 과연 어떤 것이 편히 살 수가 있겠소? 이 곳의 환경은 매우 비참하오, 그리고 다버스도 이 지역에는 자주 오지를 않소."~ */
  IF ~~ THEN REPLY #16718 /* ~"다버스?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"그건 왜요?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"다버스 말이오. 당신도 다버스를 보았으리라고 생각하오... 그들은 레이디의 하인들이오. 그들은 이 도시를 보살피오. 물론 지역에 떠라 관심을 기울이는 정도가 다르긴 하지만." 그는 자신의 뒤에 있는 나무를 슬프게 쳐다본다.~ */
  IF ~~ THEN REPLY #16723 /* ~"레이디?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"왜 그들은 이 곳에 자주 오지 않소?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"시길의 지배자인 레이디 오브 페인을 모른단 말이오?" 그는 갑자기 말을 멈춘다. 그는 가슴 위에 손가락으로 반원을 그리면서 당신에게 다가와 속삭인다. "레이디에 대해 함부로 말하는 것은 그 누구에게도 좋은 일이 아니오. 그녀는 이 도시를 지배하오, 설령 때로는 그렇게 보이지 않더라도 말이오. 그 이상은 알 필요가 없소, 그리고 그녀에 대해서는 더 이상 얘기하지 마시오."~ */
  IF ~~ THEN REPLY #16735 /* ~"알겠소. 왜 다버스는 이 곳에 자주 오지 않는 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"이해하오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"그녀에 대해 다시는 당신에게 얘기하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"별통은 위험한 곳이오, 하지만 그것 때문은 아니오... 레이디는 다버스를 감시하고 있소, 그리고 그녀와 적대할 정도로 어리석은 자는 아무도 없소. 내 생각엔 휄 때문인 듯하오."~ */
  IF ~~ THEN REPLY #16738 /* ~"다버스?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"레이디?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"휄이 누구요?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"휠? 그는... 아... 그는 레이디를 위해 봉사하지 않는 유일한 다버스요. 나도 그에 얽힌 사연을 모두 아는 것은 아니오. 하지만 그의 동족들은 그를 피하고 있으며, 그는 이 곳 벌통에서 홀로 살고 있소. 그는 문신 가게를 운영하나 시길에 사는 사람들 대부분은 그를 몹시 경계하오."~ */
  IF ~~ THEN REPLY #16743 /* ~"문신 가게에 대해 얘기를 해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"그 곳에선 뭘 조심해야 하오?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"그가 왜 사람들에게 따돌림을 당하게 되었는지 혹시 짐작이라도 가시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"휄의 가게는 여기서 동쪽으로 건물 몇 개를 지나면 있소. 그 건물에는 그의 개인적인 심벌인 번개가 꿰뚫고 있는 백색 타원이 새겨져 있소. 나는 그 가게에 가본 적이 없으나, 들리는 말로 그는 말을 이미지로 바꿀 수 있다고 하오. 당신도 다버스가 이미지로 말을 한다는 것은 알고 있지 않소? 마치 그림 맞추기 놀이처럼 말이오."~ */
  IF ~~ THEN REPLY #16748 /* ~"그래, 계속하시오."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"그렇소?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~그는 고개를 끄덕인다. "그는 그의 말에서 나온 이미지를 문신으로 만들 수가 있소. 그리고 그건 보통 문신이 아니오. 들리는 바에 의하면 그의 문신들은 마력을 지니고 있다고 하오. 그것 말고는 그에 대해 더 아는 것이 없소.~ */
  IF ~~ THEN REPLY #16750 /* ~"그래 왜 그 장소를 주의해야 하는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"그가 왜 사람들에게 따돌림을 당하게 되었는지 혹시 짐작이라도 가시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"그렇소. 그들과 한 번 얘기를 해보면 알 거요. 그들은 자신들의 머리 위에 일련의 심벌들을 표시하오." 그는 묘사를 하려고 머리 위에서 손가락을 흔든다. "말하는 대신 말이오. 다버스가 무슨 얘기를 하는지 알아내는 곳은 '듣는' 사람 몫이오, 하지만 연습을 거듭하면 더 수월해진다고 하오." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #16754 /* ~"알겠소. 하던 얘기를 계속하시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"그가 레이디를 배신한 이상, 레이디의 그림자가 그를 뒤덮는 것은 시간 문제라고 많은 사람들은 생각하고 있소. 누구도 *그런* 일이 일어날 떄 그 근처에 있기를 원하지는 않을 것이오."~ */
  IF ~~ THEN REPLY #16755 /* ~"문신 가게에 대해 얘기를 해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"그가 왜 사람들에게 따돌림을 당하게 되었는지 혹시 짐작이라도 가시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"전에 얘기했듯이 나도 잘 알지 못하오. 나는 어떤 파워가 레이디에게 도전했을 때 휄이 편을 잘못 섰다는 불확실한 소문을 들은 적이 있을 뿐이오. 궁금하다면 그에게 직접 물어보시구려. 내가 듣기로 그는 좀 기묘하기는 하지만 친절하다고 하오."~ */
  IF ~~ THEN REPLY #16759 /* ~"어떤 신?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"레이디?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"문신 가게에 대해 얘기를 해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"왜 그의 가게를 주의해야 하는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~그는 고개를 끄덕이며 당신이 질문하기를 기다린다.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"나는 이 씨앗에서 자라나는 약초가 필요하오. 날 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"아직 나무들에게 무슨 변화는 없소?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"아직 나무들에게 무슨 변화는 없소?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"당신은 누구요?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"왜 나무들이 다 죽어가고 있는 거요?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"사람들은 나를 '나무를-위해-통곡하는-자'라고 부르오, 친구."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"그건 왜요?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"그럼 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"난 그냥 시간을 낭비하고 있을 뿐이오." 그는 비참하게 탄식한다. ~ */
  IF ~~ THEN REPLY #16778 /* ~"무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"그럼 당신이 그 일을 하도록 내버려두리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"시길에서 가장 추악한 곳이오. 그 외에는 달리 할 얘기가 없소." 그는 슬픈 미소를 짓는다.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"그럼 당신은 왜 여기 있는 거요?"~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~"만약 내가 일자리를 찾고 있다면?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"벌통에서? 당신이 도둑이 아니라면 아마 일거리를 찾기는 어려울 거요. 만약 당신 상황이 정말 절박하다면 시체를 수거해 시체안치소로 운반하시오. 내가 듣기로 더스트맨은 벌통의 거리가 더 이상 더러워지는 것을 막기 위해 시체를 가져오는 자에게 소액의 돈을 지불한다고 하오."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"친구... 엽기적인 사람이 아니라면 이런 곳에서 즐길 것을 찾지는 않을 것이오. 만약 내가 당신이라면 오락은 다른 구역에 가서 즐기겠소. 그 편이 더 안전하니까."~ */
  IF ~~ THEN REPLY #16790 /* ~"무엇이 위험하오?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"이 곳에서 일자리를 얻으려면 어디로 가야 하오?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"이 곳에서 말이오? 모든 것을 다 조심을해야 하오, 친구. 아마 나만 제외하고는."~ */
  IF ~~ THEN REPLY #16794 /* ~"이 곳에서 일자리를 얻으려면 어디로 가야 하오?"~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"미안하오, 친구. 내가 처음 이 곳에 왔을 때 나는 많은 사람들과 얘기를 했소... 하지만 그런 이름을 지닌 사람은 기억하지 못하겠소."~ */
  IF ~~ THEN REPLY #16797 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"그런 것은 본 적이 없소. 그것을 마지막으로 본 건 어디에서였소?"~ */
  IF ~~ THEN REPLY #16799 /* ~"잘 모르겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"난 모르오.안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"다시 만나 반갑소, 친구."~ */
  IF ~~ THEN REPLY #16801 /* ~"안녕하시오. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"안녕하시오... 그리고 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~그는 잠시 당신을 쳐다보더니 눈을 돌린다. "아, 또 당신이군..."~ */
  IF ~~ THEN REPLY #16803 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"나는 일전의 내 무례함에 대해 사과하고 싶소."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~거짓말: "나는 일전의 내 무례한 행동에 대해 후회하오... 나는 사과를 하고 싶었소."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"안녕하시오... 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"미안하오... 친구. 나는 생각할 것들이 많소. 다음 기회에 얘기합시다."~ */
  IF ~~ THEN REPLY #16806 /* ~"나는 일전의 내 무례함에 대해 사과하고 싶소."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~거짓말: "나는 일전의 내 무례한 행동에 대해 후회하오... 나는 사과를 하고 싶었소."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~그는 조용히 당신을 쳐다볼 뿐이다. "당신 사과를 받아들이겠소. 내게 질문할 것 있소?"~ */
  IF ~~ THEN REPLY #16808 /* ~"그렇소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"아니, 난 내가 말하려고 온 것을 말했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"신을 가리키는 말이오. 레이디는 신들이 시길로 일체 들어오지 못하도록 막고 있기 때문에 일반적으로 신들과 충돌하는 일은 거의 없소. 어쨌든 그 신의 이름은 아오스카였다고 하오, 하지만 그 밖에는 그 일에 대해 아는 것이 없소."~ */
  IF ~~ THEN REPLY #16810 /* ~"레이디?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"그의 이름은 무엇이었소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"문신 가게에 대해 얘기를 해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"왜 그의 가게를 주의해야 하는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"시길의 지배자인 레이디 오브 페인을 모른단 말이오?" 그는 갑자기 말을 멈춘다. 그는 가슴 위에 손가락으로 반원을 그리면서 당신에게 다가와 속삭인다. "레이디에 대해 함부로 말하는 것은 그 누구에게도 좋은 일이 아니오. 그녀는 이 도시를 지배하오, 설령 때로는 그렇게 보이지 않더라도 말이오. 그 이상은 알 필요가 없소, 그리고 그녀에 대해서는 더 이상 얘기하지 마시오."~ */
  IF ~~ THEN REPLY #16816 /* ~"좋소. 내게 휄의 문신 가게에 대해 더 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"왜 휄의 가게를 주의해야 하는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"이해하오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"그녀에 대해 다시는 당신에게 얘기하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~그는 심각한 표정으로 고개를 끄덕인다. "내가 알기로 레이디는 그를 소멸시켰다고 하오. 그녀나 그녀의 부하들과 적대하기 전에 그 사실을 상기하는 것이 좋을 것이오."~ */
  IF ~~ THEN REPLY #16820 /* ~"레이디?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"내게 휄의 문신 가게에 대해 더 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"왜 휄의 가게를 주의해야 하는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~나무를-위해-통곡하는-자는 당신을 보자 활짝 웃는다. "아, 내 친구, 당신이 돌아왔구려! 내게 뭐 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #16825 /* ~"그렇소, 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"아니, 나는 모트에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"아니, 나는 안나에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"아니, 나는 이그너스에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"아니, 나는 훨-후럼-그레이스에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"아니, 나는 다콘에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"아니, 하지만 당신을 도와줄 사람을 구했소. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"아니, 나는 노돔에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"아니, 나는 베일로에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"아니, 그냥 지나가던 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"아직 아니오, 친구. 하지만 아직 난 희망을 가지고 있소. 나는 매일 사람들과 얘기를 하고 있소."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"나는 모트에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"나는 안나에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"나는 이그너스에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"나는 훨-후럼-그레이스에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"나는 다콘에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"좋소. 당신을 도와줄 사람을 구했소. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"나는 노돔에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"나는 베일로에게 당신을 도와주라고 부탁하려고 했소."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"잘됐소. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"잘됐소. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"그렇소, 친구, 변화가 있었소! 간신히 알아볼 수 있을 정도의 미미한 변화이기는 하지만 한 번 보시오. 줄기에서 신선한 수액과 새싹들이 나오고 있소. 이제는 시간 문제일 뿐이오. 내게 다시 희망을 준 데 대해 다시 한 번 감사하오."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"천만의 말씀이오. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"천만의 말씀이오. 나무를-위해-통곡하는-자여. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"천만의... 말씀이오. 질문할 것들이 좀 있소."~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"천만의... 말씀이오, 나무를-위해-통곡하는-자여. 안녕히 계시오."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~그는 잠시 곤혹스러운 표정을 짓는다. "뭐가 잘못되었소, 친구? 어쩐지 당신은 화가 난 듯하오..."~ */
  IF ~~ THEN REPLY #16849 /* ~"아... 아니오, 그냥 물어볼 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"아니, 아무런 문제도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"훌륭하오, 정말 훌륭하오! 정말 고맙소. 당신은 내게 자신과 사명감을 되찾아 주었소. 아마 당신처럼 내 얘기를 들어줄 사람을 더 발견할 수 있을지도 모르오... 우리가 변화를 일으킬 수 있을지도 모르오. 자, 내가 당신을 위해 어떤 일을 해드리면 되겠소?"~ */
  IF ~~ THEN REPLY #16851 /* ~나무들을 바라보며 그들이 죽는 모습을 상상한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"아무 것도 아니오, 하지만 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"훌륭하오, 정말 훌륭하오! 정말 고맙소. 당신은 내게 자신과 사명감을 되찾아 주었소. 아마 당신처럼 내 얘기를 들어줄 사람을 더 발견할 수 있을지도 모르오... 당신 동료들은 어떻소? 날 위해 그들에게 부탁을 해줄 수 있겠소?"~ */
  IF ~~ THEN REPLY #16854 /* ~나무들을 바라보며 그들이 죽는 모습을 상상한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"안나? 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"나중에. 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"아마 나중에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~나무를-위해-통곡하는-자는 당신을 보며 미소를 짓는다, 하지만 다소 당황한 듯 하다. "무엇이 그렇게 재미있소, 친구?"~ */
  IF ~~ THEN REPLY #16865 /* ~"에... 천만의 말씀이오, 친구. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"아, 천만의 말씀이오. 안녕히 계시오, 통곡자."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~나무를-위해-통곡하는-자는 당신을 보며 미소를 짓는다, 하지만 다소 당황한 듯 하다. "무엇이 그렇게 재미있소, 친구?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"천만의 말씀이오. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"천만의 말씀이오. 안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"내가 웃고 있었소? 못본 걸로 해주시오.이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"천만의 말씀이오. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"천만의 말씀이오. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"천만의 말씀이오. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"천만의 말씀이오. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"천만의 말씀이오. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"어... 천만의 말씀이오 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~나무를-위해-통곡하는-자는 어떤 일이 일어나려고 하는가를 깨닫고 공포에 질린다. 갑자기 그는 몸을 날려 이그너스를 가로막는다. "안 되오! 멈추시오! 그럴 순 없소!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~계속한다...~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~계속한다...~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~나무를-위해-통곡하는-자는 당신을 보자 활짝 웃는다. "아, 내 친구, 당신이 돌아왔구려! 나무들은 날마다 나아지고 있소. 내게 뭐 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #16879 /* ~"그렇소, 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"아니, 그냥 지나가던 중이오. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~나무를-위해-통곡하는-자는 당신에게서 씨앗을 받아서 살펴본다. "정말 기묘한 씨앗이오... 가장자리에 나 있는 건 이빨이오? 아마 가시겠지... 어디에서 이런 걸 손에 넣었소, 친구?"~ */
  IF ~~ THEN REPLY #22249 /* ~"광장의 산파인 멥베스 노파가 그 씨앗으로부터 자라는 약초를 필요로 하고 있소. 어디서 얻을 수 있는지 혹시 아시오?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"아니오..." 나무를-위해-통곡하는-자는 계속 손 안에 있는 씨앗을 응시한다. "이런 씨앗을 본 건 이번이 처음이오... 나... 아앗!" 그는 몸을 움츠린다, 그리고 그의 엄지손가락에서는 피가 난다. "그것의 가시는 정말 날카롭소. 당신이 가지고 있는 것이 좋을 것 같소."~ */
  IF ~~ THEN REPLY #22250 /* ~"그럼 당신도 날 도울 수가 없소?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"당신이 그것을 자랄 수 있게 할 수 없는 한 그럴 거요. 내겐 그걸 자라게 할 재간이 없소. 난 그런 씨앗을 지금까지 본 적이 없소, 친구."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"만약 우리가 충분할 정도로 강하게 그것이 자라길 바란다면, 그것을 자라게 하는 것이 가능하겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"그것을 더 빠르게 자라게할 방법은 없겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"난 이 염벙할 것이 자라도록 기다리지 않을 거요. 난 그 약초들을 당장 원하오."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"그것이 자라기를 기다리겠소... 얼마나 걸리겠소?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~나무를-위해-통곡하는-자는 고개를 젓는다. "모르겠소. 여러 철이 지나야 할지도 모르오."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"만약 우리가 충분할 정도로 강하게 그것이 자라길 바란다면, 그것을 자라게 하는 것이 가능하겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"그것을 더 빠르게 자라게할 방법은 없겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"난 이 염벙할 것이 자라도록 기다리지 않을 거요. 난 그 약초들을 당장 원하오."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"난 *정말* 그 약초들이 필요하오. 무슨 방법이 없겠소?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~나무를-위해-통곡하는-자는 씨앗을 쳐다본다. "아마 그럴지도... 당신이 그것이 자라기를 강하게 바란다면..."~ */
  IF ~~ THEN REPLY #22260 /* ~"무슨 뜻이오?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~씨앗에 초점을 맞추고 그것이 자라기를 *바란다.*~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"뭐, 시도할 가치는 있겠지..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"여기는 시길이오, 친구. 이 곳에서는 믿음이 전부요. 모든 것... 시길을 지탱하고 있는 첨탑에서 당신이 쥐고 있는 씨앗에 이르기까지. 만약 당신이 어떤 것을 강하게 믿고 바란다면 그 어떠한 것도 현실이 될 수 있소..."~ */
  IF ~~ THEN REPLY #22263 /* ~씨앗에 초점을 맞추고 그것이 자라기를 *바란다.*~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"뭐, 시도할 가치는 있겠지..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~놀랍게도 *우두둑* 소리가 나며 씨앗이 갈라진다, 그리고 그것의 표면으로부터 가지들이 마치 손가락처럼 튀어나온다. 당신은 본능적으로 씨앗을 떨어뜨리나, 그것의 갈고리 발톱과도 같은 가지는 당신의 손목을 쥐고 놔줄 생각을 하지 않는다. ~ */
  IF ~~ THEN REPLY #22265 /* ~"원 세상에!?"~ */ JOURNAL #21910 /* ~단지 씨앗이 꽃을 피우도록 *기원하는* 일... 이제 그 망할 놈의 것은 내 손목을 감싸고 놓아줄 생각을 하지 않는다. 적어도 내 팩에서 공간을 차지하지는 않는 것이 그나마 다행이다... 어쨌든 멥베스에게 가지고 돌아가 이것이 그녀가 원하는 건지 확인해야겠다. ~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~나무를-위해-통곡하는-자는 놀란 표정으로 당신의 손목을 감고 있는 가시돋친 가지들을 쳐다본다. "내... 생각에 그 새로운 가지들에 난 가시라면 당신 친구가 원하는 양을 충족시키고도 남을 것 같소. ~ */
  IF ~~ THEN REPLY #22266 /* ~"그녀가 이 염병할 것을 내 몸에서 떼어낼 수 있기를 바랄 수밖에 없군. 가기 전에 질문할 것들이 좀 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"그럼 그걸 그녀에게 되돌려주도록 하겠소... 도와주어 고맙소. 안녕히 계시오."~ */ EXIT
END
