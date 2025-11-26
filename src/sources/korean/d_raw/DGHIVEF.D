// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~당신이 다가가자 여자는 공포에 질려 눈을 크게 뜬다. "다가오지 말아요! 가라고요! 날 그냥 내버려 두지 않으면 비명을 지르겠어요, 정말이에요!"~ */
  IF ~~ THEN REPLY #33305 /* ~그녀를 그냥 보내준다.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~당신이 다가가자 그녀는 방패막이 구실을 해줄 사람을 찾는 듯 주변을 두리번거린다. "나... 나는 아무 것도 몰라요. 제발 날 그냥 내버려 두세요.". ~ */
  IF ~~ THEN REPLY #33307 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"가서 다른 사람이나 귀찮게 하세요! 난 당신같은 작자와 얘기를 할 시간이..."~ */
  IF ~~ THEN REPLY #33309 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~여자는 완고하게 당신과는 한 마디도 하려고 하지 않는다. ~ */
  IF ~~ THEN REPLY #33311 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~당신이 자기에게 다가오고 있다는 사실을 깨닫자 여자는 얼굴이 새파래져 대거를 찾으려고 옷 속을 더듬기 시작한다. "난 당신과는 아무 말도 하지 않겠어요, 않겠다고요! 꺼져요!"~ */
  IF ~~ THEN REPLY #33313 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"당신이 파로드에 대해 캐묻고 다니고 있는 사람이군요! 그를 찾았나요? 만약 아직도 그를 찾지 못했다면 이 곳 북쪽에 있는 넝마주이 광장에 가보세요."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"나는 그를 이미 찾았소. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"더스트맨이 모이는 바에 가게 되면 누가 당신에게 시중을 들라고 해도 놀라지는 마세요!" 여자는 코방귀를 뀌고 낄낄거리기 시작한다. ~ */
  IF ~~ THEN REPLY #33317 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~여자는 꼬치에 꽂은 쥐처럼 보이는 것을 한 입 깨물고 있다. 당신이 쳐다보는 걸 눈치채고 그녀는 당신을 의심쩍은 눈초리로 째려본다. "당신도 먹고 싶으면 내 것을 쳐다보지 말고 크리든에게 가서 얘기를 하세요. 그는 해수 및 질병 관리국 밖에 서 있어요."~ */
  IF ~~ THEN REPLY #33319 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"만약 울부짖으며 뛰어다니는 미치광이들을 보면 피하세요. 그 굶주린 개들이란 작자들은 정말 소름이 끼쳐요..."~ */
  IF ~~ THEN REPLY #33321 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"난 당신에게 도움이 될 만한 걸 알지 못해요... 그러니 날 그냥 내버려 두세요."~ */
  IF ~~ THEN REPLY #33323 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~당신이 다가가자 그녀는 눈썹을 치켜 올린다. "난 남의 일에 참견하지 않아요... 그리고 당신도 그렇게 하는 게 좋을 것처럼 보이는군요. 잠시라도 말썽에 휘말려 들지 않으려고 노력을 해보세요. 그럼 안녕히 가세요." ~ */
  IF ~~ THEN REPLY #33325 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~당신이 다가가자 여자는 당신을 노려본다. "나는 벌통에서 모르는 사람과 얘기할 시간도, 또 그럴 생각도 없어요... 또한 그건 안전하지도 않아요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #33327 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~여자는 비참하게 한숨을 쉰다. "벌통에서 사는 것보다 별로 나쁠 건 없죠. 누굴 그냥 곁눈질하는 것만으로도 죽임을 당할 수가 있으니까요." ~ */
  IF ~~ THEN REPLY #33329 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"당신 꼴을 보니 여인숙에 가서 좀 쉬는 게 좋을 것 같군요. 관심이 있다면 그 곳은 이 지역 한가운데에 있으니까 가보세요."~ */
  IF ~~ THEN REPLY #33331 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"더스트맨이 모이는 바에 가게 되면 누가 당신에게 시중을 들라고 해도 놀라지는 마세요!" 여자는 코방귀를 뀌고 낄낄거리기 시작한다. ~ */
  IF ~~ THEN REPLY #33333 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~여자는 꼬치에 꽂은 쥐처럼 보이는 것을 한 입 깨물고 있다. 당신이 쳐다보는 걸 눈치채고 그녀는 당신을 의심쩍은 눈초리로 째려본다. "당신도 먹고 싶으면 내 것을 쳐다보지 말고 크리든에게 가서 얘기를 하세요. 그는 해수 및 질병 관리국 밖에 서 있어요."~ */
  IF ~~ THEN REPLY #33335 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"만약 울부짖으며 뛰어다니는 미치광이들을 보면 피하세요. 그 굶주린 개들이란 작자들은 정말 소름이 끼쳐요..."~ */
  IF ~~ THEN REPLY #33337 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"당신이 파로드에 대해 캐묻고 다니고 있는 사람이군요! 그를 찾았나요? 만약 아직도 그를 찾지 못했다면 이 곳 북쪽에 있는 넝마주이 광장에 가보세요."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"나는 그를 이미 찾았소. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"말썽거리를 찾고 있는 게 아니라면 이 곳의 남서쪽에 있는 타버린 골목 근처에는 얼씬도 하지 마세요."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"이 근처에는 리크윈드란 이름의 불쌍한 사람이 있어요... 코를 틀어막고 동전을 서너 닢 던져 주면 그로부터 흥미로운 이야기들을 들을 수가 있을 거예요."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"불타는 시체 바에는 가봤나요? 좋은 선술집이긴 하지만 그 곳의 불타는 남자는 날 좀 불안하게 만들어요."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"이제 그는 그 곳에 없소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"안녕하세요." 여자는 당신에게 수줍은 듯 미소를 짓는다. "말인데요... 좀 있다가 술을 마시러 갈까 생각 중인데... 같이 가지 않겠어요?"~ */
  IF ~~ THEN REPLY #33354 /* ~"다른 기회에 합시다... 지금 나는 할 일이 너무나 많소. 미안하오."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"이 곳에서 내 아이를 키우는 건 생각도 하기 싫어요. 언젠가는 우리 가족도 이 끔찍한 곳에서 떠날 수 있었으면 좋겠어요." ~ */
  IF ~~ THEN REPLY #33356 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~여자는 당신을 보고 미소짓는다. "도울 수 있었으면 좋겠지만... 나는 당신을 도울 수가 없어요."~ */
  IF ~~ THEN REPLY #33358 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"당신 꼴을 보니 여인숙에 가서 좀 쉬는 게 좋을 것 같군요. 관심이 있다면 그 곳은 이 지역 한가운데에 있으니까 가보세요."~ */
  IF ~~ THEN REPLY #33360 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"당신이 파로드에 대해 캐묻고 다니고 있는 사람이군요! 그를 찾았나요? 만약 아직도 그를 찾지 못했다면 이 곳 북쪽에 있는 넝마주이 광장에 가보세요."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"나는 그를 이미 찾았소. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"나는 얼마 전에 여기서 포피론이라는 문신투성이의 남자를 만났어요. 그는 자신이 일종의 수도승이자 전사라고 했어요... 하지만 그는 싸우지 않겠다더군요."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"만약 당신이 길을 찾고 있다면 더스트맨이 모이는 바 밖에 '게시판'이 있으니 그걸 참조하세요."~ */
  IF ~~ THEN REPLY #33368 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"말썽거리를 찾고 있는 게 아니라면 이 곳의 남서쪽에 있는 타버린 골목 근처에는 얼씬도 하지 마세요."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"많은 사람들이 더스트맨 기념관에서 죽은 친지들을 추모하려고 이 곳에 와요... 그 곳에는 기념관에 고인의 이름을 새겨 주거나, 당신이 찾고 있는 사람이 죽었는지 여부에 대해 말해줄 수 있는 더스트맨이 있어요."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"그래, 그는 '이름의 죽음'이라 불리오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"더스트맨들은 벌통에 있는 대부분의 선술집에 가질 않아요... 더스트맨이 모이는 바를 제외하고는. 그 곳에는 더스트맨 이외의 사람들은 거의 없죠."~ */
  IF ~~ THEN REPLY #33376 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~여자는 꼬치에 꽂은 쥐처럼 보이는 것을 한 입 깨물고 있다. 당신이 쳐다보는 걸 눈치채고 그녀는 당신을 의심쩍은 눈초리로 째려본다. "당신도 먹고 싶으면 내 것을 쳐다보지 말고 크리든에게 가서 얘기를 하세요. 그는 해수 및 질병 관리국 밖에 서 있어요."~ */
  IF ~~ THEN REPLY #33378 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"이 근처에는 리크윈드란 이름의 불쌍한 사람이 있어요... 코를 틀어막고 동전을 서너 닢 던져 주면 그로부터 흥미로운 이야기들을 들을 수가 있을 거예요."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"시장은 자세히 둘러봤나요? 그 곳에서는 필요한 건 거의 뭐든지 구할 수가 있어요." ~ */
  IF ~~ THEN REPLY #33383 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"나는 프로피라가 틀렸기를 바래요... 만약 아직 그녀의 예언들을 듣지 못했다면, 그녀는 시장에서 외쳐 대고 있으니까..."~ */
  IF ~~ THEN REPLY #33386 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"말썽거리를 찾고 있는 게 아니라면 이 곳의 남서쪽에 있는 타버린 골목 근처에는 얼씬도 하지 마세요."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"만약 울부짖으며 뛰어다니는 미치광이들을 보면 피하세요. 그 굶주린 개들이란 작자들은 정말 소름이 끼쳐요..."~ */
  IF ~~ THEN REPLY #33392 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"불타는 시체 바에는 가봤나요? 좋은 선술집이긴 하지만 그 곳의 불타는 남자는 날 좀 불안하게 만들어요."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"이제 그는 그 곳에 없소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"일전에 '나무를-위해-통곡하는-자'라는 남자를 만났어요... 그는 다른 곳도 아닌 여기서 나무들을 돌보는 걸 도울 사람들을 집요하게 찾고 있었어요. 내 생각에는 그럴 시간이 있으면 차라리 사람들을 돕는 데 쓰는 게 나을 것 같아요."~ */
  IF ~~ THEN REPLY #33396 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"내가 당신에게 해줄 수 있는 조언은 도둑들을 조심하라는 것뿐이에요. 내가 듣기로 벌통의 이 지역에는 소매치기가 많다는군요."~ */
  IF ~~ THEN REPLY #33398 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"일전에 어떤 불쌍한 미친 여자가 횡설수설하며 뛰어다니는 걸 봤어요. 그렇게 미쳤는데도 굶어 죽거나 사고로 죽지 않은 건 정말 신기해요."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"그녀는 곧 고향에 도착하거나 고향으로 가게 될 것이오. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"나는 그녀를 만났소. 그녀의 이름은 잉그레스요. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"시장에 있는 가오하란 자를 조심하세요! 내 남편은 그 염병할 기스와 내기를 할 때마다 진다고요!" ~ */
  IF ~~ THEN REPLY #33404 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"정말 이상한 문신들이군요! 그것들 중 일부는 이 근처에 있는 문신 가게에서 본 것들과 흡사하군요. 다버스가 운영하는 가게 말이에요, 아시나요?"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"그래, 알고 있소. 그의 이름은 휄이오."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"그래, 난 그 장소를 알고 있소."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"아니, 난 그 곳에 가본 적이 없소."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"레이디여, 날 쳐서 장님으로 만드소서! 난 당신을 전에 본 적이 있어요, 그러나 다시 보게 되리라고는 상상도 못했어요! 시길은 내가 생각했던 것보다 좁은 것 같군요."~ */
  IF ~~ THEN REPLY #33411 /* ~"당신은 날 아시오?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~그녀는 불안한 미소를 짓는다. "당신을 아느냐고요? 아뇨, 하지마 이미 말했듯이 당신을 본 적은 있어요. 작년의 일이었죠... 늦은 밤, 반 절정(자정)이 다되었을 무렵이었어요... 나는 내 동생을 찾고 있었지요... 미친 듯이 달려오는 당신과 마주친 건 바로 그 때였어요. 당신은 넘어져서 바로 내 발 아래에 이것을 떨어뜨렸고, 당신은 곧 달아났어요. 운명의 얄궂은 장난이라고 생각한 나 그것을 행운의 징표로 간직했어요." 그녀는 흉악하게 생긴 대거를 내민다. "여기 있어요... 당신을 다시 만났으니 돌려 드리겠어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #33414 /* ~"고맙소... 안녕히 계시오."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~여자는 당신을 즉석에서 알아본다, 그리고 공포에 질려 뒤로 물러선다. "이 많은 세월이 흐른 후에 마침내... 이 개자식! 베이터의 모든 악마가 널 끌고 가기를! 언제가 넌 네가 에어린에게 저지른 짓에 대해 후회하게 될 거야... 모든 신들을 걸고 *맹세*하겠어!" 그녀는 돌아서서 도망치려고 한다. ~ */
  IF ~~ THEN REPLY #33416 /* ~"기다리시오..."~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~그녀를 그냥 보내준다.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"당신이 내 암흑의 구세주가 아니라면 누구겠어요. 돌아오는 데 꽤 시간이 걸렸군요... 나는 당신이 오지 않는 건 아닌가 하고 생각하기 시작하고 있었어요." 그녀는 벨트에 달린 주머니 속을 뒤지기 시작한다. ~ */
  IF ~~ THEN REPLY #33421 /* ~"기다리시오... 당신은 착각을 한 것 같소..."~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~참을성있게 기다린다. ~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"당신이 약속한 대로 그는 죽었어요... 정말 속이 후련해요. 여기 그 일에 대한 보수가 있어요... 당신에게 주겠다고 약속했던 반지예요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #33425 /* ~"잠깐 기다리시오... 물어볼 것들이 좀 있소..."~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"안돼요... 오랜 시간이 지나긴 했지만 내가 당신과 얘기하는 걸 누가 봐서 좋을 건 없어요. 당신도 알다시피 그에겐 친구들이 있었고, 내 생각에 그들도 그 일에 대해 어느 정도 낌새를 채고 있는 것 같아요. 우린 서로 다시는 얘기를 하지 말아야 해요." ~ */
  IF ~~ THEN REPLY #33427 /* ~"하지만..."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"그럼 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~그녀는 이상하다는 표정으로 당신을 쳐다본다, 그리고 눈을 가늘게 뜨고 당신의 상완에 새겨진 문신을 본다. 결국 그녀는 어깨를 으쓱한다. "마음대로 하시죠. 그럼 잘 가세요..."~ */
  IF ~~ THEN REPLY #33432 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33428 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~이 사람은 더 이상 당신에게 할 중요한 얘기가 없다.~ */
  IF ~~ THEN REPLY #33451 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33471 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33480 /* ~떠난다.~ */ EXIT
END
