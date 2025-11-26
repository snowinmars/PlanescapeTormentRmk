// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~더럽고 다 해어진 옷을 입은 채 구석에서 미친 듯이 왔다갔다하고 있는 노인이 보인다. 벼락이라도 맞은 것 같은 그의 더러운 흰색 머리는 사방으로 뻗치고 있다, 그리고 먼지와 마른 피로 뒤덮인 그의 얼굴에는 수염이 무성하게 나 있다. 몇 초마다 그는 걸음을 멈춘다, 그리고 마치 보이지 않는 적에게 습격이라도 당한 듯 주먹질을 하며 욕설을 퍼붓는다. 그는 당신이 다가오고 있다는 사실을 눈치채지 못한 듯하다. ~ */
  IF ~~ THEN REPLY #30133 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~노인은 미친 듯한 걸음을 멈추고 불안한 눈으로 당신을 흘겨본다. "포크? 포크? 포크? 포크 없이는 고향에 갈 수가 없어."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"이것 보시오... 알로가 내게 당신을 내쫓아 달라고 했소, 그러니 여기서 떠나 주어야겠소"~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"당신... 포크?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"이게 당신이 말하던 바로 그 포크요?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~당신 목소리를 듣자 늙은 광인은 급선회한다, 그리고 당장이라도 튀어나올 것 같은 커다란 눈으로 당신을 빤히 쳐다본다. 그는 당신을 잠시 바라보더니 다시 광란하기 시작한다. "아니야! 아니야! 당신이 아니야... 후 후! 하지만 곧... 그래, 곧."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"당신이 네스터라 불리는 사람이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"어... 당신은 누구와 얘기를 하고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~노인은 당신의 존재를 인지하지 못하는 것 같다. "후 후 후! 넌 올 거야. 그래... 넌 올 거야. 그리고 이 네스터는 기다릴 거야."~ */
  IF ~~ THEN REPLY #30142 /* ~"괜찮소?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"기다려? 누구를 기다린단 말이오?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"이것 보시오... 알로가 내게 당신을 내쫓아 달라고 했소, 그러니 여기서 떠나 주어야겠소"~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"기다릴 거야, 그래..." 그는 피로를 견디지 못 하겠는 듯 갑자기 바닥에 쿵 소리를 내며 쓰러진다. "오래 기다렸어... 오래." 그는 심호흡을 하더니 다시 일어난다. "그래야 한다면 영원히 기다릴 거야! 내 말이 들려?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"이것 보시오... 알로가 내게 당신을 내쫓아 달라고 했소, 그러니 여기서 떠나 주어야겠소"~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"괜찮소?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"어... 그럼 하던 일이나 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"안돼!!!!" 네스터의 얼굴이 홍당무가 된다, 그리고 그는 항의의 표시로 자신의 온몸을 흔들어 댄다. "내 포크! 내 포크 없이는 떠날 수 없어! 포크! 후 후! 포크, 포크, 포크!"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"당신... 포크?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"황설수설은 집어치워, 늙은이. 죽어서 나가든 아니면 살아서 나가든 이제는 당신이 떠날 때가 됐소, ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"이래서는 끝이 없겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"포크? 포크! 포크! 내 포크 없이는 고향에 갈 수가 없어!" 네스터의 광기가 그 절정에 이른다. 그는 미친 듯이 뛰어다니다가 갑자기 멈춘다, 그리고 고개를 숙인 후 여인석의 뒤쪽 벽에 있는 커다란 선반을 향해 물불을 가리지 않고 돌진한다. 노인은 충돌의 충격 때문에 나가 자빠진다. 잠시 후 그는 멍한 표정으로 다시 일어난다. "없어졌어. 없어졌어. 내 포크 없이는 고향에 갈 수가 없어."~ */
  IF ~~ THEN REPLY #30152 /* ~"도난당했다고 했소? 누가 당신 포크를 훔쳐갔소?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"이래서는 끝이 없겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~네스터는 한 동안 당신을 쳐다본다, 그리고 나서 자신의 더러운 튜닉의 주머니 속을 샅샅이 뒤지기 시작한다. 잠시 후 그는 잘라진 귀처럼 보이는 것을 꺼낸다. 귀의 악취와 색깔로 미루어 볼 때 이 늙은 미치광이는 그것을 주머니 속에 꽤 오래 넣어 두었던 모양이다. "내 포크를 가지고 있지? 그렇지? 후 후!" 그는 마치 귀에게 얘기라도 하는 것처럼 그것을 얼굴 가까이에 댄다. "내 포크를 돌려줘!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"만약 내가 포크를 찾아주면 떠나겠소?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"내가 당신을 도울 수 있을지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"기다려! 기다려! 기다려! 후 후!" 그는 귀를 향해 고함을 지르면서 그것을 격하게 흔든다. "네가 그것을 돌려줄 때까지! 그럼 난 고향에 갈 수 있어!"~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"이게 당신이 말하던 바로 그 포크요?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"좋소. 그럼 당신 포크를 찾아보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~나는 여인숙의 미치광이 네스터가 그의 포크를 되찾는 일을 돕기로 합의했다. 자기 호주머니에 귀를 여러 개 넣고 다니며 마치 그것들이 말을 들을 수나 있는 것처럼 그것들에게 얘기를 하는 것을 볼 때 그는 단단히 미쳤다. 하지만 그의 포크를 찾아준다고 해서 해가 될 일은 없을 것이다. ~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"관두시오. 미치광이를 위해 식기를 찾는 일보다 더 보람된 일은 얼마든지 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"안돼!! 내 포크 없이는 고향에 갈 수가 없어." 그는 마치 궁지에 몰린 짐승처럼 이를 드러내고 으르렁거리면서 뒤로 물러선다.~ */
  IF ~~ THEN REPLY #30160 /* ~그를 붙잡는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"이것 보시오, 난 당신을 해치기 싫소... 하지만 당신은 떠나야만 하오."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"마음대로 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~당신은 손을 내밀어 노인을 잡으려고 한다, 하지만 그는 나이에 비해 놀랄 정도로 민첩하다. 당신이 그를 꽉 잡기 전에 그는 당신 손아귀에서 벗어나 당신이 내민 손을 이빨로 문다. 당신은 고통 때문에 주춤거리며 손을 거두어들인다."~ */
  IF ~~ THEN REPLY #30163 /* ~"좋소. 그럼 무력을 동원할 수밖에..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"이것 보시오, 난 당신을 해치기 싫소... 하지만 당신은 떠나야만 하오."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"마음대로 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~네스터는 약간 진정한다, 그리고 그의 통방울눈은 눈물을 흘리기 일보직전이다. "고향에 갈 수 없어. 없어. 없어. 없어. 포크 없이는."~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"당신... 포크?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"이래서는 끝이 없겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~네스터는 성급히 포크를 낚아챈다. "내 포크? 내 포크! 포크! 포크! 포크! 후 후!" 그는 흥분하여 깡충깡충 뛴다, 그리고 마치 무슨 의식이라도 거행하는 것처럼 자신의 머리 위에서 포크를 복잡한 패턴에 따라 앞뒤로 흔들어 댄다. "이제 난 고향에 갈 수 있어! 안녕! 후 후!"~ */
  IF ~~ THEN REPLY #30168 /* ~"안녕히 계시오, 네스터."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~네스터는 떠나려고 돌아선다. 그 때 갑자기 어떤 생각이 난 듯 그는 다시 당신 방향으로 돌아서서 당신에게 부드럽고 탄력성이 있는 물체를 준다. 그것은 잘라진 귀다. 자세히 보니 그것에는 아직도 귀걸이가 하나 달려 있다. ~ */
  IF ~~ THEN REPLY #30169 /* ~귀걸이를 주머니에 넣고 썩은 살점을 떼어내 버린다.~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~나는 네스터에게 그의 포크를 돌려주었다. 알고 보니 그 포크는 전이문 열쇠의 일종이었다. 일단 그것을 되찾자 네스터는 자신이 온 곳으로 돌아갈 수 있었다. 그 불쌍한 자가 고향으로 돌아갈 수단도 없이 시길에서 얼마나 오랫동안 오도가도 못할 신세로 지내야했었는지 궁금하다. ~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~네스터는 당신을 완전히 무시하고 방 뒤의 선반만 바라보고 있다.~ */
  IF ~~ THEN REPLY #61634 /* ~떠난다.~ */ EXIT
END
