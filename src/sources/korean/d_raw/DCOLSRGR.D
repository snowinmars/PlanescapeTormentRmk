// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~키가 크고 호리호리하며, 창백하고 험상궂은 얼굴을 한 이 사내로부터는 그의 여위고 볼품없는 체격에도 불구하고 일종의 위엄 같은 것이 느껴진다. 그의 왼쪽 귀는 일부밖에 남지 않았으며, 남은 부분도 마치 베인 게 아니라 물어뜯긴 듯 상처가 엉망이다. 그의 쉴새 없이 움직이는 가는 눈은 매우 영리하고... 위험해 보인다. ~ */
  IF ~~ THEN REPLY #18195 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~그는 내뱉듯이 대답한다. "난 당신을 모르오." 그는 당신을 노려본다. "내게 뭘 원하는 거요? 내가 부하들을 불러 당신을 처리하기 전에 빨리 대답을 하는 게 좋을 거요." ~ */
  IF ~~ THEN REPLY #18198 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"아무 것도 아니오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~"그럼 꺼져. 다시 여기 들리고 싶은 충동을 느끼더라도 그냥 걸어서 지나치는 좋을 거요. 그렇지 않으면 내가 부하들을 시켜 더 이상 걷지 못하게 만들어 줄 테니."~ */
  IF ~~ THEN REPLY #18203 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~그는 당신을 비웃은 후 믿지 못하겠다는 표정으로 당신을 쳐다본다. "이보라고, 당신은 그 칼자국투성이의 시체같은 몸을 이 곳에 들어오기 전에 내가 누군지 알았어야 했어."~ */
  IF ~~ THEN REPLY #18205 /* ~"그럼 첫 번째는 뭐요?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"진정하시오. 내게는 아무런 악의도 없소."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"만약 계속 서 있고 싶으면 말투를 좀 부드럽게 바꾸는 게 좋을 거요."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"그렇다면 사과하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"난 방문자을 싫어하고 이방인도 혐오하지. 당신은 양쪽 다야." 그는 조롱하며 손가락으로 자신의 관자놀이를 두드린다. "나머지는 알아서 파악하라고."~ */
  IF ~~ THEN REPLY #18212 /* ~"진정하시오. 내게는 아무런 악의도 없소."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"만약 계속 서 있고 싶으면 말투를 좀 부드럽게 바꾸는 게 좋을 거요."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"그럼 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"그렇다면 사과하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"말을 하지 않겠다? 그것 참 재미있군. 자, 내가 널 조각내서 거리에 던져 버리기 전에 마지막으로 한 번 더 묻겠다. 대체 뭘 원하는 거지?"~ */
  IF ~~ THEN REPLY #18218 /* ~"만약 계속 서 있고 싶으면 말투를 좀 부드럽게 바꾸는 게 좋을 거요."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"아무 것도 아니오. 함부로 들어와 미안하오. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"허. 더 이상 당신과 할 말은 없군." 그는 약간의 미소를 띠며 당신을 똑바로 쳐다본다, 그러더니 소리를 지른다. "얘들아! 이 놈을 죽여!"~ */
  IF ~~ THEN REPLY #18223 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~그는 잠시 침묵한 후 고개를 끄덕인다. "그래? 예를 들어?"~ */
  IF ~~ THEN REPLY #18226 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"관두시오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~그는 눈알을 굴린다, 그리고 나서는 무슨 찬란한 광경이라도 보듯 양손을 들어 올린다. "문의 도시, 거리가 온통 황금과..." 그는 다시 진지한 태도로 돌아간다. "...시체로 뒤덮인. 당신은 여기까지 와서 내게 시길에 대해 물을 정도로 미친 것 같지는 않군... 대체 무슨 수작이지? 나랑 게임을 할 생각은 하지 마. 난 인내심이 별로 없으니까."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"실은 난 파로드란 사람을 찾고 있소."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"실은 내가 잃어버린 일지를 찾고 있소."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"다른 건 없소. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"다른 건 없소. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"그것에 대해서는 아는 바가 없소." 그는 눈살을 찌푸린 후 당신을 노려본다. "내가 알야할 할 이유라도 있소?"~ */
  IF ~~ THEN REPLY #18237 /* ~"아니오. 내게 시길에 대해 얘기해주시오."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"아니오. 또한 나는 파로드란 사람을 찾고 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"아니오. 안녕히 계시오."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"아니오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~방 안에는 갑자기 긴장이 감돈다. "묘한 질문이군. 왜 파로드에 대해 알고 싶어하는 거지?"~ */
  IF ~~ THEN REPLY #18242 /* ~"그는 내 물건을 훔쳤고, 나는 그것을 돌려받고자 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"그는 내 물건들을 가지고 있고 난 그것들을 돌려받아야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"그는 내가 알아야만 하는 뭔가를 알고 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"나는 그를 그냥 만나고 싶을 뿐이오."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"그는 내 친구요."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"그는 내 친구요."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"아무 것도 아니오, 정말이오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"흥! 말 같지 않은 소리는 집어치워!" 그는 눈을 좁게 뜨고 당신을 바라본다. "이유가 뭐지?"~ */
  IF ~~ THEN REPLY #18251 /* ~"그는 내 물건을 훔쳤고, 나는 그것을 돌려받고자 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"그는 내 물건들을 가지고 있고 난 그것들을 돌려받아야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"그는 내가 알아야만 하는 뭔가를 알고 있소."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"그는 내 친구요."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"그는 내 친구요."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"아무 것도 아니오, 정말이오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"그래? 예를 들어?"~ */
  IF ~~ THEN REPLY #18259 /* ~"예를 들자면 내 정체."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"아무 것도 아니오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"오?" 그는 히죽히죽 웃다가 사악한 미소를 짓는다. "그럼 당신이 그에게 네 메시지를 전해 줄 수 있겠군. 그는 갑자기 소리친다: "얘들아! 이 놈을 죽여!"~ */
  IF ~~ THEN REPLY #18270 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~말을 하려고 하자 머릿속에서 뭔가 이상한 느낌이 오고, 당신은 하려던 말을 멈춘다. 쉐어그레이브의 눈빛으로 볼 때 그와 파로드는 별로... 아니, 전혀 사이가 좋지 않은 듯하다.~ */
  IF ~~ THEN REPLY #18273 /* ~"그는 내 물건을 훔쳤고, 나는 그것을 돌려받고자 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"그는 내 물건들을 가지고 있고 난 그것들을 돌려받아야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"그는 내가 알아야만 하는 뭔가를 알고 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"그는 내 친구요."~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"아무 것도 아니오, 정말이오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~잠시 동안 거북한 침묵이 흐른 후 그가 입을 연다. "넌 미쳤군, 그리고 꼴을 보아하니 주변에 두기엔 너무 위험해. 빨리 내 앞에서 꺼져."~ */
  IF ~~ THEN REPLY #18280 /* ~"하지만 물어볼 것들이 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"그래? 흠... 흥미롭군." 그는 갑자기 소리친다: "얘들아! 이 놈을 죽여!"~ */
  IF ~~ THEN REPLY #18283 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~그는 잠시 입을 다문다, 그리고 나서 미소를 짓는다. "그는 산 자와 죽은 자를 가리지 않고 우리들 모두로부터 빼앗아 가기만 하지, 않 그렇소?" 그는 킬킬거린다. ~ */
  IF ~~ THEN REPLY #18286 /* ~"무슨 뜻이오?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"아마 그럴지도. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"아마 그럴지도. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"이 곳에서... 우리의 주된 소득원은 시체요. 알겠소?"~ */
  IF ~~ THEN REPLY #18290 /* ~"아니."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"당신은 수집자군."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"나와 내 부하들은 벌통에 널린 시체들을 모아서 더스티에게 팔아 돈을 좀 벌지. 이제는 이해하겠소?"~ */
  IF ~~ THEN REPLY #18293 /* ~"당신은 수집자군."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"그렇소. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"그렇소. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"그래, 맞소." 그는 뭔가를 생각하는 듯한 눈빛으로 당신을 쳐다본다. "자, 어느 특정한 시점에 존재하는 시체의 수는 유한하오, 따라서 나와 내 부하들이 모을 수 있는 시체의 수 역시 한정되어 있소. 만약 우리말고 다른 사람들도 시체를 수집한다면 그건 우리 주머니에 들어갈 돈이 그만큼 준다는 뜻이오."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"파로드도 시체를 가져가오?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"그래서..."~ */ JOURNAL #17089 /* ~파로드가 거의 무한한 듯한  시체의 공급처를 발견했다고 넝마주의 광장에 있는 어떤 사내가 내게 말해주었다. 그 역시 시체 수거를 생업으로 하는 탓에 화가 나 있었으며, 파로드가 어떤 방법으로 그런 일을 하는지 알고 싶어했다. ~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"알겠소. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"그렇소."~ */
  IF ~~ THEN REPLY #18302 /* ~"그래서..."~ */ JOURNAL #17089 /* ~파로드가 거의 무한한 듯한  시체의 공급처를 발견했다고 넝마주의 광장에 있는 어떤 사내가 내게 말해주었다. 그 역시 시체 수거를 생업으로 하는 탓에 화가 나 있었으며, 파로드가 어떤 방법으로 그런 일을 하는지 알고 싶어했다. ~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"흥미롭군. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"알겠소. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"문제는 그가 엄청난 양의 시체를 찾았다는 거요. 하지만 근래에 시길에서 대학살이 일어났다는 얘기는 들은 적이 없소." 그는 자신의 턱을 두드리며 눈살을 찌푸린다. "그래서 나는 그 시체들을 대체 어디서 가져오는 건지 알고 싶소."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"실은 이미 알고 있소."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"당신 원한다면 알아내 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"대가를 지불하겠다면 알아내 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"기묘하군. 하지만 그 얘기는 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"언젠가는 알게 될 날이 올 거요. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"답을 찾게 되기를 빌겠소. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~그는 당신의 대답에 화가 난 듯 경멸하는 표정으로 당신을 본다. "그럼 관둬. 내 부하들을 불러 당신을 쫓아내기 어서 꺼져."~ */
  IF ~~ THEN REPLY #18313 /* ~"하지만 물어볼 것들이 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"그래? 어떻게 그 일을 하겠다는 거지?"~ */
  IF ~~ THEN REPLY #18316 /* ~"내게 필요한 건 그가 어디 있는지 알아내는 일뿐이오.나머지는 내가 알아서 하겠소."~ */ JOURNAL #18449 /* ~나는 넝마주이 광장에서 어떤 사내를 만나 그를 위해 파로드의 거의 무한한 듯한 시체 공급원에 대하여 자세히 알아봐 주기로 합의하였고, 그는 대가로 내게 돈을 주기로 했다. 그는 또한 파로드를 만나려면 광장 북서쪽의 플랫폼을 따라가면 있는 문을 이용해야 한다고 말해주었다. 그 문은 그의 은신처로 통한다.~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~그는 자신의 왼쪽 귓불의 잔해를 잡아당기며 당신을 잠시 쳐다본다. "좋소... 당신이 원하는 가격을 말하시오."~ */
  IF ~~ THEN REPLY #18318 /* ~"동전 삼백 닢."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"동전 이백 닢."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~나는 파로드가 어떻게 그토록 많은 시체를 수거할 수 있는지 알아낸다면 사례를 하겠다는 사내를 넝마주이 광장에서 만났다. ~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"동전 백 닢."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~나는 파로드가 어떻게 그토록 많은 시체를 수거할 수 있는지 알아낸다면 사례를 하겠다는 사내를 넝마주이 광장에서 만났다. ~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"이 일에 대해선 나중에 얘기합시다. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~그는 코웃음을 친다. "그 정도로 절박하게 알고 싶은 건 아니야. 내 부하들을 불러 당신을 쫓아내기 어서 꺼져."~ */
  IF ~~ THEN REPLY #18324 /* ~"기다리시오! 그럼, 동전 백 닢."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~나는 파로드가 어떻게 그토록 많은 시체를 수거할 수 있는지 알아낸다면 사례를 하겠다는 사내를 넝마주이 광장에서 만났다. ~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"하지만 물어볼 것들이 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~그는 잠시 생각한 후 마침내 고개를 끄덕인다. "좋소. 비밀을 알아내면 이 곳으로 돌아오시오, 그 대가로 돈을 지불할 테니. 파로드가 어디 있는지 알아야 하오?"~ */
  IF ~~ THEN REPLY #18328 /* ~"알겠소."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"싫소."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"좋소. 파로드가 어디 있는지 알아야 하오?"~ */
  IF ~~ THEN REPLY #18331 /* ~"그렇소."~ */ JOURNAL #18451 /* ~그는 파로드를 만나려면 광장 북서쪽의 플랫폼을 따라가면 있는 문을 이용해야 한다고 말해주었다. 그 문은 그의 은신처로 통한다.~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"아니오."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"승강대로 올라가 북서쪽으로 향하시오, 그러면 파로드의 소굴로 통하는 문이 나올 거요. 들어가서 정보를 캐내는 건 당신 몫이오. 그리고 누가 묻거든 나에 대해서는 일체 발설하지 마시오. 우리가 이런 얘기를 나눈 적이 없는 거요, 내 말뜻을 알겠소?" ~ */
  IF ~~ THEN REPLY #18334 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"좋소. 그리고 누가 묻거든 나에 대해서는 일체 발설하지 마시오. 우리가 이런 얘기를 나눈 적이 없는 거요, 내 말뜻을 알겠소?" ~ */
  IF ~~ THEN REPLY #18337 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"당신은 똑똑한 사람치고는 말귀가 어둡군."~ */
  IF ~~ THEN REPLY #18340 /* ~"어..."~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~그는 당신을 다시 보게 된 것을 별로 즐겁지 않은 듯하다. "난 너로부터 한 마디도 더 듣고 싶지 않아. 내 부하들을 불러 널 쫓아내기 어서 꺼져."~ */
  IF ~~ THEN REPLY #18343 /* ~"하지만 물어볼 것들이 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~그는 가볍게 고개를 끄덕여 인사한다. "내가 부탁한 일은 했소? 그가 어떤 일을 꾸미고 있는지 알아냈소?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"그렇소. 파로드의 시체의 공급처는 시길 지하의 지하 묘지요. 그는 더스트맨이 이미 매장한 시체를 그들에게 되팔아 많은 돈을 벌고 있소."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~나는 내가 파로드의 비밀을 밝혀주기로 약속한 사내에게 그가 원하는 정보를 알려주고 그에 따른 보수를 받았다. ~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"그렇소. 파로드의 시체의 공급처는 시길 지하의 지하 묘지요. 그는 더스트맨이 이미 매장한 시체를 그들에게 되팔아 많은 돈을 벌고 있소."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~나는 내가 파로드의 비밀을 밝혀주기로 약속한 사내에게 그가 원하는 정보를 알려주고 그에 따른 보수를 받았다. ~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~거짓말: "파로드는 시체를 찾는 데 있어 운이 좋을 뿐이오. 그뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"아직 아니오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"가서 내가 원하는 걸 알아 오시오... 그리고 그 전에는 돌아올 생각도 하지 마시오. 내 부하들을 불러 당신을 쫓아내기 어서 가시오."~ */
  IF ~~ THEN REPLY #18351 /* ~"하지만 물어볼 것들이 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~그의 눈은 놀라움으로 휘둥그레진다. 그리고 그는 소리를 지르기 시작한다: "대체 어떻게 그런 곳을 찾아낸 거야?! 그, 염병할 후레자식 같으니!"~ */
  IF ~~ THEN REPLY #18354 /* ~"그의 '은신처'는 실은 넝마주이 광장 지하에 매장된 도시 구역으로 연결되는 동굴이오. 그 곳에는 지하 묘지로 내려갈 수 있는 관문이 있소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"만약 그 방법을 알고 싶으면 돈을 추가로 내야 할 것이오."~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"만약 그 방법을 알고 싶으면 돈을 추가로 내야 할 것이오."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"놈은 너무나도 운이 좋군!"~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"실은 그의 행운도 바닥난 모양이오. 그는 죽었소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"이제 그의 비밀이 탄로났으니 얼마나 오래 버틸 수가 있겠소?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"뭐?!" 그는 당신이 가져온 소식의 의미를 천천히 이해하기 시작하는 것 같다. "레이디가 오늘은 내게 축복을 내렸군! 정말이야! 자, 여기 당신 돈이 있소. 즐기시오."~ */
  IF ~~ THEN REPLY #18361 /* ~"고맙소. 질문할 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"에? 뭐라고? 미안하지만 지금 내겐 시간이 없소. 지금은 당신 갈 길이나 가고 나중에 다시 오시오. 난 계획을 꾸며야 하니까."~ */
  IF ~~ THEN REPLY #18364 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"좋소, 약속한 보수에 50%를 더 얹어 주겠소. 합계 동전 300 닢이오. 좋소?"~ */
  IF ~~ THEN REPLY #18366 /* ~"좋소. 그의 '은신처'는 실은 넝마주이 광장 지하에 매장된 도시 구역으로 연결되는 동굴이오. 그 곳에는 지하 묘지로 내려갈 수 있는 관문이 있소."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 준 사내에게 시길 지하의 지하 묘지로 들어가는 방법을 알려주고 추가로 50%의 사례를 받았다. ~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"그 두 배를 주겠다면 거래 성립이오."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"아니, 관두시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"좋소, 약속한 보수에 50%를 더 얹어 주겠소. 합계 동전 150 닢이오. 좋소?"~ */
  IF ~~ THEN REPLY #18370 /* ~"좋소. 그의 '은신처'는 실은 넝마주이 광장 지하에 매장된 도시 구역으로 연결되는 동굴이오. 그 곳에는 지하 묘지로 내려갈 수 있는 관문이 있소."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 준 사내에게 시길 지하의 지하 묘지로 들어가는 방법을 알려주고 추가로 50%의 사례를 받았다. ~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"그 두 배를 주겠다면 거래 성립이오."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"아니, 관두시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"절반 이상은 줄 수가 없군. 다음 번에 말을 할 때는 *매우* 조심하는 게 좋을 거야."~ */
  IF ~~ THEN REPLY #18374 /* ~"좋소. 그의 '은신처'는 실은 넝마주이 광장 지하에 매장된 도시 구역으로 연결되는 동굴이오. 그 곳에는 지하 묘지로 내려갈 수 있는 관문이 있소."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 준 사내에게 시길 지하의 지하 묘지로 들어가는 방법을 알려주고 추가로 50%의 사례를 받았다. ~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"아니, 관두시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"절반 이상은 줄 수가 없군. 다음 번에 말을 할 때는 *매우* 조심하는 게 좋을 거야."~ */
  IF ~~ THEN REPLY #18377 /* ~"좋소. 그의 '은신처'는 실은 넝마주이 광장 지하에 매장된 도시 구역으로 연결되는 동굴이오. 그 곳에는 지하 묘지로 내려갈 수 있는 관문이 있소."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 준 사내에게 시길 지하의 지하 묘지로 들어가는 방법을 알려주고 추가로 50%의 사례를 받았다. ~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"아니, 관두시오."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"됐어. 네놈한테는 이제 질렸어." 그는 갑자기 소리를 지른다. "얘들아! 들어와서 이 놈을 죽여!"~ */
  IF ~~ THEN REPLY #18380 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"흠. 헤헤헤!" 그는 곧 즐거운 듯 웃는다. "당신 말이 옳아, 옳고 말고! 자, 여기 당신 돈이 있소. 즐기시오."~ */
  IF ~~ THEN REPLY #18383 /* ~"고맙소. 질문할 것들이 좀 있소."~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"못 믿겠는데. 그 많은 시체가 다 어디서 오는 거지?"~ */
  IF ~~ THEN REPLY #18386 /* ~"모르겠소."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"다른 차원으로부터?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"여기서 나가, 이 쓸모없는 놈 같으니. 나와 너의 거래는 이제 끝났다. 내가 부하들을 시켜 널 요절내기 전에 어서 꺼져."~ */
  IF ~~ THEN REPLY #18389 /* ~"하지만 물어볼 것들이 있소..."~ */ JOURNAL #18462 /* ~나는  파로드의 시체 공급원에 대한 정보의 대가로 나에게 돈을 준 사내에게 거짓말을 하려고 했다. 그는 몹시 화를 냈으며 아마 다시는 나와 얘기를 하지 않을 것이다. ~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~나는  파로드의 시체 공급원에 대한 정보의 대가로 나에게 돈을 준 사내에게 거짓말을 하려고 했다. 그는 몹시 화를 냈으며 아마 다시는 나와 얘기를 하지 않을 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~그는 자신의 왼쪽 귓불의 잔해를 잡아당기며 생각을 한다. "아마 그럴지도... 하지만 어떻게? 어떤 차원?"~ */
  IF ~~ THEN REPLY #18392 /* ~"모르겠소."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"아마 그레이 웨이스트의 전장으로부터?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~나는  파로드의 시체 공급원에 대한 정보의 대가로 나에게 돈을 준 사내에게 거짓말을 했다. 그는 의심을 하기는 했으나 그래도 돈은 지불했다. 하지만 그가 향후 날 환영할 것 같지는 않다. ~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"아마 그레이 웨이스트의 전장으로부터?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~나는  파로드의 시체 공급원에 대한 정보의 대가로 나에게 돈을 준 사내에게 거짓말을 했다. 그는 의심을 하기는 했으나 그래도 돈은 지불했다. 하지만 그가 향후 날 환영할 것 같지는 않다. ~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"흠." 그는 의심스럽다는 눈초리로 당신을 쳐다본다. "여기 당신 돈이 있소. 내가 부하들을 시켜 당신을 손봐 주겠다는 생각을 하기 전에 당신 여기서 나가라고."~ */
  IF ~~ THEN REPLY #18396 /* ~"하지만 물어볼 것들이 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"흠. 헤. 좋소. 성공하면 당신의 수고에 대한 대가로 동전 백 닢도 주지. 승강대로 올라가 북서쪽으로 향하시오, 그러면 파로드의 소굴로 통하는 문이 나올 거요. 들어가서 정보를 캐내는 건 당신 몫이오. 그리고 누가 묻거든 나에 대해서는 일체 발설하지 마시오. 우리가 이런 얘기를 나눈 적이 없는 거요, 내 말뜻을 알겠소?" ~ */
  IF ~~ THEN REPLY #18399 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"물론이오. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"물론이오. 안녕히 계시오."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~그는 당신이 돌아온 데 대해 약간 놀란 듯하다. "허! 다시 보게 될 줄은 몰랐는 걸. 내게 뭘 원하오?"~ */
  IF ~~ THEN REPLY #18403 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"아무 것도 아니오. 함부로 들어와 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~그는 당신이 다시 돌아온 데 대해 약간 놀란 듯하다. "미안하지만 지금 내겐 시간이 없소. 지금은 당신 갈 길이나 가고 나중에 다시 오시오. 난 계획을 꾸며야 하니까."~ */
  IF ~~ THEN REPLY #18407 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"그럼 비밀에 대한 대가로 동전 백 닢, 좋소?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"그 세 배를 주겠다면 거래 성립이오."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"그 두 배를 주겠다면 거래 성립이오."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"좋소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"좋소. 동전 이백 닢. 어떻소?"~ */
  IF ~~ THEN REPLY #18413 /* ~"파로드의 시체의 공급처는 시길 지하의 지하 묘지요. 그는 더스트맨이 이미 매장한 시체를 그들에게 되팔아 많은 돈을 벌고 있소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~넝마주이 광장에 있는 사내는 파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 지불하였다.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~그는 코웃음을 친다. "그 정도로 절박하게 알고 싶은 건 아니야. 내 부하들을 불러 당신을 쫓아내기 어서 꺼져."~ */
  IF ~~ THEN REPLY #18415 /* ~"기다리시오! 그럼, 동전 백 닢."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~떠난다.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"좋소. 동전 백 닢. 어떻소?"~ */
  IF ~~ THEN REPLY #18419 /* ~"파로드의 시체의 공급처는 시길 지하의 지하 묘지요. 그는 더스트맨이 이미 매장한 시체를 그들에게 되팔아 많은 돈을 벌고 있소."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~넝마주이 광장에 있는 사내는 파로드의 거의 무한한 시체 공급원에 대한 정보의 대가로 내게 돈을 지불하였다.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~키가 크고 호리호리하며, 창백하고 험상궂은 얼굴을 한 이 사내로부터는 그의 여위고 볼품없는 체격에도 불구하고 일종의 위엄 같은 것이 느껴진다. 그의 왼쪽 귀는 일부밖에 남지 않았으며, 남은 부분도 마치 베인 게 아니라 물어뜯긴 듯 상처가 엉망이다. 그의 쉴새 없이 움직이는 가는 눈은 매우 영리하고... 위험해 보인다. ~ */
  IF ~~ THEN REPLY #18421 /* ~"당신이 쉐어그레이브요?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~그는 내뱉듯이 대답한다. "난 당신을 모르오." 그는 당신을 노려본다. "당신은 누구길래 '쉐어그레이브'란 사람에 대해 묻는 거요?"~ */
  IF ~~ THEN REPLY #18424 /* ~"곰보란 사람이 내게 쉐어그레이브에 대해 얘기해주었소. 내가 듣기로 그는 파로드란 자의 소재를 알고 있다고 하오."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"아무도 아니오. 함부로 들어와 미안하오. 안녕히 계시오."~ */ EXIT
END
