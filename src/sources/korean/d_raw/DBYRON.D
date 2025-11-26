// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~옷을 잘 차려 입은 중년의 사내가 보인다. 그는 익숙한 눈으로 군중을 훑어보고 있는 듯하다. 그는 당신이 다가오는 것을 눈치채고 재빨리 당신을 훑어본다.~ */
  IF ~~ THEN REPLY #34661 /* ~"안녕하시오."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~그는 미소를 지으며 고개를 끄덕이는 둥 마는 둥 한다. "나는 바이런 픽잇으로 금융업자요. 내 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #34663 /* ~"금융업자?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~그는 다시 고개를 끄덕인다. "그렇소, 나는 상인들을 위해 봉사하오. 장사를 시작하고 싶으시오? 불경기에 사업을 유지하고 싶으시오? 또는 사업을 확장하고 싶소? 어떤 경우에든 내게 오면 자금을 대출받을 수 있소." 그는 당신을 아래위로 훑어본다. "당신은 상인처럼 보이진 않소, 그러니 내가 어떻게 도와드리면 되겠소?" ~ */
  IF ~~ THEN REPLY #34666 /* ~"나는 상인이오."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~그는 미소를 짓고 잠시 고개를 돌린다. "죽음의 상인일지는 모르겠으나 그건 내가 거래를 하는 종류의 상인이 아니오." 그는 눈살을 찌푸린다. "꼭 그렇게 내 시간을 빼앗아야만 하겠다면 날 찾아온 진짜 이유를 말해주시오."~ */
  IF ~~ THEN REPLY #34669 /* ~"당신 사업에 대해 얘기해줄 수 있겠소?" ~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~그는 얼굴을 찌푸리며 고개를 젓는다. "아니, 내가 보기엔 그럴 이유가 없소..." 그는 당신을 아래위로 살펴본다. "당신은 명백히 내가 거래를 하는 부류의 사람이 아니오. 그만 떠나 주시오." 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #34672 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~그는 한숨을 쉰다. "좋소, 가급적 짧게 하시오."~ */
  IF ~~ THEN REPLY #34674 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"나는 당신과 트리스트에 대해 얘기하고 싶소."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"나는 해골을 잃어버렸소... 혹시 그런 걸 원할만한 사람이 누군지 아시오?" ~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"이 구역 전체를 가리키는 거라면 이 곳은 마계구요. 만약 우리가 지금 있는 이 지역만 한정해서 말하는 거라면 이 곳은 개방 시장이오."~ */
  IF ~~ THEN REPLY #34679 /* ~"마계구에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"개방 시장에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~그는 지루한 것 같다. "평민들이 사는 곳이오." 그는 자신의 주위를 가리킨다. "주변을 둘러보면 이 곳에서 볼만한 것들이 어떤 것들인지 당신도 알 수 있을 거요... 아무 것도 없소. 당신이 관심을 가질 만한 건 이 곳엔 없소."~ */
  IF ~~ THEN REPLY #34683 /* ~"그럼 당신은 왜 여기 있는 것이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"개방 시장에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~그는 미소짓는다. "이 어리석은 얼간이들의 유일한 용도는 소비자로서 돈을 쓰는 것이오. 그 행위는 그들로 하여금 자신들의 무의미한 삶에서 뭔가를 이룩하고 있다는 환상을 주오." 그는 말을 잠시 멈추고 사람들을 경멸하는 눈초리로 쳐다본다. ~ */
  IF ~~ THEN REPLY #34687 /* ~"계속하시오."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~그는 어깨를 으쓱한다. "돈이 있는 곳에는 상인들과 도둑들도 모이기 마련이오." 그는 손으로 주위를 가리킨다. "나는 그들이 힘들여 번 돈의 부담을 상인들이 덜어 줄 수 있도록 돕고 있소." 그는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #34690 /* ~"당신은 도둑에 대해 얘기했소. 도둑들은 누가 돕소?~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"나는..." 그는 계산된 표정과 미소를 짓는다. "왜 그런 걸 묻는 거요?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"그냥 궁금했을 뿐이오..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~시장의 남동쪽 어딘가에는 렌니라는 도둑이 있다. 그로부터 뭔가 알아낼 수 있을지도 모른다. ~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"나는 훈련을 받을 수 있는 곳을 찾고 있소..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~시장의 남동쪽 어딘가에는 렌니라는 도둑이 있다. 그로부터 뭔가 알아낼 수 있을지도 모른다. ~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"호기심 때문이오..."~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"훈련을 받을 수 있는 곳을 찾고 있소..."~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"아무런 이유도 없소. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~그는 웃는다. "그러한 호기심은 매우 위험할 수가 있소... 그리고 조심하지 않으면 치명적일 수도 있소." 그는 당신을 자세히 살피면서 다음에 할 말을 신중하게 생각한다. "가서 렌니와 얘기를 하시오. 그는 대개 이 시장의 남동쪽에 있소." 그는 잠시 말을 멈춘다. "그에게 내가 당신을 보냈다고 하시오."~ */
  IF ~~ THEN REPLY #34697 /* ~"개방 시장에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~그는 자신의 뒤에 있는 건물을 가리킨다. "거의 모든 상품을 구비하고 있는 훌륭한 시장이오." 그는 계속하기 전에 잠시 말을 멈추고 생각한다. "단, 진기한 물건은 없소. 이 곳 주민들은 그런 걸 살 여력이 없으니까. 하지만 좋은 시장임은 틀림없소."~ */
  IF ~~ THEN REPLY #35739 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~그는 어깨를 으쓱한다. "나는 여행 가이드가 아니오. 만약 시길에 대해 알고 싶다면 돌아다니면서 당신 눈으로 직접 보고 들으시오. 그게 제일 좋은 방법이오. 하지만 너무 깊게 파고들려고 하면 목숨을 잃을 수도 있으니 조심하시오."~ */
  IF ~~ THEN REPLY #35741 /* ~"오? 그건 무엇 때문이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~그는 당신이 한 말의 정확한 의미를 파악하려고 잠시 생각에 잠긴다. "시길에는 많은 비밀들이 있소, 그리고 그 중에는 좋은 것들도 있고 나쁜 것들도 있소. 좋지 않은 비밀들을 지나치게 많이 발견하면 당신 목숨이 위태로워질 수도 있소."~ */
  IF ~~ THEN REPLY #35744 /* ~"어떤 종류의 비밀들 말이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~그는 당신을 놀란 표정으로 보더니 웃음을 터뜨린다. "만약 내가 당신에게 말해줄 수 있는 것이라면 그건 비밀도 아닐 거요, 그렇지 않소?"~ */
  IF ~~ THEN REPLY #35747 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"그렇지는 않을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"아, 트리스트..." 그는 얼굴을 찌푸리면서 고개를 돌린다. 잠시 후 그는 다시 당신을 쳐다보면서 눈썹을 치켜 올린다. "그녀가 어쨌다는 거요?"~ */
  IF ~~ THEN REPLY #35749 /* ~"나는 그녀를 위해 사라진 문서를 찾아주려고 하고 있소."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"관두시오. 당신에게 할 다른 질문들이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~그는 한숨을 쉬고 고개를 젓는다. "*사라진* 문서 따윈 애초부터 존재하지도 않았소. 그것은 자신의 채무 사실을 오도하려는 트리스트의 계책에 불과했소. 이 건은 머시킬러에 의해 철저하게 조사되었고, 아무런 증거도 발견되지 않았소."~ */
  IF ~~ THEN REPLY #35752 /* ~"머시킬러?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"그들이 뭔가를 놓쳤을 수도 있소."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"범죄 사건의 *진상*을 규명하고 죄인을 처벌하는 일에 일신을 바치고 있는 광신자들이오. 그들은 시길의 법정에서 수사관 노릇을 하는 경우가 많소. 그들은 매우 철저하오, 그러니 그들이 아무 것도 발견하지 못했다면..." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #35756 /* ~"그들이 뭔가를 놓쳤을 수도 있소."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"그것도 가능은 하나 별로 현실성은 없소. 그런 말을 하는 걸 보니 당신은 머시킬러나 그들의 수사 방식에 대해 잘 모르는 모양이오. 만약 그들이 문서를 찾을 수 없었다면, 그 문서는 애당초 존재하지 않은 거요." 그는 화난 얼굴로 당신을 본다. ~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"누군가가 서류를 훔쳐낸 다음 파기했을 수도 있소. 그러면 대부금을 두 번 갚아야 하니까."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~나는 바이런 픽잇이 트리스트란 여자로부터 서류를 훔쳤다고 생각한다. 그 서류가 없으면 그녀는 빛을 갚았다는 사실을 입증할 수가 없어 빛을 갚기 위해 노예로 팔려가게 된다.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"누군가가 문서를 훔쳤을 수도 있소... 아니면 아예 파기해 버렸을지도."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~나는 바이런 픽잇이 트리스트란 여자로부터 서류를 훔쳤다고 생각한다. 그 서류가 없으면 그녀는 빛을 갚았다는 사실을 입증할 수가 없어 빛을 갚기 위해 노예로 팔려가게 된다.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"누군가가 서류를 훔쳐낸 다음 파기했을 수도 있소. 그러면 대부금을 두 번 갚아야 하니까."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~나는 바이런 픽잇이 트리스트란 여자로부터 서류를 훔쳤다고 생각한다. 그 서류가 없으면 그녀는 빛을 갚았다는 사실을 입증할 수가 없어 빛을 갚기 위해 노예로 팔려가게 된다.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"누군가가 문서를 훔쳤을 수도 있소... 아니면 아예 파기해 버렸을지도."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~나는 바이런 픽잇이 트리스트란 여자로부터 서류를 훔쳤다고 생각한다. 그 서류가 없으면 그녀는 빛을 갚았다는 사실을 입증할 수가 없어 빛을 갚기 위해 노예로 팔려가게 된다.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"누군가가 문서를 훔쳐내 파기했을 수도 있소. 그러면 채무자는 빛을 두 번 갚아야 하니까.."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"누군가가 문서를 훔쳤을 수도 있소... 심지어는 아예 파기해 버렸을 수도."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~그는 당신에게 화를 내려는 듯하다, 그러나 이내 얼굴에 만족스러운 미소를 띤다. "정말 끔찍한 얘기요... 하지만 그런 행위에 대한 증거는 아무 데도 없으니 딱한 일이오..." 그는 계속 당신을 보며 미소를 짓는다.~ */
  IF ~~ THEN REPLY #35763 /* ~"그래, 딱한 일이오. 말해주시오, 왜 트리스트는 노예로 팔리게 되었소? 당신에게 진 빚을 할부 형식으로 갚도록 해줄 수도 있지 않았겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"만약 증거가 존재한다면 난 그걸 찾아낼 생각이오."~ */ JOURNAL #35767 /* ~나는 바이런 픽잇에게 트리스트의 잃어버린 서류를 찾을 생각이라고 말했다. ~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"그 밖에도 물어볼 것들이 있소..."~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"얘기는 할 만큼 한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"그래, 그녀는 그렇게 수도 있었소. 실제로 나는 그녀에게 그런 제안을 했소." 그는 단호한 표정으로 당신을 바라본다. "하지만 그녀는 내 제의를 거절했소. 나는 사람들에게 두 번 기회를 주지 않소. 누구도 날 거절한 대가를 치르지 않고 그냥 넘어갈 수는 없소. 그 누구도..."~ */
  IF ~~ THEN REPLY #35768 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~그는 당신을 비웃는다. "그럼 행운을 빌겠소. 머시킬러도 그 불쌍한 트리스트를 도울 수 없었다면, 당신이 그 일을 해낼 가능성은 전무할 거요. 자, 그만 꺼져 주시오." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #35770 /* ~떠난다.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"아니, 나는 당신이라면 이제 지긋지긋하오. 더 이상 당신 질문에는 대답하지 않겠소. 자, 그만 꺼져 주시오." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #35771 /* ~떠난다.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~그는 조롱하는 듯한 표정으로 당신을 본다. "정말이오? 대체 왜 그를 찾으려 하는 거요?"~ */
  IF ~~ THEN REPLY #35772 /* ~"내게도 나름대로의 이유가 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"그는 내 해골을 훔쳤소."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~그는 잠시 멈춘다. "내게는 로타가 있는 곳을 그 누구에게도 알려 주지 말아야 할 합당한 이유들이 있소. 자, 그만 꺼져 주시오." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #35775 /* ~떠난다.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"그래서? 그냥 그 곳으로 쳐들어가서 그것을 돌려 달라고 요구할 생각이오?" 그는 당신을 아래위로 훑어본다. "당신은 나름대로 싸움에는 소질이 있는 것 같소, 하지만 당신이 로타의 상대가 될 거라고 생각하오?" 그는 코웃음친다. "당신 해골도 그의 벽을 장식하게 될 거요."~ */
  IF ~~ THEN REPLY #35776 /* ~"그래도 난 그를 찾아야만 하오."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"한 사람이 강해야 얼마나 강하겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"알겠소. 그만 가봐야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~그는 요란하게 웃은 후 믿지 못하겠다는 표정으로 당신을 쳐다본다. "로타는 법 위에 존재하오. 그는 그만큼 강대하단 말이오..."~ */
  IF ~~ THEN REPLY #35779 /* ~"그래도 난 그를 찾아야만 하오."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"알겠소. 그만 가봐야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~그는 고개를 젓는다. "정말..." 그는 한숨을 쉬고 고개를 돌린다. "당신이 당신 해골을 다시는 찾지 못할 거라는 건 내가 보장하겠소. 잊어버리고 대용품을 찾으시오."~ */
  IF ~~ THEN REPLY #35781 /* ~"왜?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"고맙소, 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"왜냐하면 당신 해골이 뼈들의 지배자인 로타의 수중에 들어갔을 가능성이 높기 때문이오. 만약 그렇다면 찾을 생각은 버리시오." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #35783 /* ~"이 로타란 사람은 어디 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~사채업자 바이런 픽잇이 보인다. "또 왔소?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"나는 당신과 트리스트에 대해 얘기하고 싶소."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~그는 웃으며 주변을 둘러본다. "정말이오? 그건 아무에게나 함부로 털어놓을 성질의 얘기가 아니오." 그는 생각을 하면서 당신을 자세히 살펴본다. "말했듯이 나는 도둑들과는 아무런 관계가 없소... 당신은 가서 렌니와 얘기를 하는 것이 좋을 것 같소. 그는 대개 이 시장의 남동쪽에 있소." 그는 잠시 말을 멈춘다. "그에게 내가 당신을 보냈다고 하시오."~ */
  IF ~~ THEN REPLY #35789 /* ~"개방 시장에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END
