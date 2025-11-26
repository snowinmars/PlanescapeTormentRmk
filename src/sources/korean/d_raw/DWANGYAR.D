// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~이 여인은 중년으로 보이며, 곳곳에 흰머리가 있다. 그녀의 얼굴에는 걱정 때문에 십자형의 주름살이 잡혀 있다... 당신을 보자 그녀는 당신에게 나가 달라고 부탁을 해야 할지, 아니면 테이블 옆에 남자에게 소리를 질러야 할지를 놓고 고민을 하는 듯하다.~ */
  IF ~~ THEN REPLY #3010 /* ~"안녕하시오."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"내가 남편을 부르기 전에 떠나는 게 좋을 거예요. 그는 당신이 함부로 우리 집에 들어온 데 대해 결코 가만히 있지 않을 거예요."~ */
  IF ~~ THEN REPLY #11845 /* ~"만약 당신이 그를 부를 생각이었다면, 진작에 그랬을 거요. 질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"당신 남편을 부르면 당신들 두 사람 모두 죽을 것이오. 이제 내 질문에 대답하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"진정하시오. 뭘 좀 물어보려고 했을 뿐이오..."~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~그녀는 걱정스러운 눈으로 남편을 본다. "내... 내겐 시간이 없어요, 이방인. 그런 일로 날 귀찮게 하지 마세요."~ */
  IF ~~ THEN REPLY #11849 /* ~"실례지만... 괜찮소?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"그럼 시간을 내야 할 거요. 자, 다음 질문들에 대답해 주시오..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"그럼 안녕히 계시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~그녀의 얼굴은 창백해진다, 그리고 공포 때문에 그녀의 눈은 크게 벌어진다. 당신이 미처 질문을 하기도 전에 그녀는 심호흡을 하고 비명을 지른다.~ */
  IF ~~ THEN REPLY #11852 /* ~"빌어먹을..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"나 말인가요? 그녀는 놀란 듯하다. "아... 그래요..." 그녀는 목소리를 낮춘다. "떠나도록 하세요. 내 남편은 요즘 제정신이 아니에요... 당신이 여기 있으면 괜히 그를 자극할 뿐이에요."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"나는 그와 얘기를 했소... 그는 고민하는 것 같았소. 무엇이 문제요?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"뭐가 잘못된 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"당신이나 그나 날 자극하지 않는 것이 득책이오. 자, 다음 질문들에 대답해 주시오..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"그럼 안녕히 계시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"그는 요즘 기침 때문인지 기분이 좋지 않아요..." 그녀는 어깨를 으쓱하나 다소 미심쩍다.~ */
  IF ~~ THEN REPLY #11857 /* ~"뭐가 잘못된 거요?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"만약 무엇이 문제인지 말해준다면 내가 도울 수 있을지도 모르오."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"그럼 안녕히 계시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"그... 그는 후회할 일을 한 것 같아요." 그녀의 표정은 우려에서 절망으로 바뀐다. "그는 사후 계약서에 서명한 것 같아요. 난 대체 그가 왜 그런 어리석은 짓을 했는지 모르겠어요!"~ */
  IF ~~ THEN REPLY #11860 /* ~"사후 계약서?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"알겠소... 당신에게도 나름대로의 문제가 있는 것 같소. 안녕히 계시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~그녀는 당신을 제지한다. "제발 누구에게도 내가 한 얘기를 하지 마세요, 특히 내 남편에게는..." 그녀는 두려워하는 것 같다. "약속해 주세요."~ */
  IF ~~ THEN REPLY #11862 /* ~"왜?"~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~거짓말: "아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~맹세: "아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"나는 그런 약속을 할 수가 없소. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~그녀는 약간 안도한 듯하다. "그럼 안녕히 가세요."~ */
  IF ~~ THEN REPLY #11866 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~그녀의 표정은 더욱 절망적이 된다. "나는... 나는 당신에게 아무 말도 하지 말았어야 했어요..." 그녀는 눈물을 글썽인다. "나는 그만큼이나 어리석은 바보예요!"~ */
  IF ~~ THEN REPLY #11867 /* ~"왜 비밀이어야 하는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"당신이 옳소. 당신이 내게 얘기하지 말았어야 했소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"내 남편은 성질이 난폭해요... 그리고 그는 내게 그에게 일어난 일에 대해 아무에게도 말하지 않겠다는 약속을 받아 냈어요..." 그녀는 당신을 다시 쳐다본다. "이 일에 대해선 *꼭* 침묵을 지켜 주셔야 해요."~ */
  IF ~~ THEN REPLY #11870 /* ~"당신은 내게 애기를 하지 말았어야 했소. 약속은 지켜져야만 하오, 그렇지 않으면 두 사람 사이의 신뢰관계는 유지될 수가 없소. 애초에 그런 약속을 하지 말았어야 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"위협이 수반된 약속은 약속이 아니오. 그런 약속을 깨트리는 알이라면 주저하지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"약속은 깨지기 위해 있는 거요. 약속이 개인의 안녕보다 중요하진 않소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~거짓말: "아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~맹세: "아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"나는 그런 약속을 할 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~그녀는 탄식한다. "그래도 나..."~ */
  IF ~~ THEN REPLY #11876 /* ~"이것 보시오, 아마 내가 도울 수 있는 일이 있을지도 모르오... 당신이 말한 이 사후 계약서란 어떤 것이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~거짓말: "걱정 마시오. 아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~맹세: "걱정 마시오. 아무에게도 얘기하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"우린 더 이상 서로 할 얘기가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"죽음의 신봉자... 더스트맨에게는 사람이 죽은 후 그 시체의 사용권을 그들에게 양도하도록 하는 계약이 있어요."~ */
  IF ~~ THEN REPLY #11880 /* ~"더스트맨은 계약자가 죽은 후 그 시체를 어디에 쓰는 거요?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"알겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"그들은 시체를 흑마술로 부활시켜 걸어다니는 시체로 만들어..." 그녀는 남편을 절망적인 시선으로 바라본다. "...썩어 없어질 때까지 부려요."~ */
  IF ~~ THEN REPLY #11882 /* ~"왜 당신 남편은 그런 것에 서명을 했소?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"당신 남편이 죽으면 그의 시체는 필요가 없소. 그런데 뭐가 문제요?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"당신에게도 나름대로의 문제가 있는 것 같군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"그는 평소보다 돈을 더 벌어 오려고 그랬던 것 같아요. 그는 자존심이 강해요... 하지만 그는 그런 짓을 함으로서 자신에게 더 큰 상처를 입힌 것 같아요."~ */
  IF ~~ THEN REPLY #11885 /* ~"그건 불행한 일이오. 그런데 당신에 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"계약을 취소할 방법은 없소?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"당신 남편이 죽으면 그의 시체는 필요가 없소. 그런데 뭐가 문제요?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"당신에게도 나름대로의 문제가 있는 것 같군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"계약서의 엽기성은 접어 두더라도, 그의 성격이 변해 버렸어요... 계약한 이래 그는 음침하고 우울한 사람이 되었고, 건전한 일거리를 찾으려고 하지도 않게 되었어요. 마치 레이디의 그림자가 그를 뒤덮고 있는 것 같아요..." 그녀는 탄식한다.~ */
  IF ~~ THEN REPLY #11889 /* ~"그건 불행한 일이오. 그런데 당신에 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"계약을 취소할 방법은 없소?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"왜 당신 남편은 그런 것에 서명을 했소?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"당신에게도 나름대로의 문제가 있는 것 같군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~그녀는 걱정스러운 눈으로 남편을 본다. "내... 내겐 시간이 없어요, 이방인. 나는 가사를 돌봐야 해요..."~ */
  IF ~~ THEN REPLY #11893 /* ~"시간을 내시오. 자, 다음과 같은 질문을 하겠소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"그럼 안녕히 계시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~그녀는 놀란 표정으로 당신을 쳐다보더니 다시 탄식을 한다. "*해봤다고요!* 나는 그와 계약한 더스트맨과 얘기를 해봤지만 그는 다른 더스티들처럼 냉혹했어요! 그는 내게는 내 남편을 도울 권리가 없다면 내게 강의를 하기까지 했어요!" 그녀는 입술을 실처럼 가늘게 만들어 그 더스트맨의 얼굴을 흉내낸다. "그는 정말 비정했어요."~ */
  IF ~~ THEN REPLY #11895 /* ~"노력해 보리다. 당신 남편과 서명을 한 더스트맨의 이름은 무엇이오?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"그건 불행한 일이오. 그런데 당신에 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"당신에게도 나름대로의 문제가 있는 것 같군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"그런 친절한 제의를 마다할 이유는 없지요." 그녀는 고마운 듯하다, 그러나 다시 그녀는 걱정스런 표정을 짓는다. "하지만 내가 당신에게 그런 부탁을 했다는 건 발설하지 마세요. 내 남편은 성질이 고약해요. 만약 그가 이 일에 대해 알게 되면..." 그녀는 몸서리친다.~ */
  IF ~~ THEN REPLY #11898 /* ~거짓말: "당신 남편이 모르도록 하겠다고 약속하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~맹세: "당신 남편이 모르도록 하겠다고 약속하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"난 어떤 약속도 하지 않겠소. 어떻게 되는지 두고 봅시다."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"그 더스티의 성은 그레이브센드에요... 그의 이름은 몰라요. 그는 벌통에 있는 더스트맨 바... 아마 '더스트맨이 모이는 바'란 이름일 거예요... 그는 그 곳에서 테이블 하나를 차지하고 있어요. 그는 그 곳에서 더 많은 사람들이 자신의 계약서에 서명하도록 획책하고 있겠죠."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"아, 모타이? 그는 죽었소."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"그럼 그를 찾아가도록 하겠소. 더스트맨이 모이는 바는 어디에 위치하고 있소?"~ */ JOURNAL #64577 /* ~나는 벌통에서 어떤 여인을 만났는데 , 그녀의 남편인 앵갸는 더스트맨이 모이는 바에 있는 모타이 그레이브센드라는 더스트맨과 '사후 계약서'를 체결했다고 한다. 나는 그녀와 그녀의 남편의 정신적 안녕을 위해 계약서 문제를 해결하도록 노력해보겠다고 나섰다. 그녀의 말에 의하면 더스트맨이 모이는 바는 이 구역 내에 있는 더스트맨 기념비의 남서쪽에 있으며, 그 앞에는 좀비가 서 있다고 한다. ~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"나는 이미 당신 남편의 계약서를 여기 이렇게 가져왔소."~ */ JOURNAL #64578 /* ~나는 벌통에서 어떤 여인을 만났는데 , 그녀의 남편인 앵갸는 더스트맨이 모이는 바에 있는 모타이 그레이브센드라는 더스트맨과 '사후 계약서'를 체결했다고 한다. 나는 이미 그 계약서를 입수했기 때문에 더스트맨 바까지 갈 필요가 없었다. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"밖에 나가서 기념비가 있는 곳으로 가세요, 그리고 다시 거기서 남서쪽으로 가세요..." 그녀는 손가락으로 턱을 두드린다. "그럼 곧 그 가게에 도달하게 될 거예요." 그녀는 역겨운 듯 말한다 "그 가게 앞에는 걸어다니는 시체가 하나 있어요."~ */
  IF ~~ THEN REPLY #11905 /* ~"좋소. 노력을 해보리다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"고마워요, 이방인..."~ */
  IF ~~ THEN REPLY #11906 /* ~"대단한 일도 아니오. 당장 가서 당신 남편의 계약을 취소하기 위해 힘써 보겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"그럼 가능한 한 이 문제에 대해서는 침묵을 지켜 주세요."~ */
  IF ~~ THEN REPLY #11907 /* ~"좋소. 당장 가서 당신 남편의 계약을 취소하기 위해 힘써 보겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"죽었다고요?!" 그녀는 충격으로 마비된 듯하다. "하지만 계약서... 그럼 이젠 방법이..."~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"그건 문제요."~ */ JOURNAL #64579 /* ~나는 벌통에서 어떤 여인을 만났는데 , 그녀의 남편인 앵갸는 더스트맨이 모이는 바에 있는 모타이 그레이브센드라는 더스트맨과 '사후 계약서'를 체결했다고 한다. 하지만 나는 이미 그를 죽였다. 그의 숨통을 끊음으로서  나는 그녀와 그녀의 남편을 파멸시킨 셈이다. ~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"걱정하지 마시오. 계약서는 바로 여기 있소."~ */ JOURNAL #64578 /* ~나는 벌통에서 어떤 여인을 만났는데 , 그녀의 남편인 앵갸는 더스트맨이 모이는 바에 있는 모타이 그레이브센드라는 더스트맨과 '사후 계약서'를 체결했다고 한다. 나는 이미 그 계약서를 입수했기 때문에 더스트맨 바까지 갈 필요가 없었다. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~그녀는 아무 말도 없다. 그녀는 남편을 흘긋 본 후 당신에게로 고개를 돌린다. "그럼 이젠 어쩔 도리가 없군요." 그녀의 목소리는 마치 돌을 가는 소리 같다. "떠나 주세요."~ */
  IF ~~ THEN REPLY #11910 /* ~"우선 질문할 것들이 있소..."~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"안녕히 계시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~앵갸의 아내는 당신이 다가가자 두려운 표정으로 쳐다본다. "나는 당신을 환영하지 않는다고 분명히 말했어요... 내가 남편을 부르기 전에 떠나는 게 좋을 거예요. 그는 당신이 함부로 우리 집에 들어온 데 대해 결코 가만히 있지 않을 거예요."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"당신 남편과 서명한 더스트맨의 이름을 다시 말해주겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~"만약 당신이 그를 부를 생각이었다면, 진작에 그랬을 거요. 자, 질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"당신 남편을 부르면 당신들 두 사람 모두 죽을 거요. 자, 내 질문에 대답하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"진정하시오. 뭘 좀 물어보려고 했을 뿐이오..."~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~앵갸의 아내는 당신이 다가가자 기대에 부풀어 쳐다본다. "성공했나요...?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"그렇소. 모타이로부터 계약서를 받아왔소. 자, 여기 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"아직 아니오. 당신 남편이 계약한 사람이 누군지 다시 말해주겠소?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~앵갸의 아내는 당신을 보지 미소를 짓는다. "반가워요. 어떻게 도와 드릴까요?"~ */
  IF ~~ THEN REPLY #11920 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"나는 필수품이 부족하오... 날 도와줄 수 있겠소?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"당신이 어떻게 지내는지 확인하고 싶었을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~그녀는 안도한 듯하다, 그리고 그녀 눈에는 눈물이 고인다. "신들이시여... 거의 알지도 못하는 사람을 위해 그런 일을 해주시다니 당신은 변장한 천사임에 틀림없어요..."~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~그녀에게 계약서를 준다.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~나는 앵갸의 계약서를 되찾아 그의 부인에게 되돌려주었다. 그녀는 내게 감사했으며 남편에게 계약서를 보여주라고 부탁했다. ~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"나는 이 일을 공짜로 해준 것이 아니오. 따라서 어느 정도의 보상을 기대하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"아니... 아니에요. 내 남편에게 계약서를 보여주면서 그것을 그를 위해 찾아왔다고 말해 주시겠어요? 자세한 경위에 대해서는 말하지 않고서... 그러면 정말 고맙겠어요."~ */
  IF ~~ THEN REPLY #11925 /* ~"좋소. 그럼 그에게 그걸 보여주겠소."~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"나는 이 일을 공짜로 해준 것이 아니오. 따라서 어느 정도의 보상을 기대하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~그녀는 걱정하는 눈으로 당신을 쳐다본다. "내게는 돈이 조금 있어요... 그거면 되겠어요?"~ */
  IF ~~ THEN REPLY #11927 /* ~"그렇소."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"동전 몇 닢으론 부족하오. 또 뭘 가지고 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~그녀는 옷 속에 손을 넣어 한 줌의 동전을 꺼낸다. 그녀는 그것들을 잠시 슬프게 쳐다본 후 당신에게 준다. "내 남편의 영혼에 대한 대가라면 결코 비싼 건 아니겠지요."~ */
  IF ~~ THEN REPLY #11929 /* ~"시작으로는 충분하군. 그 밖에 또 뭘 가지고 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"좋소. 여기 계약서가 있소."~ */ JOURNAL #64580 /* ~나는 앵갸의 계약서를 되찾아 그의 부인에게 되돌려주었다. 그녀는 내게 감사했으며 남편에게 계약서를 보여주라고 부탁했다. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"아니... 아니에요. 내 남편에게 계약서를 보여주면서 그것을 그를 위해 찾아왔다고 말해 주시겠어요? 자세한 경위에 대해서는 말하지 않고서... 그러면 정말 고맙겠어요."~ */
  IF ~~ THEN REPLY #11931 /* ~"좋소. 그럼 그에게 그걸 보여주겠소."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"더 이상은... 아무 것도 없어요." 그녀는 두려워하는 것 같다. "정말 아무 것도 없어요. 만약 우리 형편이 좋았더라면 남편은 사후 계약서에 서명하지도 않았을 거예요..."~ */
  IF ~~ THEN REPLY #11932 /* ~"날 *속일* 생각은 하지 마시오. 그 밖에 또 뭘 가지고 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"관두시오. 여기 계약서가 있소."~ */ JOURNAL #64580 /* ~나는 앵갸의 계약서를 되찾아 그의 부인에게 되돌려주었다. 그녀는 내게 감사했으며 남편에게 계약서를 보여주라고 부탁했다. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~그녀 얼굴은 창백해진다, 그리고 공포 때문에 그녀의 눈은 크게 벌어진다. 당신이 미처 반응을 취하기 전에 그녀는 심호흡을 하고 비명을 지른다.~ */
  IF ~~ THEN REPLY #11934 /* ~"빌어먹을..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~당신이 다가가자 앵갸의 아내는 걱정스러운 시선으로 남편을 흘긋 본다. "그 계약서를 가져다 준 건 고맙지만 당신은 내 남편을 화나게 했어요." 그녀는 두려워하는 눈빛으로 앵갸를 본다. "떠나도록 하세요."~ */
  IF ~~ THEN REPLY #11935 /* ~"좋소. 귀찮게 해서 미안하오."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~앵갸의 아내는 당신이 다가가자 기대에 부풀어 쳐다본다. "그걸 그에게 주셨나요...?~ */
  IF ~~ THEN REPLY #11936 /* ~"아직 아니오. 손에 넣으면 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"그 더스티의 성은 그레이브센드에요... 그의 이름은 몰라요. 그는 벌통에 있는 더스트맨 바... 아마 '더스트맨이 모이는 바'란 이름일 거예요... 그는 그 곳에서 테이블 하나를 차지하고 있어요. 그는 그 곳에서 더 많은 사람들이 자신의 계약서에 서명하도록 획책하고 있겠죠."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"아, 모타이? 그는 죽었소."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"만약 당신이 그를 부를 생각이었다면, 진작에 그랬을 거요. 질문할 것들이 좀 있소..."~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"나는 이미 당신 남편의 계약서를 여기 이렇게 가져왔소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"밖에 나가서 기념비가 있는 곳으로 가세요, 그리고 다시 거기서 남서쪽으로 가세요..." 그녀는 손가락으로 턱을 두드린다. "그럼 곧 그 가게에 도달하게 될 거예요." 그녀는 역겨운 듯 말한다 "그 가게 앞에는 걸어다니는 시체가 하나 있어요."~ */
  IF ~~ THEN REPLY #11940 /* ~"좋소. 노력을 해보리다."~ */ GOTO 21
END
