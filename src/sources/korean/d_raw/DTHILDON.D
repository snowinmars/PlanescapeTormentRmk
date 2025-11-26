// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"이런! 이게 누구야? 경비병! 그가 여기 있소!"~ */
  IF ~~ THEN REPLY #12871 /* ~완료.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"날 모욕할 생각은 하지 마! 꺼져!~ */
  IF ~~ THEN REPLY #12873 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"그 작은 알랑쇠가 이제는 뭐라고 하는 거요? 그건 틀림없이 모두 거짓말이오."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"실은 아직 그와는 얘기를 하지 못했소. 당신에게 물어봐야 할 것들이 아직 남아있소."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"그는 내게 그건 누명이 아니라고 말하고 있소. 실제로 그는 당신이 그 불쌍한 사람을 죽이는 걸 직접 목격했다고 주장하고 있소."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"나는 아직도 이 아나키스트 음모라는 주장에 대해 검토하고 있소."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"그는 자신이 송곳을 사체에 가져다 놓았다고 자백했소, 하지만 그건 당신이 이 사건에 반드시 연루되도록 하기 위해서였다고 하오. 그는 당신이 살인자이면 꼭 체포되게 만들겠다고 말하고 있소."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"그는 자신이 송곳을 사체에 가져다 놓았다고 자백했소, 하지만 그건 당신이 이 사건에 반드시 연루되도록 하기 위해서였다고 하오. 그는 당신은 살인자이며, 확실히 체포되기를 원했다고 말하고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"누구를 고발할지 결정했소."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"그건 아직은 당신과는 상관없는 일이오. 당신은 내 질문에 대답해주어야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"아직은 아무런 진전이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"그 불쌍한 대장장이 애빌돈은 정말 안됐소. 하지만 그는 별로 성실하지 않았소. 그게 세상 돌아가는 법칙이오... 아마 인과응보라고 하지. 내 말을 명심하시오. 어쨌든 이 틸돈에게 뭘 원하시오?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"당신도 잘 아는 사로스가 사체 부근에서 발견된 이 송곳을 내게 주었소. 묘하게도 그 손잡이에는 당신 이름이 새겨져 있소. 그걸 어떻게 설명하겠소?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~나는 사로스가 준 송곳을 가지고 틸돈을 추궁했다. 틸돈은 사로스가 자신에게 누명을 씌우고 있다고 주장했다. ~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"내 말을 그냥 믿어, 이 얼간아! 놈은 정말 위험한 자요, 그러니 그가 다른 사람을 또 죽이지 못하도록 막아야만 하오. 서두르란 말이오!"~ */
  IF ~~ THEN REPLY #12888 /* ~"틸돈, 난 분명히 당신에게 내 질문들에 대답하라고 했소. 지금 당장 대답을 하시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"수사 중이오. 걱정하지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"그가 뭐라고 했다고? 난 당신에게 그 놈은 도둑이자 살인자라고 했소, 그런데 내 말을 못 믿겠다는 거요? 만약 내가 그가 혁명가 연맹의 일원인 아나키스트라는 사실을 폭로한다면 당신은 어떻게 하겠소?"~ */
  IF ~~ THEN REPLY #12891 /* ~"왜 내가 그걸 믿어야 하오?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~틸돈은 사로스가 아니키스트이며, 기술자인 베다이-린과 함께 그를 모함하려 하고 있다고 주장했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~거짓말: "만약 그것이 사실이라면 그가 법의 심판을 받도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~틸돈은 사로스가 아니키스트이며, 기술자인 베다이-린과 함께 그를 모함하려 하고 있다고 주장했다. ~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~진실: "만약 그것이 사실이라면 그가 법의 심판을 받도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~틸돈은 사로스가 아니키스트이며, 기술자인 베다이-린과 함께 그를 모함하려 하고 있다고 주장했다. ~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"솔직히 난 별로 개의치 않소. 나는 이미 당신이 범인이라고 단정하기에 충분할 만큼의 얘기를 들었소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~그는 경건한 듯한 표정을 짓는다. "그건 내가 내 자신을 범죄자로 만들지도 모르는 증언을 정의를 실현하기 위해 할 것이기 때문이오." 그는 말을 멈춘다. "그가 아나키스트란 걸 내가 아는 건 그가 나를 포섭하려고 했기 때문이오. 그와 그 베다이-린이란 기술자 말이오. 나는 그들을 함정에 빠뜨리기 위해 그렇게 하겠다고 했소. 하지만 난 곧 내가 그 불쌍한 사로스를 해칠 만큼 비정한 사람이 못 된다는 걸 깨달았소. 그래서 나는 그들의 제의를 거절했고, 이제 그들은 증거 인멸을 위해 나를 제거하려고 하고 있소. 살인자는 그들이지 내가 아니오."~ */
  IF ~~ THEN REPLY #12896 /* ~"설령 이걸 믿는다고 해도 당신도 함께 감금하지 말아야 할 이유가 있소?~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"터무니가 없군. 하지만 확인은 해보리다. 우선 내 다른 질문들에 대답을 하시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"좋소. 당장 확인하겠소. 아무데도 가지 마시오, 틸돈. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"그건 진실이오! 난 내 죽은 어머니를 걸고 맹세할 수 있소. 그와 그 베다이-린이란 기술자는 나를 포섭하려고 했소. 나는 그들을 함정에 빠뜨리기 위해 그렇게 하겠다고 했소. 나는 내 당파에 충성을 다하니까. 하지만 난 곧 그런 건 옳은 일이 아니라고 결론을 내렸소. 그리고 그러자 그들은 날 교수대로 보낼 생각을 하게 됐소."~ */
  IF ~~ THEN REPLY #12900 /* ~"흥미롭군. 하지만 궁극적으로는 믿을 수가 없소. 너무 부자연스럽기 때문이오. 아무래도 당신을 범인으로 넘겨야겠소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"알겠소. 확인해 보겠소. 내 다른 질문들에 대답을 하시오, 틸돈."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"조사해 보겠소. 힌트를 주어 고맙소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"뭐? 당신은 내게 혐의를 두는 거요? 하지만 난 아무 짓도 안 했소! 당신은 엉뚱한 사람을 잡는 거요! 제발! 난 범인이 아니오!"~ */
  IF ~~ THEN REPLY #12904 /* ~"가벼운 농담이오, 틸돈. 긴장을 푸시오. 다른 질문들도 좀 대답해주시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"농담을 좀 했소, 틸돈. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"모든 증거는 당신을 범인으로 지목하고 있소. 다음에 당신을 다시 보게 되는 건 처형장에서 일 거요. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"아직도 조사 중이오? 당신은 별로 유능한 수사관이 아니군. 내가 준 정보도 제대로 확인하지 않다니... 괜히 당신을 도운 것 같군..."~ */
  IF ~~ THEN REPLY #12908 /* ~"경건한 척 하는 건 집어치우시오, 틸돈. 내 질문에나 대답하시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"당신으로부터 듣고 싶은 건 이미 다 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~감독의 얼굴이 창백해진다. "그가... 그가... 자신이 아나키스트란 걸 시인했소?"~ */
  IF ~~ THEN REPLY #12911 /* ~"그렇소. 그는 당신이 당파에 관계없이 주변의 모든 사람들에게 위험한 존재이며, 누군가 당신을 저지해야 한다고 생각하고 있소. 그는 당신이 정의의 심판을 받게 만들기 위해 스스로의 범죄를 자백할 각오를 하고 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"그렇소, 그리고 당신은 살인자요. 당신 ~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"그가... 그가 그랬소? 그럼 당신을 그를 체포해야 하오! 그가 위협이라는 걸 모르겠소? 어떻게 당신은 윤리관이라고는 없는, 도둑질에다가 거짓말까지 하는 아이의 말을 믿을 수가 있소? 그를 체포해 사건을 종결시키시오!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"자, 틸돈, 내가 보기에 그는 당신만 벌을 받게 할 수 있다면 자신도 벌을 받을 각오가 되어 있소. 내가 그에 대해 들은 이야기를 종합해 볼 때 그는 결코 악한 사람이 아니오, 그리고 그가 당신이 응분의 처벌을 받도록 스스로의 처벌조차 감수하겠다고 한다면 그건 당신이 그러한 처벌을 받아 마땅하다는 뜻이오."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"그건 앞뒤가 맞지 않소. 왜 그가 그런 짓을 하겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"여기서 명령을 내리는 건 당신이 아니오. 그걸 명심하시오. 자, 내 질문에 대답하시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"그렇게 나오지 않아도 당신은 이미 위험한 입장에 놓여 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"아나키스트의 음모를 위해서요, 이 얼간이 같으니!" 그는 목소리를 낮추고 악의에 찬 눈으로 당신을 바라본다. "아나키스트들은 모두 광신자들이오, 그리고 그들은 나처럼 그들의 정체를 폭로하는 자들 가만히 내버려 두지 않소. 그들은 자신들의 계획을 위해 동지들조차 기꺼이 희생을 하오." 그는 똑바로 서서 선언한다. "그들을 견제하는 건 바로 나처럼 정직한 사람들이오."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~"그럴까, 틸돈? 사로스는 젊은이고 젊은이는 실수를 하기 마련이오. 그가 애초에 자신을 이런 수렁에 빠뜨린 사람들을 보호하기 위해 자신을 내던져 당신을 잡아넣으려고 한다고는 생각하기 어렵소. 충성심도 좋지만, 적어도 그는 자기가 함정에 빠진 것을 알 정도로는 똑똑하오. 아니 틸돈, 책임은 당신에게 있소.~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"분명히 여기에 뭔가 수상쩍은 것이 있다고 생각은 되나, 그것이 정확히 무엇인지는 모르겠소."~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"정직하다? 좋소. 내 질문들에 대답하시오.~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"정말 일을 멋지게 하는 군. 안녕히 계시오, 틸돈."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"그들이 꾸미는 음모를 이해하지 못한다니 넌 정말 돌머리군! 똥구멍에서 머리를 꺼내 제정신을 차리고 그 개자식을 감옥에 쳐넣으라고!" 그는 자신이 누구에게 어떤 말을 했는지를 깨닫고 잠시 놀란다. 그러나 그는 곧 말을 덧붙인다. "미안하오. 스트레스 때문인 것 같소. 모든 사람들에게 살인자이자 아나키스트 취급을 당하는 건 참 힘든 일이오."~ */
  IF ~~ THEN REPLY #12924 /* ~"그렇지 않다는 건 나도 아오. 이 문제는 숙고해야겠소. 다른 질문에도 대답해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"그렇지 않다는 건 나도 아오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~그의 살찐 얼굴은 뇌졸증에 걸린 듯 새빨개진다. "내게 혐의를 두는 거요? 하지만 나는 살인자가 아니오! 난 단지 아나키스트들을 폭로하려고 할 뿐이오! 빌어먹을, 내게 이럴 순 없소! 내가 그 짓을 하는 걸 보았다고 하는 사람은 믿을 수가 없소, 그러니 당신은 내가 그 짓을 했다고 할 수가 없소!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"과연 맹세와 주문 앞에서도 당신이 똑같은 얘기를 할 수 있겠소? 난 사로스는 그렇게 할 수 있다는 데 돈을 걸겠소."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"사로스가 훨씬 나은 증인이오. 그가 더 설득력이 있고 또 당신과는 달리 그는 이 곳 사람들에게 미움을 받지 않고 있소. 나는 그의 이야기가 옳다고 확신하고 있으며 켈도에게도 그렇게 말할 생각이오."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"난 당신들 둘 다 넘기겠소. 마음에 드오? 안녕히 계시오, 틸돈. 아마 다시 만날 일은 없을 거요."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"마음에 들면 그렇게 말할지도. 안녕히 계시오, 틸돈."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"나는 이 일에 대해 심사숙고하겠소. 그 동안 삶을 즐기시오, 틸돈. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"염병할. 내가 내 물건을 챙겨 도망치게 해줄 순 없겠소. 그만한 보상은 하리다."~ */
  IF ~~ THEN REPLY #12933 /* ~"좋소. 떠날 준비를 시작하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"만약 내가 켈도에게 말하기 전에 당신이 이 곳에서 도망칠 수 있다면. 그럴 가능성은 희박할 거요."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"아니, 이 곳에 남든지 아니면 더 큰 대가를 치를 각오를 하시오. 내가 틀림없이 그렇게 되도록 할 테니 안심해도 좋소. 안녕히 계시오, 틸돈."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"떠나겠소, 당장 떠나겠소. 아마 다시는 내 그림자도 보지 못할 거요."~ */
  IF ~~ THEN REPLY #12937 /* ~"내가 마음을 바꾸기 전에 어서 가시오."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"마음을 바꿨소. 당신은 곧 사형집행인을 만나게 될 거요. 안녕히 계시오, 틸돈."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"당신은 답을 원하오? 어떤 답을 말이오?"~ */
  IF ~~ THEN REPLY #12940 /* ~"당신은 누구요?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"내게 갓즈맨에 대해 얘기해주시오."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"살인이 일어난 밤에 뭘 하고 있었소?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"누구를 찍을 거요?" 그는 이상하리만큼 열성적인 것 같다. ~ */
  IF ~~ THEN REPLY #12951 /* ~"나는 사로스를 살인범으로 지목할 생각이오."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"나는 당신과 사로스 양쪽 모두를 고발하겠소."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"나는 켈도에게 당신이 살인자라고 말하겠소."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"아직은 아무도 아니오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"아직은 말할 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"이 작업장의 감독인 회색의 틸돈이오. 내 일은 노동자들이 맡은 일을 제대로 하도록 감독하고... 당신 같은 자가 그들을 방해하지 않도록 하는 거요. 그들은 무척 게으른 데다가, 그나마 내가 여기서 지키고 서 있지 않으면 하루 종일 노닥거리기만 할 거요. 난 엄하지만 공정하오. 누구에게든 물어보시오."~ */
  IF ~~ THEN REPLY #12957 /* ~"왜 당신을 사람들이 '회색의 틸돈'라고 부르는 거요?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"그럼 당신이 용광로에서 사용할 철광석을 얻기 위해 내가 얘기를 해야 할 사람이군..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"그러리다. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"그건 내가 저 빌어먹을 용광로들로부터 나오는 그을음으로 뒤덮여 지낼 때가 많기 때문이오. 그건 노동자들이 붙여 준 별명이오... 물론 애칭이오."~ */
  IF ~~ THEN REPLY #12968 /* ~비꼰다: "물론이오. 그들은 당신의 온화한 영혼을 정말 존경하는 것 같소."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~진지하게: "물론이오."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"물론이오. 그게 틀림없을 거요."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"당신은 내가 노동자들을 공평하게 대하지 않는다는 거요? 말도 안돼! 나는 그들에게 아버지같은 존재요!"~ */
  IF ~~ THEN REPLY #12974 /* ~"불행히도 아마 그들 대부분은 어린 시절 정기적으로 학대를 당했을 것이오.~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"내 말은 당신이 너무 공정한지도 모른다는 거요. 내 말뜻을 알겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"좋소, 좋아. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"난 확신하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~그는 분노로 얼굴이 자주색으로 변한다. 그는 간신히 분노를 억누른 후 말을 내뱉는다. "꺼져, 아니면 경비병을 부를 테니!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"내가 살인 사건을 조사할 동안은 안 되오. 자, 내 다른 질문들에 대답해 주시오."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"내 질문에 대답해주시오..."~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"좋소, 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~그는 소리쳐 경비병들을 부른다. "경비병! 이 쓰레기를 데리고 가서 다시는 여기 오지 못하게 해!"~ */
  IF ~~ THEN REPLY #12983 /* ~"넌 후회하게 될 거다. 죽을 준비를 해라, 이 돼지야."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"그럼 좋소. 안녕히 계시오."~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"당신은 나보고 그들을 다루는 방법에 대해 다시 생각해보라는 거요? 그러지. 하지만 난 내가 하던 방식대로 계속할 거라고! 이제 여기서 꺼져."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"지금 명령을 내리는 건 당신이 아니오. 다른 질문들에도 대답하시오."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"내 질문에 대답해주시오..."~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"좋소, 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"그렇소. 그들은 만약 그렇게 하지 않을 경우 어떤 신세가 될지 알고 있소."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"당신 말은 대장장이가 죽은 건 자업자득이라는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~그는 잠시 창백해진다. "그건 그냥 비유해서 했을 뿐이오. 특별한 뜻은 없었소."~ */
  IF ~~ THEN REPLY #12994 /* ~"좋소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"어디 두고 봅시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"그게 무슨 뜻이오?"~ */
  IF ~~ THEN REPLY #12997 /* ~"그건 내가 당신과 동의한다는 뜻이오."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"그건 내가 그들이 당신을 좋아한다는 얘기를 믿지 않는다는 뜻이오."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"그건 엿먹으란 뜻이다, 이 얼간아."~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"좋소. 만약 모든 사람들이 다 그런다면 다원 우주는 살기 좋은 곳이 되겠지. 난 하던 일로 돌아가야겠소."~ */
  IF ~~ THEN REPLY #13001 /* ~"몇 가지만 더 물어보고 싶소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"마음대로 생각하시오. 난 내 부하들을 아오. 그들에게는 그들을 인도해 줄 엄격한 지도자가 필요하오. 그리고 그래서 그들은 날 존경하오. 이제 내 앞에서 꺼지시오."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"지금 명령을 내리는 건 당신이 아니오. 다른 질문들에도 대답하시오."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"내 질문에 대답해주시오..."~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"그들은 날 받아들였으며, 훈련을 통해 날 지금의 나로 만들었소. 나는 그 일에 대해 그들에게 감사하고 있소. 그들은 내 재능을 연마하며 기술로 승화시켰소. 당신에게 말해 두겠는데, 나는 당수가 가장 총애하는 사람들 중 하나요, 그리고 언젠가는 그가 내가 이 조직에서 얼마나 중요한 존재인지 모든 이들에게 보여줄 거요. 그들은 모든 사람에게 신성이 깃들어 있다고 하오. 내 경우 그건 사실이오. 솔직히 말해서 난 다른 이들보다 내가 더 신의 경지에 가깝다고 생각하오. 따라서 나는 신처럼 행동하고 내 하급자들에게 절대적 충성을 요구할 권리가 있소. 난 내 자신에 대한 믿음으로 힘을 얻고 산을 움직이는 법을 배우고 있소. 내가 우주의 지배자가 되면 난 날 방해한 놈들을 한 놈도 빠짐없이 기억할 거요."~ */
  IF ~~ THEN REPLY #13008 /* ~"그건... 흥미롭군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"아직도 용광로를 쓰고 싶은 만큼 다 쓰지 못한 모양이군. 좋소, 그럼 이걸 가져가시오." 그는 옆에 있는 철광석 더미에서 철광석을 하나 집어 당신 손에 불쑥 쥐어 준다. "그 밖에도 원하는 것이 있소, 아니면 내가 이 불행한 자들을 감독하는 일로 돌아가도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #13011 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"하던 일을 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~그는 눈을 가늘게 뜨고 당신을 본다. "내가 보기엔 당신에겐 그게 필요없을 것 같군. 꺼져, 얼간아."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"나에게 그것을 순순히 주고 건강한 몸으로 여기서 걸어 나가는 건 어떻겠소?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"나에게 그것을 순순히 주고 건강한 몸으로 여기서 걸어 나가는 건 어떻겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"좋소, 좋아. 그럼 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"만약 그게 당신이 원하는 거라면. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~그는 당신을 아래위로 조심스럽게 살펴본 후 말한다. "대장장이가 되고 싶소? 그런 피부면 불에도 끄떡 없겠군. 그럼 그걸 가져가시오, 그리고 내 노동자들이 하는 일은 방해하지 마시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #13019 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"요즘은 아무나 갓즈맨으로 받아들이는 모양이군." 그는 불평한다. "진정한 가능성을 보여야만 멤버가 될 수 있던 옛날과는 많이 달라졌군. 시험을 위해 이 철광석이 필요하오? 가지고 꺼지시오." 그는 차가운 철광석을 당신 손에 쥐어 준다.~ */
  IF ~~ THEN REPLY #13021 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~그는 당신 팔의 크기를 재 보고 당신 얼굴을 살펴본 후, 당신이 농담을 하는 것이 아니라는 결론을 내린다. "이 일은 결코 잊지 않을 거요." 그렇게 말하면서 그는 당신에게 철광석 한 덩어리를 넘겨준다, 그러나 그는 당신을 똑바로 쳐다보려고 하지 않는다. ~ */
  IF ~~ THEN REPLY #13024 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~그는 당신 팔의 크기를 보고 조소한다. "내가 너 따위에게 겁먹을 거라고 생각했나? 꺼져, 얼간아." 그는 당신에게 등을 돌린다.~ */
  IF ~~ THEN REPLY #13027 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"내가 뭘 하고 있었느냐고? 난 내 방에 앉아서 빵과 와인을 즐기며 쉬고 있었소. 그 밤에는 밖에 나가지 않았소. 그럴 필요가 없었으니까."~ */
  IF ~~ THEN REPLY #13030 /* ~"그에 대해 반증할 수 있는 사람은 없소?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"알겠소. 안녕히 계시오."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"아니오. 그럴 필요가 없었으니까. 만약 당신이 단서를 찾고 있다면 사로스를 조사해 보는 게 좋을 거요. 그 어린 도적은 자기 아버지가 간부라는 걸 믿고 아무 곳이나 드나드니까. 그는 늘 새로운 경험을 추구하오. 내 생각에 그는 센세이트나 마찬가지요. 사람을 죽이고도 무사할 수 있는지를 보기 위해 그런 짓을 저질렀을 수도 있소."~ */
  IF ~~ THEN REPLY #13034 /* ~"사로스 말이오? 기억해두리다. 지금은 질문할 것들이 더 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"사로스 말이오? 확인해 보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~그는 썩은 이빨들을 드러내며 노골적으로 웃는다, 그리고 당신에게 다가와 악수를 한다. "정말 선택을 잘 했소, 친구. 당신과 다시 만날 날만 기다리겠소."~ */
  IF ~~ THEN REPLY #13037 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~마치 따귀라도 맞은 듯 그의 안색이 변한다. "우리 둘 모두? 내가 무슨 짓을 했다는 거요?"~ */
  IF ~~ THEN REPLY #13039 /* ~"나는 당신이 대장장이를 죽이고 사로스에게 그 죄를 뒤집어씌우려고 했다고 생각하오. 또한 나는 사로스는 불법적으로 당신을 범인으로 지목하려 했으며 다른 범죄를 저지른 사실도 있다고 생각하오."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"가벼운 농담이오, 틸돈, 다른 질문들도 좀 대답해주시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"농담을 좀 했소, 틸돈. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"당신은 대장장이 애빌돈을 죽이고 거짓말로 혐의를 벗으려고 했소. 안녕히 계시오."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"뭐야, 또 당신이오?"~ */
  IF ~~ THEN REPLY #13045 /* ~"내 질문에 좀 대답해주시오, 틸돈."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~팔이 굵고 수염이 더부룩하며, 배가 나온 남자가 보인다. 오랫동안 목욕을 하지 않은 듯 그로부터는 악취가 진동하며, 그의 입냄새 역시 몹시 역겹다. 당신이 그에게 다가갈 때 그는 부하들에게 명령을 하다가 그들 한 사람의 귀를 때리고 있던 중이었다. 그는 돌아서서 허리띠를 잡아 당기고 당신을 바라본다. 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #13048 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~그는 일시적으로 어리둥절해 하다가 다시 얘기를 한다. "사로스는 도둑이오. 그걸 나로부터 훔쳤을 가능성이 높소. 실제로 난 내 송곳을 잃어버린 지 꽤 되었소. 그냥 잃어버렸다고 생각했기 때문에 아무에게도 얘기하지는 않았소. 이제 나는 사로스가 내게 누명을 씌우려고 그걸 훔쳤다는 걸 알게 되었소. 그가 당신을 놀림감으로 만들기 전에 그를 체포하는 게 좋을 거요." 당신 표정을 보더니 그는 말을 덧붙인다. "그가 도망치기 전에 잡으란 뜻이오."~ */
  IF ~~ THEN REPLY #13092 /* ~"그건 액면가 그대로 믿기에는 너무 그럴 듯하오. 당신으로부터 필요한 답을 모두 얻은 다음 그에게 그 일에 대해 물어보도록 하겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"그럼 그냥 가서 그를 찾아보도록 하겠소.안녕히 계시오."~ */ EXIT
END
