// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~거대한 상실감이 마치 검은색의 망토처럼 이 노파를 감싸고 있다. 당신이 보고 있는 동안에도 그녀는 장탄식을 한다. ~ */
  IF ~~ THEN REPLY #34082 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~여자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~그녀는 당신을 올려다 본다, 그리고 흐릿한 눈을 가늘게 뜨고서는 당신을 알아보려고 애를 쓴다. "미안하오, 젊은이. 하지만 난 나이가 많아 눈이 질 보이질 않소... 내가 당신을 아오?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"아니오."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"아마 그럴지도. 하지만 난 당신을 기억하지 못하오."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"우린 전에 우연히 만난 적이 있을 뿐이오. 그게 전부요."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~그녀는 당신이 한 대답에 대해 잠시 생각을 하더니 고개를 끄덕인다. "그럼 당신이 원하는 것은 무엇이오?"~ */
  IF ~~ THEN REPLY #34089 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"질문?" 그녀의 얼굴이 일그러진다. "이런... 당신은 '모험자'로군, 그렇지 않소? 이름, 직업, 그런 잡다한 것들을 물어보려는 거요? 어림없소! 꺼지시오!"~ */
  IF ~~ THEN REPLY #34092 /* ~"나는 모험자가 아니오."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"난 아니오... 적어도..."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"닥쳐!" 그녀는 당신을 손가락질한다. "나는 더스트맨이 그들의 기념관에 내 남편, 내 아들, 그리고 내 두 딸의 이름을 새기는 것을 지켜보았소... 그들은 모두 염병할 모험자들이었소! *나도* 젊은 시절에는 직접 칼을 휘둘렀소, 그래서 모험자를 만나면 알아볼 수가 있소!" 노파는 발작이라도 일으킬 것처럼 흥분한다. 그녀의 얼굴은 홍당무처럼 빨개졌으며, 그녀가 악을 쓸 때마다 그녀의 입으로부터 침이 마구 튀어나온다.~ */
  IF ~~ THEN REPLY #34096 /* ~그녀가 장광설을 늘어놓도록 내버려 둔다.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"당신은 온갖 *종류*의 정신 나간 질문들을 하겠지!" 그녀는 당신의 영웅적인 자세를 흉내낸다. "안녕하시오. 난 질문할 것들이 있소... 이 곳에 대해 얘기해줄 수 있겠소? 레이디 오브 페인이 누구요? 나는 쇠로 만든 멋진 마법의 허리띠를 찾고 있소. 혹시 본 적이 있소? 어비스의 2,817 번째 층으로 통하는 전이문이 어디 있는지 아시오? 신성한 화염의 서리의 검에, 던지면 돌아오고, 번개를 내뿜고, 상처를 악화시키고, 그롱크를 죽이는 보팔 망치가 어디 있는지 아시오?" 그녀는 침을 뱉는다. "모두 똥이오! 당신을 사망자 명단에 올라가게 만들 뿐이지! 불쌍한 노파에게 그런 말도 안 되는 일로 괴롭힌 것만으로도 당신은 정강이를 채여야 해! 날 그냥 내버려 두고 어서 꺼져!" ~ */
  IF ~~ THEN REPLY #34099 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~노파는 당신을 째려보며 얼굴을 찌푸린다. "아니, 아니, 안돼! 또 당신이군! 당신과는 한 마디도 더 하지 않겠어! 그러니 꺼져, 꺼지라고!"~ */
  IF ~~ THEN REPLY #34101 /* ~떠난다.~ */ EXIT
END
