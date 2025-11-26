// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~이 남자는... 심한 고민에 빠진 듯하다. 잠을 제대로 못잔 듯 그의 눈은 반쯤 감겨 있으며, 그의 머리는 길고 제대로 손질을 하지 않은 것 같다. 그의 수염에는 죽은 피부와 음식 찌꺼기가 끼어 있다. 그는 당신이 다가가도 눈치를 채지 못한다.~ */
  IF ~~ THEN REPLY #3008 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~그가 생각할 수 있도록 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~당신이 소리를 내자 사내는 당신을 올려다 본다, 그리고 멍하던 그의 표정이 극적으로 변한다... 마치 누가 그의 두 눈에 불을 붙인 것 같다. "대체 왜 내 집에 들어온 거요?" 그는 눈을 좁게 뜨고 이를 악문다. "나가시오! 아니면 내가 당신을 당신이 기어 나온 묘지로 다시 돌려보낼 테니!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"나는 당신 부인과 얘기를 했소. 난 내가 당신을 도울 수..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"나는 당신 부인과 얘기를 했소. 난 내가 당신을 도울 수..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 어디 한 번 해보시오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"*아무도* 내게 그런 식으로 말할 순 없소. 당신이 한 말을 취소하지 않으면 이 집은 무덤이 될 것이오."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~그에게 더스트맨 계약서를 보여준다.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"진정하시오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"그럼 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"왜 내 마누라를 귀찮게 하는 거지?! 여기는 창녀를 쫓아다니는 놈을 위한 싸구려 여인숙이 아니오... 내가 당신을 요절내기 전에 그녀를 가만히 내버려 두고 내 집에서 나가!"~ */
  IF ~~ THEN REPLY #11709 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 어디 한 번 해보시오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"*아무도* 내게 그런 식으로 말할 순 없소. 당신이 한 말을 취소하지 않으면 이 집은 무덤이 될 것이오."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~그에게 더스트맨 계약서를 보여준다.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"진정하시오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"그럼 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~사내의 얼굴은 시뻘게진다, 그리고 그는 고함을 지르기 시작한다. "넌 얼간이냐?!" 그는 으르렁거리며 당신 발에 침을 뱉는다. *"이 역겨운 흉터투성이 개 같으니! 당장 꺼지지 않으면 신들조차 널 구하지 못할 거다!"*~ */
  IF ~~ THEN REPLY #11714 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 어디 한 번 해보시오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"그럼 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~사내는 떠나는 당신을 향해 독설을 퍼붓는다. "다시는 내 집에 들어오지 마, 이 더러운 자식아."~ */
  IF ~~ THEN REPLY #11716 /* ~"더 이상 못참겠군. 당신은 이제 죽은 목숨이오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~아무 말도 없이 떠난다.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~앵갸가 보인다. 그는 전과 별로 다른 것이 없는 것처럼 보인다. 당신이 다시 그에게 다가가자 그는 천천히 고개를 돌려 당신을 본다. "또 너군! 내가 전에 말했을 때 듣지 못했냐, 이 매독에 걸린 개새끼야! 당장 나가지 않으면 내가 널 네가 서 있는 바로 그 자리에서 난도질하겠다!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"나는 당신 부인과 얘기를 했소. 난 내가 당신을 도울 수..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"나는 당신 부인과 얘기를 했소. 난 내가 당신을 도울 수..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 어디 한 번 해보시오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"*아무도* 내게 그런 식으로 말할 순 없소. 당신이 한 말을 취소하지 않으면 이 집은 무덤이 될 것이오."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~그에게 더스트맨 계약서를 보여준다.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"진정하시오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"그럼 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~당신이 계약서를 꺼내자 앵갸의 얼굴에서 핏기가 가신다. 잠시 그는 무슨 말을 해야 할지 몰라 주저하더니 다시 성질을 부린다. "그걸 어디서 얻었지?! 내게 말하는게 좋을 걸..."~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"당신 부인이 그것이 어디 있었는지에 대해 내게 말해주었소. 그녀는 당신을 걱정하고 있었소."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"당신 부인이 그것이 어디 있었는지에 대해 내게 말해주었소. 그녀는 당신을 걱정하고 있었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"나는 그것을 모타이라는 더스트맨으로부터 얻었소. 그것에는 당신 이름이 적혀 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~계약서를 찢는다.~ */ JOURNAL #64584 /* ~나는 앵갸를 그토록 괴롭히던 사후 계약서를 갈기갈기 찢었다. 종이 조각이 바닥에 떨어지는 것을 보자 그는 몇 년은 젊어진 듯했다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~앵갸는 잠시 횡설수설한다, 그리고 그는 화풀이할 상대를 찾은 듯하다. "나... 난 그년을 죽일 거야! 난..."~ */
  IF ~~ THEN REPLY #11729 /* ~"만약 당신이 무엇이 당신 신상에 좋은지를 안다면 그녀를 *건드리지* 못할 거요."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"그건 당신 알아서 할 일이오, 하지만 우선 우리들 사이의 일부터 처리합시다. 이 계약서의 대가로 내게 뭘 주겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"그녀는 당신을 걱정했기 때문에 내게 얘기를 한 거요... 그런데 그에 대한 당신의 최초의 반응은 그녀가 당신을 소중히 여겼기 때문에그녀를 '벌주려는' 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~계약서를 찢는다.~ */ JOURNAL #64584 /* ~나는 앵갸를 그토록 괴롭히던 사후 계약서를 갈기갈기 찢었다. 종이 조각이 바닥에 떨어지는 것을 보자 그는 몇 년은 젊어진 듯했다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"넌 *감히* 다른 곳도 아닌 *내* 집에서 내게 명령을 하는 거야...?" 그는 심호흡을 한 후 분노를 폭발시킨다. "나가, 이 빌어먹을 자식아! 그 악마의 계약서도 가지고 가라고!"~ */
  IF ~~ THEN REPLY #11733 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 왜 나를 떠나게 *만들려고* 하지 않소..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"기다리시오! "그녀는 당신을 걱정했기 때문에 내게 얘기를 한 거요... 그런데 그에 대한 당신의 최초의 반응은 그녀가 당신을 소중히 여겼기 때문에그녀를 '벌주려는' 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"그녀는 *남편*인 나와의 약속을 어겼어!" 그는 주먹을 불끈 쥐고 당신을 노려본다. "나는 마누라에게 그 일에 대해서 누구에게도 말하지 말라고 했어, 그런데 그년은 그걸 우리 집에 맨 먼저 들어온 알지도 못하는 놈에게 털어놓다니!"~ */
  IF ~~ THEN REPLY #11735 /* ~"그녀는 당신을 사랑하기 때문에 약속을 어겼소. 법과 맹세도 때로는 더 중요한 것들에게 양보해야 하오." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"당신에겐 화낼만한 이유가 있소. 만약 지킬 생각이 없다면 약속을 하지 말았어야 했소. 나는 맹세를 어기는 자를 존경하지 않소, 하지만 이제 그런 것은 지나간 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"당신에겐 화낼만한 이유가 있소. 만약 지킬 생각이 없다면 약속을 하지 말았어야 했소. 나는 맹세를 어기는 자를 존경하지 않소, 하지만 이제 그런 것은 지나간 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"그래, 그녀는 약속을 어겼고 그건 당신이 처리할 문제요. 더 이상 할 말은 없소."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~앵갸의 분노는 다소 가라앉은 듯하다, 그리고 그는 으르렁거리며 말한다. "지나간 일은 어쩔 수 없지..." 그는 당신을 미심쩍은 눈으로 본다, 그리고 고개를 끄덕여 계약서를 가리킨다. "그럼 당신은 그 종이를 가지고 뭘 할 생각이오?"~ */
  IF ~~ THEN REPLY #11741 /* ~계약서를 찢는다.~ */ JOURNAL #64584 /* ~나는 앵갸를 그토록 괴롭히던 사후 계약서를 갈기갈기 찢었다. 종이 조각이 바닥에 떨어지는 것을 보자 그는 몇 년은 젊어진 듯했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"당신이 그 계약서의 대가로 돈을 받은 것처럼 나도 그 대가로 돈을 받고 싶소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~앵갸는 계약서에서 눈을 떼지를 못한다. "왜 내게 그걸 가져왔소?" 그는 의심을 하는 듯하다. "그걸 미끼로 돈이라도 뜯어내려고?"~ */
  IF ~~ THEN REPLY #11740 /* ~계약서를 찢는다.~ */ JOURNAL #64584 /* ~나는 앵갸를 그토록 괴롭히던 사후 계약서를 갈기갈기 찢었다. 종이 조각이 바닥에 떨어지는 것을 보자 그는 몇 년은 젊어진 듯했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"당신이 그 계약서의 대가로 돈을 받은 것처럼 나도 그 대가로 돈을 받고 싶소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~당신이 양피지를 찢자 앵갸는 절박한 표정으로 종이조각이 바닥에 떨어지는 것을 지켜본다. 그는 약간 몸을 떤 후, 마치 자신을 누르고 있던 거대한 중압감으로부터 벗어난 듯 몸을 똑바로 세운다. "당신..." 그는 당신에게 감사를 하려는 듯하다. 그러나 그는 그렇게 하려다 멈추고 미심쩍은 눈으로 당신을 본다. "공짜란 없소, 적어도 벌통에서는."~ */
  IF ~~ THEN REPLY #11743 /* ~"공짜라고 생각하시오. 내가 있는 동안 벌통의 규칙들이 많이 바뀌게 될 것이오."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"장래에 당신 도움이 필요할지도 모르오. 날 도와줄 수 있겠소?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"만약 내게 감사하는 마음이 있다면 내 질문에 대답해주었으면 하오..."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"그럼 내게 보답할 방법을 생각해 보시오... 지금 나는 이만 실례해야겠소."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~앵갸의 얼굴에서 분노가 사라진다. 그는 자신의 행운에 대해 더 이상 투덜거릴 생각이 없는 듯하다. "아마 신들이 내가 지난 반 달 동안 한 기도를 들어주신 모양이오..." 그는 한숨을 쉰다. "고맙소, 친구... 진심으로 감사하오"~ */
  IF ~~ THEN REPLY #11747 /* ~"실은 날 도울 방법이 있소... 내 질문에 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"똑같은 실수를 되풀이하지만 마시오... 다음 번에는 내가 도울 수 없을지도 모르니." ~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"그것은 내게도 큰 가치가 있소. 잘 있으시오, 앵갸."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"나는 이미 한 사람과 내 목숨을 가지고 흥정했소, 그리고 난 그걸 다시 반복하지는 않을 거요, 특히 당신같은 걸어다니는 시체하고는!" 그는 으르렁거린다. "또 내 집에서 나가시오, 아니면 내가 당신이 다시 죽도록 만들 테니 !"~ */
  IF ~~ THEN REPLY #11750 /* ~계약서를 찢는다.~ */ JOURNAL #64584 /* ~나는 앵갸를 그토록 괴롭히던 사후 계약서를 갈기갈기 찢었다. 종이 조각이 바닥에 떨어지는 것을 보자 그는 몇 년은 젊어진 듯했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"날 죽이고 싶소? 어디 한 번 해보시오..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"좋소. 나는 이 계약서를 늘 가까운 곳에 지니도록 하겠소... 당신이 아직도 그것이 존재하며 당신이 죽게되면 그것에 대한 의무를 이행해야 한다는 사실을 알 수 있도록. 안녕히 계시오, 앵갸."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~앵갸는 고개를 끄덕인다. "질문을 하시오."~ */
  IF ~~ THEN REPLY #11753 /* ~"왜 당신이 더스트맨 계약서에 서명했는지 물어봐도 괜찮겠소?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"내가 여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~앵갸는 고개를 끄덕인다. "그래, 그 이름은 알고 있소, 하지만 별로 기분 좋은 이름은 아니오."~ */
  IF ~~ THEN REPLY #11758 /* ~"그에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~그는 눈살을 찌푸린다. "그는 수집자들 중 하나요, 그리고 적잖은 세력을 지니고 있소. 많은 부하들을 거느리고 있지. 그는 왕국의 군주는 아닐지 모르나 그의 본거지에서 그를 상대한다는 것은 결코 만만한 일이 아니오."~ */
  IF ~~ THEN REPLY #11761 /* ~"수집자들?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"그가 어디 있는지 혹시 아시오?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"그가 어디 있는지 혹시 아시오?"~ */ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"인간 콘도르, 잭칼, 하이에나... 존엄이라고는 눈꼽만큼도 없는 역겨운 놈들이오. 그들은 대부분 넝마주이 광장에서 살고 있소. 시체를 수거해 값나가는 건 모두 다 벗겨낸 다음, 시체안치소의 더스티들에게 팔아 넘기오."~ */
  IF ~~ THEN REPLY #11766 /* ~"그들은 왜 그런 짓을 하는 거요?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"그럼 파로드는 이 수집자들이란 자들 중 하나요? 당신은 혹시 그가 어디 있는지 아시오?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"파로드가 어디 있는지 다시 말해주겠소?"~ */ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"더스티들은 시체를 가져오면 돈을 지불하오. 비가 충분히 오지 않을 때 거리를 깨끗하게 하는 데 도움이 되오."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"그럼 파로드는 이 수집자들이란 자들 중 하나요? 당신은 혹시 그가 어디 있는지 아시오?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"파로드가 어디 있는지 다시 말해주겠소?"~ */ JOURNAL #64576 /* ~앵갸는 파로드의 소재에 대해 내게 말해주었다. 그에 의하면 파로드의 집은 넝마주이 광장 *아래에* 파묻혀 있다고 한다.  또한 그는 내게 파로드의 은신처로 가려면 "전이문"을 이용해야 하며 그것을 작동시키려면 고물을 지니고 있어야 한다고 말해주었다. ~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"그렇소, 하지만 당신에게 그 얘기를 해준다고 해서 별다른 은혜를 베푸는 건 아니오..." 그는 얼굴을 더욱 찌푸린다. "내 친척들 중 하나가 몇 달 전에 죽으면서 파로드의 비밀의 일부에 대해 털어놓았소. 그에 의하면 파로드의 소굴은 넝마주이 광장 *지하*에 묻혀 있다고 하오. 그 곳으로 가려면 손에 고물을 쥐고 어떤 전이문을 통과해야 한다고 하오."~ */
  IF ~~ THEN REPLY #11775 /* ~"이 넝마주이 광장이란 곳은 어디에 있소?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"여기서 몇 블록 떨어진 곳이오... 시체안치소 정문에서 서쪽으로 곧바로 가시오. 계속 가다 보면 사방에 쓰레기와 넝마가 쌓인 곳이 나타날 거요. 거기서는 조심하도록 하시오... 그 곳의 수집자들은 늘 사람이 죽은 다음에야 시체를 수집하지만은 않소. 알겠소?"~ */
  IF ~~ THEN REPLY #11778 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"당신은 돈이 너무 많아 현실을 제대로 보지 못하는 모양이군..." 그는 코방귀를 뀐다. "우린 가진 거라고는 거의 없소, 그리고 난 돈이 필요했소. 그리고 그 때는 돈의 출처는 별 상관이 없다고 생각했었소. 그리고 더스티에게 몸을 파는 일은 이 곳에서 찾을 수 있는 대부분의 일거리보다는 훨씬 양심적이오..."~ */
  IF ~~ THEN REPLY #11780 /* ~"왜 당신은 생각을 바꾸게 되었소?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오, 앵갸."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~그는 한숨을 쉰다. "나는 반 달 전에 거리에서 좀비를 보았소, 더스티를 위해 일하는 좀비들 중 하나를 말이오. 그러자 나는 가슴을 비수로 찔린 것 같은 충격을 받았소. 나는 내가 실수를 했다는 걸 깨달았소... 나는 죽은 뒤에 그런 꼴이 되고 싶지는 않았소."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"그렇다면 당신은 계약서에 서명하지 말았어야 했소."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"그렇다면 당신은 계약서에 서명하지 말았어야 했소."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"우린 모두 때로 실수를 저지르오."~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오, 앵갸."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~앵갸의 얼굴이 빨개진다. "난 당신 설교 따위는 필요없소! 빌어먹을, 당신은 *감히* 내 집에서 날 깔보는 거요? 난 당신에게 그 악마의 계약서를 찾아와 달라고 부탁한 적이 없소. 난 당신에게 아무런 빚을 지지 않았소! 나가시오! 난 다시는 당신을 보고 싶지 않소!"~ */
  IF ~~ THEN REPLY #11788 /* ~"만약 스스로에게 그럴 힘이 있다고 생각한다면 왜 나를 떠나게 *만들려고* 하지 않소..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"그럼 안녕히 계시오."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~당신이 얘기를 하려고 할 때 당신의 후두부에서 바늘로 찌르는 듯한 감각이 느껴진다... 당신은 갑자기 그가 당신의 설교를 순순히 받아들이지 않을 거라는 것을 깨닫는다.~ */
  IF ~~ THEN REPLY #11790 /* ~"그렇다면 당신은 계약서에 서명하지 말았어야 했소."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"우린 모두 때로 실수를 저지르오."~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오, 앵갸."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~앵갸는 툴툴거린다. "그럴지도..."~ */
  IF ~~ THEN REPLY #11794 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오, 앵갸."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~앵갸가 보인다. 그는 전보다 훨씬 나아 보인다. 얼굴에 생기가 다소나마 돌아왔고, 그의 눈에는 더 이상 뭔가에 쫒기는 듯한 기색이 없다. 당신이 다시 그에게 다가가자 그는 몸을 돌려서 당신을 마주본다. "흠... 벌통의... 나같은... 불쌍한 사람을 구원하는 성자 나으리군." 그는 툴툴거린다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #11796 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"당신이 어떻게 지내는지 보고 싶었을 뿐이오, 앵갸. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~앵갸는 고개를 끄덕인다. "물론이오. 마누라에게 당신을 위해 담요를 꺼내라고 얘기하겠소..."~ */
  IF ~~ THEN REPLY #11798 /* ~"고맙소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"아직은 휴식을 취하고 싶지 않소. 물어볼 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"아직은 휴식을 취하고 싶지 않소. 하지만 휴식을 취할 때가 되면 돌아오리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~앵갸는 눈살을 찌푸리고 고개를 젓는다. "그런 건 본 적이 없소, 친구."~ */
  IF ~~ THEN REPLY #11801 /* ~"그럼 날 위해 다른 질문들에 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~"나는 이미 한 사람과 내 목숨을 가지고 흥정했소, 그리고 난 그걸 다시 반복하지는 않을 거요." 그는 고개를 젓는다. "지금 빚 문제를 청산합시다."~ */
  IF ~~ THEN REPLY #11803 /* ~"좋소. 만약 내게 감사하는 마음이 있다면 내 질문에 대답해주었으면 하오..."~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"내게는 휴식을 취할 수 있는 곳이 필요하오."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"당신은 내게 아무런 빛도 없소, 앵갸 -- 이 일은 공짜라고 생각하시오. 안녕히 계시오."~ */ EXIT
END
