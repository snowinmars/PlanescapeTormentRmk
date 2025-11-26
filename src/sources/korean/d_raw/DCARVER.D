// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARVER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARVER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~이 남자는 경쾌한 곡조로 휘파람을 불면서 잘 손질된 전투용 나이프로 장난을 치고 있다. 당신이 다가가자 그는 휘파람을 멈추고 호기심에 차 표정으로 당신을 쳐다본다. "허? 뭘 원하오?"~ */
  IF ~~ THEN REPLY #49642 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~이 남자는 아직도 경쾌한 곡조로 휘파람을 불면서 무시무시하게 생긴 나이프로 장난을 치고 있다. 당신이 다가가자 그는 휘파람을 멈추고 지리한 표정으로 당신을 흘긋 본다. "이젠 뭐요?"~ */
  IF ~~ THEN REPLY #49645 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"내 이름은 랫본이오. 나는 이 광장에 사는 수집자들의 보스인 쉐어그레이브에게 고용된 도둑이오. 내가 하는 일은 그의 부하들에게 조용히 행동하는 법과 말썽이 생길 경우 싸우는 법을 가르치는 거요. 그 이상에 대해서는 말할 수가 없소." 그는 코를 훌쩍이고 어깨를 으쓱한다. ~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"계약직 도둑? 당신은 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"이 곳의 북서쪽에 있는 쓰레기로 가득 찬 아치를 지나갈 수 있는 방법을 아시오?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~랫본이라는 사내가 내게 만약 내가 넝마주이 광장에 있는 쓰레기로 가득찬 아치를 통과하고자 한다면, 크리든이라는 이름의 남자에게 물어봐야 할 것이라고 말해주었다. 그의 말에 의하면 그는 해수와 질병 구제 사무소 근처에 있을 거라고 한다. ~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"이 쉐어그레이브란 사람은 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~그는 자신의 뒤에 있는 헐어빠진 집을 가리킨다. "하지만 조심하시오. 그는 손님을 반기지 않으니까. 그는 모든 사람을 의심하오. 쉐어그레이브('무덤을 공유`)도 그의 진짜 이름은 아니오... 나와 다른 사람들이 그를 부를 때 쓰는 호칭일 뿐이오."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"당신은 자신이 계약직 도둑이라고 했소? 그럼 당신은 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"이 곳의 북서쪽에 있는 쓰레기로 가득 찬 아치를 지나갈 수 있는 방법을 아시오?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~랫본이라는 사내가 내게 만약 내가 넝마주이 광장에 있는 쓰레기로 가득찬 아치를 통과하고자 한다면, 크리든이라는 이름의 남자에게 물어봐야 할 것이라고 말해주었다. 그의 말에 의하면 그는 해수와 질병 구제 사무소 근처에 있을 거라고 한다. ~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~랫본은 고개를 젓는다. "아니, 모르오. 하지만 그가 근처에 있다는 얘기는 들었소. 때때로 그의 부하들이 어딘지 모를 은신처를 향해 가는 도중에 이 곳을 거쳐 가기도 하오. 아마 승강대 주변 어딘가에 입구가 있을 거요. 하지만 내가 상관할 바는 아니오." 그는 어깨를 으쓱하고는 땅에 침을 뱉는다. "나도 살고 남도 살자, 그게 이 랫본의 신조요."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"당신은 자신이 계약직 도둑이라고 했소? 그럼 당신은 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"이 곳의 북서쪽에 있는 쓰레기로 가득 찬 아치를 지나갈 수 있는 방법을 아시오?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~랫본이라는 사내가 내게 만약 내가 넝마주이 광장에 있는 쓰레기로 가득찬 아치를 통과하고자 한다면, 크리든이라는 이름의 남자에게 물어봐야 할 것이라고 말해주었다. 그의 말에 의하면 그는 해수와 질병 구제 사무소 근처에 있을 거라고 한다. ~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"당신 보스 쉐어그레이브는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"에? 아니, 모르오. 알고 싶다면 쥐 사냥꾼 크리든에게 물어보시오. 때때로 그는 사냥을 하러 그 곳에 가서 한 동안 돌아오지 않곤 하오. 크리든은 대게 벌통에 있는 해수 및 질병 관리국 밖에서 장사를 하고 있소."~ */
  IF ~~ THEN REPLY #49665 /* ~"관리국? 그건 어디 있소?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"당신은 자신이 계약직 도둑이라고 했소? 그럼 당신은 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"당신 보스 쉐어그레이브는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~랫본은 눈살을 찌푸린다. "벌통이오. 안내가 필요하면 가이드를 고용하시오."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"당신은 자신이 계약직 도둑이라고 했소? 그럼 당신은 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"당신 보스 쉐어그레이브는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"돈만 준다면. 전에 훈련을 받은 적은 있소?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"그렇소."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"아니오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"좋소. 이제 내가 당신을 칠 테니 피하도록 하시오. " 그는 갑자기 당신 머리를 향해 손을 휘두른다. ~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~공격을 피한다.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~공격을 피한다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~당신은 고개를 숙이나, 그럼에도 불구하고 랫본은 당신의 후두부를 찰싹 때린다. "미안하오, 당신은 너무 느리오."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"이 곳의 북서쪽에 있는 쓰레기로 가득 찬 아치를 지나갈 수 있는 방법을 아시오?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~랫본이라는 사내가 내게 만약 내가 넝마주이 광장에 있는 쓰레기로 가득찬 아치를 통과하고자 한다면, 크리든이라는 이름의 남자에게 물어봐야 할 것이라고 말해주었다. 그의 말에 의하면 그는 해수와 질병 구제 사무소 근처에 있을 거라고 한다. ~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"당신 보스 쉐어그레이브는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~당신은 랫본의 공격을 피한다. "나쁘지 않소. 아까 얘기한 수업료 말인데... 쉰 닢만 내겠다면 내가 책임지고 당신을 훈련시켜 주겠소."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"좋소. 여기 있소..."~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"내겐 그만한 돈이 없소..."~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"사양하겠소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~랫본은 냉담하게 어깨를 으쓱한다. ~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"이 곳의 북서쪽에 있는 쓰레기로 가득 찬 아치를 지나갈 수 있는 방법을 아시오?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~랫본이라는 사내가 내게 만약 내가 넝마주이 광장에 있는 쓰레기로 가득찬 아치를 통과하고자 한다면, 크리든이라는 이름의 남자에게 물어봐야 할 것이라고 말해주었다. 그의 말에 의하면 그는 해수와 질병 구제 사무소 근처에 있을 거라고 한다. ~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"당신 보스 쉐어그레이브는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"지금 현재 직업을 포기해야 한다는 건 알고 있소? 전사 또는 다른 일을 하면서 동시에 도둑이 될 수는 없소. 그래도 좋소?"~ */
  IF ~~ THEN REPLY #49696 /* ~"그렇소."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"아니 그러지 않는 편이 나을 것 같소. 내 돈을 돌려받아야겠소. 안녕히 계시오, 랫본."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"그럼 시작하겠소. 내가 당신에게 가르칠 것은 도둑에게 가장 중요한 여섯 가지 기술이오: 몰래 움직이기, 숨기, 자물쇠 따기와 소매치기, 함정을 찾아서 제거하기, 그리고 내가 가장 좋아하는, 배후에서 기습하기."~ */
  IF ~~ THEN REPLY #49699 /* ~"계속하시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"기초는 이해할 것 같소, 랫본. 훈련을 시작합시다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"몰래 움직이기 - 그림자 속에 숨어 조용히 이동하기는 정말 편리하오. 바보로 사는 게 똑똑한 채 죽는 것보다 낫소, 안 그렇소? 일단 숨으면 위험을 회피할 수 있을 뿐만 아니라, 누굴 좀 손봐 주려고 할 때도 유리한 입장에서 할 수 있소... 하지만 그것에 대해선 나중에 자세히 설명하겠소, 그리고 이것 한 가지는 명심하시오... 누가 이미 당신을 보고 있는 상태에서는 숨을 수가 없소." ~ */
  IF ~~ THEN REPLY #49702 /* ~"계속하시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"기초는 이해할 것 같소, 랫본. 훈련을 시작합시다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"소매치기와 자물쇠 따기도 편리하오... 부수입을 올리고 싶을 때 말이오. 소매치기를 하다가 들킬 경우에 대비해 늘 사전에 도망칠 준비를 하시오, 그리고 수상쩍은 자물쇠를 딸 때는 함정에 주의하시오. 함정을 찾을 때는 천천히 신중하게 찾으시오... 함정을 발견하는 데 다소의 시간이 걸릴 때도 있으니까. ~ */
  IF ~~ THEN REPLY #49705 /* ~"계속하시오..."~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"기초는 이해할 것 같소, 랫본. 훈련을 시작합시다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"만약 함정을 찾거든 당신 손재주를 이용하여 그 염병할 것을 해제하시오. 그건 실제로 퍼즐을 푸는 것과 비슷하오." ~ */
  IF ~~ THEN REPLY #49708 /* ~"계속하시오..."~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"기초는 이해할 것 같소, 랫본. 훈련을 시작합시다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"내가 당신에게 마지막으로 가르칠 건 배후 공격이오." 랫본은 행복한 표정으로 한숨을 쉰다. "싸우려는 녀석 몰래 숨는 데 성공하면, 놈을 배후에서 공격하시오. 그러면 공격이 명중할 확률이 커질 뿐만 아니라 대미지 역시 훨씬 커지오."~ */
  IF ~~ THEN REPLY #49711 /* ~"좋소. 훈련을 시작합시다."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~랫본은 고개를 끄덕인다. "좋소, 친구... 먼저 긴장을 푸시오. 당신은 너무 신경이 곤두서 있소. 때로는 당신의 본능과 직감에 의존할 줄도 알아야 하오..." 그리하여 당신의 도둑으로서의 훈련이 시작된다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~나는 넝마주이 광장에서 만난 랫본이라는 자로부터 도둑이 되기 위한 훈련을 받았다.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~나는 넝마주이 광장에서 만난 랫본이라는 자로부터 도둑이 되기 위한 훈련을 받았다.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~나는 넝마주이 광장에서 만난 랫본이라는 자로부터 도둑이 되기 위한 훈련을 받았다.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~나는 넝마주이 광장에서 만난 랫본이라는 자로부터 도둑이 되기 위한 훈련을 받았다.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~오랜 시간에 걸친 훈련이 끝난 후 랫본은 만족스럽게 고개를 끄덕인다. "이건 꼭 얘기해야겠소 - 나는 당신보다 더 뛰어난 제자는 지금껏 가져본 적이 없소. 마치 당신은 이 모든 것들을 전에 해본 적이 있는 것만 같소!~ */
  IF ~~ THEN REPLY #49719 /* ~"아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 랫본. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~오랜 시간에 걸친 훈련이 끝난 후 랫본은 만족스럽게 고개를 끄덕인다. "이건 꼭 얘기해야겠소 - 나는 당신보다 더 뛰어난 제자는 지금껏 가져본 적이 없소. 마치 당신은 이 모든 것들을 전에 해본 적이 있는 것만 같소!" 랫본이 얘기를 하자 당신은 자신이 전에 이러한 일들을 해본 적이 있다는 사실을 깨닫는다... 당신은 과거에 이러한 기술들을 빠짐없이 지니고 있었고, 훈련은 그것들을 다시 일깨웠다.~ */
  IF ~~ THEN REPLY #49721 /* ~"아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 랫본. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~오랜 시간에 걸친 훈련이 끝난 후 랫본은 만족스럽게 고개를 끄덕인다. "이건 꼭 얘기해야겠소 - 나는 당신보다 더 뛰어난 제자는 지금껏 가져본 적이 없소. 마치 당신은 이 모든 것들을 전에 해본 적이 있는 것만 같소!" 랫본이 얘기를 하자 당신은 자신이 전에 이러한 일들을 해본 적이 있다는 사실을 깨닫는다... 당신은 과거에 이러한 기술들을 빠짐없이 지니고 있었다.~ */
  IF ~~ THEN REPLY #49723 /* ~"아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 랫본. 고맙소, 그리고 안녕히 계시오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~어두운 통로에서 은밀하게 움직이며 위험한 함정들을 피하던 희미한 기억들이 다시 뚜렸해짐에 따라, 당신은 랫본이 당신에게 가르쳐 준 것 이상의 내용을 '배울' 수 있을 만큼의 기억을 회복한다. ~ */
  IF ~~ THEN REPLY #49725 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"당신이 전에 이미 훈련을 받은 적이 있다면 내가 당신에게 얼마나 더 가르칠 수 있을지 모르겠소. 하지만 만약 당신이 전사나 메이지 같은 다른 직업 때문에 도둑질을 한동안 등한시 한 상태라면, 나는 당신이 다시 감을 찾도록 도와줄 수 있소."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"나는 다시 도둑이 되고 싶소, 랫본."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"이해하오. 안녕히 계시오, 랫본."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~랫본은 고개를 끄덕인다. "아까 얘기한 수업료 말인데... 쉰 닢만 내겠다면 내가 책임지고 당신을 훈련시켜 주겠소."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"좋소. 여기 있소..."~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"내겐 그만한 돈이 없소..."~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"사양하겠소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"지금 현재 직업을 포기해야 한다는 건 알고 있소? 전사 또는 다른 일을 하면서 동시에 도둑이 될 수는 없소. 그래도 좋소?"~ */
  IF ~~ THEN REPLY #49734 /* ~"그렇소."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"아니 그러지 않는 편이 나을 것 같소. 내 돈을 돌려받아야겠소. 안녕히 계시오, 랫본."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"정말 무섭게 빨리 배우는군." 그는 호기심에 찬 표정으로 당신을 잠시 쳐다보더니 어깨를 으쓱한다. "그걸로 끝이요. 이제 당신은 다시 현역이오."~ */
  IF ~~ THEN REPLY #49737 /* ~"고맙소, 랫본. 안녕히 계시오."~ */ EXIT
END
