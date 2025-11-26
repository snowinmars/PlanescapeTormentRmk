// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~이 아름다운 아가씨는 윤기 있는 구리색의 피부를 지니고 있다. 황금색 버클로 아슬아슬하게 붙들어 맨 반투명의 흰색 드레스는 그녀의 맵시 있는 몸매를 조심스럽게 감싸고 있다.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~여자는 고개를 끄덕이고 잠시 미소를 짓는다. 감미로운 향수를 뿌린 그녀의 머리칼의 향기가 당신 콧구멍을 찌른다. ~ */
  IF ~~ THEN REPLY #38272 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~그녀는 고개를 끄덕인다. ~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"당신 이름이 '에코'요?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~나는 "침묵하는" 창녀의 이름이 '에코'라는 것을 확인했다.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"왜 당신은 의사소통을 할 수 없는지 물어봐도 괜찮겠소?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"당신은 자신의 목소리를 되찾을 방법에 대해 혹시 짐작이라도 가시오?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 짐작이 가시오?"~ */ JOURNAL #66727 /* ~창녀들 중 하나가 내게 네니에게 혹시 누가 비비안의 개인 향기를 가겨갔는가에 대해 아는 바가 없는지 물어보라고 권했다. 네니는 항상 돌아다니며 다른 사람들이 무슨 짓을 하는지 지켜보는 것으로 널리 알려진 듯하다. ~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 짐작이 가시오?" ~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 짐작이 가시오?"~ */ JOURNAL #66728 /* ~창녀들 중 하나가 내게 네니에게 혹시 마릿사의 진홍색 베일을 어디서 본 적이 없는지 물어보라고 권했다. 네니는 항상 돌아다니며 다른 사람들이 무슨 짓을 하는지 지켜보는 것으로 널리 알려진 듯하다.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~그녀는 미소를 지으며 인사한다, 하지만 아무런 대답도 하지 않는다. ~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"당신 이름이 '에코'요?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~나는 "침묵하는" 창녀의 이름이 '에코'라는 것을 확인했다.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"흠... 질문할 것이 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~그녀는 고개를 젓는다, 그리고 당신을 보며 슬픈 미소를 짓는다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~매음굴에서 만난 창녀들 중 하나는 어떤 이유에선지 말할 수 있는 능력을 잃었다. 그녀는 판토마임이나 글로도 표현을 할 수 없거나 하지 않는 듯하다. 그녀가 다시 말할 수 있을 때까지 나는 그녀에게 질문을 할 수가 없다...~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"그러면 글로 쓰거나 팬터마임을 할 수는 없소?"~ */ JOURNAL #66704 /* ~매음굴에서 만난 창녀들 중 하나는 어떤 이유에선지 말할 수 있는 능력을 잃었다. 그녀는 판토마임이나 글로도 표현을 할 수 없거나 하지 않는 듯하다. 그녀가 다시 말할 수 있을 때까지 나는 그녀에게 질문을 할 수가 없다...~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~그녀는 당신을 바라보면서 한쪽 눈썹을 치켜 올린다.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~그녀는 기쁜 듯 웃으며 고개를 끄덕인다. ~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~맹세: "나는 당신에게 목소리를 되찾아 줄 방법을 반드시 알아내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"나는 당신에게 목소리를 되돌려 줄 방법을 찾아보도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"대가를 지불하겠다면 내가 당신 목소리를 되찾아 줄 방법을 찾아볼 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~그녀는 고개를 저으며 입을 삐죽거린다.~ */
  IF ~~ THEN REPLY #38308 /* ~"왜 당신은 의사소통을 할 수 없는지 물어봐도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~그녀는 눈을 반짝이며 미소를 짓는다. 그녀는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #38311 /* ~"뭐? 당신은 그녀에 대해 어떤 것을 아시오?"~ */ JOURNAL #66724 /* ~침묵하는 창녀는 래벌 퍼즐웰에 대해 뭔가 알고 있는 것 같다. 하지만 그녀는 의사 소통을 할 수 없기 때문에 그것이 무엇인지 내게 말해줄 수가 없다. ~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~그녀는 그냥 당신을 쳐다본다.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"왜 당신은 의사소통을 할 수 없는지 물어봐도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~그녀는 한숨을 쉬고 고개를 끄덕인다. ~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"당신은 실연 때문에 침묵하는 거요?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"당신은 말을 하면 다원 우주를 파괴할 단어를 알고 있소?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"당신은 마음의 상처를 입었소? 그게 당신이 말을 못하는 이유요?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"당신의 목소리가 타인을 죽게 하거나 불행을 가져온 적이 있소?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"어떤 이유 때문에 다시는 말을 하지 않겠다고 맹세라도 했소?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"당신은 목소리를 도둑맞았소?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~돌로라가 내게 에코에 대해 해준 얘기는 옳은 것 같다. 그녀는 목소리를 도난당한 탓에 말을 할 수가 없다. ~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"다른 사안에 대해 물어봅시다..."~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~그녀는 상냥하게 미소짓는다, 그리고 고개를 젓는다.~ */
  IF ~~ THEN REPLY #38323 /* ~"그럼 다른 것에 대해 질문해도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~그녀는 놀라서 눈이 휘둥그레진다... 그리고 그녀는 눈을 희번덕거리고 고개를 저으면서 당신에게 환한 미소를 짓는다. ~ */
  IF ~~ THEN REPLY #38326 /* ~"그럼 다른 것에 대해 질문해도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~그녀는 이상하다는 표정으로 당신을 보며 천천히 고개를 젓는다...~ */
  IF ~~ THEN REPLY #38329 /* ~"그럼 다른 것에 대해 질문해도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~이 말을 듣자 그녀는 잠시 멈추고 입을 연다, 그리고 얼굴을 찌푸린다. 잠시 후, 그녀는 고개를 젓는다.~ */
  IF ~~ THEN REPLY #38332 /* ~"그럼 다른 것에 대해 질문해도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~그녀는 얼굴을 찡그리며 고개를 젓는다.~ */
  IF ~~ THEN REPLY #38335 /* ~"그럼 다른 것에 대해 질문해도 괜찮겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~그녀는 힘차게 고개를 끄덕이며, 손뼉을 치고 당신에게 미소짓는다. ~ */
  IF ~~ THEN REPLY #38338 /* ~"당신은 자신의 목소리를 되찾을 방법에 대해 혹시 짐작이라도 가시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~그녀는 좌절감으로 가득 찬 표정을 하고 고개를 젓는다. 그녀는 갑자기 무슨 답이라도 기대하는 듯 애원하는 표정으로 당신을 쳐다본다.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"당신 목소리에 대해 물어보려면 당신 이름을 알아야만 하오..."~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"당신 목소리에 대해 물어보려면 당신 이름을 알아야만 하오. 당신 이름은 '에코'요?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~나는 "침묵하는" 창녀의 이름이 '에코'라는 것을 확인했다.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~맹세: "나는 당신에게 목소리를 되찾아 줄 방법을 반드시 알아내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"나는 당신에게 목소리를 되돌려 줄 방법을 찾아보도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"대가를 지불하겠다면 내가 당신 목소리를 되찾아 줄 방법을 찾아볼 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"그만... 가야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~그녀는 눈살을 찌푸리며 어깨을 으쓱한다. ~ */
  IF ~~ THEN REPLY #38357 /* ~"그럼 난 다른 사람에게 물어보도록 해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~에코는 너무나 고맙다는 눈빛으로 당신에게 미소를 지으며 천천히 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #38358 /* ~"그럼 당신 목소리를 줄 수 있는 것을 찾아보도록 하겠소. 안녕히 계시오, 에코."~ */ JOURNAL #66726 /* ~나는 에코에게 그녀에게 목소리를 되찾아줄 수 있는 것을 찾아보겠다고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~에코는 눈을 가늘게 뜨고 당신을 쳐다보며 얼굴을 찌푸린다. 그녀는 잠시 고개를 돌리고 한숨을 쉰 후 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #38359 /* ~"좋소, 그럼. 당신 목소리를 줄 수 있는 것을 찾아보도록 하겠소. 안녕히 계시오."~ */ JOURNAL #66726 /* ~나는 에코에게 그녀에게 목소리를 되찾아줄 수 있는 것을 찾아보겠다고 말했다. ~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~당신이 다가가자 에코는 정중하게 인사를 한다. 조심스럽게 화장을 한 그녀의 입술은 아주 희미한 미소를 짓는다.~ */
  IF ~~ THEN REPLY #38360 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"그냥 지나가던 길이었소, 에코. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~당신이 다가가자 에코는 아랫입술을 깨물며 희망에 찬 표정으로 당신을 쳐다본다.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"당신을 위해 이 악마의 혀를 가져왔소..."~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"나는 아직 당신에게 목소리를 되찾아 줄 방법을 발견하지 못했소. 발견하면 돌아오도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~그녀는 어깨를 으쓱하고 고개를 저으며 미안하다는 표정을 짓는다. ~ */
  IF ~~ THEN REPLY #38368 /* ~"그럼 다른 것에 대해 물어봅시다...'~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~에코는 고개를 젓는다. "아니요, 모르겠어요. 네니하고는 얘기를 해보셨나요? 그녀는 늘 사방을 돌아다니며 그 큼직한 눈으로 모든 것을 눈여겨보고 있어요."~ */
  IF ~~ THEN REPLY #38370 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~그녀는 눈썹을 치켜 올리고 회의적인 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #38372 /* ~"내가 들은 바로는 그것을 당신 입 안에 넣으면 당신은 의사소통을 할 수 있는 능력을 되찾을 것이라고 하오."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~그녀는 고개를 끄덕이고 당신으로부터 병을 건네 받는다. 그녀는 식염수로부터 잘라진 혀를 조심스럽게 꺼낸다, 그리고 잠시 역겹다는 표정으로 그것을 쳐다본 후 입 안에 넣는다... 갑자기 그녀의 눈이 휘둥그레지고, 그녀의 입술 사이로 붉은 빛이 폭발하듯 튀어나온다! ~ */
  IF ~~ THEN REPLY #38373 /* ~"괜찮소?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~그녀의 응답을 기다린다.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~에코는 입을 열었다가 닫는다, 그리고 다시 연다... 그리고 말을 한다! "나... 나는 다시 말할 수가 있게 되었어요. 너무 기뻐요! 감사-가장 어두운 심연에나 떨어져라, 이 더러운 냄새 나는 구더기야! 내 앞에 무릎을 꿇고 애원해라, 벌레야!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"에?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~에코는 비명을 지르고 양손으로 입을 먹는다... 그녀는 공황 상태에 빠져 있다.~ */
  IF ~~ THEN REPLY #38376 /* ~"악마의 혀 탓이 틀림없소.~ */ JOURNAL #66729 /* ~나는 에코에게 악마의 혀를 주었는데, 브리스치카에 의하면 그것은 어떠한 생명체에도 말할 수 있는 능력을 부여할 수 있다고 한다. 하지만 결과는 만족스럽지 못했다. 혓바닥은 할 말이 많은 듯하며 에코는 그것이 영 마음에 들지 않는 것 같다. 이제 나는 악마의 혀의 부작용을 제거할 *다른* 물건을 찾아야만 한다. 아마 브리스치카의 가게를 또 한번 방문해야 할 것 같다. ~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~그녀는 고개를 끄덕이며 천천히 입에서 양손을 치운다. "나는 너의 나약한 육신을 먹어 치우고 네 영혼이 어비스에서 영겁을 보내도록 만들겠다! 너는 다원 우주가 끝나는 날까지 내 전투 노예로서 내게 봉사할 것이다! 너는 내 것이다, 내 것-" 에코는 다시 입을 다물고 조용히 울기 시작한다. ~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"기다리시오... 이 디바의 눈물을 사용해 보시오... 악마의 혀의 저주를 누그러트릴 수 있을 거요." ~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~나는 에코에게 디바의 눈물을 주었고, 그것은 악마의 혀의 악담을 누그러뜨려 에코로 하여금 다시  정상적으로 얘기할 수 있도록 해주었다. 이제 나는 그녀에게 원하는 질문을 할 수가 있다...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"기다리시오... 브리스치카의 가게에서 당신을 도울 수 있는 물건을 본 적이 있는 것 같소. 그래, 그건 디바의 눈물이었소. 하지만 그건 상당히 비싸오..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~내가 에코에게 브리스치카의 가게에서 본 디바의 눈물에 대해 얘기하자, 그녀는 내가 그녀를 위해 그것을 구입할 수 있도록 지불 보증 각서를 주었다. ~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"이 문제를 해결할 방법을 찾아보도록 하겠소. 아마 브리스치카라면 당신을 도울 수 있는 물건을 가지고 있을지도 모르오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"당신은 다시 말을 할 수 있게 되었군... 만족스럽지는 못하지만... 그래, 내 보수는?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"이걸 시정하기 전에는 보수를 받을 수가 없겠군. 곧 돌아오리다... 아마 브리스치카라면 당신을 도울 수 있는 물건을 가지고 있을지도 모르오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~에코는 칼처럼 날카로운 시선으로 당신을 쏘아보며 냉소한다. ~ */
  IF ~~ THEN REPLY #38380 /* ~"이걸 시정하기 전에는 보수를 받을 수가 없겠군. 곧 돌아오리다... 아마 브리스치카라면 당신을 도울 수 있는 물건을 가지고 있을지도 모르오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~당신이 다가가자 에코는 고개를 끄덕이며 희망에 찬 표정으로 당신을 바라본다. ~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"나는 당신을 위해 디바의 눈물을 가져왔소... 이거라면 혀의 욕설을 누그러트릴 수 있을 거요."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~나는 에코에게 디바의 눈물을 주었고, 그것은 악마의 혀의 악담을 누그러뜨려 에코로 하여금 다시  정상적으로 얘기할 수 있도록 해주었다. 이제 나는 그녀에게 원하는 질문을 할 수가 있다...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"에코... 당신을 도울 방법을 찾아냈소... 브리스치카의 골동품 가게에 있는 디바의 눈물이오. 하지만 그건 매우 비싸오..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~내가 에코에게 브리스치카의 가게에서 본 디바의 눈물에 대해 얘기하자, 그녀는 내가 그녀를 위해 그것을 구입할 수 있도록 지불 보증 각서를 주었다. ~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"나는 아직 당신을 도울 방법을 발견하지 못했소. 발견하면 돌아오도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~그녀는 웃으며 고개를 끄덕인다, 그리고 그녀는 당신으로부터 약병을 받는다. 그녀는 반짝이는 푸른 액체를 몇 방울 혓바닥에 떨어뜨린다. "눈물이... 효과가 있는 것 같아요. 그래요... 효과가 있어요! 나는 다시 내 목소리로 말을 할 수가 있게 됐어요 - 아, 정말 고마워요!" 에코는 당신의 손을 꼭 쥐고 고개를 숙여 감사한다. 그리고 그녀의 눈은 기쁨의 눈물로 글썽하다.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"당신을 도울 수 있어서 기뻤소. 안녕히 계시오, 에코."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"당신을 도울 수가 있어서 기뻤소. 안녕히 계시오, 에코."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"도울 수가 있어서 기쁘오... 하지만 디바의 눈물 때문에 돈이 많이 들었소..." ~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"천만의 말씀이오... 그리고 보수에 대해선 잊으시오, 에코. 당신을 도울 수가 있어 기쁘오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"천만의 말씀이오... 그리고 보수에 대해선 잊으시오, 에코. 당신을 도울 수가 있어 기쁘오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"천만의 말씀이오... 이제 내 보수를 받아야겠소..."~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~에코는 고개를 끄덕이고 옷 속에서 한 장의 종이를 꺼낸다... 그것은 수취인이 매음굴로부터 동전 천 닢을 수령할 수 있도록 보증하는 지불 증서인 것 같다. 그녀는 의심쩍은 눈초리로 당신을 흘긋 본다.~ */
  IF ~~ THEN REPLY #38390 /* ~"그래, 이거면 충분할 것 같소. 눈물을 가지고 돌아오겠소, 에코."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"아... 그걸 미처 생각하지 못했군요! 그래요... 여기 있어요." 에코는 양피지로 싸인 동전 꾸러미 몇 개를 지갑에서 꺼낸다. "이거면 충분하고 남을 거예요. 그리고 다시 한 번 감사드려요!" 그녀는 당신을 보며 따뜻한 미소를 짓는다.~ */
  IF ~~ THEN REPLY #66735 /* ~"물론이오. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"안녕히 계시오, 에코."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~에코의 얼굴은 기쁨으로 빛나고 있다. "다시 한 번 감사드려요!" 그는 당신에게 다가와 귀에다 대고 속삭인다. 향수를 뿌린 그녀의 머리 냄새는 당신을 취하게 만들 정도로 감미롭다... 당신은 겉모습과는 달리 너무나도 친절한 분이세요." 그녀는 당신의 볼에 키스를 한다, 그리고 뒤로 물러서서 지갑에 손을 넣는다. "받으세요... 이거면 당신이 눈물을 구입하느라 들인 비용을 메우고도 남을 거예요. 꼭 받아 주세요." ~ */
  IF ~~ THEN REPLY #66736 /* ~"고맙소. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"고맙소, 에코. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~에코의 얼굴은 기쁨으로 빛나고 있다. "다시 한 번 감사드려요!" 그는 당신에게 다가와 귀에다 대고 속삭인다. 향수를 뿌린 그녀의 머리 냄새는 당신을 취하게 만들 정도로 감미롭다... 당신은 겉모습과는 달리 너무나도 친절한 분이세요." 그녀는 당신의 볼에 키스를 한다, 그리고 미소를 지으며 뒤로 물러선다.~ */
  IF ~~ THEN REPLY #66737 /* ~"고맙소. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"고맙소, 에코. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~에코는 마지막 남은 눈물을 닦아내며 고개를 끄덕인다. 그녀는 지갑에서 양피지로 싸인 동전 몇 꾸러미를 꺼내 당신에게 내민다. "당신이 당연히 받으셔야 할 보수예요."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"도울 수가 있어서 기쁘오... 하지만 디바의 눈물 때문에 돈이 많이 들었소..." ~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"고맙소. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~그녀는 고개를 끄덕인다. "물론이에요." 그녀의 목소리는 냉담하다. "여기 있어요." 그녀는 동전 몇 꾸러미를 더 건네준다.~ */
  IF ~~ THEN REPLY #66739 /* ~"고맙소. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~에코는 당신이 다가오는 것을 발견하고는 반갑게 손을 흔든다. "안녕하세요. 다시 만나 반가워요!" ~ */
  IF ~~ THEN REPLY #38397 /* ~"안녕하시오, 에코... 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"안녕하시오, 에코. 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~당신이 다가가자 에코는 냉담하게 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #38399 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"그냥 지나던 길이었소. 안녕히 계시오, 에코."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"이 매음굴은 일종의 학교로 젊은 여성들... '창녀'들이..." 그녀는 씁쓸하게 웃는다 . "...화술과 그 치밀함에 대해 배우는 곳이에요. 그리고 그것은 그레이스 여사가 말씀하시듯이 센세이트가 되기 위한 길이기도 해요. 이 곳은 손님들의 기부에 의해 운영되며, 그들은 여성과의 단순한 육체적 쾌락 이상의 것을 얻으려고 이 곳에 와요."~ */
  IF ~~ THEN REPLY #38401 /* ~"센세이트?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~에코는 고개를 끄덕인다, 그리고 목소리를 낮춘다. "실은 난 알고 있어요... 그녀가 존재한다는 사실뿐만 아니라 그녀에게 *딸들*이 있다는 사실도!"~ */
  IF ~~ THEN REPLY #38404 /* ~"그녀가 뭐라고?!"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~에코는 내게 래벌에게는 살아있는 자녀들이 있으며...  매음굴의 창녀들 중 한명인 케사이-세리스가 그들 중 하나라고 말해주었다. 또한 그녀는 케사이가 그 사실을 받아들이길 거부하고 있으며, 그것을 인정하지 않을 것이라고 말했다. ~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"그는 어디에 있소?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~에코는 내게 래벌에게는 살아있는 자녀들이 있으며...  매음굴의 창녀들 중 한명인 케사이-세리스가 그들 중 하나라고 말해주었다. 또한 그녀는 케사이가 그 사실을 받아들이길 거부하고 있으며, 그것을 인정하지 않을 것이라고 말했다. ~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"그들 중 하나는 때때로 이 곳에 머물러요... 케사이-세리스. 그녀는 래벌의 딸이에요, 하지만 그녀는 그 사실을 인정하려고 하지 않아요. 누가 그녀를 탓할 수 있겠어요?" 그녀는 잠시 멈추고 생각을 한다. "나는 그녀가 그 사실을 인정하게 만들 수가 없었어요. 하지만 난 그것이 사실이라고 확신해요."~ */
  IF ~~ THEN REPLY #38406 /* ~"흥미롭군. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"흥미롭군. 고맙소, 에코. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"나는 다른 '창녀'들과 마찬가지로 이 곳의 학생이에요. 우리는 정신을 자극하고, 자신과 타인에 대한 인식을 향상시키며, 다른 사람을 체험하는 새로운 방법을 창출하기 위해서... 화술을 갈고 닦으려고 노력해요." 그녀는 생각에 잠겨 대화를 중단한다.~ */
  IF ~~ THEN REPLY #38411 /* ~"계속하시오..."~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"글쎄요... 나는 너무 오랫동안 말하는 능력을 잃고 있었어요. 대부분의 손님들은 자신들의 이야기를 방해 받지 않고 털어놓을 수 있는, 이해력이 있으며 경청을 하는 사람을 찾아서 내게로 와요. 말을 다시 할 수 있게 된 지금 나는 이제 이 곳을 떠나서 센세이트가 될 때가 온 것은 아닐까 생각하고 있어요."~ */
  IF ~~ THEN REPLY #38414 /* ~"센세이트?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"흥미롭군. 다른 것에 대해 물어봅시다..."~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"아마 그럴지도. 안녕히 계시오, 에코."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"당신이 무슨 일을 하든 항상 행운이 따르기를 빌겠소, 에코. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~그녀는 어리둥절한 표정으로 당신을 보더니 고개를 젓는다. ~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~에코는 어리둥절해 하는 것 같다. "내가 알기로... 열 번째 학생은 없어요. 혹시 새로운 학생인가요? 그렇다면 나는 아직 그녀를 만나지 못했어요."~ */
  IF ~~ THEN REPLY #38421 /* ~"그 밖에도 물어볼 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"감각의 공동체의 멤버를 가리키는 말이에요. 더 자세히 알고 싶으면 훨-후럼-그레이스나 시 공회당에 있는 사람들에게 물어보세요."~ */
  IF ~~ THEN REPLY #38423 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
