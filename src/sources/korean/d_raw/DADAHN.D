// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~당신 앞에 서 있는 남자는 마른 체격에 큼직한 눈을 가지고 있다. 그는 바의 다른 손님들 때문에 당황하고 공포에 질린 것 같으나, 당신을 만나게 되어 매우 안심이 된 듯하다.~ */
  IF ~~ THEN REPLY #3016 /* ~"안녕... 하시오?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~그를 무시하고 돌아선다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~그는 가볍게 웃으며 '당신은 내게 무슨 일이 일어났는지 알지 못할 거야'라는 표정으로 눈알을 희번덕거린다. 그런데 어쩐지 당신은 그 표정이 낯이 익다. "드디어 왔군, 친구! 난 온종일 기다려야 하는 줄만 알았소."~ */
  IF ~~ THEN REPLY #13302 /* ~"어... 내가 당신을 아오?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"물론이오." 그는 당신을 응시한다. "적어도 그럴 생각이오. 나... 어... 글쎄... 나는 당신에 대한 모든 것을 기억할 수는 없소, 하지만..." 그는 생각하느라 눈살을 찌푸린 후 어깨를 으쓱한다. "...어쨌든 만나서 반갑소. 나는 아단이오. 내 생각에 우린 친구요. 멋지군! 당신같은 친구가 더 있으면 좋으련만..." 그는 혼란스러운 듯 주변을 둘러본다. "이 곳엔 내가 아는 사람도 없고 또 내가 어떻게 이 곳에 오게 됐는지도 모르니까..."~ */
  IF ~~ THEN REPLY #13303 /* ~"당신은 어디서 왔소?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"아단은 내가 만들어 낸 사람이오. 난 그런 이름을 지닌 사람이 있으리라고는 생각하지 않았소."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"이만 실례해야겠소. 안녕히 계시오... 아단."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~아단은 놀란 듯 하다, 그리고 그는 다시 당황해 한다. "나... 흠..." 그는 눈살을 찌푸린다. "나는 이 근처 사람은 아닌 것 같소... 아니오?" 그런 장소라면 기억을 했을 텐데. 난 내가 어디서 왔는지도 어디로 가야할 지도 모르겠소..."~ */
  IF ~~ THEN REPLY #13306 /* ~"당신은 내가 누군지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"이만 실례해야겠소. 안녕히 계시오... 아단."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"옛 친구...? 그는 확인을 하려는 것 같다. "당신은 내 옛 친구가 아니오?"~ */
  IF ~~ THEN REPLY #13308 /* ~"그래, 그렇소. 어쨌든 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"그렇지 않소. 아단은 내가 만들어 낸 사람이오. 난 그런 이름을 지닌 사람이 있으리라고는 생각하지 않았고, 더욱이 그가 내 친구라고는 상상조차 못했소."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"즐거웠소, 아단, 하지만 난 떠나야겠소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"정말이오?" 그는 대수롭지 않다는 듯 어깨를 으쓱한다. "난 내가 당신을 만들어 냈다고 생각하지 않소, 그러니 상관없소... 아니 있소?" 나는 생각한다, 고로 존재한다." 그는 당황한 것 같다. "그렇게 생각하지 않소?"~ */
  IF ~~ THEN REPLY #13311 /* ~"맞는 것 같소. 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"실은 난 당신을 만들어 낼 의도가 전혀 없었소. 혹시 당신은 내 상상이 만들어 낸 허구의 존재가 아니오?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"즐거웠소, 아단, 하지만 난 떠나야겠소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~아단은 놀란 듯하다. 그는 뭔가를 말하려고 하다 갑자기 사라진다. ~ */
  IF ~~ THEN REPLY #36923 /* ~"어... 그럼 안녕히 계시오."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"아, 나도 당신에 물어볼 것이 있소..." 그는 눈살을 찌푸린다. "그런데 생각이 나지 않소." 그는 어깨를 으쓱한다. "상관없소. 질문이 아니라 답이 중요하니까."~ */
  IF ~~ THEN REPLY #13314 /* ~"즐거웠소, 아단, 하지만 난 떠나야겠소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"이보시오... 어..." 그는 눈살을 찌푸린다. "당신이 떠나기 전에 당신에게 줄 것이 있소... 적어도 그렇다고 생각하오..."~ */
  IF ~~ THEN REPLY #13315 /* ~"뭐요?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"모르겠소." 그는 주머니에 손을 넣은 후 얼굴을 찡그린다. "뭘 넣기에는 주머니가 너무 작군..." 그는 머리를 긁는다. "아마..." 그는 소매를 겉어붙인다, 우선 왼쪽부터, 그리고 그다음에는 오른쪽을. 그는 화난 표정으로 소매를 다시 풀어 내린다. ~ */
  IF ~~ THEN REPLY #13316 /* ~"당신은 그걸 일어버렸소?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"왼쪽 소매를 다시 한 번 살펴보는 게 어떻겠소? 나는 그것이 거기 있을 거라고 생각하오."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"왼쪽 소매를 다시 한 번 살펴보는 게 어떻겠소? 나는 그것이 거기 있을 거라고 생각하오."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"아니, 잠깐만 기다리시오." 그는 작은 목소리로 저주하고 이번에는 오른쪽, 왼쪽의 순서로 소매를 겉어붙인다. 그가 왼쪽 소매를 겉어붙이자 팔목에 묶인 꾸러미가 보인다. 그는 안도한 듯 미소를 짓고, 그것을 풀어서 당신에게 준다. "내가 당신에게 주는 선물이오... 감사의 표시요!" 그는 당신이 그 아이템을 받자 고개를 끄덕인다. 살펴보니까 일종의 반지 같다.~ */
  IF ~~ THEN REPLY #13319 /* ~"고맙소, 아단."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"정말이오?" 그는 왼쪽 소매를 다시 겉어붙인다, 그리고 이번에는 팔목에 묶인 꾸러미가 보인다. 그는 안도한 듯 미소를 짓고, 그것을 풀어서 당신에게 준다. "내가 당신에게 주는 선물이오... 감사의 표시요!" 그는 당신이 그 아이템을 받자 고개를 끄덕인다. 살펴보니까 일종의 반지 같다.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"이것에는 돈도 좀 딸려 있지 않았소?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"이것에는 돈도 좀 딸려 있지 않았소?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"고맙소, 아단."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~그는 손가락으로 탁 소리를 낸다. "그래 거기 있었지." 그는 자신의 벨트를 내려다 본다, 그리고 이제 그 곳에는 주머니가 달려 있다. 그는 그것을 풀어 당신에게 준다. "거기 다 있소. 모두 동전 백 닢이오." 당신은 주머니를 받아서 연다. 그가 말한 액수가 그 안에 들어 있다.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"당신이 내게 주기로 했던 마법의 아이템은 어떻게 됐소?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"당신이 내게 주기로 했던 마법의 아이템은 어떻게 됐소?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"고맙소, 아단."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~그는 잠시 어리둥절해 한다, 그리고 기억을 해낸 듯 미소를 짓는다. "그래, 있소, 그렇지 않소?" 그는 오른쪽 소매에 손을 넣어 긴 대거를 꺼낸다. "여기 있소."~ */
  IF ~~ THEN REPLY #13326 /* ~"고맙소, 아단."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~아단에게 감사하려고 선물에서 눈을 들어 그를 본다, 그러나 그는 이미 사라지고 없다. 당신은 그가 떠나는 소리조차 듣지 못했다.~ */
  IF ~~ THEN REPLY #36922 /* ~"어... 그럼 안녕히 계시오."~ */ DO ~DestroySelf()
~ EXIT
END
