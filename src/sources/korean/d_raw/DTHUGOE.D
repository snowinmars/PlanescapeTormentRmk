// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~이빨을 작은 금속제 포크처럼 보이는 물건으로 이빨을 쑤시고 있는 수상쩍은 사내가 당신 앞에 서 있다. 그는 가슴에 길쭉한 못들로 장식된 누더기 갑옷을 착용하고 있으며, 길쭉한 나이프를 허리에 차고 있다. 당신은 그에게는 한쪽 귀가 없다는 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #30184 /* ~"안녕하시오."~ */ JOURNAL #28824 /* ~나는 벌통 구역 북쪽의 큰 아치 부근의 그림자에서 그 곳을 서성거리는 한쪽 귀가 없는 티플링을 만났다. 그의 눈빛을 보니 그를 함부로 상대해서는 안 된다는 느낌이 들었다. ~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~그냥 지나간다.~ */ JOURNAL #28824 /* ~나는 벌통 구역 북쪽의 큰 아치 부근의 그림자에서 그 곳을 서성거리는 한쪽 귀가 없는 티플링을 만났다. 그의 눈빛을 보니 그를 함부로 상대해서는 안 된다는 느낌이 들었다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~그는 당신을 평가하려는 듯 그림자 속에서 당신을 냉정한 시선으로 바라보고 있다.~ */
  IF ~~ THEN REPLY #30186 /* ~"난 *안-녕-하-시-오*라고 했소. 뭐가 문제요... 귀라도 먹었소?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~귀가 하나뿐인 티플링은 당신을 위협적인 시선으로 노려본다. "꺼져, 얼간아. 아니면 네 내장을 꺼내 양말용 대님으로 쓸 테니."~ */
  IF ~~ THEN REPLY #30189 /* ~"만약 가터가 당신이 원하는 거라면... 공교롭게도 내게 한 쌍이 있소. 지난밤 당신 어머니가 내 침대에 그것들을 놓고 갔소."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"어떻게 해서 그 귀를 잃게 되었소?"~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"혹시 당신은 이 곳 벌통에서 어떤 노인을 강도질하다가 그 귀를 잃은 건 아니오?"~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~그의 협박을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"방금 뭐라고 했지? 그는 오른손을 나이프의 칼자루에 갖다 댄다. ~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"그냥 궁금했을 뿐이오. 모든 흉터 뒤에는 그럴듯한 사연이 있기 마련이오. 보다시피 내 경험을 바탕으로 하는 말이오."~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"당신은 이 곳 벌통에서 어떤 노인을 강도질하다가 그 귀를 잃은 것 같소." ~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"난 네가 무슨 소리를 지껄이는지 모르겠군." 그는 화난 눈초리로 당신을 쏘아본다. "네 몸에 칼로 내 이름을 새기기 전에 내 앞에서 썩 꺼져!"~ */
  IF ~~ THEN REPLY #30196 /* ~"물론이오. 당신이 그로부터 훔친 포크만 돌려주면 나는 내 갈 길을 가겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"넌 자기 이름의 철자도 대지 못할 거다, 이 무식한 얼간아."~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"이것 보시오... 아직 한쪽 귀라도 남아있을 때 자백을 하는 것이 어떻겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~그는 눈에 보이지 않을 정도의 빠른 동작으로 칼집에서 나이프를 꺼내 당신 앞에서 위협적으로 흔들어 대기 시작한다. "내게 덤벼 직접 빼앗아 가는 게 어때?"~ */
  IF ~~ THEN REPLY #30200 /* ~"만약 그게 당신이 원하는 바라면... 어디 칼춤을 한 번 추어 봅시다."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"다치기 전에 그 칼을 치우는 것이 어떻겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"그래, 당신도 남에게 꿀리지 않을 정도로 흉터가 많군." 그는 낄낄 웃더니 손가락으로 자신의 머리 옆쪽의 있는 흉터를 가리킨다. "적어도 당신은 양쪽 귀가 모두 멀쩡하잖아."~ */
  IF ~~ THEN REPLY #30203 /* ~"무슨 일이 일어났소?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"그건 내가 날카로운 이빨을 지닌 노인들과 어울리지 않기 때문이오."~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"그건 그렇소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"얼마 전에 나는 늙은 청원자 한 명을 털었어..." 그는 얘기를 시작하면서 우울한 표정을 짓는다. "그런데 멍청한 녀석이 말을 듣지 않잖아..."~ */
  IF ~~ THEN REPLY #30206 /* ~"계속하시오..."~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"어디 맞추어 볼까... 그는 당신 귀를 물어뜯었소, 그래서 당신은 그들 두들겨 의식을 잃게 한 후 그의 포크를 빼앗았소. 내 추리가 맞소?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"흥미롭군... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"그래서 난 그 늙은이를 좀 거칠게 다뤘지... 그런데 내가 물건을 챙기고 있을 때 놈이 내 귀를 잡더니 깨끗하게 물어뜯어 버렸다고!"~ */
  IF ~~ THEN REPLY #30209 /* ~"그 다음에는 어떻게 되었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"그래 *당신이* 네스터의 포크를 훔친 자군. ~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"흥미롭군... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"그래서 어떻게 됐을 거라고 생각해? 그 미친 놈은 내 귀를 물어뜯었어, 그래서 난 놈의 대가리를 내려쳐 죽였어! 솔직히 그 일에 대해선 나도 후회하고 있어." 그는 얘기를 계속하기 전에 불안한 표정으로 주위를 둘러본다. "그의 혼령이 날 괴롭히고 있는 것 같아."~ */
  IF ~~ THEN REPLY #30212 /* ~"그의 귀신이 당신을 괴롭힌다고?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"그 노인은 죽지 않았다, 이 얼간아. 나는 그와 여인숙에서 얘기를 나누었고 그는 자기 포크를 돌려 달라고 하더군."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"흥미롭군... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~그는 고개를 끄덕이고 재빨리 가슴 위에 반원을 그린다. "그래, 사실이야. 때로는 내 머릿속에서 그가 날 욕하며 자기가 기다리고 있으니 오라는 소리가 들려. 정말 무서워 죽겠어."~ */
  IF ~~ THEN REPLY #30215 /* ~"내가 그의 영혼이 안식을 취하여 더 이상 당신을 괴롭히지 않도록 해줄 수 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"그 노인은 죽지 않았다, 이 얼간아. 나는 그와 여인숙에서 얘기를 나누었고 그는 자기 포크를 돌려 달라고 하더군."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"흥미롭군... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~그는 한 걸음 물러서서 고개를 약간 치켜 올린다. "그 일을 할 수가 있다고? 어떻게?"~ */
  IF ~~ THEN REPLY #30218 /* ~"*널* 죽여서 말이다, 이 더러운 도적 같으니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~거짓말: "나는 죽은 자에게 영향력을 행사할 수가 있소. 내가 혼령을 달래기 위해 필요한 것은 그가 살아 았었을 때 가지고 있었던 물건 하나뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"당신이 그에게서 훔친 물건을 내게 준다면 내가 혼령을 쫓아 보내도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~그는 당신을 의심쩍은 눈초리로 바라본다, 그러나 잠시 후 그는 알았다는 듯 어깨를 으쓱한다. "좋아, 친구... 여기 있어. 어차피 별 값어치도 없을 테니까." 그는 당신에게 작은 강철 포크를 준다. "제발 그 혼령만 사라지게 해줘, 알겠어?"~ */
  IF ~~ THEN REPLY #30222 /* ~"두려워 마시오. 혼령은 더 이상 당신을 괴롭히지 않을 거요. 안녕히 계시오."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~한쪽 귀가 없는 티플링을 속여 네스터의 포크를 돌려주도록 하는 데 성공했다. 그는 자신이 망령에 시달렸으며 자기 머릿속에서 목소리가 들린다고 했다. 아마 그도 그 늙은이만큼이나 미친 모양이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"넌 정말 혀를 함부로 놀리는군. 그걸 잘라내 네 입에 쑤셔 넣어 주지! 그는 나이프를 휘두르며 당신에게 달려든다. ~ */
  IF ~~ THEN REPLY #30223 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
