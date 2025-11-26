// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~이 약간 여성적인 용모의, 잘 차려 입은 청년은 지나가는 사람들을 경멸적으로 조소하고 있다. 그의 손은 정교하게 만든 사브르의, 보석을 박은 손잡이에 가 있다. 비단으로 옷을 입고 송아지 가죽으로 만든 부츠를 신은 그는 이 곳에는 정말 어울리지 않는다. ~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"안녕하시오..."~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~그를 그냥 지나친다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~그의 섬세한 용모와 앵두같은 입술은 아름다운 여인을 연상케 한다, 하지만 그의 목소리는 부드럽기는 하나 분명히 남성의 것이다. "이방인이라. 내 칼에 도전하기 위해 온 또 다른 자인가?" 그는 역겹다는 듯 침을 뱉는다.~ */
  IF ~~ THEN REPLY #15354 /* ~"Non, mais 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"무엇 때문이오?"~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"무엇 때문이오?"~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"그래, 하지만 결과에 돈을 걸겠소?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"그래, 하지만 결과에 돈을 걸겠소?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"그럼 꺼지시오. 내게 당신같은 자를 상대할 시간은 없소." 그는 떠나라고 손짓을 한다. ~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"그럼 당신은 날 너무 얕잡아 보았소, '나으리.'" 내 질문에 대답할 거요, 안 할 거요?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"시간을 만드시오. 당신은 내 질문에 대답해야 할 거요."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"시간을 만드시오. 당신은 내 질문에 대답해야 할 거요."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"그럼 당신 시간을 낭비하지 않도록 하지, 미천한 똥개야.~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~청년의 눈은 불타는 얼음처럼 번뜩인다. 그의 입술은 냉혹한 미소를 짓는다. "다시 말해 봐라, 이 덩치만 큰 야만인아. 내게 뭐라고 했지?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"내 말이 안들리나, 게이."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"내 말이 안들리나, 게이."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~그는 눈에 제대로 보이지 않을 정도의 빠른 속도로 사브르를 뽑는다. 그는 입술을 핥으며 부드럽게 웃는다. "가능한 한 내 부츠에는 피를 흘리지 말도록, 알겠나?" 그의 뒤에서 추악하게 생긴 자가 탐욕스러운 눈으로 당신을 지켜보고 있다...~ */
  IF ~~ THEN REPLY #15368 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~도망친다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"아니, 아니, 아니, 그렇게 간단하지가 아니야." 그는 눈을 감고 후회를 하는 척하며 고개를 젓는다. "넌 여기서 시체나 겁쟁이가 되어 떠날 수밖에 없어. 네게 남은 결정은 둘 중 하나를 택하는 것뿐이다."~ */
  IF ~~ THEN REPLY #15370 /* ~"세 번째 선택지는 없소?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"여기 있는 시체라곤 내가 지금 쳐다보고 있는 것밖에 없는데."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~돌아서서 떠난다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~그는 눈에 제대로 보이지 않을 정도의 빠른 속도로 사브르를 뽑는다. "너는 내 눈 속에서 네 자신을 볼 뿐이다, 짐승. 가능한 한 내 부츠에는 피를 흘리지 말도록, 알겠나?" 그의 뒤에서 추악하게 생긴 자가 탐욕스러운 눈으로 당신을 지켜보고 있다...~ */
  IF ~~ THEN REPLY #15373 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~도망친다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~당신이 떠나려 하자 그가 말을 한다: "내가 생각했던 대로군. 겁쟁이 같으니." 누군가 그의 뒤에서 실망한 듯 탄식하는 소리가 희미하게나마 들린다. ~ */
  IF ~~ THEN REPLY #15375 /* ~돌아서서 그를 공격한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~그가 한 말을 무시하고 떠난다.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~그가 한 말을 무시하고 떠난다.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~그는 잠시 놀란 듯하다, 그리고 나서 그는 고개를 끄덕인다. "물론 있소. 흠... 당신이 내게 용서를 구하고 내 기분이 좋기를 신들에게 기도나 할 수도 있겠지."~ */
  IF ~~ THEN REPLY #15378 /* ~"절대로 그럴 순 없지. 우린 싸울 것이오."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"그럼 용서를 빌겠소. 내가 실언을 했소."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"그건 하지 않겠소. 안녕히 계시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~그는 얼굴을 찡그리고 눈알을 희번덕거린다. "좋소, 난 용-" 그는 갑자기 멈추고 혼란스러워 한다, 그리고 손을 관자놀이에 갖다 댄다.~ */
  IF ~~ THEN REPLY #15381 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"괜찮소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~그가 방심하고 있을 때 공격한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~그의 주의가 다른 데로 돌아간 틈을 타 떠난다. ~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"아... 에... 아니, 용서란 있을 수 없어! 그는 고개를 젓는다, 그리고 그의 표정은 혼란스러움에서 단호한 결의로 바뀐다. "도망치든지 아니면 죽어라!"~ */
  IF ~~ THEN REPLY #15385 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~떠난다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~그는 당신이 떠나자 당신을 항해 소리친다. "돌아와라, 이 뱅충맞은 쓰레기야!"~ */
  IF ~~ THEN REPLY #15387 /* ~돌아서서 그와 대면한다. ~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~계속 걷는다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~당신을 그를 향해 고개를 돌리자 그는 빠른 속도로 사브르를 뽑는다. "좋아. 그럼 나와 싸울 생각이군. 가능한 한 내 부츠에는 피를 흘리지 말도록, 알겠나?" 그의 뒤에서 추악하게 생긴 자가 탐욕스러운 눈으로 당신을 지켜보고 있다...~ */
  IF ~~ THEN REPLY #15389 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~도망친다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~그는 신랄하게 웃는다. "넌 날 겁줄 수가 없다, 짐승. 시길의 하수구로 흘러가는 신세가 되기 전에 어서 도망치는 것이 좋을 것이다. ~ */
  IF ~~ THEN REPLY #15391 /* ~진실: "내가 당신의 그 예쁘장한 칼을 두 동강내기 전에 당신에게 마지막으로 말할 기회를 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~허풍: "내가 당신의 그 예쁘장한 칼을 두 동강내기 전에 당신에게 마지막으로 말할 기회를 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~떠난다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"그럼 그랬나? 흠... 당신의 건방짐은 흥미롭군, 벌통 주민. 내게 뭘 물어보고 싶소?"~ */
  IF ~~ THEN REPLY #15394 /* ~"당신은 누구요?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"나는 결투를 하고 싶소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"나는 결투를 하고 싶소."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"난 사람의 이름 따위에는 관심이 없소. 설령 파로드란 자를 만났더라도 난 기억을 못할 거요."~ */
  IF ~~ THEN REPLY #15401 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"그럼 안녕히 계시오."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"그럼 안녕히 계시오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"당신이 글을 *읽을* 줄 안단 말이오?" 그는 혼자서 킬킬거린다. "그래... 그걸 여기서 잃어버렸소? 도둑질을 당한 것이 틀림없겠군. 이 곳의 변질자들이 이미 불쏘시개로 썼을 테니 그것에 대해선 잊는 게 좋을 거요. 이제와서는 설령 당신이 그것을 발견한다 하더라도 이미 쓸모없게 되어버렸을 것이오."~ */
  IF ~~ THEN REPLY #15405 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"그럼 안녕히 계시오."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"그럼 안녕히 계시오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"나는 에리안-아드 가문의 아디조엘이오."~ */
  IF ~~ THEN REPLY #15409 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"나중에 다시 얘기합시다, 아디조엘. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"나중에 다시 얘기합시다, 아디조엘. 안녕히 계시오."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"나중에 다시 얘기합시다, 아디조엘. 안녕히 계시오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~그는 사악하게 웃는다. 그의 이빨은 고르고 백설처럼 하얗다, 하지만 차라리 칼처럼 날카로운 편이 나을 것 같다. "아, 이것저것. 내 실력을 시험하며 말썽거리를 찾고 있소.. 벌통 유람을 하고 있는 셈이오."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"내 생각에 나는 당신이 솜씨를 시험해볼 수 있는 좋은 상대가 될 것 같소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"내 생각에 나는 당신이 솜씨를 시험해볼 수 있는 좋은 상대가 될 것 같소."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"그럼 당신이 말썽거리를 찾기를 바라겠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"그럼 당신이 말썽거리를 찾기를 바라겠소. 안녕히 계시오."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"그럼 당신이 말썽거리를 찾기를 바라겠소. 안녕히 계시오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~청년의 눈은 불타는 얼음처럼 번뜩인다. 그의 입술은 냉혹한 미소를 짓는다. "좋아..." 그는 눈에 제대로 보이지 않을 정도의 빠른 속도로 사브르를 뽑는다. "가능한 한 내 부츠에는 피를 흘리지 말도록, 알겠나?" 그의 뒤에서 추악하게 생긴 자가 탐욕스러운 눈으로 당신을 지켜보고 있다...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"기다리시오..."~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~도망친다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~그의 눈이 빛난다. "좋소, 정말 멋진-" 그는 갑자기 멈추고 혼란스러워 한다, 그리고 손을 관자놀이에 갖다 댄다.~ */
  IF ~~ THEN REPLY #15422 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"괜찮소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~그가 방심하고 있을 때 공격한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~그의 주의가 다른 데로 돌아간 틈을 타 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"어... 아... 아니, 내기는 따위는 없어! 이기면 살고 지면 죽는 거지. 아주 간단해. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"좋소. 싸웁시다."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"좋소. 싸웁시다."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"좋소, 좋아. 계속하시오."~ */
  IF ~~ THEN REPLY #15430 /* ~"당신은 누구요?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"나는 결투를 하고 싶소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"나는 결투를 하고 싶소."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~아디조엘은 당신을 보자 고개를 끄덕인다. "아, 다시 왔군. 이번에는 싸우러 왔소, 아니면 또 날 질문들로 귀찮게 할 생각이오?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"나는 싸우기 위해 여기 왔소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"나는 싸우기 위해 여기 왔소."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"질문하고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"질문하고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"어느 쪽도 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"어느 쪽도 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~그는 정중하게 말한다. "안녕히 가시오. 만약 내게 도전할 생각이 아니라면 다시는 날 귀찮게 하지 말기를 바라오."~ */
  IF ~~ THEN REPLY #15444 /* ~떠난다.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~당신이 돌아서서 떠나려 하자 아디조엘은 경멸스럽다는 어조로 말한다. "나는 지난번 우리가 얘기를 했을 때 분명히 말했소. 내게 도전할 생각이 아니라면 다시는 날 귀찮게 하지 말라고. 만약 우리가 다시 만나게 되면 난 그것을 나에 대한 도전으로 간주하고, 당신이 원하든 말든 당신과 결투할 것이오."~ */
  IF ~~ THEN REPLY #15445 /* ~떠난다.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~당신은 아디조엘이 자신에게 도전할 생각이 없다면 다시는 자기를 귀찮게 하지 말라고 한 일이 생각난다.~ */
  IF ~~ THEN REPLY #15446 /* ~어쨌든 그에게 말을 건다.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~당신은 아디조엘이 만약 자기에게 다시 접근한다면, 자신에 대한 도전으로 간주하고 보자마자 공격하겠다고 한 일이 생각난다.~ */
  IF ~~ THEN REPLY #15448 /* ~어쨌든 그에게 말을 건다.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"하! 겁쟁이 야만인이 돌아왔군!"~ */
  IF ~~ THEN REPLY #15450 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"개가 짖는 소리가 들리는군. 내가 싸우러 왔다, 이 수두에 걸린 똥개야."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"개가 짖는 소리가 들리는군. 내가 싸우러 왔다, 이 수두에 걸린 똥개야."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~돌아서서 떠난다.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~그는 조소하며 고개를 돌린다. "나는 너처럼 뼈대도 없는 놈하고는 말하지 않겠다. 나와 싸우던지 아니면 떠나라."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"그럼 당신과 싸우겠소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"그럼 당신과 싸우겠소."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"난 당신이 날 더 이상 귀찮게 하는 것을 방관하지 않겠소, 비겁자. 내게 도전할 생각이 아니라면 다시는 내게 오지 마시오. 만약 우리가 다시 만나게 되면 난 그것을 나에 대한 도전으로 간주하고, 당신이 원하든 말든 당신과 결투할 것이오."~ */
  IF ~~ THEN REPLY #15457 /* ~떠난다.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~아디조엘은 순수하게 놀란 듯하다. "뭐, 또 왔어? 어디서 기어나 왔지, 짐승? 난 당신을 해치웠다고 생각했는데."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"그렇지 않았던 모양이오. 나는 다시 한 번 싸우러 왔소."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"그렇지 않았던 모양이오. 나는 다시 한 번 싸우러 왔소."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"아니, 그러지 않았소. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"당신이 틀렸소. 안녕히 계시오."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~청년은 깜짝 놀라 모트를 멍하니 바라본다. "대체 *당신*은 누구요?"~ */
  IF ~~ THEN REPLY #15462 /* ~"그를 그냥 무시하시오, 그는 아무런 해도 끼치지 않으니까."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~모트가 말을 하도록 허락한다.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~그는 침을 튀기면서 으르렁거릴 듯 입을 벌린다. "악!" 그는 번개처럼 칼을 뽑는다. 그의 얼굴은 분노로 검푸른 색이 되었다. "그만 됐어! 난 만족을 원해!"~ */
  IF ~~ THEN REPLY #15464 /* ~"나는 당신에게 내 동료를 용서해 달라고 부탁하고 싶소."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"좋아, 모트. 그와 결투할 건가?~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"좋소... 하지만 당신은 우리 양쪽 모두와 싸워야 할 거요."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"좋아! 그럼 너희 둘 다 죽을 거다!" 그가 공격할 준비를 할 때 그의 뒤에서 추악하게 생긴 자가 탐욕스러운 눈으로 당신을 지켜보고 있다...~ */
  IF ~~ THEN REPLY #15467 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~도망친다.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"뭐?" 청년은 믿지 못하겠다는 듯 눈을 가늘게 뜨고 모트를 바라본다. "그건 정말 *별난* 미미르군."~ */
  IF ~~ THEN REPLY #15469 /* ~"미미르?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"그의 실수를 용서해 줄 수 있겠소?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"우린 싸울 거요... 하지만 당신은 우리 양쪽 모두를 상대해야 할 거요."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"닥쳐, 이 입만 산 얼간이야!" 그는 자신을 진정시키고 사브르를 칼집에 넣는다. "너희들 둘에게 말하겠다. 싸우든지 아니면 도망쳐라. 그 이외는 용납할 수 없다." 그가 분노를 억제하고 있기는 하나, 그의 눈은 냉혹한 증오로 번뜩이고 있다. ~ */
  IF ~~ THEN REPLY #15472 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~돌아서서 떠난다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"거기 너, 그 불쌍한 자를 그냥 내버려 둬라. 그는 네가 괴롭히지 않아도 이미 충분히 비참하다고 생각하지 않는가?"~ */
  IF ~~ THEN REPLY #15474 /* ~"당신과는 상관없는 일이오."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"입조심하시오, 아니면 다음은 당신 차례요."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"그건 내 맘이다. 그 불쌍한 자를 그냥 내버려 둬라, 아니면 내가 널 가만히 두지 않겠다."~ */
  IF ~~ THEN REPLY #15477 /* ~"우선 왜 그것이 당신에게 중요한지부터 말해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"당신이 날 그냥 내버려 두지 않겠다고? 어디 한 번 해보시지."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"그건... 그건..." 그는 갑자기 멈추고 혼란스러워 한다, 그리고 손을 관자놀이에 갖다 댄다. 그는 멍하니 있다. ~ */
  IF ~~ THEN REPLY #15480 /* ~"괜찮소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~기다린다.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~그의 주의가 다른 데로 돌아간 틈을 타 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~그는 혼란 상태에서 벗어난다. "그건 네가 상관할 바가 아니다. 난 이미 최종 경고를 했다. 당장 나와 싸우던지 아니면 꺼져라."~ */
  IF ~~ THEN REPLY #15483 /* ~"그건 내가 해석하기 나름이오. 자, 말해주시오."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~"우린 싸울 거요."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~"우린 싸울 거요."~ */ EXTERN ~DMORTE~ 169
END
