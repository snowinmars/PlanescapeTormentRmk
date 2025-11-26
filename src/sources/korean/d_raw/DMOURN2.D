// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~이 더스트맨은 긴 흑색 법복을 입었으며, 손은 소매 속에 넣고 있다. 그녀는 고개를 숙이고 있으며, 주위의 다른 더스트맨들과 함께 일정한 간격으로 영창하고 있다.~ */
  IF ~~ THEN REPLY #7081 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~더스트맨은 당신 말을 들은 것 같다, 하지만 그녀는 당신을 올려다보지 않는다. ~ */
  IF ~~ THEN REPLY #8242 /* ~"당신과 잠시 얘기를 나누고 싶소."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~그들의 성가에 귀를 기울인다.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~모든 더스트맨은 똑같은 음조와 리듬으로 영창하고 있다. 영창은 몇 분에 한 번씩 거의 고함에 가까울 정도로 소리가 커진다, 그리고 나서는 메아리가 울리듯 소리가 서서히 줄어든다. 일단 소리가 완전히 사라지면, 더스트맨들은 '진정한 죽음'을 찬양하는 몇 구의 진언을 외운 후 영창을 다시 반복한다.~ */
  IF ~~ THEN REPLY #8251 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~더스트맨은 머리를 치켜든다. 그녀는 영창을 멈추지 않고 주변의 다른 더스트맨들과 똑같은 페이스와 음조를 유지하고 있다.~ */
  IF ~~ THEN REPLY #8253 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~"나는 한 죽은 자를 애도하오."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~"나는 사랑하는 사람을 잃은 사람을 위해 여기 왔소."~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~더스트맨은 당신을 무시하고 영창을 재개한다.~ */
  IF ~~ THEN REPLY #8257 /* ~"당신과 얘기를 하고 싶소."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~그들의 성가에 귀를 기울인다.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~애도자는 갑자기 멈춘다, 그리고 당신을 살펴본다. "당신이 얘기하는 사람은 죽은 사람 때문에 고뇌하고 있나요?"~ */
  IF ~~ THEN REPLY #8266 /* ~"아니, 죽음은 내 감정을 흔들어 놓지 않소."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~진실: "그렇소... 난 내가 데이오나라라는 죄없는 여자의 죽음에 책임이 있다고 생각하오. 나는 이 때문에 괴로울 뿐만 아니라 나 때문에 그녀의 아버지가 느끼는 비통함에 죄책감을 느끼오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~진실: "그렇소... 난 내가 자카리아라는 죄없는 남자의 죽음에 책임이 있다고 생각하오. 나는 그의 죽음 때문에 괴롭소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~진실: "그렇소... 난 내가 다원 우주 전역에 걸친 수많은 죽음에 책임이 있다고 생각하오. 이 사실을 알게 되어 받는 고통은 내가 감당하기에는 너무 벅차오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~"내가 아니오. 아들을 잃은 앵갸의 부인이라는 여자요. 그녀는 심하게 고통을 받고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~거짓말: "아니오, 나는 친구... 아단을 위해 얘기하고 있소. 그는 죽은 사람 때문에 고통을 받고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~"그렇소, 이 최근의 죽음은 내게 크나큰 고통과 고뇌를 안겨 주었소."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"그 일에 대해 얘기하기 전에 당신에게 먼저 물어보고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~"사과하겠소... 내가 말을 잘못했소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~"괜찮다면 우리가 당신과 그녀의 부친이 겪는 고통을 애도하겠어요."~ */
  IF ~~ THEN REPLY #8274 /* ~"그럴 수가 있다면 부탁하리다. 그것은 나와 그녀의 아버지의 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~"만약 당신이 원한다면 우리는 당신의 고통을 애도하겠어요."~ */
  IF ~~ THEN REPLY #8276 /* ~"그럴 수가 있다면 부탁하리다. 그것은 내 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~"만약 당신이 원한다면 우리는 당신의 고통을 애도하겠어요."~ */
  IF ~~ THEN REPLY #8278 /* ~"그럴 수가 있다면 부탁하리다. 그것은 내 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~"만약 그녀가 불쾌해 하지 않는다면 우리가 그녀의 고통을 애도하겠어요."~ */
  IF ~~ THEN REPLY #8280 /* ~"그럴 수가 있다면 부탁하리다. 그것은 그녀의 고통을 크게 덜어줄 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~"만약 그가 불쾌해 하지 않는다면 우리가 그의 고통을 애도하겠어요."~ */
  IF ~~ THEN REPLY #8282 /* ~"그럴 수가 있다면 부탁하리다. 그것은 그녀의 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~더스트맨은 고개를 끄덕이고 영창을 재개한다.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~그들의 성가에 귀를 기울인다.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~그들의 성가에 귀를 기울인다.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~더스트맨은 고개를 숙이고 영창을 재개한다.~ */
  IF ~~ THEN REPLY #8292 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~"우리는 애도하고 있어요."~ */
  IF ~~ THEN REPLY #8293 /* ~"누가 죽었소?"~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~"나는 당신들 더스트맨이 슬픔이나 감정을 초월했다고 생각했는데."~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~"우리는 죽은 자를 애도하고 있는 것이 아니에요. 우리는 산 자를 애도하고 있어요."~ */
  IF ~~ THEN REPLY #8302 /* ~"산 자?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~"우리는 죽은 자 때문에 고뇌하고 있는 산 자를 애도하고 있어요."~ */
  IF ~~ THEN REPLY #8311 /* ~"왜?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~"한 영혼이 진정한 죽음을 향해 떠난 후 그 주변에 상처가 남는 경우가 적지 않아요. 사랑하는 사람이 죽었을 때 남은 사람들은 흔히 깊은 고뇌와 상실감을 느끼곤 해요."~ */
  IF ~~ THEN REPLY #8320 /* ~"그건 자연스러운 일이오..."~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~"당신들이 산 자를 애도하는 것은..."~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~"진정한 죽음?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~"고뇌와 상실감은 강렬한 감정이에요. 그러한 감정들은 산 자를 현생에 묶어 두어, 그들이 죽음을 맞이하였을 때 진정한 죽음에 도달하는 것을 방해해요. 우리는 그러한 감정들에 억매인 산 자를 애도해요."~ */
  IF ~~ THEN REPLY #8331 /* ~"진정한 죽음?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~"그것은 때로 최종적 죽음이라고도 불려요. 진정한 죽음은 어둡고 고통스러운 현생으로부터의 해방이에요. 또한 그것은 감정과 이성으로부터의 해방이며, 이러한 껍질들로부터의 해방이에요."~ */
  IF ~~ THEN REPLY #8340 /* ~"그것은 소멸처럼 들리오"~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~"왜 당신들은 산 자를 애도하는 거요?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~더스트맨은 고개를 끄덕인다. "그렇게 부르는 자도 있어요. 하지만 그건 옳지가 않아요."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~"특히 누구를 애도하고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~더스트맨은 기다린다.~ */
  IF ~~ THEN REPLY #8358 /* ~"뭘 하고 있는 거요?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~"왜 당신들의 성가가 바뀐 거요?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~"나는 한 죽은 자를 애도하오."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~"사랑하는 사람을 잃은 사람을 위해 부탁하겠소."~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~"당신들의 성가를 듣고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~모든 더스트맨은 똑같은 음조와 리듬으로 영창한다. 하지만 당신이 처음 기념관에 접근했을 때 들었던 영창과는 달리 이 영창은 순환한다. 마치 해안으로 다가왔다 물러가는 파도처럼. 이런 생각을 하자 당신의 기억이 자극을 받는다... ~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~기억해 내려고 노력한다...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~기억해 내려고 노력한다...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~기억해 내려고 노력한다...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~기억해 내려고 노력한다...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~기억을 떨쳐버린다.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~당신은 자신이 머나먼 해안에서 서 있는 것을 희미하게 기억한다... 어딘가 이 곳에서 멀리 떨어진 곳의... 누군가 당신과 함께 있다. 여자다. 그녀는 당신이 바로 옆에 이있으나, 시야에서 약간 벗어나 있는 탓에 누구인지 알아볼 수가 없다. 기억을 더 자세히 되살리려고 하자 그것은 사라져버린다..."~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~정신을 차린다.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~정신을 차린다.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~...그리고 다시 당신은 더스트맨 애도자들과 함께 서 있다. 그들의 영창 소리는 거의 들리지 않을 정도로 작아졌다. 그들은 영창을 멈추고 '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8370 /* ~다시 귀를 기울인다.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~모든 더스트맨은 똑같은 음조와 리듬으로 영창한다. 하지만 당신이 처음 기념관에 접근했을 때 들었던 영창보다 이 영창은 훨씬 고음이며, 마치 화살이 바람을 가르거나 바람이 계곡을 지나가는 소리처럼 들린다. 이 영창은 빨리 시작하여 빨리 끝난다. 영창이 끝나자 더스트맨은 '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8372 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~모든 더스트맨은 똑같은 음조와 리듬으로 영창한다. 하지만 당신이 처음 기념관에 접근했을 때 들었던 영창과는 달리 이 영창은 강력한 힘과 무작위성을 지니고 있다. 이 영창은 예측할 수가 없으며, 그들의 입에서 나오는 순간에도 계속 변화하고 있는 듯하다. 영창이 지속적으로 변화함에도 불구하고 더스트맨들은 동료들과 완벽한 화음을 유지한다. 마침내 영창 소리가 거의 들리지 않을 정도로 작아지자, 그들은 '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8374 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~당신이 처음 기념관에 접근했을 때 들었던 영창과는 달리 이 영창은 몇 분간에 걸친 하나의 곡조로... 그것은 당신에게 거대한 종이 울리는 소리를 연상시킨다. 더스트맨들은 곡이 끝난 후 잠시 조용히 있다가, '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8376 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~당신이 처음 기념관에 접근했을 때 들었던 영창과는 달리 이 영창은 보다 미묘하며, 때로는 어찌나 소리가 작은지 거리에서 나는 잡음에 섞여 거의 들리지 않을 정도다. 더스트맨들은 영창이 끝난 후 약 1분 정도 완전히 침묵한다. 그리고 '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8378 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~더스트맨은 멍하니 당신을 쳐다본다. "우리의 영창은 변하지 않았어요. 우리는 우리가 시작한 이래 쭉 같은 영창을 해오고 있어요.~ */
  IF ~~ THEN REPLY #8380 /* ~"당신들의 성가가 바뀌었소... 나는 음조와 리듬의 차이를 느낄 수가 있소."~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~"알겠소."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~더스트맨은 고개를 젓는다. "아마 변한 것은 당신일 거예요."~ */
  IF ~~ THEN REPLY #8382 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~"아마 그럴지도. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~"나는 이언니스를 애도해요. 그는 자신의 무남독녀인 데이오나라를 잃고 상심하고 있어요."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~"데이오나라? 난 그녀에 대해 들은 적이 있소. 당신은 그녀가 어떻게 죽었는지 아시오?"~ */ JOURNAL #27450 /* ~더스트맨 애도자들은 이언니스라는 사람을 위해 울고 있다고 했는데, 그는 내가 시체안치소에서 만난 혼령의 아버지인 것 같다. 아마 이언니스라면 데이오나라와 나 자신에 대해 뭔가 알고 있을지도...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ JOURNAL #27451 /* ~더스트맨 애도자들은 외동딸인 데이오나라를 잃은 이언니스라는 사람을 위해 울고 있다고 했다. 어째서인지 그 이름들을 들어본 적이 있다는 생각이 든다, 하지만 정확하게 기억해낼 수가 없다. ~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요."~ */ JOURNAL #27451 /* ~더스트맨 애도자들은 외동딸인 데이오나라를 잃은 이언니스라는 사람을 위해 울고 있다고 했다. 어째서인지 그 이름들을 들어본 적이 있다는 생각이 든다, 하지만 정확하게 기억해낼 수가 없다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~"우리는 죽은 이 때문에 고뇌하는 당신을 애도해요."~ */
  IF ~~ THEN REPLY #8387 /* ~"나는 회복했소. 우리가 얘기하기 전에 당신이 애도하던 사람이 나보다는 애도를 더 필요로 할 것이오."~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~"우리는 죽은 이 때문에 고뇌하는 앵갸의 부인을 애도해요."~ */
  IF ~~ THEN REPLY #8390 /* ~"그녀는 회복했소. 우리가 얘기하기 전에 당신이 애도하던 사람이 그녀보다는 애도를 더 필요로 할 것이오."~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~"우리는 죽은 이 때문에 고뇌하는 아단을 애도해요."~ */
  IF ~~ THEN REPLY #8393 /* ~"어... 아단은 회복했소. 우리가 얘기하기 전에 당신이 애도하던 사람이 그보다는 애도를 더 필요로 할 것이오."~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~더스트맨은 고개를 끄덕인다, 그리고 고개를 숙인 후 영창을 재개한다.~ */
  IF ~~ THEN REPLY #8396 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~귀를 기울인다.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~떠난다.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~애도자는 갑자기 멈춘다, 그리고 당신을 살펴본다. "당신이 얘기하는 사람은 죽은 사람 때문에 고뇌하고 있나요?"~ */
  IF ~~ THEN REPLY #8399 /* ~"아니, 그것은 그들의 감정을 흔들어 놓지 않소."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~"그렇소. 앵갸의 부인은 아들을 하나 잃었소. 그녀는 심하게 고통받고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~거짓말: "어, 그렇소... 내 친구... 아단이 최근 가까운 사람을 잃었소. 그는 죽은 사람 때문에 매우 비통해 하고 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~"그렇소, 이 최근의 죽음이 그들에게 크나큰 고통과 고뇌를 안겨 주었소."~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~"사과하겠소... 내가 말을 잘못했소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~"만약 당신이 원한다면 우리는 당신의 고뇌를 애도하겠어요."~ */
  IF ~~ THEN REPLY #8404 /* ~"그럴 수가 있다면 부탁하리다. 그것은 내 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~"나는 그녀의 죽음과 관련된 일에 대해 알지 못해요."~ */
  IF ~~ THEN REPLY #8406 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~"좋소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~"괜찮다면 우리는 그들의 고뇌를 애도하겠어요."~ */
  IF ~~ THEN REPLY #8408 /* ~"그럴 수가 있다면 부탁하리다. 그것은 그들의 고통을 크게 덜어줄 것이오."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~"아니, 그럴 필요는 없소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~당신이 처음 기념관에 접근했을 때 들었던 영창과는 달리 이 영창의 음조는 구별하기 어렵다.계속 듣다 보니 당신은 마치 공기 그 자체가 소리를 흡수하는 듯 영창 소리가 기묘하게 소음되고 있다는 것을 깨닫는다. 더스트맨의 영창은 약 1분 정도 지난 후에 끊어진다. 그리고 그들은 '진정한 죽음'을 찬양하는 진언을 몇 구 외운 후, 영창을 다시 시작한다. ~ */
  IF ~~ THEN REPLY #8410 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~그들이 영창하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~"우리는 당신이 얘기한 죽은 이 때문에 고뇌한다는 사람을 애도해요."~ */
  IF ~~ THEN REPLY #8412 /* ~"그 사람은 회복했소. 우리가 얘기하기 전에 당신이 애도하던 사람이 내가 말했던 사람보다는 애도를 더 필요로 할 것이오."~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 12
END
