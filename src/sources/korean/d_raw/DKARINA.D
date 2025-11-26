// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~수수한 옷을 입은 예쁜 아가씨가 보인다. 그녀는 시장 안을 돌아다니며 눈에 보이는 모든 것을 살펴보고 있다, 그러나 아무 것도 사지는 않는다. 당신은 사람들이 그녀를 피하고 있으나 노골적으로 드러내려고 하지는 않는다는 사실을 눈치챈다. 당신이 다가가자 그녀는 당신에게 따뜻한 미소를 짓는다. ~ */
  IF ~~ THEN REPLY #36100 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~그녀는 환하게 웃는다. "안녕하세요, 나는 카리나예요. 당신을 만나서 반가워요." 그녀는 계속 미소를 지으며 당신 대답을 기다린다. ~ */
  IF ~~ THEN REPLY #36103 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~그녀는 고개를 젓는다. "좋아요. 뭘 알고 싶으시죠?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"당신은, 어... 정말 얘기하는 걸 좋아하는군, 그렇지 않소?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~그녀는 눈살을 찌푸린다. "로타... 나는 로타란 사람은 알지 못해요. 그런 이름은 들어본 적도 없어요." 그는 걱정스러운 표정으로 당신을 본다. "뼈들의 지배자라고 했나요? 그건 불길한 이름이군요. 누가 왜 그런 이름으로 불리길 원하겠어요?"~ */
  IF ~~ THEN REPLY #36113 /* ~"글쎄... 강렬한 인상을 주기 때문이 아니겠소...?~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"글쎄... 내 생각엔 사람들에게 겁주기 위해서인 것 같소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"해골? 왜 당신은 그런 걸 원하시죠? 그건 좀 병적이 아닌가요? 어쨌든 당신이 해골을 원한다면 시체안치소에서 하나쯤 구할 수 있겠지요... 아니, 그렇지 않을지도 모르겠군요. 지금 생각해보니 그들은 그런 것들을 내놓으려 하지 않아요... 어쨌든 난 누가 당신 해골을 가져갔는지 모르겠어요. 왜 당신은 해골을 원하는 거죠?"~ */
  IF ~~ THEN REPLY #36118 /* ~"그는 내 친구요."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"그는 값진 소유물이오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~그녀는 웃으며 판매대들 중 한 곳을 가리킨다. "저기 있는 안제는 무기를 팔아요. 온갖 종류의 무기를. 당신은 전사인가요? 나도 참, 당연히 그렇겠지요. 내 말은 그토록 흉터가 많은데 어떻게 전사가 아닐 수 있겠느냐는... 아, 미안해요. 그런 말을 해서는 안 되는데. 흉터에 대해 민감하신 건 아니죠?"~ */
  IF ~~ THEN REPLY #36123 /* ~"아니오, 난 이젠 그런 것엔 익숙해졌소."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"그렇소, 그러니 그런 얘기는 다시는 꺼내지 마시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~그녀는 웃으며 판매대들 중 한 곳을 가리킨다. "저기 있는 앨렉은 마법 아이템을 팔아요. 당신은 메이지인가요? 당신은 메이지처럼 보이지는 않지만 겉만 가지고 사람을 판단할 수는 없으니까요. 지금 생각해보니 나는 메이지가 어떻게 생겼는지도 몰라요. 당신은 아시나요?"~ */
  IF ~~ THEN REPLY #36128 /* ~"물론이오. 그들은 기묘한 심벌들이 그려진 예복을 입고 뾰족한 모자를 쓰고 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"아니, 나도 잘 모르오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~그녀는 고개를 끄덕인다. "그래요... 무슨 말인지 알 것 같아요. 그것에는 뭔가가 있어요. 흠. 생각해보니 너무 이목을 끌 것 같군요." 그녀는 생각에 잠긴 듯하다. ~ */
  IF ~~ THEN REPLY #36132 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~그녀는 이상하다는 표정으로 당신을 본다. "정말인가요? 해골? 그건 좀 기괴하군요. 해골이 친구라는 사람에 대해서는 들어본 적도 없어요. 별난 종류의 애완동물을 지닌 사람들은 여럿 보았지만 해골은... 하지만 당신은 그 해골이 애완동물이 아니라 친구라고 했으니 한층 더 엽기적이네요." 그녀는 생각을 하려고 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #36134 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~그녀는 안도한 듯하다. "다행이에요... 나는 당신이나 그 어느 누구의 감정도 상하게 하는 것을 원하지 않아요. 다른 사람과 얘기할 때는 조심해야 해요, 아시죠? 내 말은 사람들은 제각기 다르기 때문에 알 수가 없다는 뜻이에요. 어떤 사람에게 기분 나쁜 말이 다른 사람에게는 아무렇지 않을 수도 있어요. 그녀는 숨을 돌리기 위해 잠시 멈추고 당신에게 미소짓는다.~ */
  IF ~~ THEN REPLY #36136 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"정말요? 그걸 알게 되어 다행이에요. 난 메이지가 무서워요, 그래서 그들이 어떻게 생겼는지 알고 싶은 거예요. 그들은 엄청난 마력을 지니고 정말 놀라운 일들을 할 수 있지만, 그들이 어떻게 생겼는지는 모르잖아요. 전사와 프리스트... 그리고 다른 강대한 사람들은 그들의 힘을 나타내는 물건들을 지니고 다니니까 강하다는 걸 쉽게 알아볼 수가 있어요. 하지만 메이지는 달라요." 그녀는 말을 멈춘다.~ */
  IF ~~ THEN REPLY #36138 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~그녀는 턱을 손가락으로 두드리며 생각에 잠긴 듯하다. 마침내 그녀는 고개를 끄덕인다. "그래요... 당신이 옳아요. 그것에 대해 생각만 해도 난 소름이 끼쳐요. '뼈들의 지배자'란 이름은 무시무시한 호칭이에요. 그런 호칭을 지닌 사람은 거스르고 싶지 않아요." 그녀는 조금 더 생각을 한다. ~ */
  IF ~~ THEN REPLY #36140 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~그녀는 어깨를 으쓱한다. "좋아요, 당신이 해골을 갖고 싶다면 그건 당신 자유니까요. 사람들은 별난 것들을 다 수집하죠. 나는 아무 것도 수집하지는 않지만 수집하는 것을 즐기는 사람들은 많이 알아요. 하지만 내가 아는 중에서 해골을 수집하는 사람은 당신뿐이에요. 아마 나도 뭔가를 수집하기 시작하는 것이 좋을 것 같군요..." ~ */
  IF ~~ THEN REPLY #36142 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~그녀는 슬퍼하는 것 같다, 그리고 그녀는 걱정스러운 표정으로 당신을 본다. "미안해요, 용서해 주세요, 나는 다른 사람들을 모독하거나 기분을 상하게 할 생각은 없어요. 나는 다른 사람들이 날 해치는 걸 좋아하지 않아요, 그런데 왜 내가 남을 해치겠어요? 그들도 역시 그런 걸 좋아하지 않을 텐데... 별난 사람들을 제외하고는..." 그녀는 천진 난만한 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #36144 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~그녀는 흥분해서 당신을 손가락질한다. "그것 보세요! 그래서 내가 얘기했던 거예요. 그들은 엄청난 마력을 지니고 정말 놀라운 일들을 할 수 있지만, 외관으로는 식별할 수가 없어요. 전사와 프리스트, 그리고 다른 사람들은 명확하게 식별할 수 있는 물건들을 지니고 다니기 때문에 경계를 할 수가 있어요. 하지만 메이지는 달라요." 그녀는 알았다는 표정을 짓는다. ~ */
  IF ~~ THEN REPLY #36146 /* ~"질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~그녀는 발을 질질 끌며 부끄러운 표정을 짓는다. "나... 사람들은 내게 말수를 좀 줄이라고 하더군요... 그들은 날 피하려고 해요... 그리고 내게는 친구나, 내게 구애할 남자 친구도 없어요... 때때로 나는 너무 외로워요..." 그녀의 목소리는 점점 작아지고 결국 그녀는 완전히 입을 다문다. 그녀는 고개를 숙이고 발 밑을 쳐다본다. ~ */
  IF ~~ THEN REPLY #36148 /* ~"왜 그런지 알 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"나는 당신이 나쁜 사람이라고는 생각하지 않소. 난 당신이 마음에 드오."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~나는 카리나라는 아가씨를 만났다. 그녀는 수다가 좀 심하기는 하나 좋은 사람인 것 가타. 그녀는 내게 외롭다고 말했다. ~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~처음에 그녀는 그냥 서서 바닥만 계속 쳐다본다. 잠시 후 당신은 그녀가 조용히 흐느끼고 있다는 사실을 깨닫는다. 그녀는 돌아서서 다른 곳으로 가버린다. ~ */
  IF ~~ THEN REPLY #36152 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~그녀는 희망에 찬 표정으로 당신을 본다. "정말인가요? 너무 고마워요... 나는 당신 이름도 몰라요."~ */
  IF ~~ THEN REPLY #36154 /* ~거짓말: "난 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"난 내 이름을 기억하지 못하오."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"안녕히 계시오, 카리나."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~그녀는 미소짓는다. "고마워요, 아단. 내게도 친구가 있다는 사실을 알게 되어 정말 기뻐요."~ */
  IF ~~ THEN REPLY #36158 /* ~"안녕히 계시오, 카리나."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~그녀는 눈살을 찌푸린다, 그리고 뭐라고 말하려고 하다가 마음을 바꾼다.그녀는 어깨를 으쓱한다. "이름이 무슨 의미가 있겠어요. 내게도 친구가 있다는 사실을 알게 된 것만으로도 나는 정말 기뻐요." 그녀는 미소짓는다.~ */
  IF ~~ THEN REPLY #36160 /* ~"안녕히 계시오, 카리나."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~카리나가 보인다. 당신이 다가가자 그녀는 미소짓는다. "다시 만나 반가워요. 잘 지내고 계신가요?"~ */
  IF ~~ THEN REPLY #36162 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~카리나는 미소를 짓는다, 그리고 그녀는 가운이 넘쳐 보인다. "안녕하세요. 당신을 다시 만나 정말 반가워요.".~ */
  IF ~~ THEN REPLY #36165 /* ~"난 그냥 당신에게 인사를 하려고 했을 뿐이오, 카리나. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~카리나는 당신이 다가오는 것을 눈치채고 환한 미소를 짓는다. "다시 만나 반가워요." 그녀는 너무 흥분해 지금 당장이라도 환희로 폭발할 것 같다. "너무 고마워요! 당신이 해주신 일에 대해 정말 감사해요."~ */
  IF ~~ THEN REPLY #36167 /* ~"내가 무슨 일을 했느냐고?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~그녀는 웃는다. "당신은 내게 코버스를 보내 주었어요. 그가 내게 말해주었기 때문에 알아요. 그는 내게 구애자들이 여럿 있다고 생각하고 내게 구애하는 걸 망설이고 있었어요... 어쨌든 난 당신에게 정말 고맙다고 말하고 싶었어요." 그녀는 당신을 포옹한다. ~ */
  IF ~~ THEN REPLY #36169 /* ~"천만의 말씀이오, 카리나. 난 당신들 둘의 행복을 기원하겠소."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"고마워요. 당신도 행복을 찾기를 기원하겠어요."~ */
  IF ~~ THEN REPLY #36171 /* ~"안녕히 계시오."~ */ EXIT
END
