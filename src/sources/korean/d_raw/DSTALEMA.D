// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~이 곰팡이 냄새가 나는 여자 좀비는 유별나게 오랜 된 듯 거의 미이라가 된 상태이다. 그녀의 피부는 썩은 녹회색 가죽을 연상시키며, 그녀의 두 눈 중 하나가 이미 떨어져 나간 탓에 그녀의 얼굴에 구멍이 하나 뚫린 것처럼 보인다. 그녀의 목소리는 느리고 탁하다. "안-녀엉-하세요."~ */
  IF ~~ THEN REPLY #2992 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"안녕하시오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~그녀는 자신을 가리키며 다시 말을 한다. "서-서-스털 머흐리." 그녀의 성대가 목구멍 아랫부분에서부터 곪아 들어가는 것처럼 들린다. ~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"썩은 메리? 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"썩은 메리? 물어볼 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"그만 가봐야겠소. 안녕히 계시오, 메리."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~시체는 천천히 고개를 끄덕여 응답한다. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~그녀는 당신의 질문을 기다리며 고개를 끄덕인다.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"하그림은 내게 당신을 이해하려면 당신 말을 듣는 법을 *배워야* 한다고 했소...그가 한 말의 의미가 무엇안지 혹시 아시오?~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"메리, 나는 침묵의 왕과 얘기를 해야만 하오. 날 도와줄 수 있겠소?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"여기는 어디요?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~그녀는 뭐라고 신음하듯 중얼거리나 전혀 알아들을 수가 없다. ~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"미안하오, 하지만 난 당신이 하는 말을 이해할 수가 없소. 우리가 서로 의사소통을 할 더 나은 방법은 없겠소?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"당신이 하는 말을 이해할 수가 없소. 보다 명료하게 말을 할 순 없겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"어... 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~그녀는 슬프게 고개를 젓는다, 그리고 어깨를 으쓱하려는 듯 고통스러울 정도로 느리게 어깨를 들어올린다. ~ */
  IF ~~ THEN REPLY #22221 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~시체는 당신에게 한 걸음 다가간 후 팔을 뻗쳐 당신을 만지려고 한다. ~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~한 걸음 물러선다.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~한 걸음 물러선다.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~그녀가 당신을 만지도록 한다. ~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"뭘 하고 있는 거요?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~그녀는 대답하는 대신 조용히 신음한다, 그리고 다시 한 번 당신을 만지기 위해 손을 뻗는다. ~ */
  IF ~~ THEN REPLY #22269 /* ~그녀가 당신을 만지도록 한다.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~그녀는 대답하는 대신 조용히 신음한다, 그리고 다시 한 번 당신을 만지기 위해 손을 뻗는다. 죽은 지 오래되었음에도 불구하고 그녀의 시선에는 아직도 인간적인 면모가 남아 있다. 당신은 그녀에게 악의가 없다는 것을 깨닫는다. ~ */
  IF ~~ THEN REPLY #22272 /* ~그녀가 당신을 만지도록 한다.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~그녀는 자신의 살이라고는 거의없는 손으로 당신의 팔뚝을 부드럽게 문지르면서 말한다: "러흐슨." (귀를 기울이세요.)~ */
  IF ~~ THEN REPLY #22275 /* ~"어떻게 한 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"어떻게 했길래 내가 당신을 이해할 수 있게 된 거요?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~그녀는 당신을 다시 한 번 만진다. "수퍼흐크 터흐 어흐 여흐 컨흔. 버허흐 머어스트 더흐 어흐트 퍼흐퍼흘리." (당신은 우리와 얘기할 수 있어요. 하지만 제대로 된 방법으로 해야만 해요.) ~ */
  IF ~~ THEN REPLY #22278 /* ~"내게 가르쳐 줄 수 있겠소?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~그녀가 미소를 짓자 그녀의 단단해진 얼굴 피부는 마치 두꺼운 가죽처럼 삐걱거린다. "여어어." (그래요.)~ */
  IF ~~ THEN REPLY #22280 /* ~"그럼 부탁하리다..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~썩은 메리는 내게 죽은 자와 얘기를 나누는 방법을 가르쳐 주었다. 이제 나는 죽은 후 시간이 너무 오래 경과되지 않은 시체들과 대화를 나눌 수 있다. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~그녀는 당신에게 죽은 자와 얘기하기 위해 필요한 능력을 가르치는 것을 마친다. 그 능력은 '뼈들이 해주는 이야기'라고 한다. ~ */
  IF ~~ THEN REPLY #22283 /* ~"어떠한 시체와도 얘기할 수가 있소?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"서흠. 어허스 터 더흐어드. 머흐트 여어 스커흐." (일부만이에요. 다른 이들은 죽은 지 너무 오래되었어요. 능력을 사용해야만 해요.)~ */
  IF ~~ THEN REPLY #22285 /* ~"고맙소. 질문할 것들이 좀 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~그녀는 고개를 끄덕이며 당신 질문을 기다린다.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"내 동료가 그의 해방의 대가로 보다 큰 가치를 지닌 해골을 요구하는 강대한 사나이에게 납치당했소. 메리, 난 어떡해야만 하오?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"하그림은 내게 당신을 이해하려면 당신 말을 듣는 법을 *배워야* 한다고 했소...그가 한 말의 의미가 무엇안지 혹시 아시오?~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"메리, 나는 침묵의 왕과 얘기를 해야만 하오. 날 도와줄 수 있겠소?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"메리, 나는 침묵의 왕과 얘기를 해야만 하오. 날 도와줄 수 있겠소?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"메리, 나는 침묵의 왕과 얘기를 해야만 하오. 날 도와줄 수 있겠소?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"어떻게 당신은 다른 좀비들과 얘기를 할 수 있는 거요? 나는 내가 당신을 이해하는 것처럼 그들을 이해할 수가 없소..."~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"여기는 어디요?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"하흘즈 어흐 설른 쿠흥." (침묵의 왕의 궁정.)~ */
  IF ~~ THEN REPLY #22299 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"거흐드 어흐드 조흠브 커흐르 훠흐르 커흐-커으트 훠언즈." (다른 좀비들을 인도하고 고요한 자들을 보살펴요.)~ */
  IF ~~ THEN REPLY #22303 /* ~"다른 좀비들에 대해 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"고요한 자들?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"조흠브, 스스켈르트, 거-거-구을, 르라흐트." (좀비. 스켈레톤. 굴. 쥐.)~ */
  IF ~~ THEN REPLY #22308 /* ~"좀비들에 대해 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"스켈레톤들에 대해 얘기해주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"내게 굴들에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"쥐들에 대해 얘기해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"더흐 워-워-워크 어흐 서흘른 쿠흥." (침묵의 왕을 위해 일해요.)~ */
  IF ~~ THEN REPLY #22315 /* ~"어떤 종류의 일 말이오?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"러허어브 드트 워워어치 허흐 브-브-부흐크. 커흐르 허흐르 더 트루 더흐드." (부서진 것들을 보수하고 진정한 사자들을 보살펴요.)~ */
  IF ~~ THEN REPLY #22321 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"흐허-그름, 드허 레흐드, 거브스 어스스 더드 어흐 서흘른 쿠흥. 스스켈르트 커어드스 어언 어어 워억." (그들의 지도자 하그림이 우리에게 침묵의 왕의 말씀을 전해요. 스켈레톤은 우리들의 작업을 지도해요.)~ */
  IF ~~ THEN REPLY #22326 /* ~"하그림에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"헝거흐... 어흘워 헝거흐." (배고파해요... 언제나 배고파해요.)~ */
  IF ~~ THEN REPLY #22332 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"거어언. 구울즈 샤어어이 어흐흐." (없어졌어요. 굴들이 쫓아냈어요)~ */
  IF ~~ THEN REPLY #22336 /* ~"내게 굴들에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"어어흔?" (뭐지요?)~ */
  IF ~~ THEN REPLY #22341 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"하그림에 대해 얘기해주시오."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"소에고에 대해 얘기해주시오."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"아카스트에 대해 얘기해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~"서흘른 쿠-쿠흥." (침묵의 왕.)~ */
  IF ~~ THEN REPLY #22349 /* ~"그렇소, 그에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"관두시오. 다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~"서흘른 쿠-쿠흥." (침묵의 왕.)~ */
  IF ~~ THEN REPLY #22354 /* ~"그에 대해 뭘 아시오?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"그럼 관두시오. 다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~"서흘른 쿠-쿠흥." (침묵의 왕.)~ */
  IF ~~ THEN REPLY #22359 /* ~"관두시오, 그럼... 다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"관두시오, 그럼... 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~"흐허-그름, 스스켈르트 레흐드, 거브스 어스스 더드 어흐 서흘른 쿠흥. 커-컨흔션드. 워흐드." (스켈레톤의 지도자 하그림이 우리에게 침묵의 왕의 말씀을 전해요. 요즘 걱정하고 있어요. 고민하고 있어요.)~ */
  IF ~~ THEN REPLY #22363 /* ~"왜 그가 걱정하고 있소?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"서거. 어커스터." (소에고. 아카스트.)~ */
  IF ~~ THEN REPLY #22368 /* ~"왜 그는 소에고에 대해 걱정하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"왜 그는 아카스트에 대해 걱정하고 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"서거 푸흐르커 더더." (소에고는 죽음을 설법해요.)~ */
  IF ~~ THEN REPLY #22374 /* ~"죽음을 설교해?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"워흔즈 어흐스 터-터-터 더흐." (우리가 죽기를 원해요.)~ */
  IF ~~ THEN REPLY #22379 /* ~"왜 그는 당신이 죽기를 바라오?"~ */ JOURNAL #22385 /* ~썩은 메리는 침묵의 왕의 고위 사제인 하그림이 더스트맨 소에고에 대해 우려하고 있다고 내게 말해주었다. 소에고는 죽은 자의 왕국의 다른 언데드들이 '언데드로서의 삶'을 포기하고 진정한 죽음을 받아들이도록 설득하고 있다. ~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"허흐흐 더즈즈먼." (그는 더스트맨.)~ */
  IF ~~ THEN REPLY #22388 /* ~"왜 하그림은 아카스트에 대해 걱정하고 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"어커스터흐... 엉거." (아카스트... 분노.)~ */
  IF ~~ THEN REPLY #22397 /* ~"분노?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"어커슽너흐 원 쿠-쿠흘 어-어버후은." (아카스트는 모조리 다 죽이길 원해요.)~ */
  IF ~~ THEN REPLY #22403 /* ~왜 그녀는 모든 이들을 다 죽이고 싶어하오?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"헝거흐... 엉그러흐." (배고파하고 분노해요.)~ */
  IF ~~ THEN REPLY #22409 /* ~"왜 하그림은 소에고에 대해 걱정하고 있소?"~ */ JOURNAL #22413 /* ~썩은 메리는 침묵의 왕의 고위 사제인 하그림이 아카스트에 대해 우려하고 있다고 내게 말해주었다. 그녀는 죽의 자의 왕국에 있는 모든 이를 죽여 잡아먹으려는 굴이다. ~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"헝거흐... 엉그러흐." (배고파하고 분노해요.)~ */
  IF ~~ THEN REPLY #22414 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"허흐흐 더즈즈먼." (그는 더스트맨.)~ */
  IF ~~ THEN REPLY #22420 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"스터-스터-*스터흐* 머리." (썩은 메리.)~ */
  IF ~~ THEN REPLY #22426 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"어떻게 해서 이 곳에 오게 되었소?"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~"더 트루 더드." (진정한 사자.)~ */
  IF ~~ THEN REPLY #22436 /* ~"다른 좀비들에 대해 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"너흐, 서흐." (아니, 미안해요.)~ */
  IF ~~ THEN REPLY #22442 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~그녀는 어깨를 으쓱한다. "어흐스크 흐허그-름." (하그림에게 물어보세요.)~ */
  IF ~~ THEN REPLY #22447 /* ~"하그림에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"더흐드 러흔 터흠. 머흐머흐 거흔." (너무 오래 전에 죽어 기억이 없어요.)~ */
  IF ~~ THEN REPLY #22454 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"다른 사람에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"워?" (왜?)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"나는 이 곳을 떠나야만 하오, 메리. 내겐 할 일이 너무나도 많소... 단지 죽은 자의 왕국에 우연히 들어왔다고 해서 이 곳에 갇히게 되는 건... 공평하지가 않소. 나는 당신에게 약간의 자비를 구하고자 할 뿐이오. 날 도와줄 수 있겠소?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"나는 이 곳을 떠나야만 하오, 메리. 내겐 할 일이 너무나도 많소... 단지 죽은 자의 왕국에 우연히 들어왔다고 해서 이 곳에 갇히게 되는 건... 공평하지가 않소. 나는 당신에게 약간의 자비를 구하고자 할 뿐이오. 날 도와줄 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"지금은 일단 그만둡시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"워?" (왜?)~ */
  IF ~~ THEN REPLY #22468 /* ~"나는 이 곳을 떠나야만 하오."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"지금은 일단 그만둡시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"너어흐." (아니에요.)~ */
  IF ~~ THEN REPLY #22478 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~썩은 메리가 보인다. 그녀는 당신을 알아보고 조용히 신음한다: "거-거러흐..."~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~썩은 메리가 보인다. 그녀는 당신을 알아보고 조용히 신음한다: "거-거러흐..." (안녕하세요.)~ */
  IF ~~ THEN REPLY #22484 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~썩은 메리는 한동안 아무 말도 하지 않는다. 그러더니 고개를 끄덕인다. 그녀는 북쪽 벽을 따라 있는 세 개의 문들 중 첫 번째를 가리킨다 "크-크-클러 아이스. 더어 어 서흘런 쿠-쿠킁. 워어어브 어흔드 누우흐 아흘륵-쿠-쿠우흐. 버-버-버흐 언 수우흐 르훙 아이예 르브흐. (눈을 감아요. 그리고 침묵의 왕에 대해 생각하세요. 북서쪽 구석으로 걸어 들어가요. 하지만 내가 살아 있는 동안에만 유효해요.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"고맙소, 메리. 안녕히 계시오."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~썩은 메리는 침묵의 왕의 알현실에 들어가려면 그녀의 방에 있는 전이문을 이용해야 한다고 말해주었다. 그를 위해서는 북서쪽 구석에 있는 벽감으로 들어가기 전에 눈을 감도 침묵의 왕에 대해 생각해야만 한다. 전이문은 썩은 메리가 살아 있는 한 작동할 것이다. ~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"고맙소, 메리. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"러흐능." (오래.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~썩은 메리는 묵직한 모소리로 말한다. "너-너-노 아이." (나도 아니에요.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"여흐." (그래요.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~썩은 메리은 꼴록꼴록 소리를 작게 낸다. ~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"유어흐르 후-루-후렌드? 터-터터-크 머흐 스스컬..." (당신 친구? 내 해골을 가져가요.) 썩은 메리는 양손으로 자신의 머리를 잡는다...~ */
  IF ~~ THEN REPLY #50846 /* ~"당신의 해골을... 가져가라고? 하지만 그러면 당신은 죽을 텐데."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"어... 알겠소. 고맙소..."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"기다리시오... 다른 질문들이 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"그 일에 대해서는 나중에 얘기합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~메리는 고개를 좌우로 저으며, 갈라진 입술을 비틀어 슬픈 미소처럼 보이는 것을 짓는다. "쿠-킬? 너흐. 므므 어흘를러어디 더드." (죽여요? 아뇨. 나는 이미 죽었어요). 그는 두 손을 관자놀이에 가져다 댄 채 당신 대답을 기다린다. ~ */
  IF ~~ THEN REPLY #50851 /* ~"고맙소, 메리. 당신 해골을 로타에게 가져가도록 하겠소."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"아니오, 메리. 난 그럴 수가 없소. 다른 방법을 찾아보도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~메리가 고개를 끄덕인다. "유유 허프 어흐 킨드흐 허허트." (당신은 자상하군요).)~ */
  IF ~~ THEN REPLY #50855 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"안녕히 계시오, 메리."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~썩은 메리는 자신의 머리를 어깨로부터 떼어낸다. 그 때 나는 소리는 무척 듣기가 역겹다. 그녀의 썩은 몸은 당신에게 해골을 건네준 직후 붕괴한다. ~ */
  IF ~~ THEN REPLY #50858 /* ~머리를 치우고 떠난다.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~메리는 알현실 남쪽 끝에 있는 이중문을 가리킨다. "러흐브  히리러 노오오우. 뤄를 터흐크 어흐안 라아터어..." (지금은 여길 떠나세요. 나중에 다시 얘기해요.)~ */
  IF ~~ THEN REPLY #58913 /* ~떠난다.~ */ EXIT
END
