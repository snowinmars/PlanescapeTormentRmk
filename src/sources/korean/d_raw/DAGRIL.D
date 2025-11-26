// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~거대한 생명체가 보인다. 그것의 키는 4.5 m가 넘는다. 그것의 거대한 동체에는 팔이 네 개 달려 있다... 그 중 두 개의 끝에는 집게가, 다른 두 개에는 갈고리 손톱이 달린 손이 달려 있다. 머리는 개 모양이며, 날카로운 엄니와 보라색 눈을 가지고 있다. 그것은 계속해서 당신을 쳐다보고 있다.~ */
  IF ~~ THEN REPLY #57165 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~이 괴물은 눈 한 번 깜박이지 않고 계속해서 당신을 쳐다본다. 마침내 당신 머릿속에서 뭔가가 잡아당기는 듯한 느낌이 든다, 그리고 당신 정신 속에서 어떤 목소리가 들린다. "안녕하시오, 인간. 나는 에그릴-사냑이오. 당신은 왜 이 곳에 왔소?"~ */
  IF ~~ THEN REPLY #57168 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"질문이라... 재미있군. 해도 좋소."~ */
  IF ~~ THEN REPLY #57171 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"도나 퀴쇼에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"도나 퀴쇼는 당신을 풀어주라고 날 보냈소. 만약 그일을 하면 내겐 무슨 대가가 돌아오는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"도나 퀴쇼는 당신을 풀어주라고 날 보냈소. 어떻게 하면 당신을 풀어 줄 수가 있소?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"내가 얘기했듯이, 나는 에그릴-사냑이오. 뭘 더 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #57178 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"어떤 사람은 나를 마족이라 부르고... 또 다른 사람들은 친구라 부르오. 나는 에그릴-사냑으로 타나리요. 나는 노력, 배신, 피, 그리고 공포를 통해 지금의 지위를 얻었소. 나는 악몽 속의 괴물이오." 그는 침묵한다.~ */
  IF ~~ THEN REPLY #57182 /* ~"누가 당신을 '마족'이라고 부르오?'~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"누가 당신을 '친구'라고 부르오?'~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"힘을 얻고자 하는 자들은 흔히 나를 자신들의 목적을 달성하기 위한 수단으로 생각하오. 그런 자들은 날 친구라고 부르오."~ */
  IF ~~ THEN REPLY #57187 /* ~"누가 당신을 '마족'이라고 부르오?'~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"그건 모호한 답이오..."~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"무지한 자들은 자신들이 친 공포와 편견의 장막 너머에 있는 것들을 볼 수가 없소. 그들은 자신들의 근시안적인 사고 때문에 내게 그런 라벨을 붙이오." ~ */
  IF ~~ THEN REPLY #57192 /* ~"누가 당신을 '마족'이라고 부르오?'~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"그건 모호한 답이오..."~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"아, 하지만 대답임에는 틀림없소." 그는 당신 쪽으로 몸을 구부린다. "그건 내가 당신에게 줄 유일한 답이오..."~ */
  IF ~~ THEN REPLY #57197 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"나는 자유를 기다리고 있소. 당신이 날 해방하려고 온 것은 아니오? 당신은 두루마리를 가지고 있소..." 그는 긴 손톱이 달린 손가락으로 도나 퀴쇼가 준 두루마리를 가리킨다.~ */
  IF ~~ THEN REPLY #57200 /* ~"당신은 어떻게 이 곳에 갇히게 되었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"모르겠소..." 그는 말을 계속하기 전에 한동안 침묵한다. "나는 소환되었고, 그 요청에 응했소. 하지만 보다 강력한 힘이 날 중간에서 가로막았고, 나는 이 곳에 오게 되었소. 그리고 그 이래 나는 계속 감금된 상태요."~ */
  IF ~~ THEN REPLY #57204 /* ~"누가 당신을 소환했소?"~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"누가 당신을 가로막았소?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"당신은 그 답을 이미 알고 있소. 당신은 두루마리를 가지고 있으니까. 도나 퀴쇼요."~ */
  IF ~~ THEN REPLY #57209 /* ~"누가 당신을 사로잡았소?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"모르겠소... 나를 감금한 자는 그 모습을 드러내지 않고 있소."~ */
  IF ~~ THEN REPLY #57213 /* ~"누가 당신을 소환했소?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~당신 머릿속에서 웃음소리가 들린다. "나는 이 곳 토박이가 아니오... 나는 커스트에 대해서는 권위를 가지고 얘기할 입장이 아니오. 내게 있어서 이 곳은 감옥에 불과하오."~ */
  IF ~~ THEN REPLY #57217 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"나는 그녀가 내 소환자라는 것 이외에는 아는 것이 없소... 그건 당신도 이미 아는 사실일 거요. 당신은 두루마리를 가지고 있으니까..." 그는 긴 손톱이 달린 손가락으로 도나 퀴쇼가 준 두루마리를 가리킨다.~ */
  IF ~~ THEN REPLY #57220 /* ~"왜 그녀는 당신을 소환했소?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"모르겠소. 나는 도착하기 전에 제지당했소. 우리는 서로 얘기를 나눌 기회를 갖지 못했소..." 그는 침묵한다.~ */
  IF ~~ THEN REPLY #57224 /* ~"누가 당신을 사로잡았소?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"내 보은의 마음에는 한도 끝도 없소. 나는 당신에게 다원 우주 전체라도 바칠 수가 있소... 날 풀어 주시오!"~ */
  IF ~~ THEN REPLY #57228 /* ~"내게는 단순한 말보다 더 확실한 뭔가가 필요하오... 만약 줄 수가 없다면 난 그냥 떠나겠소."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"좋소..." 그는 생각하면서 당신을 뚫어지게 바라본다. "나는 당신에게 마법의 무기, 그것도 당신의 적들을 모조리 무릎 꿇게 만들 수 있는 무기를 당신에게 주겠소... 나는 당신에게 심장 분쇄기를 주겠소!"~ */
  IF ~~ THEN REPLY #57230 /* ~"심장 분쇄기?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"그렇소... 내게 소중한 무기지만, 내 자유를 위해서라면 희생할 각오가 되어 있소. 어떻게 생각하시오? 심장 분쇄기를 받는 대신 날 해방하겠소?"~ */
  IF ~~ THEN REPLY #57232 /* ~"그렇게 하겠소. 방법을 일러주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~그는 오망성의 테두리를 긴 손톱이 달린 손가락으로 가리킨다. "오망성의 일부를 지워 마법원을 파괴하시오." 그는 당신을 뚫어지게 쳐다본다.~ */
  IF ~~ THEN REPLY #57236 /* ~오망성을 깨트린다.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~당신은 무릎을 꿇고 오망성을 만진다, 그러자 강렬한 에너지가 당신 팔을 통과한다. 당신은 재빨리 오망성의 일부를 지운다. 그러자 역시 빠른 속도로 에너지가 사라지고, 당신 머릿속에서 승리의 환성이 들린다. "마침내 해방되었다!"~ */
  IF ~~ THEN REPLY #57240 /* ~"심장 분쇄기를 지금 당장 받아야겠소."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"그래... 우리가 한 거래는 지키도록 하겠소, 인간. 무기는 당신 것이고 자유는 내 것이오. 공정한 거래요..." 그는 잠시 당신을 노려본다, 그리고 잠시 후 그의 손에 녹슨 도끼가 나타난다. 그는 그것을 당신에게 내민다. "대단하지 않은 것처럼 보일지도 모르지만 매우 강력한 무기요."~ */
  IF ~~ THEN REPLY #57242 /* ~도끼를 가진다.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"당신은 날 위해 큰 일을 해주었소. 감사의 표시로  당신 목숨은 살려 주겠소." 그는 긴 손톱이 달린 손가락으로 당신을 가리킨다. "하지만 이건 명심하시오. 만약 우리가 다시 만나면 당신은 크게 후회하게 될 거요. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #57261 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"당신은 나를 가지고 노는군... 날 해방할 생각이 없다면 꺼지시오!"~ */
  IF ~~ THEN REPLY #57246 /* ~떠난다."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~글라브레주 애그릴-샤낙이 보인다. "내게 돌아왔군, 인간. 왜요?"~ */
  IF ~~ THEN REPLY #57248 /* ~"질문할 것들이 있소..."~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"당신을 풀어주는 일에 대해 생각해 보았소."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"그렇게 해주겠소?" 그는 악의에 찬 눈으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #57252 /* ~"그렇게 하겠소. 방법을 일러주시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~거대한 생명체가 보인다. 그것의 키는 4.5 m가 넘는다. 그것의 거대한 동체에는 팔이 네 개 달려 있다... 그 중 두 개의 끝에는 집게가, 다른 두 개에는 갈고리 손톱이 달린 손이 달려 있다. 머리는 개 모양이며, 날카로운 엄니와 보라색 눈을 가지고 있다. 그것은 당신을 보자 신속하게 공격을 한다..~ */
  IF ~~ THEN REPLY #57256 /* ~자신을 방어한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~글라브레주 에그릴-사냑이 보인다. "나는 이미 우리가 다시 만나면 당신이 크게 후회하게 될 거라고 경고했소..." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #57259 /* ~자신을 방어한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~그는 오망성의 테두리를 긴 손톱이 달린 손가락으로 가리킨다. "오망성의 일부를 지워 마법원을 파괴하시오." 그는 당신을 뚫어지게 쳐다본다.~ */
  IF ~~ THEN REPLY #57236 /* ~오망성을 깨트린다.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~당신은 무릎을 꿇고 오망성을 만진다, 그러자 강렬한 에너지가 당신 팔을 통과한다. 당신은 재빨리 오망성의 일부를 지운다. 그러자 역시 빠른 속도로 에너지가 사라지고, 당신 머릿속에서 승리의 환성이 들린다. "마침내 해방되었다!"~ */
  IF ~~ THEN GOTO 21
END
