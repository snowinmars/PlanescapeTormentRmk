// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~이 높이 솟아 고동치는 끔찍한 *것*을 보자 당신 속이 역겨움, 근거 없는 혐오, 그리고 희미한 낯익음으로 가득 찬다. 이 거대한 더미를 구성하는 무수한 썩은 머리들은 지속적으로 이동하고 고동치면서, 자기들끼리 말다툼하고, 울고, 대화하고, 소리치고, 속삭이고 있다. 머리들은 번갈아 가며 기둥의 역겨운 중심부로 표면으로 올라왔다가 다시 꺼지는 것을 반복하고 있다. ~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~기둥의 관심을 끈다.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~기둥의 관심을 끈다.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~기둥이 당신의 존재를 알아차리기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~당신이 조심스럽게 기둥에 한 걸음 더 다가가자, 그들의 모든 대화가 갑자기 멈춘다. 기둥의 표면을 장식하는 수십 개의 머리들은 일제히 당신 쪽으로 고개를 돌린다. 그들은 당신을 조용히 쳐다보며, 냄새나는 숨결을 당신에게 내뿜는다.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~기둥의 표면에 있는 모든 머리들이 일제히 말을 하여 하나의 끔찍한 목소리를 형성한다 - 그 끔찍한, 뭔가가 끓어오르는 듯한 소리가 울려 퍼지는 동안, 그들의 입들로부터는 역겨운 자극성의 증기와 부취가 흘러나온다. "냄새, 그것은 강하다. 그것은 차원을 뛰어 넘을 것이다. 곧 벨이 올 것이다."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"냄새...? 그게 무슨 말이오?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"냄새...? 그게 무슨 말이오?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~머리들의 눈알들이 훨-후럼-그레이스를 보려고 돌아간다. "냄새... 사향... 그녀의 사향... 타나리의 사향... 달콤씁쓸한 향기가 날아가 바테주를 불러올 것이다. 곧 그들의 군주 벨이 진노할 것이다."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"알겠소..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"알겠소..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~머리들의 눈알들이 안나를 보려고 돌아간다. "냄새... 사향... 그녀의 사향... 휜들링의 타나리 사향... 달콤씁쓸한 향기가 날아가 바테주를 불러올 것이다. 곧 그들의 군주 벨이 진노할 것이다."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"알겠소..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"알겠소..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~머리들은 시선을 당신 쪽으로 돌린다, 그러나 아직도 시끄럽게 킁킁거리는 머리들이 몇 있다. "만약 우리에게 할 질문이 있다면 서두르라." 머리들 중 몇이 조용히 꼴깍거리며 당신에게 눈을 흘긴다. 당신 생각에 그들은 당신을 비웃고 있는 것 같다.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"전에 말했듯이, 그럼: 질문할..."~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~"전에 말했듯이, 그럼: 질문할 것들이 있소..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"그럼 전에 얘기한 것처럼: 물어볼 것들이 좀 있소..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~당신이 미처 말을 끝내기도 전에 기둥의 일부가 떨리더니, 또 다른 머리가 표면으로 떠오른다. 그것을 덮고 있던 역겨운 점액이 어느 정도 흘러 없어진 후에야 당신은 그것이 파로드의 머리라는 것을 알아본다. 그는 피가래를 토해내더니 쉰 소리로 말한다: "안나, 내 귀여운 딸! 네가 맞냐?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~파로드가 얘기할 동안 다른 머리들은 대부분 침묵을 지키고 있다... 몇 개의 머리들만이 자기들끼리 속삭이며, 안나와 그녀의 양부에게 심술궂은 눈길을 보내고 있을 뿐이다. "내 딸아, 나는 청동 구체에 대해 잘못 알고 있었단다. 그걸로는 충분하지 않았어, 아니, 그리고 지금 내 꼴을 보거라... 제발 부탁이다, 사랑스런 안나야! 네 불쌍한 아버지를 좀 구해주거라! 날 구해주거라! 제발! 날-" 하지만 파로드의 울먹이는 머리는 얘기를 하고 있는 도중에도 기둥의 중심부로 다시 가라앉고 있다...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"그만 됐다," 기둥의 냄새나는 머리들이 소리친다. "네 무의미한 헛소리에는 지쳤다. 우리는 네가 우리에게 온 용건을 알고자 한다."~ */
  IF ~~ THEN REPLY #53353 /* ~"질문. 질문할 것들이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~당신이 조심스럽게 기둥에 한 걸음 더 다가가자, 그들의 모든 대화가 갑자기 멈춘다. 기둥의 표면을 장식하는 수십 개의 머리들은 일제히 당신 쪽으로 고개를 돌린다. 그들은 당신을 조용히 쳐다보며, 냄새나는 숨결을 당신에게 내뿜는다... 당신 뒤에서 위축되어 있는 모트를 발견할 때까지.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~기둥의 표면에 있는 모든 머리들이 일제히 말을 하여 하나의 끔찍한 목소리를 형성한다 - 그 끔찍한, 뭔가가 끓어오르는 듯한 소리가 울려 퍼지는 동안, 그들의 입들로부터는 역겨운 자극성의 증기와 부취가 흘러나온다. "*네*가 다시 왔군... 정말 오랜만이다." 많은 머리들이 알아들을 수 없는 말을 지껄이며 침을 흘리기 시작한다 "... 해골, 해골, 해골..." 그들은 모트에게 시선을 고정시킨 채 기쁜 듯 입술을 핥는다.~ */
  IF ~~ THEN REPLY #53357 /* ~"무슨 뜻이오?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"닥쳐라! 우리는 네가 아니라 해골과 이야기를 하고 있다. 돌아온 것을 환영한다, 작은 아이야. 너는 마침내 우리의 품 안으로 돌아와 너의 최종적인 운명을 받아들이고, 네 신성한 의무를 다하기로 결심했는가?" 여러 머리들이 기둥의 중심부로부터 튀어나와 부러진 이빨을 갈면서 울부짖는다: "그래, 돌아와라! 우리에게 돌아와라! 해골 ! 해골..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~머리들은 기둥의 표면에서 천천히 움직이며, 기괴한 목소리로 말을 하기 전에 고개를 끄떡이며 뭐라고 중얼거린다. "질문을 한 후 우리의 요구를 들을 각오를 하라. 답을 듣기 위해서는 우리 부탁을 들어주어야 할 것이다."~ */
  IF ~~ THEN REPLY #53360 /* ~"당신은 어떤 존재요?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"후회의 요새에 어떻게 하면 도달할 수 있소?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"나는 누구요?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"내 살인자는 누구요?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"어떻게 하면 이 곳을 떠날 수가 있소?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~머리들은 썩은 입술을 통해 꼴깍거리면서 쉰 소리로 대답을 한다: "우리 부탁을 하나 들어주면 그 질문에 대답해주겠다..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"좋소. 당신 요구는 뭐요?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"좋소. 당신 요구는 뭐요?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"좋소. 당신 요구는 뭐요?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"좋소. 당신 요구는 뭐요?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"좋소. 당신 요구는 뭐요?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"좋소. 당신 요구는 뭐요?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"좋소. 당신 요구는 뭐요?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"좋소. 당신 요구는 뭐요?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~머리들은 하나의 목소리로 말을 가로막는다: "닥쳐라! 너는 우리의 고귀한 지위를 그러한 하찮은 이야기로 욕되게 하고 있다!" 특별히 흉칙한 머리 하나가 소리친다: "우리 *모두*를 거짓말쟁이라고 하는 -" 그는 말을 미처 끝내기 전에 기둥 속으로 다시 빨려 들어간다.~ */
  IF ~~ THEN REPLY #53379 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"그럼 떠나겠소. 안녕히 계시오."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"그럼 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~머리들은 썩은 입술을 통해 꼴깍거리면서 쉰 소리로 대답을 한다: "우리 부탁을 하나 들어주면 그 질문에 대답해주겠다..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"당신 요구는 뭐요, 기둥?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~기둥의 머리들은 일제히 머리를 돌려 모트를 노려본다. "해골... 우리는 해골을 공물로 요구한다. 그를 우리에게 돌려주라, 그러면 너는 답을 얻을 것이다."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"나약한 항의 따위는 집어치워라, 해골! 결정권은 쥐고 있는 건 네가 아니다 !" 기둥의 수많은 머리들 천천히 돌아서서는 눈을 가늘게 뜨고 당신을 정면으로 쳐다본다. "그는 자신의 운명을 너무나 오랫동안 회피해 왔다. 그는 우리 것이다, 만약 네가 그를 우리에게 돌려준다면 우리는 그 선물에 대해 매우 호의적으로 반응할 것이다... 우리는 그의 비명을 즐기고 싶다..."~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"좋소... 그를 데려가시오."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"좋소... 그를 데려가시오."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"선물? 다른 어떤 선물이라면 받아들이겠소?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"선물? 다른 어떤 선물이라면 받아들이겠소?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"선물? 다른 어떤 선물이라면 받아들이겠소?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"선물? 다른 어떤 선물이라면 받아들이겠소?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"선물? 다른 어떤 선물이라면 받아들이겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"그래애애..." 머리들이 무리를 지어 꿈틀거리며 떠들어대기 시작한다, 그리고 다른 머리들도 표면으로 떠올라 울부짖으며 떠든 후 다시 가라앉는다. 그들은 침을 흘리며 떠든다. "나는 놈의 비명을 즐기고 싶어!" 다른 머리가 말한다: "비명 따위는 집어치워! 놈처럼 짜증스런 놈은 고문을 해야 해! 나는 놈의 이빨을 뽑아서 놈의 골통에 넣고는 노리개처럼 딸랑거리면서 가지고 놀 거야. 또 다른 머리가 말한다 : "오! 오! 나는 그의 눈알을 파내서 먹을 거야!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~기둥은 당신 쪽으로 다가온다. 그것의 머리들은 눈을 가늘게 뜨고 당신을 보고 있다. "너는 우리가 원하는 정보를 가지고 있다. 마족 갈라진-혀의 흐줄은 어디에 있는가?우리에게 말해주면 네 질문에 대답해주겠다." 그것이 당신 대답을 기다리는 동안 당신 주변은 기둥이 내뿜는 뜨거운 숨결의 악취로 가득 찬다...~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"아웃랜즈, 모든 고리스토의 아버지인 울-고리스가 분화구 전쟁에서 숨을 거둔 곳에. 흐줄은 그 해골 안에 살고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"아웃랜즈, 모든 고리스토의 아버지인 울-고리스가 분화구 전쟁에서 숨을 거둔 곳에. 흐줄은 그 해골 안에 살고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~거짓말: "그는 아웃랜즈 어딘가에 숨어 있소. 거대한 산 아래에."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~거짓말: "흐줄은 오래 전에 죽은 요술사가 창조한 유사 차원에 숨고 있소. 그는 아주 가끔씩 시길에 나타나며, 나는 거기서 그를 만났소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~기둥의 머리들은 잠시 침묵한다 - 그것의 고약한 표면에서 역겨운 증기가 나오는 소리를 제외하고는. 마침내 그것은 대답한다: "너는 우리가 원하는 물건을 가지고 있다. 모드론 입방체를 내놓아라. 그것을 우리에게 주면 네 질문에 대답해주겠다."~ */
  IF ~~ THEN REPLY #53415 /* ~"여기 있소... 받으시오."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~기둥의 머리들은 얼굴을 찡그린다, 그리고 여기저기를 바라보며 눈을 깜박인다. 갑자기 그들의 시선은 모두 훨-후럼-그레이스에게로 향한다. "그녀라면 충분하다... 그래, 타나리. 그녀를 우리에게 달라... 우리는 그녀를 산 채로 먹고, 그녀의 달콤한 피로 목욕을 할 것이다... 그 다음에 우리가 네 질문에 대답해주겠다." 여러 머리들이 그레이스를 부르며 갈망으로 신음하기 시작한다: "그래, 타나리, 감미로운 서큐버스, 사악한 것, 우리에게 널 맡겨라..."~ */
  IF ~~ THEN REPLY #53422 /* ~"좋소. 그녀를 데려가시오."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~기둥 속에서 굵직하게 울려 퍼지는 소리가 들린다. 더 많은 머리들이 소용돌이치는 표면으로 올라와 진홍색 눈으로 당신을 해부하듯 쳐다본다. 마침내 그들의 시선은 안나에게로 간다. "휜들링! 우리에게 티플링 소녀를 달라. 그래... 우리는 그녀를 우리 안에서 갈가리 찢고, 그녀의 달콤하고 뜨거운 피로 목욕하는 것을 즐길 것이다. 그 다음에 우리가 네 질문에 대답해주겠다." ~ */
  IF ~~ THEN REPLY #53428 /* ~"좋소. 그녀를 데려가시오."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"그럴 수는 없소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~기둥의 머리들은 하나도 남김없이 모두 입가에 사악하고 역겨운 미소를 띄운다. 그들은 웃고 떠들며 당신을 비웃고 있다. "네게 우리에게 줄 것이 아무 것도 없다... 너 자신 말고는, 불사신... 우리가 네 죽지 않는 피를 맛볼 수 있게 해 달라. 그러면 우리가 네 질문에 대답해주겠다." 머리들은 이빨을 딱딱거리며 기대감에 부풀어 자신들의 갈라지고 고름투성이인 입술을 핥으며 입맛을 다신다.~ */
  IF ~~ THEN REPLY #53433 /* ~"좋소. 당신 요구를 받아들이겠소."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~해골들의 기둥은 뒤로 물러나 냉소하는 표정으로 당신을 내려다본다. 그들은 내뱉듯이 말을 한다. " 우리에게 거짓말을 할 생각은 마라, 어리석은 자여. *흐줄*은 어디 있는가? 말하라, 그러면 우리가 너의 거짓말을 용서하고 네 질문에 대답해주겠다."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"아웃랜즈, 모든 고리스토의 아버지인 울-고리스가 분화구 전쟁에서 숨을 거둔 곳에. 흐줄은 그 해골 안에 살고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"아웃랜즈, 모든 고리스토의 아버지인 울-고리스가 분화구 전쟁에서 숨을 거둔 곳에. 흐줄은 그 해골 안에 살고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"말하지 않겠소. 다른 어떤 선물이라면 받겠소?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~당신은 입방체를 해골들의 기둥 쪽으로 던진다, 그러자 기둥의 옆쪽에 강렬한 악취가 나는 틈새가 벌어져 그것을 받는다. 잠시 후 틈새는 닫히고 입방체는 사라진다 - 왠지 당신에게는 그것이 영원히 사라졌다는 생각이 든다. 머리들은 행복하게 꼴깍거리며 기둥의 전면에서 천천히 움직인다.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"그럼 우리에게 다가오라... 그래, 가까이 오라..." 당신이 다가가자 머리들은 기둥 쪽으로 물러서는 듯하다i...~ */
  IF ~~ THEN REPLY #53447 /* ~더 가까이 다가간다.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"실은 생각을 바꿨소. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"실은 생각을 바꿨소. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~당신은 기둥 쪽으로 단 한 걸음만 다가갔다. 그러나, 갑자기 당신은 자신이 기둥의 꿈틀거리는 표면에 상상했던 것보다 훨씬 가까이 다가갔다는 사실을 깨닫는다. 당신이 미처 반응을 하기도 전에 그것은 부러진 뼈와 구더기가 들끓는 썩은 고기로 만들어진 파도처럼 당신에게 밀려온다. 불쾌한 어둠이 당신을 감싸고, 기둥의 머리들은 당신을 산 채로 먹기 시작한다...~ */
  IF ~~ THEN REPLY #53451 /* ~어둠 속으로 빠져든다...~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~당신은 방금 정확히 무슨 일이 일어났는지 몰라 어리둥절한 상태로 아픈 몸을 이끌고 해골들의 기둥 앞에 서 있다. 하지만 확실한 것은 당신 몸이 방금 전에 겪은 시련 탓에 훨씬 *약해졌다는* 사실이다. 엽기적인 머리들이 당신을 내려다보며, 미소를 띤 채 입맛을 다시고 있다. ~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~기둥은 한동안 당신의 선물을 즐긴다. 그것의 머리들은 자기들끼리 정답게 속삭이고 있다. ~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~해골들의 기둥은 내게 자기가 거짓말로 다른 사람들을 죽음으로 몰아넣은 자들의 해골들로 만들어졌다고 말했다. 그것은 많은 질문에 답해줄 수가 있으나, 지식의 대가로 나로부터 많은 것을 요구하고 있다.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"우리는 오래 전, 아직 인간이었을 때, 다른 이들을 죽음에 이르게 한 제안이나 암시를 한 자들이다. 어떤 자들은 우리들을 '거짓말쟁이들'이라고 부른다, 하지만 '진실'이란 거짓말의 또 다른 아름이 아닌가? 진실이 거짓을 감추는 것은 일상다반사이다..." 머리들은 자기네들끼리 중얼거리고 고개를 끄덕이며 멋대로 납득을 한 후, 다시 당신에게으로 고개를 돌린다. "우리는 많은 것을 안다... 하지만 우리들에게 질문하는 자들에게도 그만한 요구를 한다." ~ */
  IF ~~ THEN REPLY #53461 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"너는 이미 열쇠를 가지고 있다, 그리고 그 곳으로 널 인도할 전이문의 위치만 알면 된다. 우리들도 전이문이 어디 있는지는 모른다, 그러나 열쇠가 무엇인지는 말해줄 수 있다. 열쇠는 '후회'이다. 기둥의 많은 머리들이 울면서 신음하기 시작한다: "그래, 후회! 후회!"~ */
  IF ~~ THEN REPLY #53465 /* ~"후회?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~해골들의 기둥은 내게 후회의 요새로 통하는 전이문의 열쇠는 '후회'라고 말해주었다. 그럴싸한 답인 것 같다. 하지만 그것은 전이문이 어디 있는지는 알지 못했다. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"그렇다... 요새로 들어가려면 후회를 체험한 적이 있어야만 한다. 후회를 너의 피부 조각에 쓰면 전이문을 통과할 수가 있다."~ */
  IF ~~ THEN REPLY #53470 /* ~"그리고 전이문... 당신은 그것이 어디 있는지 모른다고 했소?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"그렇다... 그 길을 아는 자는 셋밖에 없었다. 첫 번째는 너였다... 하지만 이제 너는 망각했다. 두 번째는 전이문 저편에 있으며 결코 모습을 나타내지 않을 것이다. 세 번째는..."~ */
  IF ~~ THEN REPLY #53474 /* ~"세 번째...?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"... 세 번째는 네가 이미 만난 자이다. 그들은 너의 상태, 요새, 그리고 네가 그 곳에 가야만 한다는 사실에 대해 잘 알고 있다... 그러나 그들은 너를 돕지 않을 것이다. 그들의 방패는 거짓과 기만이라는 차가운 금속으로 만들어졌다, 그리고 그것은 단순한 말로는 깨트릴 수가 없다. 너는 그들과 싸워야만 한다. ~ */
  IF ~~ THEN REPLY #53479 /* ~"그게 누구요?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~머리들은 사악하기는 하나 말쑥한 미소를 지으며 잠시 침묵한다. 마침내 그것이 다시 입을 연다. "너는 이미 기만자를 만났다 - 그리고 처음으로 만난 것도 아니다. 기만자는 알고 있다... 하지만 네게 말해주지 않았다. 불사신들 사이의 치사한 배신..." 썩어 가는 머리들 중 일부가 당신에게 눈알을 부라리며 낄낄댄다.~ */
  IF ~~ THEN REPLY #53484 /* ~"갈라진-혀의 흐줄?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"로타?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"래벌?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"트리어스?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~해골들의 기둥은 그것이 '배신자 트리어스'라고 부르는 트리어스가 후회의 요새로 통하는 전이문의 위치를 알고 있다고 내게 말해주었다. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~머리들은 의기양양하게 웃는다. "그자는 아니다, 다시 맞춰봐라..."~ */
  IF ~~ THEN REPLY #53493 /* ~"갈라진-혀의 흐줄?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"로타?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"래벌?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"트리어스?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~해골들의 기둥은 그것이 '배신자 트리어스'라고 부르는 트리어스가 후회의 요새로 통하는 전이문의 위치를 알고 있다고 내게 말해주었다. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"오, 그렇다... 우리는 그의 *진짜* 이름으로 그를 안다: 배신자 트리어스!" 기둥은 웃음으로 진동한다, 썩은 머리들의 더미가 당신의 불행을 비웃으며 앞뒤로 움직인다. 머리들 중 몇은 조롱하듯 영창을 한다: "배신자... 배신자... 배신자 트리어스..."~ */
  IF ~~ THEN REPLY #53502 /* ~"하지만 그는 내게 모른다고 했소..."~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"그가 왜 내게 거짓말을 했을까?~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"그는 어떻게 이 일에 대해 알게 되었소?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"그는 너에게 *거짓말*을 했다." 머리들 중 일부는 눈을 가늘게 뜨고 꼴깍거리며 웃는다 - 그들은 당신을 비웃고 있다. "사탕발림을 한 말을 조심하라, 온갖 종류의 벌들을 끌어 모을 테니."~ */
  IF ~~ THEN REPLY #53509 /* ~"그가 왜 내게 거짓말을 했을까?~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"그는 어떻게 이 일에 대해 알게 되었소?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"그 질문에 우리는 답할 수 없다. 그를 직접 찾아가 물어봐야만 한다."~ */
  IF ~~ THEN REPLY #53515 /* ~"그는 어떻게 이 일에 대해 알게 되었소?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"트리어스는 오래 전에 너와 대화를 나눈 적이 있다, 네가 길을 알았을 때. 너는 네 의중을 털어놓았다. 그리고 트리어스는 모든 위대한 배신자들이 다 그렇듯이 네 얘기에 귀를 기울이는 척하여 네 신뢰를 얻었다. 그 대화는 짧은 대화였으니 *의미*가 있는 대화였다. 의미와 죽음이 네가 추구하는 것이다. 보통 인간에게 그 두 가지는 전혀 별개의 것이나, 네게는... 하나나 마찬가지다.~ */
  IF ~~ THEN REPLY #53520 /* ~"그가 왜 내게 거짓말을 했을까?~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"누구냐가 아니라 무엇이냐다. 너는 여럿으로 나뉘어졌다. 너는 여럿 중 하나이다 - 많은 사람들 중 하나이다. 각 화신은 그가 선하든 악하든 모두 존재에 그림자를 드리우는 괴물이다."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"존재에 드리운 그림자?"~ */ JOURNAL #53527 /* ~해골들의 기둥은 내가 '존재에 그림자'를 드리우기 때문에 내가 죽을 때마다 누군가가 내 대신 죽는다고 한다. 그렇게 죽은 자들은 사후에 그림자 괴물이 되며, 후회의 요새에 모여서 나를 기다리는 모양이다. ~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"존재에 드리운 그림자?"~ */ JOURNAL #53527 /* ~해골들의 기둥은 내가 '존재에 그림자'를 드리우기 때문에 내가 죽을 때마다 누군가가 내 대신 죽는다고 한다. 그렇게 죽은 자들은 사후에 그림자 괴물이 되며, 후회의 요새에 모여서 나를 기다리는 모양이다. ~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"오, 그렇다." 기둥의 머리들은 눈을 가늘게 뜨고 엽기적인 미소를 짓는다. "'불사신,' 너는 죽을 때마다 존재에 그림자를 드리운다. 네가 죽을 때마다 *다른* 누군가가 네 대신 죽는다. 이 그림자들... 그들은 후회의 요새에 모여서 너를 애타게 기다린다. 너는 대체 몇 번이나 *죽었는가,* 이름 없는 자? 대체 얼마나 많은 목숨들이 *너* 때문에 죽었는가?" 기둥은 사악한 환희로 몸을 떤다. 그것의 머리들은 일부러 슬픈 표정을 짓고는 당신을 조롱하듯 꼴깍거린다. 갑자기 당신의 뒤통수의 머리털이 곤두선다... 돌아보니 베일로가 당신을 노려보고 있다... 그의 눈이 그토록 밝게 타오르는 것은 일찍이 본 적이 없다...~ */
  IF ~~ THEN REPLY #53529 /* ~"베일로...?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"오, 그렇다." 기둥의 머리들은 눈을 가늘게 뜨고 엽기적인 미소를 짓는다. "'불사신,' 너는 죽을 때마다 존재에 그림자를 드리운다. 네가 죽을 때마다 *다른* 누군가가 네 대신 죽는다. 이 그림자들... 그들은 후회의 요새에 모여서 너를 애타게 기다린다. 너는 대체 몇 번이나 *죽었는가,* 이름 없는 자? 대체 얼마나 많은 목숨들이 *너* 때문에 죽었는가?" 기둥은 사악한 환희로 몸을 떤다. 그것의 머리들은 일부러 슬픈 표정을 짓고는 당신을 조롱하듯 꼴깍거린다.~ */
  IF ~~ THEN REPLY #53531 /* ~"당신이 할 말은 그것뿐이오. 기둥?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~머리들은 갑자기 웃음을 멈춘다. "아니다. 너는 여러 가지 이름을 지니고 있으며, 그것들은 각각 너의 육신에 흉터를 남겼다."~ */
  IF ~~ THEN REPLY #53536 /* ~"계속하시오..."~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"기다리시오... 다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"길 잃은 자... 불사신... 마지막 화신... 천 번 죽은 사나이... 안식을 얻지 못하는 자... 여럿 중 하나... 삶의 죄수... 그림자를 부르는 자... 상처 입은 자... 불행의 원흉... 예메스(죽지 않는 자)...~ */
  IF ~~ THEN REPLY #53541 /* ~계속 듣는다.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"기다리시오... 다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"너는 깨어져 그 파편들이 역사상의 여러 시점으로 뿔뿔이 흩어진, 은을 입힌 거울이다. 히지만 그 중에서 한 조각만 중요하다. 그 파편만 찾으면 너의 삶은 다시 너의 것이 될 것이다. 하지만 대가를 치러야 한다. 이 대가는 너에게 한 번의 기회를 줄 것이다. 그 기회가 없으면 너는 파멸이다..."~ */
  IF ~~ THEN REPLY #53546 /* ~"계속하시오..."~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"기다리시오... 다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"너는 인간으로부터 결코 분리되어서는 안 될 것을 잃었다. 너는 네 죽음을 빼앗겼다. 잃어버렸다. 그것은 아직 존재한다, 그러나 너는 그것을 네가 정신을 완전히 잃어버리기 전에 찾아야만 한다."~ */
  IF ~~ THEN REPLY #53551 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"이 곳을 떠난 후, 황페한 계곡을 둘러싸고 있는 바위들을 따라 서쪽으로 똑바로 가라. 계속 가다 보면 계곡이 끝나는 곳에 도달하게 될 것이다. 그 곳에서 돌들 사이에 있는 전이문을 찾아라. 그것의 열쇠는 아버누스의 화염에 의해 최근에 타버린 흑요석이다. 전이문 주변에 많이 널려 있을 것이다. 그 파편을 입에 넣고 물어서 그것이 네 혀를 베도록 하라. 그것이 바로 네 열쇠가 될 것이다. ~ */
  IF ~~ THEN REPLY #53555 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~기둥은 기묘하게도 아무 말이 없다. 그것의 머리들 중 일부는 그냥 시선을 다른 곳으로 돌리고 있고, 다른 머리들은 고통스런 표정으로 전율하고 있다. 마침내 그들은 정신을 가다듬고는 다시 입을 연다. "우리는... 모른다. 그러한 지식을 가지고 있던 머리들은 파괴되었다 - 우리들로부터 제거되었다. 우리는 이 질문에 대답할 수 없다."~ */
  IF ~~ THEN REPLY #53559 /* ~"그렇다면 질문을 하나 더 하겠소..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~기둥은 갑작스러운 요구로 당신의 출발을 제지한다: "멈춰라. 우리에게 해골을 다오. 우리는 그가 떠나는 것을 허용할 수 없다. 그는 우리 것이다. 그는 아버누스를 떠날 수 없다." 머리들은 모트를 도발하는 동시에 회유한다: "그래, 해골, 부끄러워하지 마라... 돌아와라, 해골... 여긴 참 아늑하다, 해골... 자, 돌아와라... 아무런 고통도 없을 것이다, 해골... 천 개가 넘는 다른 거짓말쟁이 머리들과 썩은 기둥에서 몸도 없이 함께 사는 건 참으로 즐겁다..."~ */
  IF ~~ THEN REPLY #53563 /* ~모트를 잡아서 해골들의 기둥에 쑤셔넣는다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"그만하시오, 기둥. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~기둥의 격분한 머리들은 차원을 가로지를 정도로 시끄럽게 울부짖고 고함을 지르기 시작한다. 귀청이 터질 정도의 불협화음이 울려 퍼짐에 따라 당신 발 아래의 대지조차도 흔들리기 시작한다...~ */
  IF ~~ THEN REPLY #53567 /* ~재빨리... 떠난다.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~기둥의 머리들은 모트가 비명을 지르며 기둥의 끔찍한 중심을 향해 가라앉는 것을 웃고 떠들며 즐거워한다. 모트는 틀림없이 그 안에서 다른 잘라진 머리들의 '손'에 의해 끝없는 고문을 당할 것이다. 소동이 가라앉자 머리들은 자기들끼리 정답게 속삭이기 시작한다. 그 때 갑자기 모트가 울부짖으며 표면으로 떠오른다: "아이이이! 날 꺼내줘!!! 제발! 제발! 다시는 거짓말 안 할께- !" ...그러나 그는 떠오른 것만큼이나 빠른 속도로 기둥의 표면 아래로 끌려 들어간다.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~나는 모트를 해골들의 기둥 속으로 다시 집어넣었다. 물론 그는 별로 달가워하지 않았다.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~나는 모트를 해골들의 기둥 속으로 다시 집어넣었다. 물론 그는 별로 달가워하지 않았다.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~나는 모트를 해골들의 기둥 속으로 다시 집어넣었다. 물론 그는 별로 달가워하지 않았다.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"그리고 내 질문에 대한 답은...?~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~나는 모트를 해골들의 기둥 속으로 다시 집어넣었다. 물론 그는 별로 달가워하지 않았다.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"안녕히 계시오, 기둥."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~당신은 다시 해골들의 기둥 앞에 서 있다. 이 거대한 더미를 구성하는 무수한 썩은 머리들은 지속적으로 이동하고 고동치면서, 자기들끼리 말다툼하고, 울고, 대화하고, 소리치고, 속삭이고 있다. 머리들은 번갈아 가며 기둥의 역겨운 중심부로 표면으로 올라왔다가 다시 꺼지는 것을 반복하고 있다. ~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~기둥의 관심을 끈다.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~기둥의 관심을 끈다.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~기둥의 관심을 끈다.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~기둥이 당신의 존재를 알아차리기 전에 떠난다.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~당신은 다시 해골들의 기둥 앞에 서 있다. 이 거대한 더미를 구성하는 무수한 썩은 머리들은 지속적으로 이동하고 고동치면서, 자기들끼리 말다툼하고, 울고, 대화하고, 소리치고, 속삭이고 있다. 머리들은 번갈아 가며 기둥의 역겨운 중심부로 표면으로 올라왔다가 다시 꺼지는 것을 반복하고 있다. ~ */
  IF ~~ THEN REPLY #53581 /* ~기둥의 관심을 끈다.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~기둥이 당신의 존재를 알아차리기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~당신이 조심스럽게 기둥에 한 걸음 더 다가가자, 그들의 모든 대화가 갑자기 멈춘다. 기둥의 표면을 장식하는 수십 개의 머리들은 일제히 당신 쪽으로 고개를 돌린다. 그들은 당신을 조용히 쳐다본다. 그 때 모트가 끔찍한 비명을 지르며 기둥의 표면으로 떠오른다: "가아아아! 대장! 날 꺼내줘!! 제발! 제발!"~ */
  IF ~~ THEN REPLY #53584 /* ~모트를 무시하고 그가 다시 기둥 속으로 가라앉기를 기다린다. ~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~모트를 빼내려고 시도한다. ~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~외면하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~모트는 자신을 뒤덮고 있는 피와 역겨운 점액 사이로 닭똥 같은 눈물을 흘리며 구해 달라고 애원한다. "대장, 제발, 애원하겠어! 대장은 날 꺼내줘야 한다고, 제발, 다시는 거짓말 안 할께- !" ...그러나 그는 떠오른 것만큼이나 빠른 속도로 기둥의 표면 아래로 끌려 들어간다.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~당신은 번개처럼 손을 내밀어 모트가 다시 기둥의 중심부로 끌려 들어가지 전에 그를 움켜잡는다. 머리들은 분노로 울부짖는다: "안돼! 안돼! 멈춰라! 너는 그를 데려갈 수 없다!" 머리들은 당신에게 달려들어 당신의 손과 손목을 자신들의 톱니 같은 지독한 이빨로 물어뜯기 시작한다...~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~계속 싸워 모트를 기둥으로부터 끌어낸다. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~당신의 숙달된 마법의 기술을 이용하여 순수한 마력을 모트를 해방시키는 데 사용한다. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~주춤하는 척하며 물러서 한쪽 방향으로 페인트를 건 후, 기둥이 무엇이 자신을 쳤는지 미처 알아차리기 전에 모트를 빼낸다. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~계속 싸워 모트를 기둥으로부터 끌어낸다. ~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~계속 싸워 모트를 기둥으로부터 끌어낸다. ~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~포기하고 모트가 가라앉도록 내버려 둔다. ~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~해골들의 기둥은 당신과 혈투를 벌인다, 하지만 그것이 당신에게 이기기에는 당신의 전사로서의 역량이 너무나 뛰어나다. 당신은 공격해 오는 머리들을 치기, 때리기, 차기, 박치기, 그리고 심지어는 물어뜯기 등 온갖 수단을 동원하여 물리친다, 그리고 마침내 살이 찢어지는 소리와 함께 모트를 해방하는 데 성공한다. 하지만 이 전투는 당신의 체력을 심하게 소모시켰다... 왠지 당신은 자신이 전보다 약해졌다고 느낀다. ~ */
  IF ~~ THEN REPLY #53602 /* ~"봤지, 모트? 내가 걱정할 건 아무 것도... 없다고... 했잖아..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~해골들의 기둥은 당신과 혈투를 벌인다, 하지만 그것이 당신에게 이기기에는 당신의 마력이 너무나 강대하다. 당신은 집중되지 않은 순수한 마나(기)를 손을 통해 기둥으로 방출함으로서 그것에 지속적으로 타격을 입힌다, 그리고 마침내 모트를 해방하는 데 성공한다. 하지만 이 전투는 당신의 체력을 심하게 소모시켰다... 왠지 당신은 자신이 전보다 약해졌다고 느낀다. ~ */
  IF ~~ THEN REPLY #53604 /* ~"봤지, 모트? 내가 걱정할 건 아무 것도... 없다고... 했잖아..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~기둥이 혈전에 대비하는 것을 본 당신은 뒤로 물러서는 척한다. 모트가 다시 가라앉기 시작하고 기둥이 다시 입을 열려고 하는 바로 그 순간, 당신은 앞으로 달려들어 모트를 움켜잡는다. 단지 하나의 머리만이 당신이 모트를 빼내기 전에 당신의 팔뚝을 심하게 물어뜯는다... 당신은 엄지손가락으로 그의 눈을 찔러 그를 뿌리치고, 마침내 옛(?) 동료를 구해낸다. 하지만 이 일은 당신의 체력을 심하게 소모시켰다... 왠지 당신은 자신이 전보다 약해졌다고 느낀다. ~ */
  IF ~~ THEN REPLY #53606 /* ~"봤지, 모트? 내가 걱정할 건 아무 것도... 없다고... 했잖아..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~모트를 내줄 생각이 없는 해골들의 기둥은 당신과 혈전을 벌인다. 결국에 가서는 당신이 지고 만다. 모트가 비명을 지르면서 다시 가라앉는 것을 보면서 당신은 뒤로 물러선다. 당신의 팔뚝은 기둥의 머리들에게 물어뜯긴 상처들 때문에 유혈이 낭자하다. 지금도 그들은 당신 피를 자신들의 썩은 입술에서 혀로 핥아 내며 당신을 비웃고 있다... ~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"질문할 것들이 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"질문할 것들이 있소, 기둥."~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~모트를 내줄 생각이 없는 해골들의 기둥은 당신과 혈전을 벌인다. 결국에 가서는 당신이 지고 만다. 모트가 비명을 지르면서 다시 가라앉는 것을 보면서 당신은 뒤로 물러선다. 당신의 팔뚝은 기둥의 머리들에게 물어뜯긴 상처들 때문에 유혈이 낭자하다. 당신이 쓰러져서 죽어가는 동안에도 그들은 당신 피를 자신들의 썩은 입술에서 혀로 핥아 내며 당신을 비웃고 있다... ~ */
  IF ~~ THEN REPLY #53615 /* ~죽는다.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~기둥의 머리들은 이를 갈고, 가래를 내뱉으며, 분노로 고함을 지르고 있다. "그는 우리 것이다! 우리 것이다! 우리 것이다!" 갑자기 그들은 . "좋다. 일단은 네 승리를 즐기거라, '불사신.' 우리는 어떤 방법으로든 그를 되찾을 것이다."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"그래 좋소. 질문할 것들이 좀 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"그래 좋소. 질문할 것들이 좀 있소, 기둥."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"그래 좋소. 질문할 것들이 좀 있소, 기둥."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"그래 좋소. 질문할 것들이 좀 있소, 기둥."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"그래 좋소. 질문할 것들이 좀 있소, 기둥."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"그렇고 말고. 안녕히 계시오."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
