// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~당신 앞에는 젊은 더스트맨이 있다. 그는 턱에 짧은 수염이 있으며, 눈언저리가 거무스름하다. 그는 침울한 표정으로 벽을 바라보고 있다. ~ */
  IF ~~ THEN REPLY #14076 /* ~"안녕하시오."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~죽음을 기다리는 자가 보인다. 그는 아직 당신을 보지 못한 것 같다. ~ */
  IF ~~ THEN REPLY #14078 /* ~"안녕하시오."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~그를 무시하고 지나간다.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~당신이 다가가자 죽음을 기다리는 자는 고개를 돌려 당신을 마주본다. "다시 만난 반갑소." 그는 가벼운 미소를 짓는다. "당신 도움에는 감사하오."~ */
  IF ~~ THEN REPLY #14080 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~더스트맨은 올려다 보지 않는다. 그는 마치 바의 벽을 지나 수십 킬로미터 떨어진 곳을 보는 바라보듯 정면을 직시하고 있다. ~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"안녕히 계시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~더스트맨은 반응을 하지 않는다. 그는 계속 먼 곳을 쳐다본다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~더스트맨은 반응을 하지 않는다. 그는 계속 먼 곳을 쳐다본다.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"그럼 안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"그럼 안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"그럼 안녕히 계시오."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"그럼 안녕히 계시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~당신이 떠나려고 하자 더스트맨은 갑자기 말을 한다. 그가 간신히 알아들을 수 있을 정도로 작은 목소리로 말하는 탓에 당신은 그가 하는 말을 정확히 알아듣는 데 애를 먹는다. 당신 생각에 그는 계약에 대한 얘기를 한 것 같다.~ */
  IF ~~ THEN REPLY #14092 /* ~"뭐라고 했소?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~그것을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~더스트맨은 돌아서서 당신을 본다. 그의 얼굴은 돌처럼 굳어 있으며 그의 눈에는 생기라곤 없다. "당신은 왜 사후 계약서에 서명했소?"~ */
  IF ~~ THEN REPLY #14094 /* ~진실: "나는 돈이 필요하오."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~진실: "나는 그것이 내 기억을 자극시켰는지 보고 싶었소."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~진실: "죽음과 난 요즘 말도 안 하는 사이니, 난 내가 손해 볼 건 없다고 생각했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~진실: "솔직히 나도 모르겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"그게 당신과 무슨 상관이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"당신이 상관할 바가 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~그는 역겹다는 표정이다. "돈이라. 예상했던 대로군."~ */
  IF ~~ THEN REPLY #14100 /* ~"무엇 때문에 그렇게 했었어야 했다는 거요?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"당신 기억을 자극해?" 그는 눈살을 찌푸린다. "그리고 당신이 버리고 떠난 현생밖에 기억을 못한다는 말이오?"~ */
  IF ~~ THEN REPLY #14101 /* ~"무엇 때문에 그렇게 했었어야 했다는 거요?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~그는 당신을 묘한 표정으로 쳐다본다. "무슨 뜻이오?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"나는 사후에 무엇이 기다리고 있는지를 보았소."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"모르겠소. 나는 아직 사후에 무엇이 기다리는지를 보고 기억하지 못했소. 만약 내가 다시 죽는다면 그것에 대해 얘기할 수 있게 될지도 모르오."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"나는 전에 죽은 적이 있소. 하지만 그것에 대해 별로 기억하지는 못하오."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"난 그냥 그럴 수가 있소. 육감이라고나 할까."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~더스트맨은 *헛기침*한다. "그리고 당신은 아무런 생각도 없이 자신의 몸을 팔았을 뿐이다... 당신은 그 밖에 다른 걸 추구하지는 않았소?"~ */
  IF ~~ THEN REPLY #14107 /* ~"예를 들어...?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"현생으로부터의 해방. 이것 보시오... 당신도 시길의 거리를 걷는 시체들을 보았을 것이오." 그는 한숨을 쉰다. "일체의 의식이 없으며, 고통 분노, 또는 시간의 무게를 느낄 수도 없소... 그것이 진정한 죽음이오. 그것이 완벽이오."~ */
  IF ~~ THEN REPLY #14108 /* ~"누가 왜 그런 걸 원하겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"'완벽?" 웃기지 마시오. 그건 쓰레기에 불과하오."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"당신은 늙지 않았소, 다만 무지할 뿐이오. 당신에게는 아직 적잖은 인생이 남아있으니 애써 죽으려고 하지 마시오. 죽음은 조급하게 굴지 않아도 언젠가는 찾아오게 되어 있소, 그러니 살 수 있을 동안에는 삶을 즐기시오."~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"그럴지도. 하지만 난 뭐라고 할 입장이 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"그렇소.., 내가 원하는 건 해방이오. 무의 경지. 더 이상의 고통과 고뇌가 없는 상태."~ */
  IF ~~ THEN REPLY #14112 /* ~"당신은 죽기를 원하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"그렇소? 당신은 겉만 볼 뿐이나, 내가 보기에는 고통과 슬픔으로부터의 해방이오."~ */
  IF ~~ THEN REPLY #14114 /* ~"당신은 죽기를 원하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~당신이 떠나려고 하자 더스트맨은 갑자기 말을 한다. 그가 간신히 알아들을 수 있을 정도로 작은 목소리로 말하는 탓에 당신은 그가 하는 말을 정확히 알아듣는 데 애를 먹는다. 당신 생각에 그는 죽기를 원한다는 얘기를 한 것 같다.~ */
  IF ~~ THEN REPLY #14116 /* ~"뭐라고 했소?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~그것을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~소년의 표정은 변하지 않는다. "당신은 죽고 싶소?"~ */
  IF ~~ THEN REPLY #14118 /* ~진실: "아니오. 당신은?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~진실: "그렇소. 당신은?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~진실: "그렇소. 당신은?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"모르겠소. *당신*은 죽기를 원하오?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"날 *협박하는* 건가, 꼬마야?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~그는 눈을 깜박인다. "그래... 그렇소. 당신은 날 죽일 거요?" 그는 결심을 하는 듯 몸이 굳어진다. "그러시오, 난 신경 쓰지 않으니까."~ */
  IF ~~ THEN REPLY #14125 /* ~"만약 그것이 당신 소원이라면 존중해 주리다... 죽을 준비를 하시오."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"*죽고* 싶소?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"어느 쪽이든 내가 알 바가 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"그렇소..." 그는 당신을 살펴본다. "왜 당신은 죽기를 원하오?"~ */
  IF ~~ THEN REPLY #14128 /* ~진실: "살 이유는 무엇이오? 나는 짐승들과 괴물들로 득실거리는 도시에 갇혔으며, 내가 왜 그리고 어떻게 이 곳에 왔는지도 기억하지 못하오. 나는 이 도시와 나 자신에게 있어 이방인이오. 내게 삶이란 아무런 의미도 없소."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~진실: "그건 내가 죽을 수 없기 때문이오. 그 이유 하나만으로 내가 죽음을 원하기에 충분하오."~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~진실: "난 내 안의 뭔가를... 잃어버렸소. 나는 여기서 당신과 얘기를 하고 있지만 속은 텅 빈 기분이오. 내가 무엇을 하든 그런 느낌을 떨칠 수가 없소. 나는 죽음이 차라리 낫다고 생각하오."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~진실: "난 삶에서 배울 수 없는 것을 죽음에서 배울 수 있다고 생각하오."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~진실: "내가 죽고 싶다고 한 것은 거짓말이었소. 누가 죽길 원하겠소? 당신은 원하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~진실: "내가 죽고 싶다고 한 것은 거짓말이었소. 누가 죽길 원하겠소? 당신은 원하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"나는 이 일에 대해 당신과 얘기하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"그렇소..." 그는 당신을 살펴본다. "왜 당신은 살기를 원하오?"~ */
  IF ~~ THEN REPLY #14134 /* ~진실: "난 그냥 그럴 뿐이오."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~진실: "생존 본능. 난 살고 *싶소.*"~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~진실: "나는 아직 죽고 싶지 않소. 나는 살아 있는 것이 *훨씬* 더 좋소."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~진실: "삶을 포기하기 전에 삶에 대해서 내가 알아야만 하는 것들이 있소. 나는 내가 누구인지 알고 싶소."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"모르겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"나는 이 일에 대해 당신과 얘기하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~더스트맨은 조용히 귀를 기울인다. 당신이 얘기한 후에 그는 아무 말도 없이 당신을 그냥 바라본다. 그는 생각을 하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #14140 /* ~"당신은 죽기를 원하오? 그것이 내게 물어본 이유요?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~더스트맨은 고개를 떨구고 침묵한다. "그럼 우리는 더 이상 토론할 것이 없소... 안녕히 가시오."~ */
  IF ~~ THEN REPLY #14142 /* ~"가기 전에 묻겠는데... 왜 당신은 죽기를 원하는 거요?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"그렇소."~ */
  IF ~~ THEN REPLY #14144 /* ~"왜 당신은 죽기를 원하오?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"왜 살고 싶지 않은 거요?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"왜 그럼 아직까지 자살하지 않았소?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"현생... 현생은 진정한 삶의 추잡한 모조품에 불과하오. 그는 그러한 허식을 계속하기는 싫소." 그의 얼굴에 역겨움으로 주름이 생긴다. "누가 왜 다원 우주의 중심에서 사람들의 고통과 증오를 그 원동력으로 해서 존재하는 이 끔찍한 도시에 남기를 원하겠소? 죽음은... 조용하며... 평온하오."~ */
  IF ~~ THEN REPLY #14148 /* ~"사는 것이 당신이 생각하는 것 만큼 나쁘기만 할 수는 없소."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"그건 매우 삭막한 시각이오... 삶에는 증오와 고통말고도 많은 것들이 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"왜 그럼 아직까지 자살하지 않았소?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"이게 *삶*이란 말이오?" 그는 이를 내밀고 주먹을 꽉 쥔다. "현생... 현생은 진정한 삶의 추잡한 모조품에 불과하오. 나는 그러한 허식을 계속하기는 싫소." ~ */
  IF ~~ THEN REPLY #14152 /* ~"날 믿으시오, 그건 그렇지 않소."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"아마 첫 번째 죽음 후에."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"왜 그럼 아직까지 자살하지 않았소?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"만약 삶이 당신에게 아무런 의미도 없다면, 당신은 죽어야 하오."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~소년은 당신 말 때문에 화가 난 것 같다. "그래, 당신이 어떻게 안단 말이오?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"나는 사후에 무엇이 기다리고 있는지를 보았소."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"모르겠소. 나는 아직 사후에 무엇이 기다리는지를 보고 기억하지 못했소. 만약 내가 다시 죽는다면 그것에 대해 얘기할 수 있게 될지도 모르오."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"나는 전에 죽은 적이 있소. 하지만 그것에 대해 별로 기억하지는 못하오."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"난 그냥 그럴 수가 있소. 육감이라고나 할까."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~소년을 당신을 응시한다. "당신은 진실을 말하는 것 같소." 그는 놀란 표정으로 당신을 본다. "거기에는 무엇이 있소? 당신은 무엇을 보았소?"~ */
  IF ~~ THEN REPLY #14162 /* ~진실: "나는 거대한 암흑의 대양에서 표류하는 섬 위에 누워 있소. 섬은 그림자로 뒤덮인 돌들로 형성되어 있었소... 하지만 그 돌들은 돌이 아니었소. 그들은 내가 알아들을 수 없는 말로 내게 속삭였소. 그 곳에는 고요도 편안함도 없었으며, 한기가 살을 파고 들어가 뼈에까지 닿는 듯했소."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"나는 그 곳에 대해 아무에게도 얘기하지 않겠소. 나는 이미 너무 많이 얘기했소."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"당신은 내게 말해주어야만 하오! 난 알아야만 하오!"~ */
  IF ~~ THEN REPLY #14164 /* ~진실: "나는 거대한 암흑의 대양에서 표류하는 섬 위에 누워 있소. 섬은 그림자로 뒤덮인 돌들로 형성되어 있었소... 하지만 그 돌들은 돌이 아니었소. 그들은 내가 알아들을 수 없는 말로 내게 속삭였소. 그 곳에는 고요도 편안함도 없었으며, 한기가 살을 파고 들어가 뼈에까지 닿는 듯했소."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"난 당신에게 아무 얘기도 해주지 않겠소."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"난 그것에 대해 얘기하지 않겠소. 안녕히 계시오."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"당신은 내게 말해주어야만 하오!" 그는 주먹을 불끈 쥔다. "내게 뭘 원하오?"~ */
  IF ~~ THEN REPLY #14167 /* ~"나는 당신에게 살라고 부탁하고 싶소."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"난 당신에게 뭘 주거나 요구하지도 않겠소. 안녕히 계시오."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"당신은 내가 한 질문을 가지고 날 놀리고 있군..."~ */
  IF ~~ THEN REPLY #14169 /* ~"삶을 그토록 경솔하게 내던지려고 하다니 *당신*은 바보요. 그것은 죽은 자와 산 자 모두를 모독하는 짓이오."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"우린 더 이상 서로 할 얘기가 없소. 안녕히 계시오."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"당신이 본 것에 대해 얘기해주시오! 진정한 죽임이란 어떤 것이오? 거기서 무엇을 보았소?" 그의 목소리는 점점 더 커져 주변의 더스트맨들이 고개를 돌리고 쳐다볼 정도가 된다. ~ */
  IF ~~ THEN REPLY #14171 /* ~진실: "나는 거대한 암흑의 대양에서 표류하는 섬 위에 누워 있소. 섬은 그림자로 뒤덮인 돌들로 형성되어 있었소... 하지만 그 돌들은 돌이 아니었소. 그들은 내가 알아들을 수 없는 말로 내게 속삭였소. 그 곳에는 고요도 편안함도 없었으며, 한기가 살을 파고 들어가 뼈에까지 닿는 듯했소."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~거짓말: "그것은 소멸이오. 그 곳에는 아무 것도 없소. 그것은 무의 세계요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~거짓말: "그 곳은 크나큰 즐거움이 있고 낙원처럼 아름다운 장소요. 그 곳은 영원이 행복하게 살 수 있는 곳이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"난 말하지 않겠소. 안녕히 계시오."~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"차이가 없군..." 그는 바닥을 내려다 보며 기묘한 표정으로 입술을 깨문다. "현생의 그림자 너머에도 그 이상의 고통만이 기다리고 있을 뿐이군. 망각도 정화도 없고... 아무 것도 변하지 않는군... 다원 우주는 순환하고 그 어떤 것도 결코 변하지 않는군."~ */
  IF ~~ THEN REPLY #14175 /* ~"당신을 제외하고는. 당신은 아직도 달라질 수가 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"만약 당신이 그것을 믿는다면 그것이 진실이 될 것이오."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~그는 조소한다. "아니, 난 시도해 보았소. 그것도 몇 번이나."~ */
  IF ~~ THEN REPLY #14178 /* ~"만약 당신이 그것을 믿는다면 그것이 진실이 될 것이오."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"그럼 더 이상 할 말이 없소. 이만 실례하겠소."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"그것은 단순한 믿음이 아니라 현실이오." 그는 우울한 표정을 짓는다. "이 도시를 둘러보았소? 그것은 부패하고 있고, 그건 그 안의 모든 것들도 마찬가지요... 희망도 *노력*할 일도 없소. 모든 것이 어둠과 그림자로 얼룩져 있소."~ */
  IF ~~ THEN REPLY #14180 /* ~"더스트맨으로서의 당신의 믿음은 어떻소? 그것은 충분히 가치가 있는 목표가 아니겠소?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"그럼 더 이상 할 말이 없소. 이만 실례하겠소."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"내가 생각했던 대로군." 그는 한숨을 쉰다. "그럼 그 곳은 여기보다 더 나은 곳이군. 그리고 그 곳에 도달하기 위해서는 내가 죽어야 하므로..." 그는 당신을 쳐다본다. "내가 죽는 걸 도와주겠소?"~ */
  IF ~~ THEN REPLY #14182 /* ~"아니오."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"그렇소."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"당신에게 달렸소... 얼마나 줄 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"만약 당신에게 스스로를 죽일 정도의 확신도 없다면, 난 그 일을 대신해 주지 않겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"아니오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~더스트맨은 잠시 미소를 짓는다, 그러나 곧 우울이 그의 얼굴을 지배한다. "그럼 난 *반드시* 죽어야겠소." 그는 기대하는 눈빛으로 당신을 본다. "내가 죽는 걸 도와주겠소?"~ */
  IF ~~ THEN REPLY #14187 /* ~"아니오."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"그렇소."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"당신에게 달렸소... 얼마나 줄 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"만약 당신에게 스스로를 죽일 정도의 확신도 없다면, 난 그 일을 대신해 주지 않겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"아니오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~그는 당신을 잠시 쳐다본 후 입을 열었다가 닫는다. "그럼 떠나시오. 이 일에 대해서는 다시는 얘기하지 않을 것이오."~ */
  IF ~~ THEN REPLY #14192 /* ~떠난다.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~그는 고개를 끄덕인다. "더스트맨의 철학은 가치가 있는 목표요. 그렇지 않았다면 난 더스트맨이 되지 않았을 것이오."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"그럼 이 사실을 명심하시오: 당신은 소멸에 도달하는 일에 너무 열중하고 있소. 더스트맨의 교의에 의하면 진정한 죽음에 도달하려는 당신의 그러한 열의가 오히려 당신이 그 경지에 도달하는 것을 영구히 막을 수도 있소."~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"그럼 왜 더스트맨의 믿음을 당신 삶의 초점으로 삼지 않소? 현생은 고통과 불행의 삶일지도 모르나 당신의 믿음과 당신이 소중히 여기는 것들에 몰두한다면, 삶의 어려움을 극복하는 데 도움이 될 것이오."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"그럼 더 이상 할 말이 없소. 이만 실례하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~그는 으르렁거린다. "당신은 꼭 간부들처럼 말하는군. 그들은 늘 내게 *설교*를 하려고 하오."~ */
  IF ~~ THEN REPLY #14196 /* ~"그들이 그러는 건 옳은 일이오 -- 그들은 당신 가슴 속에 있는 죽음에 대한 열망을 알고 있소. 만약 당신이 진정한 죽음에 도달하고자 한다면 먼저 이 삶이 아무리 고통스러울지라도 그것과 화해를 해야만 하오. 삶은 하나의 기회이며, 당신은 아직 젊소.이 삶을 보다 더 체험하는 것이 죽음에 대한 당신의 열의를 가라앉힐지도 모르오."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"그럼 더 이상 당신에게 설교를 하지 않겠소. 안녕히 계시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"하지만 어떻게..." 그는 곤혹스러워하는 것 같다. "내가 어떻게 대처해야만 하겠소?"~ */
  IF ~~ THEN REPLY #14198 /* ~"그냥 최선을 다해 이 삶을 사시오. 아무리 고통스러워도 이 삶을 기회로 이용하시오. 당신은 젊소. 이 삶을 보다 더 체험하는 것이 죽음에 대한 당신의 열의를 가라앉힐지도 모르오."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"당신은 현생에서 인내해야만 하오. 인내함으로서 당신은 고통과 불행을 극복하는 법을 배우게 될 것이오. 곧 그것들은 당신에게 영향을 미칠 수 없게 될 것이며, 그렇게 되면 당신은 당신이 목표로 하는 진정한 죽음과 소멸을 향해 나아갈 수 있을 것이오."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"그건 당신에게 달렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"아마 그럴지도..." 그는 당신이 한 말을 고려해 본다. "아마 당신이 옳을지도 모르오. 하지만 현생의 고통을 참는 것이 어려울 때도 있소. 그럴 때 내가 어떻게 대처해야만 하겠소?"~ */
  IF ~~ THEN REPLY #14201 /* ~"그냥 최선을 다해 이 삶을 사시오. 아무리 고통스러워도 이 삶을 기회로 이용하시오. 당신은 젊소. 이 삶을 보다 더 체험하는 것이 죽음에 대한 당신의 열의를 가라앉힐지도 모르오."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"당신은 현생에서 인내해야만 하오. 인내함으로서 당신은 고통과 불행을 극복하는 법을 배우게 될 것이오. 곧 그것들은 당신에게 영향을 미칠 수 없게 될 것이며, 그렇게 되면 당신은 당신이 목표로 하는 진정한 죽음과 소멸을 향해 나아갈 수 있을 것이오."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"우리의 전인생은 어떻게 죽는가를 배우는 데 쓰여지오. 오직 당신만이 당신 질문에 대답할 수 있소."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"그것은 당신에게 달렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~소년은 생각에 잠겨 말이 없다. 얼마 후 그는 다시 당신 쪽으로 고개를 돌린다. "당신 말에는 설득력이 있소... 그리고 매우 참신한 시각이오. 당신이 말한 대로 하도록 하겠소."~ */
  IF ~~ THEN REPLY #14205 /* ~"삶을 살고, 나이를 먹으며, 배우시오... 내가 부탁하는 건 그것 뿐이오. 안녕히 계시오."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"나는 내 삶을 끝낼 방법을 찾고 있었소. 날 죽여 주겠소?"~ */
  IF ~~ THEN REPLY #14206 /* ~"아니오."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"그렇소."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"당신에게 달렸소... 얼마나 줄 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"만약 당신에게 스스로를 죽일 정도의 확신도 없다면, 난 그 일을 대신해 주지 않겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"좋소. 그럼 날 그냥 내버려 두시오. 우리는 다시는 얘기하지 않을 것이오."~ */
  IF ~~ THEN REPLY #14211 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~그는 안도의 한숨을 쉬고 법복 안에서 작은 자루를 꺼낸다. 
