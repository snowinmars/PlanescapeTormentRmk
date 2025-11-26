// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~옷과 머리가 모두 엉망으로 흐트러진 이 젊은 여자는 숨을 헐떡이면서도 당신에게 미소를 지으려고 노력한다. "고마워요! 정말 고마워요! 내 이름은 자실리아예요. 죄송하지만... 그만 가봐야겠어요. 하지만 다시 한 번 감사드려요."~ */
  IF ~~ THEN REPLY #57141 /* ~"괜찮소."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~이 여자는 당신을 그냥 쳐다볼 뿐이다. "당신이 날 구했어요... 정말 고마워요! 당신이 아니었다면 난 죽거나 더 심한 꼴을..." 그녀는 팔을 벌리고 당신을 포옹하려고 다가온다.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~그녀를 끌어당겨 키스한다.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~그녀를 끌어당겨 키스한다.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~그녀가 당신을 팔로 감싸 안도록 허락한다.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~뒤로 물러선다.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~그녀는 당신을 꽉 껴안는다. 그녀는 눈물로 촉촉한 자신의 볼을 당신 가슴에 갖다 댄다. 잠시 후 그녀는 물러서서 미소를 지으며 당신을 쳐다본다. "나는 그만 가봐야 해요, 하지만 감사하다는 말은 꼭 하고 싶어요. 나는 당신의 친절을 결코 잊지 않겠어요. 안녕히 계세요, 여행자."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"안녕히 계시오."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~그녀는 부끄러워 얼굴을 붉히고는 땅바닥만 쳐다본다. "아... 나는 그런..." 그녀는 미소를 지으며 다시 당신을 쳐다본다. "안녕히 계세요, 그리고 정말 고마워요! 나는 당신의 친절을 결코 잊지 않겠어요."~ */
  IF ~~ THEN REPLY #57150 /* ~"천만에. 안녕히 계시오."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~당신이 다가가자 자실리아는 청소하는 것을 멈추고 미소를 짓는다. "다시 만나 반가워요, 내 험상궂은 구세주! 다시 한 번 감사드려요. 내게 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #57152 /* ~"나는 밤을 보낼 곳을 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"지금은 괜찮소. 안녕히 계시오, 자실리아."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~그녀는 미소짓는다. "아... 그럼 제 아버지하고 얘기해야 할 거예요."~ */
  IF ~~ THEN REPLY #57156 /* ~"고맙소. 안녕히 계시오, 자실리아."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~그녀가 당신을 껴안자 당신은 팔로 그녀를 감싸고는 그녀의 입술에 키스를 한다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~그녀는 약간 움찔하더니, 당신 품속에서 조용히 빠져나간다. 그녀는 다소 심란하고 불안한 미소를 짓는다. "어... 안녕히 계세요, 이방인, 그리고 고마워요... 나는 당신의 친절을 결코 잊지 않겠어요."~ */
  IF ~~ THEN REPLY #57159 /* ~"천만에. 안녕히 계시오."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~그녀가 당신을 껴안자 당신은 팔로 그녀를 감싸고는 그녀의 입술에 키스를 한다. 그녀는 약간 움찔하더니, 당신 품속에서 조용히 빠져나간다. 그녀는 다소 심란하고 불안한 미소를 짓는다. "어... 안녕히 계세요, 이방인, 그리고 고마워요... 나는 당신의 친절을 결코 잊지 않겠어요."~ */
  IF ~~ THEN REPLY #57161 /* ~"천만에. 안녕히 계시오."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~이 여자는 헐떡이며 땀을 흘리고 있다. "제발... 제발... 이 사람들로부터 날 구해주세요..."~ */
  IF ~~ THEN REPLY #67819 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"도와주세요! 그들이 절 노예로 만들기 전에 그들을 죽이세요!"~ */
  IF ~~ THEN REPLY #68098 /* ~"최선을 다해보겠소..."~ */ EXIT
END
