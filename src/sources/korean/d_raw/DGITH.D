// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~당신이 접근하자 그는 천천히 몸을 돌린다. 그의 두 눈은 마치 두 개의 검은 돌 같다. 그는 당신 몸을 잠시 살펴본 후 당신을 정면으로 응시한다. 이 사나이의 모습은 인간과 흡사하나, 그의 피부는 노란색이며 얼굴은 가늘고 길다. 그는 깡마르고 여위었으며, 그의 사지는 마치 뼈에 근육섬유만을 감아놓은 것 같다. 그가 입은 옷은 선명한 색상과 진흙이 뭍은 것과 같은 갈색이 기묘한 조화를 이루고 있다.~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"안녕하시오."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~그는 잠시 멈추고 당신을 살펴본 후 불완전한 공용어로 대답한다. "나는 당신을 *알고* 있소." 그의 악센트 때문에 그를 이해하는 것은 쉽지 않다. 그는 모든 단어를 음절 별로 끊은 후 모든 모음을 길게 늘여서 발음하는 듯하다. 그리고 그는 단어 *알고*를 유별나게 강조하는데, 당신은 이를 묘하게 생각한다. "당신 얘기를 듣도록 하겠소"~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"나는 당신에게... '알려져' 있다? 당신은 내가 누군지 아시오?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"나는 당신에게... '알려져' 있다? 당신은 내가 누군지 아시오?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"나는 당신에게... '알려져' 있다? 당신은 내가 누군지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"알겠소... 보시오, 내겐 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"당신에게 묻고 싶은 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"나는 당신 이름을 *알고* 있소. 나는 당신의 행동을 *알고* 있소. 나는 당신의 행동을 통해 당신의 본질을 *알고* 있소. 나는 당신이 사람들의 친구라는 것을 *알고* 있소." 그는 당신을 재평가 하듯 당신을 바라보며 다시 눈을 깜박인다. "당신 얘기를 듣도록 하겠소"~ */
  IF ~~ THEN REPLY #2362 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"나는 당신 이름을 *알고* 있소. 나는 당신이 대지를 기스양키의 피로 적셨다는 것을 알고 있소. 나는 당신의 행동을 통해 당신의 본질을 *알고* 있소." 그는 당신을 재평가 하듯 당신을 바라보며 다시 눈을 깜박인다. "당신 얘기를 듣도록 하겠소"~ */
  IF ~~ THEN REPLY #2364 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"나는 당신 이름을 *알고* 있소. 당신은 이 도시의 유독한 대기 때문에 병에 걸린 때문에 우리 동족에게 도움을 주었소. 나는 이 행동을 통해 당신의 본질을 *알고* 있소. 나는 당신이 사람들의 친구라는 것을 *알고* 있소." 그는 당신을 재평가 하듯 당신을 바라보며 다시 눈을 깜박인다. "당신 얘기를 듣도록 하겠소"~ */
  IF ~~ THEN REPLY #2367 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~남자는 아무 말도 하지 않는다. 그는 당신의 인사를 받아들이지 않고 단지 당신을 쳐다볼 뿐이다.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"당신은 기스양키요, 그렇지 않소? 당신에게 물어볼 것들이 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"난 '안녕하시오'라고 말했소."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"난 '안녕하시오'라고 말했소."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"난 '안녕하시오'라고 말했소."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"난 '안녕하시오'라고 말했소."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"질문하고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"질문하고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"질문하고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"질문하고 싶은 것이 좀 있소..."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"관두시오. 당신을 귀찮게 해 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~잠시 동안 기스는 당신이 한 말을 듣지 못한 것 같다. 그러더니 강철이 움직이는 소리가 나고 기스는 칼을 뽑는다. 쉿 소리를 내며 그는 당신을 향해 돌격한다!~ */
  IF ~~ THEN REPLY #8718 /* ~"그럼 좋소..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~기스는 계속 아무 말도 하지 않는다, 하지만 그의 검은 눈은 당신을 주시하고 있다. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"당신은 기스양키요, 그렇지 않소? 당신에게 물어볼 것들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"내가 하는 말을 이해할 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~그는 잠시 멈추고 당신을 살펴본 후 불완전한 공용어로 대답한다. "나는 당신을 *알고* 있소." 그의 악센트 때문에 그를 이해하는 것은 쉽지 않다. 그는 모든 단어를 음절 별로 끊은 후 모든 모음을 길게 늘여서 발음하는 듯하다. 그리고 그는 단어 *알고*를 유별나게 강조하는데, 당신은 이를 묘하게 생각한다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #8724 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"나는 당신 얘기를 듣지 않겠소." 그는 당신을 그냥 지나쳐가려고 한다.~ */
  IF ~~ THEN REPLY #8726 /* ~그의 앞을 가로막는다.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~그는 멈추고 당신을 다시 쳐다본다. 당신이 미처 말을 하기도 전에 강철이 움직이는 소리가 나고 그는 칼을 뽑는다. "비키시오."~ */
  IF ~~ THEN REPLY #8728 /* ~"우선 내 질문에 대답부터 해줄 수 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"아니오. 우선 내 질문에 좀 대답해 주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"난 항복하지 않을 거요. 내가 그 칼을 당신 몸에 쑤셔 넣기 전에 칼집에 넣는 게 좋을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~그를 먼저 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~그가 지나갈 수 있도록 옆으로 비켜준다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~그의 표정은 변하지 않는다. "비키시오."~ */
  IF ~~ THEN REPLY #8733 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"그럼 먼저 내 질문에 대답해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"난 항복하지 않을 거요. 내가 그 칼을 당신 몸에 쑤셔 넣기 전에 칼집에 넣는 게 좋을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~그를 먼저 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~그가 지나갈 수 있도록 옆으로 비켜준다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~그는 쉿 소리를 내며 당신을 공격한다. ~ */
  IF ~~ THEN REPLY #8737 /* ~"죽을 준비를 하시오..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~Empty node.~ */
  IF ~~ THEN REPLY #8738 /* ~무반응.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"정문의'크'앗즌'이이."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~번역을 기억해 내려고 노력한다...~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~번역을 기억해 내려고 노력한다...~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"뭐라고 말했소?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"어... 그건 내 말을 들어주겠다는 뜻이오?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"좋소. 내 말을 들어주겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~정문의 크'앗즌'이이: "질문을 하시오, 그럼 당신은 우리 양쪽 모두의 질문에 대답하는 셈이 될 것이오."