그가 그것을 자신의 앞에 놓자 쨍그랑 소리가 난다. "당장 하시오. 난 더 이상 기다릴 수가 없소."~ */
  IF ~~ THEN REPLY #14212 /* ~"좋소... 눈을 감으시오."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"기다리시오... 나는 당신 돈을 원하지 않소. 나는 당신이 왜 죽기를 원하는지 알고 싶소."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"나는 이 일을 하지 않겠소. 안녕히 계시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~그는 눈을 감는다. ~ */
  IF ~~ THEN REPLY #14215 /* ~당신 손을 그의 목 주변에 뻗쳐 목을 조른다.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~돈을 가지고 조용히 떠난다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"돈은 필요없소. 나는 당신이 왜 죽기를 원하는지 알고 싶소."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"나는 이 일을 하지 않겠소. 안녕히 계시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~당신은 바닥에서 자루를 조용히 집어든 후 아무 말 없이 떠난다. 자루에는 동전 쉰 닢 정도 들은 것 같다. 당신이 떠나고 있는 동안에도 그는 눈을 감은 채 전혀 움직이지 않는다. ~ */
  IF ~~ THEN REPLY #14219 /* ~"이 자루의 내용물은 당신의 어리석음에 대한 대가요."~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~당신은 양손으로 그의 목을 잡고 서서히 조이기 시작한다. 그는 헐떡거리며 눈을 크게 벌린다. 그는 애원하는 듯한 표정으로 당신 손을 할퀴기 시작한다. ~ */
  IF ~~ THEN REPLY #14220 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~그를 놓아준다.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~당신은 그의 목을 계속 조를 생각이다, 그러나 갑자기 무의식적으로 당신은 그의 목에서 손을 뗀다. 죽음을 기다리는 자는 숨을 쉰다... 그리고 그는 당신이 멈추어 준 데 대해 감사하는 듯하다. 바로 그 때 당신은 손으로 그의 관자놀이를 잡고 그의 목을 왼쪽으로 비튼다. 부러지는 소리와 함께 소년은 당신 품 안에서 힘없이 늘어진다.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"저 세상에서 봅시다, 더스티."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"저 새상에서 봅시다, 더스티..."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~놀랍게도 그 행동은 본능적인 것 같다... 당신은 전에도 비슷한 일을 해본 적이 있는 것 같다... 이런 생각을 하자 기억이 자극을 받으나, 표면으로 떠오를 정도로 강하지는 않다.~ */
  IF ~~ THEN REPLY #14224 /* ~시체가 바닥에 쓰러지도록 내버려 둔다.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~시체가 바닥에 쿵하고 부딪치자 갑자기 바 안에서 포효하는 소리가 울려 퍼진다...~ */
  IF ~~ THEN REPLY #14225 /* ~"이런..."~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~당신은 그를 놓아준다... 그리고 당신은 당신이 그를 놓아주고 싶어하지 않았다는 것을 알고 불안해진다. 소년은 숨을 헐떡이며 심하게 기침을 한다.~ */
  IF ~~ THEN REPLY #14226 /* ~"마음을 바꿨소?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~소년은 힘없이 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #14227 /* ~"이것 보시오... 다음 번에 당신이 *죽고자* 할 때는 태도를 분명히 하는 게 좋을 거요, 다음 사람은 당신이 멈춰 달라고 해도 멈춰 주지 않을지도 모르오. 자, 삶에 대해 울적해 하는 건 그만 집어치우시오, 당신이 아직도 살고 싶어 한다는 건 명백하니까."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~소년은 잠시 아무 말도 없이 당신을 쳐다본다. 그리고 천천히 고개를 끄덕이며 목을 문지른다.~ */
  IF ~~ THEN REPLY #14228 /* ~"이 교훈에 대한 대가로 돈은 내가 가지도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"나는 계약 조건을 완전히 이행하지 않았소. 그러니 돈은 필요없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~소년은 숨을 헐떡이며 다시 고개를 끄덕인다. "좋... 소. 고맙... 소. 내게... 새로운 시야를 주어..."~ */
  IF ~~ THEN REPLY #14230 /* ~"나에게 감사하지 말고, 그냥 *살도록* 하시오. 삶을 함부로 다루는 것은 죽은 자에 대한 모독이오. 안녕히 계시오."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"그건 신념의 문제가 아니오..."~ */
  IF ~~ THEN REPLY #14231 /* ~"그럼 그건 다른 문제인 것 같소. 당신에게 묻겠는데 무엇 때문에 삶을 그토록 증오하오?"~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"만약 당신이 진정으로 죽고자 했다면, 이미 오래 전에 그렇게 할 방법을 발견했을 거요. 이런 무익한 말장난으로 우리 서로 시간을 낭비하지 맙시다. 안녕히 계시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~그는 테이블 위에 작은 자루를 놓는다. "이 자루 안에 든 것이 내 전재산이오. 동전 쉰 닢이오. 날 죽이면 그건 당신 거요."~ */
  IF ~~ THEN REPLY #14233 /* ~"좋소... 눈을 감으시오."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"기다리시오... 나는 당신 돈을 원하지 않소. 나는 당신이 왜 죽기를 원하는지 알고 싶소."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"나는 이 일을 하지 않겠소. 안녕히 계시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~더스트맨은 조소한다. "별로 설득력이 없군."~ */
  IF ~~ THEN REPLY #14236 /* ~"그럼 날 죽여 보시오. 그리고 어떤 일이 일어나는지 보시오."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"나는 그것을 입증할 수가 있소."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"나는 사후에 무엇이 기다리고 있는지를 보았소."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"모르겠소. 나는 아직 사후에 무엇이 기다리는지를 보고 기억하지 못했소. 만약 내가 다시 죽는다면 그것에 대해 얘기할 수 있게 될지도 모르오."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"여기서 거짓말을 하고 있는 사람은 당신뿐이오, 그것도 자기 자신에게. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~더스트맨은 눈을 깜박인다, 그리고 당신을 조소한다. "첫 번째 죽음? 당신은 소생되었소?"~ */
  IF ~~ THEN REPLY #14241 /* ~"소생?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"그럼 날 죽여 보시오. 그리고 어떤 일이 일어나는지 보시오."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"보고 싶소?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"나는 사후에 무엇이 기다리고 있는지를 보았소."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"모르겠소. 나는 아직 사후에 무엇이 기다리는지를 보고 기억하지 못했소. 만약 내가 다시 죽는다면 그것에 대해 얘기할 수 있게 될지도 모르오."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"Si jamais je meurs et que je m'en souviens, je reviendrai t'en parler. Tu 심판as alors si je mens ou non. 안녕히 계시오."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"Je crois que le seul ?mentir, ici, 이건 toi, et seulement ?toi-m?e. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~더스트맨은 눈을 깜박인다, 그리고 당신을 조소한다. "당신은 거짓말을 하는군. 그 어떠한 인간도 한 번 이상 죽을 수는 없소...강력한 마법에 의해 소생되기 전에는."~ */
  IF ~~ THEN REPLY #14248 /* ~"소생?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"그럼 날 죽여 보시오. 그리고 어떤 일이 일어나는지 보시오."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"보고 싶소?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"만약 내가 죽었다가 살아나 기억을 한다면, 당신에게 돌아와 얘기를 해주리다. 그렇게 되면 당신은 내 말이 거짓말인지 아닌지 판단할 수 있을 것이오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"여기서 거짓말을 하고 있는 사람은 당신뿐이오, 그것도 자기 자신에게. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"소생되다... 다시 삶을 얻게 되다... 그런 일을 위한 마법은 정말 강대해야만 하오.~ */
  IF ~~ THEN REPLY #14253 /* ~"어떤 이에게 그러한 힘이 있겠소?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"내가 죽을 수 있다는 걸 믿지 못하겠소? 그럼 날 죽여 보시오. 그리고 어떤 일이 일어나는지 보시오."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"내가 죽을 수 있다는 걸 믿지 못하겠소? 난 그것을 당신에게 입증할 수가 있소."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"만약 내가 죽었다가 살아나 기억을 한다면, 당신에게 돌아와 얘기를 해주리다. 그렇게 되면 당신은 내 말이 거짓말인지 아닌지 판단할 수 있을 것이오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"강대한 요술사나 사제... 또는 신들이라면... 하지만 내가 아는 사람들 중에는 없소." 그는 눈살을 찌푸린다. "그리고 당신 역시 그런 자들을 알고 있는 것 같지는 않소."~ */
  IF ~~ THEN REPLY #14258 /* ~"내가 죽을 수 있다는 걸 믿지 못하겠소? 그럼 날 죽여 보시오. 그리고 어떤 일이 일어나는지 보시오."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"내가 죽을 수 있다는 걸 믿지 못하겠소? 난 그것을 당신에게 입증할 수가 있소."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"만약 내가 죽었다가 살아나 기억을 한다면, 당신에게 돌아와 얘기를 해주리다. 그렇게 되면 당신은 내 말이 거짓말인지 아닌지 판단할 수 있을 것이오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"여기서 거짓말을 하고 있는 사람은 당신뿐이오, 그것도 자기 자신에게. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~그는 회의적인 표정으로 당신을 본다. "아니, 난 그럴 생각은 없소, 설령 그러한 충동을 느꼈더라도."~ */
  IF ~~ THEN REPLY #14262 /* ~"그럼 내가 하는 걸 보도록 하시오. 죽음이 뭔가를 보여주겠소."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"그럼 관두시오. 당신에 전에 '소생'에 대해 얘기했을 때 그건 무슨 뜻으로 한 얘기였소?"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"만약 두려움과 망설임이 당신의 모든 행동을 지배한다면, 현생에 당신에게 즐거움이란 없을 것 같소."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"그럼 이제 그만하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"무슨... 뜻이오?" 그는 돌아서려고 하나 그럴 수가 없는 듯하다. "진담은 아니겠지..."~ */
  IF ~~ THEN REPLY #14266 /* ~양손으로 당신의 목을 비튼다.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~당신의 시야가 다시 밝아지기 시작한다... 당신의 죽음은 이번에는 다르게 느껴진다. 당신 옆에 서 있는 죽음을 기다리는 자가 보인다... 그는 공포에 질린 동시에 흥미로워 하는 듯하다. 그는 당신을 부축해 의자에 앉힌 다음 걱정스러운 눈으로 다른 손님들을 쳐다본다... 다행히 그들은 눈치채지 못했거나, 당신을 술주정뱅이로 착각한 것 같다.~ */
  IF ~~ THEN REPLY #14267 /* ~"이제는 납득하겟소?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"당신은 미쳤소." 그는 당신의 상처들을 흘긋 본다. "당신은 죽은 것이 아니라 부상을 입었을 뿐일 것이오."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"당신은... 언데드요?"~ */
  IF ~~ THEN REPLY #14268 /* ~"아니오."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"그렇소."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"모르겠소."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"그럼 당신은 무엇이오?"~ */
  IF ~~ THEN REPLY #14271 /* ~"나도 모르겠소. 하지만 나는 죽고 다시 태어나오."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"그럼에도... 당신은 아직도 생각하고 느낄 수가 있소?"~ */
  IF ~~ THEN REPLY #14272 /* ~"그렇소."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"그렇소, 하지만 공허함이... 있소. 무언가를 잃어버렸다는 느낌이 날 침식해 안식을 얻을 수 없게 하오."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"죽고서도... 계속 생각하고 느낄 수가 있다?! 불행은 결코 사람을 그냥 내버려 두지 않는단 말인가?" 그 생각은 그를 공포에 질리게 하는 듯하다. "죽음조차 해방이 아니군."~ */
  IF ~~ THEN REPLY #14274 /* ~"그렇소. 다음 생에 무엇이 기다리는지도 모르면서 서둘러 이 삶을 버리려고 하지 마시오."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~죽음을 기다리는 자는 당신을 무시한다. 아예 당신을 쳐다보려고 하지 않는다.~ */
  IF ~~ THEN REPLY #61497 /* ~떠난다.~ */ EXIT
END
