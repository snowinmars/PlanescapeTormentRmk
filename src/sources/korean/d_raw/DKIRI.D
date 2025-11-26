// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~아름다운 아가씨가 보인다. 그녀의 얼굴은 빨갛고 멍이 들었으며, 그녀의 머리는 헝클어졌다. 그녀의 옷은 고급이나, 여러 곳이 찢겨져 있다. 그녀는 조심스럽게 거리를 걸으면서 때때로 어깨 너머로 주위를 두리번거리고 있다. ~ */
  IF ~~ THEN REPLY #59070 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~당신이 인사를 하자 그녀는 깜짝 놀라서 화급히 뒤를 돌아본다. 당신 몸의 흉터를 살펴보는 그녀의 얼굴에는 우려하는 기색이 역력하다. "안녕하세요. 나는 키리예요, 내게 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #59073 /* ~"당신은 안절부절 못하는 것 같소. 무슨 일이오?~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~그녀 눈살을 찌푸리고 어깨를 으쓱한다. "이 곳엔 날 싫어하는 사람들이 있어요, 난 가급적 그들을 피하려고 해요."~ */
  IF ~~ THEN REPLY #59076 /* ~"왜 그들은 당신을 싫어하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"나는 창녀예요. 나는 젊고, 귀여우며... 내 일에는 자신이 있어요." 그녀는 미소짓는다. "다른 창녀들은 내가 자기들로부터 손님을 빼앗아 간다고 했어요. 그래서 그녀들은 날 때리고 내게 다시는 여기 나타나지 말라고 했지요. 그녀들은 내가 여기서 또 걸리면 내 얼굴을 엉망으로 만들어 버리겠다고 협박했어요."~ */
  IF ~~ THEN REPLY #59079 /* ~"그럼 당신은 왜 돌아왔소?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~그녀는 웃는다. "물론 돈 때문이죠. 돈이 없으면 다른 곳에 가서 새 삶을 시작할 수 없고, 여기 오지 않으면 돈을 벌 수가 없어요. 난 여기 갇힌 셈이죠." 그녀는 한숨을 쉬고 시선을 돌린다. "돈만 벌 수 있다면 난 뭐든지 하겠어요..."~ */
  IF ~~ THEN REPLY #59083 /* ~"무슨 짓이라도?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~그녀는 대답을 하기 전에 당신 말을 신중하게 고려한다. "물론이에요. 그런 일이라면 할 수 있어요. 내게 계약을 제의하는 건가요?""~ */
  IF ~~ THEN REPLY #59085 /* ~"아니, 그냥 궁금했을 뿐이오."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"나는 자신의 남편이 죽기를 바라는 여자를 알고 있소. 그는 창녀를 좋아하고 그의 아내는 그것이 마음에 들지 않소."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~그녀는 어깨를 으쓱한다. "말했던 것처럼 난 돈을 위해서라면 뭐든지 할 수 있어요."~ */
  IF ~~ THEN REPLY #59088 /* ~"기억하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~그녀는 웃는다. "그는 창녀를 좋아하는 모양이죠? 그럼 나는 그 일에 가장 적합한 인재이겠군요." 그녀는 잠시 멈춘다. "표적은 누구죠?"~ */
  IF ~~ THEN REPLY #59090 /* ~"칼 파휘도."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~그녀는 생각을 하느라 눈살을 찌푸린다, 그리고 고개를 끄덕인다. "나는 칼과... 그의 아내를 알아요." 그녀는 잠시 주저한다, 그러나 곧 어깨를 으쓱한다. "로버타에게 칼을 죽이길 원한다면 내가 그 일을 하겠다고 전하세요."~ */
  IF ~~ THEN REPLY #59092 /* ~"그 일의 대가가 무엇인지 알고 싶지 않소?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~그녀는 사악하게 미소짓는다. "아니, 별로요. 만약 그녀가 날 속이면 그녀도 죽일 거예요. 칼과 나란히 잠들게 되겠지요... 그 말은 그녀에게 전해도 좋아요.~ */
  IF ~~ THEN REPLY #59094 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~창녀 키리가 보인다. 그녀는 주변을 조심스럽게 살피고 있다. 당신을 보자 그녀는 다가오는 당신을 향해 미소를 짓는다. "다시 만나 반가워요. 내 도움이 필요하신가요?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"당신은 안절부절 못하는 것 같소. 무슨 일이오?~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"우리가 전에 이야기를 나누었을 때 당신은 돈을 위해서는 무슨 짓이든 하겠다고 했소."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"로버타와 얘기를 했소. 그녀는 칼이 죽기를 원하며 당신이 그 일을 해주기를 바라고 있소."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~나는 칼 파휘도를 죽이기 위해 창녀 키리를 고용하였다. 그녀는 즉시 일을 처리하겠다고 말했다. ~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~그녀는 미소짓는다. "로버타에게 칼은 이제 죽은 목숨이라고 전하세요. 당장 가서 처리하겠어요."~ */
  IF ~~ THEN REPLY #59102 /* ~"알겠소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~그녀는 대답하기 전에 당신을 조심스럽게 살핀다. "물론이에요, 뭐든지... 보수만 충분하다면. 이미 생각해 둔 일이라도 있나요?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"다른 사람을 죽일 수 있겠소?"~ */ JOURNAL #59002 /* ~그 키리라는 창녀는 돈만 주면 살인이라도 기꺼이 할 것이다. 아마 그녀라면 로버타를 위해 칼 파휘도를 죽여줄 듯하다. ~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"그런 건 아니오. 단지 궁금했을 뿐이오. 안녕히 계시오."~ */ JOURNAL #61397 /* ~키리라는 창녀는 돈만 주면 무슨 일이라도 하겠다고 한다... 그녀를 이용할 일이 있을지도 모르니 염두에 두어야 겠다. ~ */ EXIT
END