*(크'앗즌'이이는 기스저라이의 고향 차원인 림보를 방황하며 동족들의 수양을 '시험한' 순례자이다. 그녀는 각 기스저라이 도시의 정문에 나타나 그 곳 시민들에게 일련의 질문들을 하곤 했다. 시민들이 한 대답은 그녀로 하여금 그 도시 안에 사는 기스저라이들의 본질을 알 수 있도록 해주었다. 하지만 그녀는 다른 기스저라이 역시 그녀가 하는 질문을 통해 그녀의 본질을 파악할 수 있었다는 사실은 알지 못했다.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"어디 봅시다. 내 얘기를 들어주겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~기스는 잠시 멈춘 후 다시 말한다. "질문을 하시오. 당신이 하는 얘기를 들으리다."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"나는 파로드란 사람을 찾고 있소. 당신은 그에 대해 아시오?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"다콘에 대해 얘기해줄 수 있겠소?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"당신은 다콘이라는 이름의 기스저라이를 아시오?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"이 도시에 대해 얘기해줄 수 있겠소?"~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"시길에 대해 이야기해줄 수 있겠소?"~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"이 도시에 대한 구체적인 질문들을 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"나는 그를 *알지* 못하오."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"다른 구체적인 질문들을 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"나는 그러한 물건을 *알지* 못하오."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"다른 구체적인 질문들을 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"아크'알리의 익사."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~번역을 기억해 내려고 노력한다...~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~번역을 기억해 내려고 노력한다...~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"뭐라고 했소?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"어... 그건 당신이 내 질문에 답해줄 거라는 뜻이오, 아니면...?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~아크'알리의 익사: "무의미한 질문"을 가리킨다. 이는 대개 애매모호하거나 무의미한 질문을 한 사람에게 보다 명확하고 구체적으로 질문을 하라는 표현이다.

*(기스저라이는 아웃터 플레인의 하나인 혼돈의 차원 림보에서 살고 있다. 이 차원에서 안정성은 혼돈의 물질에 정신력으로 형태를 부여함으로서 유지될 수 있다. 이를 위해서는 집중력과 자제심은 필수이다. "아크'알리"는 전설상의 어리석은 기스저라이로, 그녀는 림보에서 길을 잃고 자신의 주변에 작은 섬을 형성하여 간신히 버티고 있었다. 혼돈의 바다에서 표류하던 중 그녀는 도움을 주겠다고 제의한 어떤 차원 여행자를 만났다. 하지만 아크'알리는 고향으로 돌아가는 법에 대한 무의미하고 산만한 질문들을 어찌나 많이 했는지 그녀가 정신력으로 지탱하고 있던 섬은 사라져 버렸고, 그녀는 림보에 빠져 익사했다.)*~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"그럼 보다 구체적으로 묻겠소. 내게 레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"그럼 보다 구체적으로 묻겠소. 내게 당파들에 대해 얘기해줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"그럼 보다 구체적으로 묻겠소. 내게 이 도시가 어디에 위치하고 있는지 얘기해줄 수 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"그럼 보다 구체적으로 묻겠소. 내게 어디 가면 일거리를 얻을 있는지 얘기해줄 수 있겠소?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"그럼 보다 구체적으로 묻겠소. 내게 이 부근에서 관심을 가질만한 것에는 어떤 것들이 있는지 얘기해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"당신의 질문은 어둠 속에서 무턱대고 칼을 휘두르는 것과 같소. 그리고 표적이 없는 화살이오." 그가 눈살을 찌푸리자 이마에 주름에 생긴다. "이 질문에 대한 답은 아나크의 정신조차 가득 채울 것이오. 그런 답을 장황하게 늘어놓을 시간은 없소. 당신이 무엇을 *알고자* 하는 가를 명확하게 말해주시오." ~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"그럼 보다 구체적으로 묻겠소. 내게 레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"그럼 보다 구체적으로 묻겠소. 내게 당파들에 대해 얘기해줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"그럼 보다 구체적으로 묻겠소. 내게 이 도시가 어디에 위치하고 있는지 얘기해줄 수 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"그럼 보다 구체적으로 묻겠소. 내게 어디 가면 일거리를 얻을 있는지 얘기해줄 수 있겠소?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"그럼 보다 구체적으로 묻겠소. 내게 이 부근에서 관심을 가질만한 것에는 어떤 것들이 있는지 얘기해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~기스는 잠시 멈춘 후 다시 말한다. "질문을 하시오. 당신이 하는 얘기를 들으리다."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"나는 파로드란 사람을 찾고 있소. 당신은 그에 대해 아시오?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"다콘에 대해 얘기해줄 수 있겠소?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"당신은 다콘이라는 이름의 기스저라이를 아시오?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"내게 당파들에 대해서 얘기해줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~내게 이 도시가 어디에 위치하고 있는지 얘기해줄 수 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~내게 어디 가면 일거리를 얻을 있는지 얘기해줄 수 있겠소?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~내게 이 부근에서 관심을 가질만한 것에는 어떤 것들이 있는지 얘기해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"질문할 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"그녀는 이 도시의 여왕이라고 하오. 그녀가 뭘 생각하고 있는지 나는 *알지* 못하오."~ */
  IF ~~ THEN REPLY #8801 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"그들은 이 도시를 자기들끼리 나누는 자들이오." 이 말을 할 때의 그의 어조로부터는 약간의 경멸감이 느껴진다.~ */
  IF ~~ THEN REPLY #8838 /* ~"당신은 이러한 당파들을 별로 좋아하지 않는 듯하오."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"분열에는 힘이 따르지 않소. 분열된 도시는 붕괴하오."~ */
  IF ~~ THEN REPLY #8841 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"이 도시는 모든 곳에 닿고 있소."~ */
  IF ~~ THEN REPLY #8843 /* ~"무슨 뜻이오?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"이 도시는 문이 여럿 있는 감옥이오. 각 문은 각기 다른 곳으로 통하오."~ */
  IF ~~ THEN REPLY #8846 /* ~"왜 이 도시를 감옥이라고 부르는 거요?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"이러한 문들은 어디 있소?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"잠겨진 문이 있는 건물은 어떤 것이든 감옥이오."~ */
  IF ~~ THEN REPLY #8850 /* ~"잠긴 문들?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"이 감옥 안의 모든 문들은 잠겨 있소. 각 문에는 그에 대응하는 열쇠가 있소. 필요한 열쇠가 있어야만 당신은 떠날 수가 있소."~ */
  IF ~~ THEN REPLY #8853 /* ~"이러한 문들은 어디 있소?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"모든 곳에 있소. 그것들의 수는 그것들이 닿는 곳의 수만큼이나 많소."~ */
  IF ~~ THEN REPLY #8856 /* ~"이해할 수가 없소."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"장소들? 예를 들어?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"이해하기는 어려우나 받아들이는 것은 어렵지 않소."~ */
  IF ~~ THEN REPLY #8860 /* ~"당신이 얘기한 문들은 어디로 통하오?"~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"이 감옥의 문들은 모든 곳으로 통하오. 모든 차원, 모든 세계로."~ */
  IF ~~ THEN REPLY #8863 /* ~"이해할 수가 없소."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"나는 당신을 *알지* 못하오. 당신의 관심을 끄는 것이 내게는 아무런 의미도 없을 수가 있소."~ */
  IF ~~ THEN REPLY #8866 /* ~"나는 일거리에 관심이 있소."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"그럼 관두시오. 이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"이 곳에는 일거리가 별로 없소. 쥐를 사냥해 현상금을 타는 것과 시체를 모우는 것 말고는.~ */
  IF ~~ THEN REPLY #8870 /* ~"쥐에 걸린 현상금?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"시체를 수거?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"알겠소. 이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"시가 쥐꼬리에 대해 현상금을 지불하오. 쥐꼬리를 가지고 해수 관리국 사무실로 가시오."~ */
  IF ~~ THEN REPLY #8875 /* ~"당신이 얘기했던 다른 일거리는 뭐였더라? 시체를 수거?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"알겠소. 이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"이 도시에서는 매일 밤 많은 이들이 죽소. 시체를 가지고 더스트맨에게로 가시오. 그들이 시체를 살 것이오."~ */
  IF ~~ THEN REPLY #8878 /* ~"시체를 가져가면 더스트맨이 돈을 지불하오? 왜?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"당신이 얘기했던 다른 일거리는 뭐였더라? 쥐에 대한 현상금?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"알겠소. 이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"더스트맨은 죽은 자를 보살피오. 그들은 각 시체들에게 장례식을 치러 주오."~ */
  IF ~~ THEN REPLY #8882 /* ~"좋소... 계속하시오."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"알겠소. 당신이 얘기했던 다른 일거리는 뭐였더라? 쥐에 대한 현상금?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"관두시오. 이 도시에 대한 다른 구체적인 질문들을... 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"많은 이들이 죽소. 더스트맨들은 자력으로 모든 시체들을 거주어 들일 수가 없소, 하지만 그들은 시체가 거리에 방치되는 것을 원하지 않소. 따라서 그들은 시체를 가져오는 자에게 돈을 지불하오."~ */
  IF ~~ THEN REPLY #8886 /* ~"당신이 얘기했던 다른 일거리는 뭐였더라? 쥐에 대한 현상금?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"다른 구체적인 질문들을 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"그는 당신과 동행을 하고 있소." 그의 이마에 주름이 생긴다. "그런데 어떻게 당신은 그를 *알지* 못하오?"~ */
  IF ~~ THEN REPLY #8889 /* ~"당신이 그에 대해 얘기해주기를 기대했소."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"관두시오. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"그는 벙어리가 아니오. 만약 당신이 그에 대해 *알고자* 한다면, 그에게 질문을 하시오. 사람을 석상 취급하여 우리 둘 모두를 모독하지 마시오."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"관두시오. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"나는 그 이름을 *알지* 못하오. 다콘은 사람들 중 하나가 아닌 *저스*요."~ */
  IF ~~ THEN REPLY #8896 /* ~"저스?"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"알겠소. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"저서몬께서 남기신 말씀을 *아는* 사람들을 가리키오. 그분의 말씀을 *앎*으로서 그들은 자신들을 *아오.*"~ */
  IF ~~ THEN REPLY #8900 /* ~"저서몬?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"알겠소. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"저서몬께서는 기스저라이가 자신들을 알기 전에 기스저라이가 무엇인지를 *아셨소.* 기스저라이는 잠시 경의를 표하는 듯 침묵을 지킨 후 다시 얘기한다. "그분은 우리들이란 존재를 규정하셨소. 그분은 우리들에게 하나로 통일된 정신을 주셨소. 그분의 말씀을 *아는* 자는 *저스*라고 불리오."~ */
  IF ~~ THEN REPLY #8904 /* ~"그리고 다콘은 저스요?"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"알겠소. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"다콘은 *저스*요..." 그는 처음으로 당황하는 모습을 보인다. 그는 적절한 표현을 찾으려고 애쓰는 듯 잠시 말을 멈춘다.~ */
  IF ~~ THEN REPLY #8908 /* ~"그래서?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~그가 설명하기를 기다린다.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"관두시오. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"다콘은 저서몬의 말씀을 모르는 것으로 알려진 *저스*요. 그의 정신은 분열되었다고 하오. 그는 자신을 *알지* 못한다고 하오. 이러한 것들은 기스저라이에게 있어 독이나 마찬가지요. 만약 이러한 얘기들이 진실이라면 그는 사람들 중 하나가 아니오."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"알겠소. 당신에게 물어볼 다른... 구체적인... 질문들이 있소..." ~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"고맙소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~당신이 접근하자 그는 당신을 쳐다보려고 고개를 돌린다. 그의 두 눈은 마치 두 개의 검은 돌 같다. 그는 당신 몸을 잠시 살펴본 후 당신을 정면으로 응시한다. 이 사나이의 모습은 인간과 흡사하나, 그의 피부는 노란색이며 얼굴은 가늘고 길다. 그는 깡마르고 여위었으며, 그의 사지는 마치 뼈에 근육섬유만을 감아놓은 것 같다. 그가 입은 옷은 선명한 색상과 진흙이 뭍은 것과 같은 갈색이 기묘한 조화를 이루고 있다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"저카이의 일족이 그대에게 인사하오."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"안녕하시오."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~기스는 당신을 정면으로 마주본다. 그는 잠시 멈추고 당신을 살펴본 후 불완전한 공용어로 대답한다. 그의 악센트 때문에 그를 이해하는 것은 쉽지 않다. 그는 모든 단어를 음절 별로 끊은 후 모든 모음을 길게 늘여서 발음하는 듯하다. 만약 당신이 그의 말을 제대로 이해했다면 그는 방금 "그리고 여행자를 환영하오."라고 말했다. ~ */
  IF ~~ THEN REPLY #8922 /* ~"그리고 여행자는 만족하오."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"나는 이 도시에 대해 알고 싶소. 내 말을 들어주겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~기스는 당신을 정면으로 마주본다. 그는 잠시 멈추고 당신을 살펴본 후 불완전한 공용어로 대답한다. 그의 악센트 때문에 그를 이해하는 것은 쉽지 않다. 그는 모든 단어를 음절 별로 끊은 후 모든 모음을 길게 늘여서 발음하는 듯하다. 만약 당신이 그의 말을 제대로 이해했다면 그는 방금 "나는 당신을 *알지* 못하오."라고 말했다. 그는 단어 *알지*를 묘하게 강조했다.~ */
  IF ~~ THEN REPLY #8925 /* ~"나는 이 도시에 대해 알고 싶소. 내 말을 들어주겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~기스의 돌처럼 무표정한 얼굴에 약간의 변화가 생긴다, 그리고 그의 도전적인 시선은 호기심에 찬 시선으로 바뀐다. *나는 당신을 *알지* 못하오." 그는 당신을 재평가 하듯 당신을 바라보며 다시 눈을 깜박인다. "당신 얘기를 듣도록 하겠소"~ */
  IF ~~ THEN REPLY #8927 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~당신이 접근하자 그는 당신을 쳐다보려고 고개를 돌린다. 다콘처럼 그의 피부는 노란색이며 마른 체격을 하고 있다. 그가 입은 옷은 선명한 색상과 진흙이 뭍은 것과 같은 갈색이 기묘한 조화를 이루고 있다. 기스는 칠흑같은 눈으로 다콘을 바라본 후 시선을 당신에게 돌린다. ~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"저카이의 일족이 그대에게 인사하오."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"안녕하시오."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"안녕하시오."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~남자는 당신을 무시하고 다콘을 향해 돌아선다. 그는 몇 마디의 발음을 생략한 단어를 저음의 언어로 얘기하나, 당신은 그것을 이해할 수가 없다. 말을 하면서도 그의 표정에는 아무런 변화가 없으며, 또 아무런 손짓도 하지 않는 탓에 그가 무슨 얘기를 하는지 짐작조차 할 수가 없다. 다콘은 역시 같은 언어로 화살이 나는 듯한 빠른 속도로 답한다, 그리고 기스저라이는 침묵한다.~ */
  IF ~~ THEN REPLY #8934 /* ~"어... 그가 뭐라고 말하는 거요, 다콘?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~당신이 말을 하자 기스저라이는 고개를 돌려 당신을 쳐다본 후 다시 다콘에게로 시선을 돌려 이번에는 오랜 시간 동안 말을 한다. 다콘은 전과 마찬가지로 화살이 나는 듯한 빠른 속도로 답한다. 기스저라이는 다시 침묵한다. 다콘이 다른 얘기를 하자 기스저라이는 다시 장시간에 걸쳐 이에 대답한다.~ */
  IF ~~ THEN REPLY #8936 /* ~"다콘, 날 위해 그에게 뭘 좀 물어봐 줄 수 있겠소?"~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Empty node.~ */
  IF ~~ THEN REPLY #8938 /* ~무반응.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"나는 당신이 하는 말을 *아오.*" 기스저라이는 말을 끊는다. "나를 보고 당신 생각을 말하시오. 당신 얘기를 듣도록 하겠소."~ */
  IF ~~ THEN REPLY #8939 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~기스저라이는 당신을 무시하고 다콘을 향해 돌아선다. 그는 몇 마디의 발음을 생략한 단어를 저음의 기묘한 언어로 얘기한다. 만약 당신이 그가 한 말을 정확하게 이해했다면 그는 방금 "감사하오, *저스.*"라고 말했다.~ */
  IF ~~ THEN REPLY #8941 /* ~다콘의 대답을 기다려서 듣는다.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~당신이 말을 하자 기스저라이는 고개를 돌려 당신을 쳐다본 후 다시 다콘에게로 시선을 돌려 이번에는 오랜 시간 동안 말을 한다.~ */
  IF ~~ THEN REPLY #8943 /* ~번역하려고 시도한다...~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~당신은 문장 구조를 해독하는 데 애를 먹는다, 하지만 당신 생각에 그는 다음과 같은 말을 한 것 같다. "'사람들' 중 하나가 아닌 다콘이라는 자가 있소. 그의 정신은 분열되었다고 하오. 그리고 그는 저서몬의 말씀을 *알지* 못하는 *저스*라고 하오."~ */
  IF ~~ THEN REPLY #8945 /* ~다콘의 대답을 기다려서 듣는다.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~기스의 대답은 맹렬한 기세로 공격하는 것처럼 신속하다. 당신은 당신이 그가 한 말을 완전히 이해했는지 확신할 수는 없으나, 그 기스는 질문이라는 형식을 빌려 다콘에게 일종의 도전을 한 듯하다. "*저스*여, 그대는 이 인간의 말에 *복종*하오?"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~중단시킨다: "다콘은 내 명령에 복종하오. 그는 내 노예요."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~중단시킨다: "그렇소, 다콘은 내 명령을 따르오. 그는 내 하인이오."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~중단시킨다: "나는 그의 상사요. 다콘은 내 여행에 동행하고 있소."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~다콘이 무슨 말을 하는지 지켜본다...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~다콘이 무슨 말을 하는지 지켜본다...~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~기스는 한동안 침묵한다. "이 일로부터는 일리티드의 악취가 나오." 그의 눈은 다콘의 얼굴을 가로지르며 깜박인다. "아무런 사슬도 당신을 묶고 있지 않소. 그리고 당신은 온전한 정신으로 이야기하고 있소. 대체 어떻게 하여 이러한 끔찍스런 불경 행위가 저질러지게 되었소?"~ */
  IF ~~ THEN REPLY #8953 /* ~귀를 기울인다.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~기스는 당신을 쳐다보지 않는다. 그의 시선은 다콘에게 향하고 있다. "그는 말을 해도 좋소. 나는 그의 말을 들을 것이오."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~기스는 당신 쪽으로 고개를 돌려 당신을 마주본다. 다콘은 계속 그 기스를 응시하고 있다. ~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"당신의 그런 눈초리 때문에 난 화나려 하고 있소. 자, 내 노예가 아닌 나에게 얘기를 하시오. 내 질문에 대답을 할 거요, 안 할 거요?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"당신이 내 동료가 아니라 나와 얘기했으면 좋겠소. 내 질문을 답을 할 거요, 안 할 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"무슨 문제라도 있소?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"관두시오, 다콘. 떠납시다."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~기스는 칼을 도로 넣고 한 걸음 물러선다. 다콘 역시 칼을 내려놓는다. 기스는 다콘을 야유한다. "빌콰의 눈도 그처럼 밝지는 못하고, 셀콴트의 가슴조차 그토록 검지는 않았을 것이오. 이 일은 결코 잊혀지지 않을 것이오." 그는 떠나려고 하는 것 같다.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"두려운가, 기스양키 개야? 덤빌 테면 덤벼라."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"두려운가, 기스양키 개야? 덤빌 테면 덤벼라."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~그를 그냥 보내준다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~기스가 떠나려 할 때 그를 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~기스는 다콘을 향해 몸을 돌린다. "이 인간의 말은 내 귀에는 맹독과도 같소. 내가 그의 말을 들어야만 하겠소?"~ */
  IF ~~ THEN REPLY #8963 /* ~"그가 아닌 내게 얘기를 하시오, 기스."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"무슨 문제라도 있소?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~다콘이 무슨 말을 하는지 기다리며 지켜본다.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"관두시오, 다콘. 떠납시다."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~아주 잠시 동안 기스는 당신이 한 말을 듣지 못한 것처럼 행동한다. 그러더니 강철이 움직이는 소리가 나고 기스는 칼을 뽑는다. 다콘은 즉시 전투태세를 취한다. 만약 그 기스가 당신을 공격하면 다콘 역시 그를 공격할 것 같다.~ */
  IF ~~ THEN REPLY #8967 /* ~"계속해라. 날 공격해라, 기스. 그리고 어떤 일이 일어나는지 봐라."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"만약 그가 나를 향해 한 걸음만 더 다가오면 그를 죽이시오, 다콘."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"모두 진정하시오. 난 몇 가지 질문에 대한 대답을 듣고자 할 뿐이오."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~다콘이 전투태세를 취하고 있음에도 그는 당신에게서 눈을 떼지 않는다. 그의 다음 질문은 다콘을 겨냥한 것인 듯하다. "이 문제에 있어 당신의 정신은 분열되었소?" ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"이 일에서는 일리티드의 냄새가 나오, *저스." 당신은 그를 위해 동족에게 칼을 들이댔소. 저서몬의 이름을 걸고 말하건대 나는 당신이 영혼이 이와 같은 모독을 받는 것을 용납할 수 없소, 그리고 그는 자신이 한 말에 대해 피로서 대가를 치러야만 하오."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~기스는 당신을 바라본다, 하지만 그의 관심은 아직도 다콘에게 가 있다. "대체 어떻게 하여 이러한 끔찍스런 불경 행위가 저질러지게 되었소, *저스*여?"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~다콘이 무슨 말을 하는지 지켜본다...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~다콘이 무슨 말을 하는지 지켜본다...~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~그가 다른 데 정신이 팔렸을 때 그를 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~기스는 기다린다. 그는 매우 비통한 표정이다. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"계속해라, 기스양키 개야. 덤빌 테면 덤벼라."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"계속해라, 기스 개야. 덤빌 테면 덤벼라."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~이 사태가 어떻게 끝나는지 지켜본다...~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~이 사태가 어떻게 끝나는지 지켜본다...~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~그가 다른 데 정신이 팔렸을 때 그를 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~당신이 접근하자 그는 당신을 쳐다보려고 고개를 돌린다. 그의 두 눈은 마치 두 개의 검은 돌 같다. 그는 당신 몸을 잠시 살펴본 후 당신을 정면으로 응시한다. 이 사나이의 모습은 인간과 흡사하나, 그의 피부는 노란색이며 얼굴은 가늘고 길다. 그는 깡마르고 여위었으며, 그의 사지는 마치 뼈에 근육섬유만을 감아놓은 것 같다. 그가 입은 옷은 선명한 색상과 진흙이 뭍은 것과 같은 갈색이 기묘한 조화를 이루고 있다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"저카이의 일족이 그대에게 인사하오."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"안녕하시오."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~강철이 움직이는 소리가 나고 기스는 칼을 뽑는다. "나는 당신을 *알고* 있소. 당신은 우리 동족을 공격했소. 나는 이 곳의 돌을 당신의 피로 물들게 할 것이오."~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~거짓말: "당신은 기스저라이 *저스*와 여행하는 사람에게 기스저라이를 죽인 적이 있느냐고 묻는 거요? 당신이 사람을 착각한 모양이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~거짓말: "무슨 착오일 거요. 나는 당신 일족을 공격한 적이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~거짓말: "나는 아무도 공격하지 않았소. 나를 다른 사람으로 착각한 모양이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~그를 먼저 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~기스를 무시하고 떠난다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~기스는 잠시 주저한다. "착오는 없소. 흉터투성이의 인간 남자란 인상착의는 정확하오."~ */
  IF ~~ THEN REPLY #8987 /* ~거짓말: "이것 보시오, 이 곳은 큰 도시요. 나는 당신이 찾고 있는 자가 아니오. 나는 당신이나 당신 일족을 해칠 생각이 없소."~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~그를 먼저 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~기스의 이마에 주름이 생긴다, 그리고 잠시 후 그는 칼을 내려 놓는다. "용서하시오. 앞으로는 말을 할 때 보다 신중하도록 하리다." 그는 아직도 의심을 하는 듯하다.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"실은 당신이 처음부터 옳았소. 난 당신이 방심을 하기만을 기다리고 있었소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"실은 당신이 처음부터 옳았소. 난 당신이 방심을 하기만을 기다리고 있었소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"부디 그렇게 하시오. 안녕히 계시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~기스는 잠시 주저한다. "착오는 없소. 흉터투성이의 인간 남자란 인상착의는 정확하오." 그는 다콘을 흘긋 본다. "당신은 이 사내를 대변하오 , *저스?*"~ */
  IF ~~ THEN REPLY #8992 /* ~"그가 착각을 한 거라고 그에게 말하시오, 다콘."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~그가 다콘을 쳐다보고 있을 때 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
