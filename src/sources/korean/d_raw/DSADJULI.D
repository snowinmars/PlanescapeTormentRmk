// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~이 검은 머리 여인은 허공을 무관심한 표정으로 바라보며 비참하다는 듯 탄식을 하고 있으며, 때때로 그녀의 녹색 벨벳 가운의 꿰맨 자국을 만지작거리곤 한다. 그녀가 우울한 건지 아니면 그냥 지루한 건지 판단하기가 어렵다.~ */
  IF ~~ THEN REPLY #2984 /* ~"안녕하시오..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~그녀는 당신을 흘긋 보더니 다시 고개를 돌려 먼 곳을 바라본다. "안녕하세요. 나는 줄리엣이라고 해요. 내가 어떻게... 관두세요... 제발 날 그냥 내버려 두세요." 그녀는 짜증스럽게 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #40280 /* ~"무슨 일이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"우선 질문할 것들이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"아무 것도 아니에요. 나는 몹시 지루한 나날을 보내고 있으며, 어떻게 하면 그 무시무시한 지루함으로부터 벗어날 수 있을까 궁리하고 있을 뿐이에요. "~ */
  IF ~~ THEN REPLY #40283 /* ~"당신 인생은 그렇게 따분하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"슬프게도 그래요." 그녀는 눈을 감고 자신의 관자놀이를 주무르며 한숨을 쉰다. "무섭게 지루해요!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"내가 당신의 삶을 덜 지루하게 만들어 드리는 건 어떻겠소, 아가씨?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"나라면 틀림없이 당신 인생에 자극을 줄 수 있을 거요..."~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"나라면 틀림없이 당신 인생에 자극을 줄 수 있을 거요..."~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"아니에요.. 제의는 고맙지만 내게는 이미 애인이 있어요, 그리고 나는 그를 정말 사랑해요. 단지 나는..." 그녀는 자신의 턱을 손가락으로 두드린다. ~ */
  IF ~~ THEN REPLY #66195 /* ~"그럼 당신들 관계에 뭔가 부족한 것이라도 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"당신들 관계에 무슨 문제라도 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~그녀는 얼굴을 찌푸리고 눈알을 부라린다. "별로 반갑지 않군요. 그리고 내게는 이미 애인이 있어요, 그리고 나는 그를 정말 사랑해요. 단지 나는..." 그녀는 자신의 턱을 손가락으로 두드린다. ~ */
  IF ~~ THEN REPLY #66199 /* ~"그럼 당신들 관계에 뭔가 부족한 것이라도 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"당신들 관계에 무슨 문제라도 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"문제는 우리들 사이에는 흥분이라는 요소가 없다는 점이에요. 양가는 우리가 사귄다고 하자 쌍수를 들어 환영했으며, 그의 가족과 우리 가족은 서로 몹시 친해요. 또 친구들도 우리의 만남을 신들이 축복했다고 생각하고 있어요. 다 괜찮아요, 하지만 모든 것이..." 그녀는 얼굴을 찡그린다. "... 너무 순조로워요. 그렇게 아무런 문제도 없는 관계는 결코 옳은 게 아니에요."~ */
  IF ~~ THEN REPLY #66747 /* ~"모르겠소..."~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"그래요, 문제가 있어요..." 그녀는 한숨을 쉰다. "...문제는 아무런 문제가 없다는 점이에요. 양가는 우리가 사귄다고 하자 쌍수를 들어 환영했으며, 그의 가족과 우리 가족은 서로 몹시 친해요. 또 친구들도 우리의 만남을 신들이 축복했다고 생각하고 있어요. 다 괜찮아요, 하지만 모든 것이..." 그녀는 얼굴을 찡그린다. "... 너무 순조로워요. 그렇게 아무런 문제도 없는 관계는 결코 옳은 게 아니에요."~ */
  IF ~~ THEN REPLY #66750 /* ~"모르겠소..."~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"정말인가요? 그대는 그런 관계를 가져 본 적이 없나요?" 그녀는 잠시 당신을 흘긋 본다. "그대 피부를 보니 그대 삶은 문제투성이일 것 같군요." ~ */
  IF ~~ THEN REPLY #66203 /* ~"그건 내가 별로 얘기하고 싶은 것이 아니오..."~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"나는 과거의 내 애정 관계를 일체 기억하지 못하오."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"나는 과거의 내 애정 관계를 일체 기억하지 못하오. 내가 조우한 사람들의 잔재로부터 미루어 볼 때 내게 문제가 있었을 가능성이 높소."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"문제는 내 친구들은 모두 매우 흥미로운 연애를 즐긴다는 거예요... 대소동, 양가의 불화, 암살, 독, 큰 칼을 든 분노한 부친과 형제들이 등장하는 그러한 연애를 말이에요. 나는 세상 사람이 다 그를 사랑하며, 그의 가족은 날 사랑하는 연인을 가지고 있어요." 그녀는 다시 한숨을 쉰다 "정말 짜증나요. 뭔가 화끈하게 만들 방법이 있으면 좋으련만..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"그건 현명한 생각이 아니오, 줄리엣. 자신이 가진 것을 아끼고 즐길 줄을 아시오."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"무슨 생각을 하고 있었소?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"하지만 나는 문제가 있는 연애를 해보고 싶어요. 연애의 기복을 맛보고 싶어요... 하지만 다른 사람이 아닌 오직 그하고." 그녀는 한숨을 쉰다. "아, 그런 게 사랑이에요. 사랑은 때로 곤봉처럼 무뎌질 수 있고, 그러면 센세이트 지망생에게는 아무런 쓸모가 없어요."~ */
  IF ~~ THEN REPLY #40307 /* ~"당신은 흥취를 돋구기 위하여 어떤 생각을 머릿속에서 하고 있었소?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"센세이트 지망생?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"잘 모르겠어요. 뭔가 위험한 요소. 또는 질투. 뭔가 *강렬한* 것이 필요할 것 같아요."~ */
  IF ~~ THEN REPLY #40311 /* ~"외도를 하는 건 어떻겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"가공의 정부로부터 온 가짜 연애편지를 만드는 건 어떻소?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"만약 원한다면 내가 질투에 불타는 구애자 노릇을 해줄 수도 있소."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~그녀는 입술을 깨문다. "나는 결코 진짜로 외도를 할 수는 없어요, 나는 그를 너무나 사랑하니까요... 가짜로 외도를 할 수는 없을까요? ?" 그녀는 당신을 아래위로 유심히 살핀다. "당신은 위험한 일과 무관한 사람 같지는 않군요. 내 구혼자 노릇을 해줄 수 생각이 있나요?"~ */
  IF ~~ THEN REPLY #40316 /* ~"그래, 하리다."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"내가 받을 대가는 무엇이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"아니오... 하지만 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~줄리엣은 눈살을 찌푸린다. "내 우정과 감사면 충분할 거예요."~ */
  IF ~~ THEN REPLY #40320 /* ~"좋소, 그럼 하리다."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"아니, 그건 안 되겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"관두시오. 물어볼 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~예상하지 못한 문제에 부딪치자 그녀는 눈살을 한층 찌푸린다. "나를 만지는 것 이외에... 특별히 생각해 둔 것은 있나요?"~ */
  IF ~~ THEN REPLY #40324 /* ~"날 화나게 만드는 것 이상으로 우쭐대지 않는 게 좋을 거요. 나는 정보를 원하오."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"나는 정보를 원하오."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~줄리엣은 생각을 해보더니 고개를 끄덕인다. "좋아요. 그대가 먼저 약속을 지키면 나도 약속을 지키지요. 이해했나요?"~ */
  IF ~~ THEN REPLY #40326 /* ~"좋소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"아니, 그것 가지고는 안 되오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"그럼 협상은 결렬되었군요. 재고할 생각은 없나요?"~ */
  IF ~~ THEN REPLY #40328 /* ~"좋소... 하겠소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"아니, 미안하오. 물어볼 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"아니오. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~줄리엣의 눈이 밝아진다. "멋진 생각이에요! 정말 멋져요!" 그녀는 갑자기 얼굴을 찌푸린다. "하지만 그는 내 필적을 알아요... 대신 써줄 수 있겠어요?"~ */
  IF ~~ THEN REPLY #40331 /* ~"내게 어울리는 일이 아니오, 하지만 대신 해줄 사람은 찾아 줄 수 있소." ~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"관두시오. 물어볼 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"하지 않겠소. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"오, 그래 주겠어요? 훌륭해요! 그것들을 찾은 다음에는 그것들을 내 사랑 몬태규에게 주세요... 그는 시 공회당 안에 있어요. 그리고 편지는... 무법자 펜에게 가보세요. 그는 마계구에서 인쇄소를 운영하고 있어요. 고마워요!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"잠깐... 몬태규라고 했소? 그거 문제군... 그는 나와 얘기를 하려고 하지 않소."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~줄리엣은 내게 그녀의 애인 몬태규에게 '가짜' 연애 편지를 전해달라고 부탁했다. 나는 그녀에게 몬태규가 내게 적대적이 되어 나와 말을 하려고 하지 않는다고 설명했다. ~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"잠깐... 몬태규라고 했소? 그거 문제군... 그는 죽었소."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~줄리엣은 내게 그녀의 애인 몬태규에게 '가짜' 연애 편지를 전해달라고 부탁했다. 나는 그녀에게 몬태규는 이미 죽었다고 설명했다. ~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"물론이오. 안녕히 계시오."~ */ JOURNAL #39456 /* ~나는 몬태규의 애인인 줄리엣을 위해 그가 그녀가 외도를 하고 있다고 믿도록 가짜 연애 편지를 그에게 전해주기로 합의했다. 그녀는 그들의 관계의 흥분도에 만족하지 못하고 있는 모양이다. 편지를 얻는 대로 나는 시 공화당에 가서 그것을 그에게 외도의 '증거'로서 보여주어야 한다. 줄리엣은 내게 마계구의 인쇄소에 있는 무법자 펜을 찾아가 보라고 권했다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~줄리엣은 당신을 흘긋 보더니 냉소한다. "오, 의심스럽 - 흠. 다시 생각해보니 그 생각은 그렇게 얼토당토 않은 생각은 아닌 것 같군요. 그대는 충분할 정도로 위험해 보이니까요." 그녀는 마치 말을 품평하는 것처럼 당신을 살펴본다. "당신은 그 겉모습만큼이나 강인한가요?"~ */
  IF ~~ THEN REPLY #40335 /* ~"보증하겠는데 나는 겉모습으로 드러나는 것 이상으로 강하오."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"그렇소."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"그럼 그대는 나 위해 이 일을 해주겠어요?"~ */
  IF ~~ THEN REPLY #40337 /* ~"그래, 하겠소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"내가 받을 대가는 무엇이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"실은... 아니오. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"훌륭해요. 내 사랑 몬태규는 시 공회당 안에 있어요. 고마워요!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"잠깐... 몬태규라고 했소? 그거 문제군... 그는 나와 얘기를 하려고 하지 않소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~줄리엣은 내게 그녀의 애인 몬태규 앞에서 질투에 불타는 구애자 노릇을 해달라고 부탁했다. 나는 그녀에게 몬태규가 내게 적대적이 되어 나와 말을 하려고 하지 않는다고 설명했다. ~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"잠깐... 몬태규라고 했소? 그거 문제군... 그는 죽었소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~줄리엣은 내게 그녀의 애인 몬태규 앞에서 질투에 불타는 구애자 노릇을 해달라고 부탁했다. 나는 그녀에게 몬태규는 이미 죽었다고 설명했다. ~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"좋소. 가서 그와 얘기를 하겠소... 안녕히 계시오."~ */ JOURNAL #39455 /* ~나는 지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 줄리엣의 질투심 많은 구혼자 노릇을 해주기로 했다. 나는 시 공회당에 있는 그녀의 애인 몬태규를 찾아서 그녀를 내게 넘기라고 요구해야 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~줄리엣은 눈알을 부라린다. "꼭 그래야만 한다면 그렇게 하세요."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~"내게 이 곳에 대해 얘기해줄 수 있겠소?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~줄리엣은 내게 지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 독사의 혀 키마스사이가 래벌 퍼즐웰의 딸인 케사이-세리스의 이복 자매라고 말해주었다. ~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ JOURNAL #66727 /* ~창녀들 중 하나가 내게 네니에게 혹시 누가 비비안의 개인 향기를 가겨갔는가에 대해 아는 바가 없는지 물어보라고 권했다. 네니는 항상 돌아다니며 다른 사람들이 무슨 짓을 하는지 지켜보는 것으로 널리 알려진 듯하다. ~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ JOURNAL #66728 /* ~창녀들 중 하나가 내게 네니에게 혹시 마릿사의 진홍색 베일을 어디서 본 적이 없는지 물어보라고 권했다. 네니는 항상 돌아다니며 다른 사람들이 무슨 짓을 하는지 지켜보는 것으로 널리 알려진 듯하다.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ JOURNAL #66742 /* ~매음굴의 창녀들 중 하나에게 래벌에 대해 묻자, 그녀는 이브즈와 얘기를 해보라고 권했다. 그녀의 말에 의하면 이브즈는 온갖 종류의 이야기를 수집하며, 아마 그녀의 레퍼토리 중에는 래벌의 얘기도 포함되어 있을 것이라고 한다.  ~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~줄리엣은 쓸쓸한 한숨을 길게 내쉰다. 그녀는 당신을 쳐다보고 있지도 않다. ~ */
  IF ~~ THEN REPLY #40358 /* ~"줄리엣, 내 얘기를 들었소?"~ */ JOURNAL #66753 /* ~지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 줄리엣은 내 질문에 대답하는 것을 거부하고 있다. 그녀가 얘기하고 싶어하는 것은 그녀의 자칭 비참할 정도로 지루한 생활뿐이다. ~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"네? 아, 나는 주의를 기울여 듣지 않았어요. 미안해요. 하지만 단지 내 지루한 삶과 행동에 대한 질문을 하려고 온 건 아니겠죠..?~ */
  IF ~~ THEN REPLY #40360 /* ~"당신 인생은 그렇게 따분하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"싷은 그렇소. 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"나는 여기서 센세이트가 될 준비를 하고 있어요. 그레이스 여사가 우리 교사예요. 이 곳의 모든 창녀들은 그녀의 학생이에요." ~ */
  IF ~~ THEN REPLY #40363 /* ~"센세이트?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~줄리엣은 고개를 끄덕인다. "체험과 감각을 중시하는 당파인 감각의 공동체의 멤버를 가리키는 말이에요. 센세이트에 대한 질문은 그레이스 여사가 나보다 더 잘 대답해줄 수 있을 거예요."~ */
  IF ~~ THEN REPLY #40366 /* ~"다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~줄리엣은 거북하게 웃는다 "매음굴은 ... 센세이트 지망생들을 위한 학교에요. 그레이스 여사가 우리 교사이며, 그러한 질문은 그레이스 여사가 나보다 더 잘 대답해줄 수 있을 거예요. 나 대신 그녀와 이야기를 하는 것이 어떻겠어요"~ */
  IF ~~ THEN REPLY #40389 /* ~"당신은 센세이트가 되기를 열망하고 있소?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"지금은 아니오. 질문할 것이 하나 더 있소."~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~줄리엣은 고개를 슬프게 젓는다. "정말 안됐어요! 솔직히 나도 그녀의 방에 몰래 들어가 그녀의 향수를 한두 방울 정도 쓴 적은 있어요... 하지만 감히 비비안의 개인적 향기를 가져가다니 너무 대담하군요! 정말 무례한 짓이에요! 어쨌든 어린 네니에게 물어보세요. 그녀는 언제나 어슬렁거리면서 모두를 관찰하고 있으니까요."~ */
  IF ~~ THEN REPLY #40392 /* ~"다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"오, 왜 그런 걸 찾으려는 거죠? 나는 그 무례하고 구제불능인 여자가 내가 이 곳을 떠날 때까지 자신의 방에 갇혀 있었으면 좋겠어요! 어쨌든 그대의 질문에 대한 답은 '노'예요. 나는 그걸 본 적도 없고 어디 있는지도 몰라요. 네니라면 알지도 몰라요. 그녀는 언제나 어슬렁거리면서 모든 것을 관찰하고 있으니까요."~ */
  IF ~~ THEN REPLY #40394 /* ~"다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"래벌 퍼즐-뭐요? 누구죠?" 줄리엣은 당혹해 하는 듯하다. "그게 정말 어떤 사람의 이름인가요? 그렇다면 이브즈가 알지도 몰라요. 그녀는 무수한 이야기들을 알고 있고 아마 이 '래벌'이라는 사람에 대한 얘기도 알 거예요."~ */
  IF ~~ THEN REPLY #40396 /* ~"그럼 관두시오. 다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"관두시오, 줄리엣. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"대체 무슨 얘기를 하는 거죠?"~ */
  IF ~~ THEN REPLY #40398 /* ~"열 번째 창녀, 그녀는 누구요?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"그럼 관두시오. 다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"관두시오, 줄리엣. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"나는 당신이 누구에 대해 얘기를 하는지 모르겠어요."~ */
  IF ~~ THEN REPLY #40401 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~슬픈 줄리엣이 보인다. 그녀는 전과 마찬가지로 비참해 보인다. 그녀는 당신에게 인사를 하는 둥 마는 둥 하고는 다시 허공을 바라본다.~ */
  IF ~~ THEN REPLY #40403 /* ~"뭐가 문제요. 줄리엣?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"그냥 지나가던 중이었소, 줄리엣. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~줄리엣은 희망에 부푼 얼굴로 당신을 쳐다본다. "아직 무슨 성과는 없나요?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"문제가 있소... 그는 나와 얘기를 하려고 하지 않소."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~줄리엣은 내게 그녀의 애인 몬태규에게 '가짜' 연애 편지를 전해달라고 부탁했다. 나는 그녀에게 몬태규가 내게 적대적이 되어 나와 말을 하려고 하지 않는다고 설명했다. ~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"문제가 있소... 그는 죽었소."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~줄리엣은 내게 그녀의 애인 몬태규에게 '가짜' 연애 편지를 전해달라고 부탁했다. 나는 그녀에게 몬태규는 이미 죽었다고 설명했다. ~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"실은 그렇소. 그는 비탄에 빠졌으며 당신을 당신의 '새 애인'에게 양보하기로 했소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다, 그러자 그녀는 비참하게 흐느껴 울었다. ~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"몬태규는 당신을 당신의 '새 애인'에게 양보할 생각이었소, 그래서 나는 그에게 모든 것이 당신 책략이었다고 했소. 그가 이제 어떻게 나올 지는 나도 모르겠소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"몬태규는 무관심한 듯했소... 나는 그가 '어쨌든 만사가 다 따분하다'고 말하는 걸 들었소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"나는 그에게 편지를 주었으나... 그로부터는 아무런 반응도 없었소. 조만간 당신이 그와 얘기를 나누는 것이 좋을 것 같소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"몬태규는 무관심한 듯했소... 나는 그가 그의 다른 애인에 대해 얘기하는 걸 들었소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"나는 그에게 편지를 주었으나... 그로부터는 아무런 반응도 없었소. 조만간 당신이 그와 얘기를 나누는 것이 좋을 것 같소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~줄리엣은 충격을 받은 듯하다, 그리고 잠시 후 애처롭게 훌쩍이며 울기 시작한다.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"그만 우시오. 이제 내 질문에 대답해주시오. 우린 분명히 약속을 했소."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"질문할... 것들이 좀 있소, 줄리엣..."~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"일이 이렇게 되어 참 안됐소. 나중에 다시 오겠소, 줄리엣. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~조용히 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~그녀는 울음을 간신히 멈추고 당신을 바라본다. ~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"그에게 말을 했다고요...? 제기랄! 이제 어떻게 하죠?"~ */
  IF ~~ THEN REPLY #40418 /* ~"이제 그가 모든 것을 아니 당신들 관계에 대해 터놓고 서로 논의하는 것이 어떻겠소?"~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"그건 당신이 내린 결정이었소. 난 내가 맡은 일을 했을 뿐이오. 이제 내 질문에 대답해주시오..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"잘 모르겠소. 하지만 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"모르겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~줄리엣은 고개를 끄덕인다. "그건 사실이에요. 고마워요."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"물론이오. 이제 내 질문에 대답해주시오..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"물론이오. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"천만에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~줄리엣은 충격을 받은 듯하다. "그... 그가 *뭐*라고 했다고요?! 어떻게 내가 그토록... 오! 내 연애 관계에는 내가 원했던 대로 문제가 있었군요, 단지 내가 우울증에 빠져 보지 못했던 것 뿐이지!" ~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"그럴지도. 어쨌든 난 내 몫을 다했소...이제 내 질문에 대답해주시오..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"그럴지도. 이제 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"그럴지도. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~줄리엣은 좌절감에 이를 간다. "오! 정말 짜증스럽군요! 그럼 나는 다른 방법을 시도해야겠군요."~ */
  IF ~~ THEN REPLY #40429 /* ~"왜 그에게 그냥 얘기를 하지 않소? 더 이상의 음모를 꾸미기 전에 당신들 관계에 대해 터놓고 서로 논의하는 것이 좋을 거요."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~그럴지도. 어쨌든 난 내 몫을 다했소...이제 내 질문에 대답해주시오..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"그럴지도. 이제 질문할 것들이 좀 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"그럴지도. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~줄리엣은 희망에 부푼 얼굴로 당신을 쳐다본다. "아직 무슨 성과는 없나요?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"문제가 있소... 그는 나와 얘기를 하려고 하지 않소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~줄리엣은 내게 그녀의 애인 몬태규 앞에서 질투에 불타는 구애자 노릇을 해달라고 부탁했다. 나는 그녀에게 몬태규가 내게 적대적이 되어 나와 말을 하려고 하지 않는다고 설명했다. ~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"문제가 있소... 그는 죽었소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~줄리엣은 내게 그녀의 애인 몬태규 앞에서 질투에 불타는 구애자 노릇을 해달라고 부탁했다. 나는 그녀에게 몬태규는 이미 죽었다고 설명했다. ~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"실은 그렇소. 그는 비탄에 빠졌으며 당신을 내게 양보하기로 했소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다, 그러자 그녀는 비참하게 흐느껴 울었다. ~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"몬태규는 당신을 내게 양보할 생각이었소, 그래서 나는 그에게 모든 것이 당신 책략이었다고 했소. 그가 이제 어떻게 나올 지는 나도 모르겠소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~나는 줄리엣에게 나와 몬태규 사이에 무슨 일이 일어났는지 얘기해 주었다. 그녀는 불만스러운 듯 했으나 그럼에도 불구하고 내 질문에 답해주기로 합의했다. ~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"몬태규는 무관심한 듯했소... ~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"나는 그에게 요구를 했으나... 그로부터는 아무런 반응도 없었소. 하지만 그는 나와 싸우려 하지 않았소. 조만간 당신이 그와 얘기를 나누는 것이 좋을 것 같소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~"몬태규는 무관심한 듯했소... ~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"나는 그에게 요구를 했으나... 그로부터는 아무런 반응도 없었소. 조만간 당신이 그와 얘기를 나누는 것이 좋을 것 같소."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"그럼 그는 날 위해 싸우지 않을 건가요?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"아니오."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"그렇소. 나는 그가 '어쨌든 만사가 다 따분하다'고 말하는 걸 들었소."~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"그렇소. 나는 그가 그의 다른 애인에 대해 얘기하는 걸 들었소."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~줄리엣은 당신이 그녀를 만난 이래 최악의 몰골이다. 그녀의 얼굴은 초췌하고 창백하며, 그녀의 충혈된 눈의 언저리는 시커멓다. 그녀는 그래도 괜찮게 보이려고 노력하는 듯 힘없이 미소를 짓는다.~ */
  IF ~~ THEN REPLY #40443 /* ~"질문할 것들이 좀 있소, 줄리엣."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"그냥 지나가던 중이었소. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"안녕하세요. 내게 질문을 하러 왔나요?"~ */
  IF ~~ THEN REPLY #40445 /* ~"그렇소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"래벌... 흠... 아! 전에 그 이름을 들어본 적이 있는 것 같군요. 그 진위는 알 수 없으나 비슷한 소문을 들은 적이 있어요. 살무사의 혀 키마스사이에게 물어보세요... 그들은 이복 자매니까."~ */
  IF ~~ THEN REPLY #40447 /* ~"그렇소? 흥미롭군. 다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"알겠소... 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오, 줄리엣."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"에, 에코 얘기를 하는 거군요. 들리는 말로는 그녀는 어떤 이유 때문에 다시는 말하지 않기로 맹세했다는군요. 그런 짓을 하는 사람의 심리가 나로서는 이해가 가지 않아요." ~ */
  IF ~~ THEN REPLY #40449 /* ~"다른 질문이 있소..."~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~줄리엣은 냉소한다. "뭐라고요? 그대는 나하고 무슨 잔인한 게임이라도 하려는 건 아니겠지요..." 그녀는 갑자기 숨을 헐떡이면서 손으로 입을 막는다. "안돼...안돼! 그대는 진실을 말하고 있군요! 그는 또 결투를 했군요, 그렇지 않나요?"~ */
  IF ~~ THEN REPLY #66205 /* ~"그와 비슷한 거요... 그래."~ */ GOTO 37
END
