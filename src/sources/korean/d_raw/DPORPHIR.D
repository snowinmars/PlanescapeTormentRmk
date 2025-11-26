// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~이 사내의 피부는 한 치도 남김없이 거미줄 같은 검은 선으로 뒤덮여 있다. 마치 어떤 예술가가 그의 피부의 모든 주름을 먹물로 강조한 듯하다. 그 탓에 그는 아무런 표정을 짓지 않아도 얼굴을 찌푸리고 있는 것처럼 보인다. ~ */
  IF ~~ THEN REPLY #25993 /* ~"안녕하시오."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~그를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~포피론이 보인다. 그는 아직도 심각한 표정으로 통행인들에게는 눈 한 번 주지 않으며 서 있다. 그의 얼굴의 거미줄 같은 주름들은 직각으로 서로 엇갈려 있다. ~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"안녕하시오, 포피론. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"안녕하시오, 포피론."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"안녕하시오, 포피론. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"이 사람이 그대에게 인사하오, 포피론: 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"이 사람이 그대에게 인사하오, 포피론."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"이 사람이 그대에게 인사하오, 포피론: 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~포피론을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~당신이 말을 걸자 포피론의 얼굴의 각들은 느슨해져 일련의 기묘한 곡선 형태를 이룬다. "이 사람은 묻고 싶소. 당신은 도난당한 묵주를 찾아왔소?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"그런 것 같소. 이것이 그거요?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~불타는 시체 바 밖에 있는 깡패들로부터 포피론의 목걸이를 찾은 후 나는 그것을 포피론에게 돌려주었다.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"아직 아니오... 어디서 강도를 당했는지 다시 말해주겠소?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"아직 아니오. 계속 찾아보겠소, 그리고 찾으면 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"이 사람은 기다리고 있소. 당신은 어떤 질문을 하려고 하오?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"당신은 내게 전사의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"나는 현재의 직업을 포기하고 다시 전사가 되고 싶소."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"나는 모든 무기에서 숙련자의 단계에 도달했소, 포피론. 당신이 내게 더 가르쳐 줄 수 있는 것이 있겠소?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"무기에 대해 더 배우고 싶소."~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"지금은 질문할 것이 없소. 나중에 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"이 사람에게는 이름이 있소. 이 사람은 포피론이라고 하오." 그의 목소리는 마치 징소리 같다. 그가 말을 하는 동안 그의 얼굴에 난 주름들은 구부러져 구형의 패턴을 이룬다. "이 사람은 알고 싶소. 왜 당신은 내게 말을 걸었소?"~ */
  IF ~~ THEN REPLY #26706 /* ~"이 도시에 대해 질문을 좀 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"그럼 관두시오. 방해해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"이 사람은 당신에게 이 말을 하고 싶소. 이 사람은 당신 질문에 대답할 수 없소." 그의 얼굴의 주름들은 뒤틀려 각을 이룬다, 그리고 나서 마치 낙서처럼 엉망으로 흩어진다. ~ */
  IF ~~ THEN REPLY #26708 /* ~"좋소, 그럼. 어, 하지만 이것만은 물어봐야겠소. 왜 당신 얼굴의 선들이 움직이는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"좋소.방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"그 주름들은 분노를 나타내고 있소. 화났소?" 주름들은 서서히 펴지며 부드러운 곡선이 된다. "당신을 화나게 할 생각은 없었소. 당신은 이 사람의 깊은 사과를 받아 주겠소?"~ */
  IF ~~ THEN REPLY #26710 /* ~"난 화나지 않았소... 하지만 당신은 왜 화가 난 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"좋소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"이 사람은 최근의 일에 대해 말하고 있소. 당신은 이 사람이 세 사람에 의해 시달림을 당했다는 사실을 아시오? 그 세 사람은 이 사람에게 어떤 물건을 내놓으라고 요구했소. 이 사람은 그들이 공격하지는 않을지 우려했소. 이 사람이 어떻게 했겠소? 이 사람은 그 물건을 내주었소."~ */
  IF ~~ THEN REPLY #26713 /* ~"당신이 두려워한 건 당연하오. 강도의 수가 셋이었다면, 당신이 물건을 포기하지 않았을 경우 그들이 당신을 죽였을 수도 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"알겠소. 당신에게 일어난 일은 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"이 사람에 대해 오해를 한 것 같소." 그의 얼굴의 주름들은 각이 졌다가 다시 매끄러운 곡선 형태가 된다. "이 사람은 죽는 것은 두려워하지 않았소. 이 사람은 세 사람을 죽이는 것을 우려했소."~ */
  IF ~~ THEN REPLY #26715 /* ~"글쎄... 만약 당신에게 그들을 죽일 능력이 있었다면, 왜 그들이 강도질을 하도록 내버려 둔 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"어, 그건 정말 용감하고 사려깊은 행동이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"이 사람은 전사의 길을 걷고 있소. 이 사람은 여러 무기들에 대해 익혔소. 주먹, 칼, 봉, 망치, 도끼. 이 사람은 이러한 도구들을 모두 다룰 줄 아오."~ */
  IF ~~ THEN REPLY #26718 /* ~"그걸로는 설명이 되지 않소... 다시 묻겠는데, 만약 당신이 그토록 많은 수련을 쌓은 전사라면 왜 그들이 당신 물건을 강탈하도록 내버려 둔 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"알겠소. 당신에게 일어난 일은 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"이 사람이 공격하는 것은 금지되어 있소." 그가 말할 때 주름들이 그의 얼굴에서 물결처럼 퍼져나간다. "만약 이 사람에 분노에 눈이 멀어 그 세 사람을 공격했다면, 비폭력의 서약을 깨뜨리게 되었을 것이오."~ */
  IF ~~ THEN REPLY #26720 /* ~"비폭력의 서약? 당신은 전사이자 *평화주의자*란 말이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"알겠소. 당신에게 일어난 일은 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"이 사람은 당신이 하는 말을 이해하지 못하오. '평하-주이자'가 무엇이오?"~ */
  IF ~~ THEN REPLY #26722 /* ~"관두시오. 만약 다른 사람을 공격할 수 없다면 왜 그토록 많은 수련을 쌓은 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"그건 내겐 상관없는 일이오. 하지만 당신의 불행에는 동정이 가오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"이 사람은 *에릿 애제 교단*의 일원이오. 우리는 우리가 나가서 싸우게 될 최후의 심판의 날을 기다리고 있소. 이 사람이 쌓은 훈련과 기량은 그 날이 올 때까지 감추고 있어야만 하오."~ */
  IF ~~ THEN REPLY #26724 /* ~"그 동안 당신은 무방비 상태로 거리에서 다른 사람들이 당신 물건을 강탈하도록 내버려 둘 거란 말이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"그것이 당신의 믿음이라면 당신을 그것을 지킨 것이오. 당신의 불행에는 동정이 가오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"이 사람이 분명하게 말하리다: 그 물건은 소중한 것이오. 허나 *에릿-애제* 의 규율은 더욱 소중하오.~ */
  IF ~~ THEN REPLY #26727 /* ~"당신은 싸우질 않으니 이 도둑들을 말로 설득해 당신 물건을 돌려받을 가능성은 있는 거요?~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"알겠소. 당신에게 일어난 일은 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"이 사람은 세 도둑들과 대화를 했소. 그러나 그 결과는? 내 요청은 조소의 대상이 되었소. 그 세 도둑은 내 물건을 돌려주지 않을 것이오."~ */
  IF ~~ THEN REPLY #26729 /* ~"내가 가서 당신을 위해 그 아이템을 되찾아 오려고 시도해볼 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"내가 가서 놈들을 개 패듯이 패고 놈들이 훔친 물건을 되찾아 올 수도 있소."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"만약 당신이 대가를 지불하겠다면 내가 가서 그 아이템을 되찾아 올 수도 있소."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"알겠소. 당신에게 일어난 일은 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"이 사람이 사과하겠소. 이 사람이 아직 빼앗기지 않은 물건들 중 값진 것이라고는 없소."~ */
  IF ~~ THEN REPLY #26733 /* ~"그럼 좋소. 여하튼 가서 그들을 죽이겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"당신은 *아무 것도* 가진 게 없소?"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"그럼 난 당신을 도울 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"이 사람이 다시 사과하겠소. 내 훈련을 받겠소?"~ */
  IF ~~ THEN REPLY #26736 /* ~"훈련? 무엇의?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"관심없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"이 사람은 전사의 길을 걷고 있소. 이 사람은 여러 무기들에 대해 익혔소. 주먹, 칼, 봉, 망치, 도끼. 이 사람은 이러한 도구들을 모두 다룰 줄 아오. 당신은 그것들에 대해 배우길 원하오?"~ */
  IF ~~ THEN REPLY #26739 /* ~"흠... 무기 훈련? 만약 공짜라면..."~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"관심없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"이 사람은 대가에 대해서 말하고 있소. 강탈당한 물건을 돌려받는 것만을 원할 뿐이오."~ */
  IF ~~ THEN REPLY #26741 /* ~"좋소. 하겠소. 도난당한 물건은 어떻게 생겼소?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"관심없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"이 사람은 물어봐야만 하겠소. 당신은 이 사람에게 강도질을 한 세 사람에게 폭력을 가할 생각이오?"~ */
  IF ~~ THEN REPLY #26743 /* ~"글쎄, 만약 내가 그들에게 좋은 말로 부탁해도 알아듣지 못할 정도로 머리가 나쁘다면, 별로 아름답지 못한 사태로 발전할 수도 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"가급적 그러지 않고 싶소."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"생각해 보니 난 당신을 도울 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~그의 얼굴의 주름들은 일련의 서로 겹치는 타원들로 변한다. "만약 그렇게 해야만 그들이 알아들을 것이라면 그렇게 할 수밖에 없소."~ */
  IF ~~ THEN REPLY #26747 /* ~"좋소, 그럼. 당신이 잃어버린 아이템은 어떤 물건이오?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"생각해 보니 난 당신을 도울 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"이 사람은 우려하오. 폭력을 사용하지 않으면 그들은 알아듣지 못할 것이오." 그의 얼굴의 주름들은 일련의 타원들로 변한다. "이 사람은 당신이 시도하겠다는 것을 말리지는 않겠소."~ */
  IF ~~ THEN REPLY #26749 /* ~"좋소, 그럼. 당신이 잃어버린 아이템은 어떤 물건이오?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"생각해 보니 난 당신을 도울 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"찾는 물건은 바로 이것이오: 검은색과 빨간색 유리알들이 달린 묵주 목걸이요. 이 묵주의 값어치는 금전적인 데 있지 않소. 그 진정한 가치는 신앙에 있소."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"잠깐. 난 당신이 찾고 있는 목걸이를 이미 가지고 있소. 이게 그거 맞소?~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~벌통 구역을 배회하던 중 나는 피부가 일련의 움직이는 주름살로 뒤덮인 사나이를 만났다. 그는 자신의 교단(에릿-애제였던 걸로 기억한다)의 목걸이가 그가 "내부에 불이 난 바" 라고 하는 곳 부근을 어슬렁거리는 검은 색과 빨간 색 옷을 입은 세 깡패들에게 도난당했다고 주장한다. 그런데 난 이미 그 세 놈들로부터 목걸이를 빼앗았다, 따라서 그것을 그에게 즉시 돌려줄 수 있었다. ~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"좋소, 그럼. 가서 당신 목걸이를 찾아오도록 하겠소. 그 깡패들이 어디 있을지 혹시 아시오?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"이 사람은 서로 화를 내고 물건을 빼앗긴 장소를 알고 있소. 내부가 불타고 있는 바 부근이오. 그 세 사람은 그 가게 밖에 있었으며 검은색과 빨간색 옷을 입고 있었소."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"안에서 불타는 바 밖에 있는 검은색과 빨간색 옷을 입은 세 강도들? 찾기가 어렵지 않을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~벌통 구역을 배회하던 중 나는 피부가 일련의 움직이는 주름살로 뒤덮인 사나이를 만났다. 그는 자신의 교단(에릿-애제였던 걸로 기억한다)의 목걸이가 내부에 불이 난 바 부근을 어슬렁거리는 검은 색과 빨간 색 옷을 입은 세 깡패들에게 도난당했다고 주장한다. 가서 그 장소를 찾아내고 물건을 되찾을 수 있는지 알아봐야겠다. ~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"불타는 시체 바 밖에 있는 검은색과 빨간색 옷을 입은 세 강도들? 가서 놈들을 찾아보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~벌통 구역을 배회하던 중 나는 피부가 일련의 움직이는 주름살로 뒤덮인 사나이를 만났다. 그는 자신의 교단(에릿-애제였던 걸로 기억한다)의 목걸이가 불타는 시체 바 밖에서 어슬렁거리는 검은 색과 빨간 색 옷을 입은 세 깡패들에게 도난당했다고 주장한다. 가서 돌려받을 수 있는지 한 번 시도해봐야겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"이 사람 눈에 당신이 가지고 있는 것이 보이오. 그것은 한때 잃어버렸던 묵주요." 그는 당신으로부터 묵주를 받는다... 당신은 그의 손에도 그의 얼굴과 마찬가지로 주름자국이 있다는 사실을 깨닫는다. "이 사람은 물어볼 것이 하나 있소. 어떻게 이 묵주를 그 세 사람으로부터 받아냈소?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"난 그들을 죽이고 염주를 가져왔소."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"훔쳤소."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"샀소."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"내가 몇 가지 무해한 거짓말을 했더니 그들은 기꺼이 염주를 내주었소."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"나는 목걸이을 돌려주는 것이 이로울 거라고 그들을 설득시켰소."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~거짓말: "어... 난 그들을 말로 설득했소. 그들은 기꺼이 염주를 되돌려 주었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~거짓말: "어... 난 그것을 그들로부터 샀소. 그들은 나와 기꺼이 협상하였소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"이 사람은 만족하오. 폭력의 메시지가 전달되었소. 이 사람은 당신에게 깊은 사의를 표하는 바요."~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"천만의 말씀이오. 하지만 당신에게 물어볼 것이 하나 있소. 만약 당신이 전투에 참가할 수 없다면 전사로서의 훈련은 어떻게 받았소?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"당신이 내게 약속한 무기 훈련은?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"이 사람은 알고 싶소. *에릿-애제* 교단에서 기만을 무기로 해 싸우는 자를 부를 때 쓰는 표현이 있소." 포피론의 얼굴에서 주름들이 다시 각을 이룬다. "그러한 자들은 기만자라고 불리오. 그 길은 규율도 명예도 없는 길이오."~ */
  IF ~~ THEN REPLY #26770 /* ~"진정한 전사라면 자신이 배울 수 있는 모든 무기에 대해 배울 것이오."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~진실: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~거짓말: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"이 사람은 알고 싶소. *에릿-애제* 교단에서 말을 무기로 해 싸우는 자를 부를 때 쓰는 표현이 있소." 포피론의 얼굴에서 주름들이 다시 각을 이룬다. "그러한 자들은 외교관이라고 불리오. 그 길은 규율도 명예도 없는 길이오."~ */
  IF ~~ THEN REPLY #26773 /* ~"진정한 전사라면 자신이 배울 수 있는 모든 무기에 대해 배울 것이오."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~진실: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~거짓말: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"이 사람은 알고 싶소. *에릿-애제* 교단에서 돈을 무기로 싸우는 자를 부를 때 쓰는 표현이 있소." 포피론의 얼굴에서 주름들이 다시 각을 이룬다. "그러한 자들은 상인이라고 불리오. 그 길은 규율도 명예도 없는 길이오."~ */
  IF ~~ THEN REPLY #26776 /* ~"진정한 전사라면 자신이 배울 수 있는 모든 무기에 대해 배울 것이오."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~진실: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~거짓말: "아, 그럼에도 불구하고 난 도둑들을 죽였소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"이 사람이 사과하겠소. 이 사람에게 당신을 모욕할 뜻은 없었소." 포피론의 얼굴의 각들은 매우 날카로워진 후, 천천히 물결 모양으로 구부러진다. "이 사람은 당신의 노고에 대해 크게 사의를 표하는 바요." ~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"천만의 말씀이오. 당신에게 물어볼 것이 하나 있소. 만약 당신이 전투에 참가할 수 없다면 전사로서의 훈련은 어떻게 받았소?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"흠... 당신이 내게 약속한 무기 훈련은?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"이 사람이 분명하게 하겠소: *에릿-애제*는 사람들 사이에 분노가 없을 경우에만 가르칠 수가 있소."~ */
  IF ~~ THEN REPLY #26781 /* ~"알겠소. 당신은 내게 그 무기들을 사용하는 방법을 가르쳐 줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"이 사람은 당신에게 가르칠 수가 있소. 하지만 이 사람은 당신에게 경고하겠소. 폭력에 대한 지식을 얻으면 그것을 사용하려는 유혹에 시달리게 될 것이오."~ */
  IF ~~ THEN REPLY #26783 /* ~"그러길 바라오."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"이 사람은 말하겠소. 당신은 이전의 직업을 버리기를 원하오? 집중되지 않은 정신으로 전사의 길을 걸을 수가 없소." ~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"나는 현재 전사 이외의 직업을 가지고 있지 않소. 나는 전사의 길을 걷고 싶소."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"그렇소. 난 마법을 포기하고 무술을 연마하고 싶소."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"나는 더 이상 도둑이기를 원하지 않소... 나는 전사로 전직하고 싶소."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"아니, 지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"이 사람은 당신의 대답을 들었소. 당신은 전사의 길을 걸을 준비가 되었소. 이 사람의 말에 귀를 기울이시오..."~ */
  IF ~~ THEN REPLY #26790 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"당신은 이제 전사의 길을 걷고 있소. 당신은 그 길에 대해 더 배우기를 원하오?"~ */
  IF ~~ THEN REPLY #26791 /* ~"그렇소."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"나는 이미 그들과 친숙하오. 내게 무기에 대해 어떤 것을 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"지금은 아니오... 나는 방향 전환을 싶었을 뿐이오.. 고맙소, 포피론."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"이 사람이 가르쳐 주겠소." 그의 얼굴의 주름들은 삼각형이 된다. "당신의 훈련은 다음 세 가지 요소들로 구성되어 있소: 집중, 경험, 숙련도."~ */
  IF ~~ THEN REPLY #26795 /* ~"이해가 안 되오. 내게 설명을 해줄 수 있겠소?"~ */ JOURNAL #26798 /* ~~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"나는 이미 이러한 개념들과 친숙하오. 내게 무기에 대해 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"다시 강습을 받을 준비가 되면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"이 사람은 우선 집중에 대해 말하도록 하겠소. 배운 것이 뿌리를 내리려면 필요하오. 당신은 전사의 길을 가는 데 전념해야 하오. 당신의 직업은 오로지 전사이며, 다른 길을 걸어서는 안 되오."~ */
  IF ~~ THEN REPLY #26799 /* ~"알았소: 무기에 대해 배울 수 있는 건 화이터뿐이오. 훈련의 다음 견지는 무엇이오?"~ */ JOURNAL #26803 /* ~포피론은 어떤 전사가 처음에 배울 수 있는 양에는 현재의 화이터로서의 레벨에 따른 상한이 존재한다고 말했다. 그는 나보고 더 경험을 쌓거든 돌아오라고 강조했다. ~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"나는 이미 이러한 개념들과 친숙하오. 내게 무기에 대해 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"다시 강습을 받을 준비가 되면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"이 사람은 다음으로 경험에 대해 얘기하겠소. 전투에 대한 진정한 지식은 경험을 통해서만 얻을 수 있소. 무기에 대해 이해할 수 있는 양에는 한도가 있소. 당신이 전사로서 새로운 레벨에 도달할 때마다 새로운 가르침을 받아들일 수 있는 여력이 생길 가능성이 있소."~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"알았소: 처음에 배울 수 있는 양에는 한계가 있으나 레벨이 올라감에 따라 그 상한 역시 증가하오. 훈련의 다음 견지는 무엇이오?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"알았소: 처음에 배울 수 있는 양에는 한계가 있으나 레벨이 올라감에 따라 그 상한 역시 증가하오. 훈련의 다음 견지는 무엇이오?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"나는 이미 이러한 개념들과 친숙하오. 내게 무기에 대해 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"다시 강습을 받을 준비가 되면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"이 사람은 세 번째로 숙련도에 대해 얘기하겠소. 어떤 특정한 무기에 대해서 배움에 있어 한도는 존재하오. 이 사람은 덧붙여 말하고 싶소. 이 사람이 가르칠 수 있는 데도 한도가 있소. 무기에 대한 지식의 수준은 세 단계가 있소: 무지한 자, 숙련자, 그리고 전문가. 각 단계 사이에도 또 여러 레벨이 존재하오. 이러한 레벨들은 생도가 이전 단계는 이미 초월했으나 아직 다음 단계에 도달하기 전의 레벨이오.~ */
  IF ~~ THEN REPLY #26808 /* ~"이러한 단계들이란 무엇이오?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"나는 이미 기초는 다 이해하고 있소. 내게 무기에 대해 어떤 것을 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"지금으로선 충분히 들은 것 같소... 강습이 필요하면 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"무지한 자의 단계는 다음과 같소: 무지한 자는 자신이 쓰는 무기에 대해 알지 못하오. 그의 공격은 서투르며, 대미지도 그 무기가 원래 지닌 위력에 미치지 못하오." ~ */
  IF ~~ THEN REPLY #26811 /* ~"그건 내가 시체안치소의 철판에서 막 깨어났을 때와 비슷한 것 같소... 계속하시오. 숙련자의 단계란 무엇이오?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"나는 이미 기초는 다 이해하고 있소. 내게 무기에 대해 어떤 것을 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"지금으로선 충분히 들은 것 같소... 강습이 필요하면 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"숙련자의 단계는 다음과 같소: 일단 무기에 대해 배워 알게 되면 그는 *숙련자*가 되었다고 할 수 있소. 그의 공격은 더 이상 서투르지 않소. 그의 공격의 빠르고 정확하오."~ */
  IF ~~ THEN REPLY #26814 /* ~"그리고 전문가의 단계는?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~포피론의 어떤 무기의 경우에도 그 숙련도에 세 단계가 있다고 말했다. 

첫 번째는 무지한 자의 단계로 공격자는 그 무기를 사용하면 전투에서 불리하다. 그의 공격은 꼴사납고, 집중력이 결여되어 있으며, 숙달된 전사의 경우보다 대미지도 적다. 이것이 내가 시체안치소에서 깨어났을 때의 단계였던 것 같다. 

무지한 자의 단계 다음에는 숙련자의 단계이며, 여기에는 전사가 그 무기에 대해 자세히 연구한 후에야 도달할 수 있다. 그의 공격은 더 이상 무기에 대한 무지 때문에 방해를 받지 않으며, 그의 공격은 보다 빠르고 정확하다.

숙련자의 단계를 지나면 드디어 전문가의 단계에 도달하게 된다. 이 단계에 이르면 공격자는 무기에 단지 능숙한 정도가 아니라 그것을 자신이 원하는 대로 움직일 수 있다. 그의 공격은 신속하며 적에게 입히는 대미지 역시 크다. 
~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"나는 이미 기초는 다 이해하고 있소. 내게 무기에 대해 어떤 것을 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"지금으로선 충분히 들은 것 같소... 강습이 필요하면 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"전문가의 단계는 단음과 같소: 숙련자의 단계를 초월하면 그 무기의 *전문가*의 단계에 도달하게 되오. 그렇게 되면 무기는 더 이상 도구가 아니라 신체의 일부나 마찬가지요."~ */
  IF ~~ THEN REPLY #26818 /* ~"좋소. 이해했소. 내게 무기에 대해 어떤 것을 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"당신 얘기는 이미 충분히 들었소. 나중에 다시 오리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"이 사람은 주먹, 칼, 봉, 망치, 그리고 도끼에 대한 훈련을 쌓았소. 어느 것에 대해 알고 싶소?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"나는 주먹에 대해 알고 싶소."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"나는 주먹에 대해 알고 싶소."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"나는 대거에 대해 알고 싶소."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"나는 대거에 대해 알고 싶소."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"나는 곤봉에 대해 알고 싶소."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"나는 곤봉에 대해 알고 싶소."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"나는 도끼에 대해 알고 싶소."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"나는 도끼에 대해 알고 싶소."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"나는 망치에 대해 알고 싶소."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"나는 망치에 대해 알고 싶소."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"내게 전사의 길에 대해 다시 자세히 얘기해줄 수 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"오늘은 강습을 받고 싶지 않소. 나중에 더 배우고 싶어지면 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"주먹에 대해 설명하겠소: 주먹은 적을 신속하게 공격할 수 있으며 적의 뼈를 분쇄하오. 이 계통에는 다음과 같은 무기들이 있소: 무거운 건틀릿, 펀치 대거, 그리고 권투 장갑. 무기의 종류에 따라 적에게 때리기, 찌르기, 그리고 베기 대미지를 입힐 수가 있소. 당신의 지식은 제한되어 있소. 당신 재능의 일부를 사용하여 이 무기의 숙련자가 되겠소?~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~포피론의 도움을 받고... 온몸에 멍이 든 덕에... 나는 주먹으로 능숙하게 싸울 수 있게 되었다.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~포피론은 자신에게는 이 이상 내게 주먹으로 싸우는 법을 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 주먹으로 싸우는 법의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"아니오, 오늘은 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"대거에 대해 설명하겠소: 대거는 적을 신속하게 공격할 수 있으며, 갈고리 손톱처럼 적을 베거나 바늘처럼 적을 찌를 수가 있소. 대미지의 종류는 대거의 종류에 따라 달라지오. 당신의 지식은 제한되어 있소. 당신 재능의 일부를 사용하여 이 무기의 숙련자가 되겠소?~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~포피론의 도움을 받고... 온몸에 흉터가 생긴 덕에... 나는 대거를 능숙하게 사용할 수 있게 되었다. 일단 내가 가장 지독한 벤 상처로부터도 신속히 회복하는 것을 보고나자 포피론은 주저하지 않고 나를 도마 다루듯이 혹독하게 훈련시켰다. ~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~포피론은 자신에게는 이 이상 내게 대거에 대해 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 대거의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"아니오, 오늘은 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"곤봉에 대해 설명하겠소: 곤봉의 속도는 주먹이나 대거만 못하오, 하지만 적에게 더 큰 대미지를 입힐 수 있소. 곤봉은 마치 높은 곳에서 떨어지는 바위처럼 적의 몸을 분쇄하오. 당신 재능의 일부를 사용하여 이 무기의 숙련자가 되겠소?~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~포피론의 도움을 받고... 온몸에 멍이 든 덕에... 나는 곤봉을 능숙하게 사용할 수 있게 되었다.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~포피론은 자신에게는 이 이상 내게 곤봉에 대해 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 곤봉의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"아니오, 오늘은 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"도끼에 대해 설명하겠소: 도끼의 속도는 곤봉만 못하오, 하지만 적에게 더 큰 대미지를 입힐 수 있소. 도끼는 마치 거대한 맹수의 발톱처럼 적의 몸을 절단할 수 있소. 당신의 지식은 제한되어 있소. 당신 재능의 일부를 사용하여 이 무기의 숙련자가 되겠소?~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~포피론의 도움을 받고... 온몸에 흉터가 생긴 덕에... 나는 도끼를 능숙하게 사용할 수 있게 되었다. 일단 내가 가장 지독한 벤 상처로부터도 신속히 회복하는 것을 보고나자 포피론은 주저하지 않고 나를 장작 다루듯이 혹독하게 훈련시켰다. ~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~포피론은 자신에게는 이 이상 내게 도끼에 대해 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 도끼의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"아니오, 오늘은 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"망치에 대해 설명하겠소: 망치의 속도는 곤봉만 못하오, 하지만 적에게 더 큰 대미지를 입힐 수 있소. 망치는 마치 높은 곳에서 떨어지는 큰 바위처럼 적의 몸을 분쇄하오. 당신 재능의 일부를 사용하여 이 무기의 숙련자가 되겠소?~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~포피론의 도움을 받고... 온몸에 멍이 든 덕에... 나는 망치를 능숙하게 사용할 수 있게 되었다. 내 머리 속의 울림이 가라앉으려면 시간이 꽤 걸릴 것 같다. ~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~포피론은 자신에게는 이 이상 내게 망치에 대해 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 망치의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"아니오, 오늘은 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"이 사람이 당신을 가르치겠소: 먼저 그렇게 서시오 -"~ */
  IF ~~ THEN REPLY #26864 /* ~"그렇소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"이 사람은 당신에게 찬사를 보내오. 당신은 무기에 대한 지식을 신속하게 터득했소. 당신은 가르침을 잘 받아들였소."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"고맙소. 오늘 배우고 싶었던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"이 사람은 더 이상 당신에게 가르칠 것이 없소. 당신이 자신이 이미 그 무기의 숙련자가 되었다는 사실을 아오? 이 사람이 당신에게 마지막으로 가르쳐 줄 것은 다음과 같소: 만약 당신이 더 배우기를 원하면, 또 그럴 여지가 있다면, 달인을 찾아가 배우도록 하시오. 전사의 길에 전념하도록 하시오. 그리고 당신이 지식의 한계에 도달하는 데는 오랜 시간이 걸릴 것이오."~ */
  IF ~~ THEN REPLY #26868 /* ~"좋소. 또 어떤 무기에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"그럼 그런 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"당신이 이미 무기에 대해 현재 배울 수 한도까지 배웠소. 새로운 레벨에 도달하면 이 사람에게 다시 오겠소? 그러면 이 사람이 당신에게 무기에 대해 가르쳐 주겠소."~ */
  IF ~~ THEN REPLY #26870 /* ~"만약 당신이 내게 무기에 대해 더 이상 가르쳐 줄 수 없다면 대신 전사의 길에 대해서 가르쳐 줄 수 있겠소?"~ */ JOURNAL #26872 /* ~포피론은 자신에게는 이 이상 내게 무기에 대해 가르쳐 줄 수가 없다고 말했다. 그의 말로는 나는 이미 내 레벨에서 배울 수 있는 무기에 대한 한계에 도달했다고 한다. 그는 만약  내가 레벨이 올라간 후 다시 오면 더 가르쳐 줄 수 있을지도 모른다고 말했다. ~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"그럼 좋소. 무술에서 새로운 레벨에 도달하면 다시 오겠소."~ */ JOURNAL #26872 /* ~포피론은 자신에게는 이 이상 내게 무기에 대해 가르쳐 줄 수가 없다고 말했다. 그의 말로는 나는 이미 내 레벨에서 배울 수 있는 무기에 대한 한계에 도달했다고 한다. 그는 만약  내가 레벨이 올라간 후 다시 오면 더 가르쳐 줄 수 있을지도 모른다고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"이 사람은 당신에 이 말밖에는 해줄 수가 없소: 더 배우고 싶으면 달인을 찾아가시오."~ */
  IF ~~ THEN REPLY #26873 /* ~"그럼 그런 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ JOURNAL #26875 /* ~포피론은 자신에게는 이 이상 내게 무기에 대해 가르쳐 줄 능력이 없다고 말했다. 그는 만약 내가 어떤 무기의 전문가가 되려면 그 방면의 달인을 찾아야 한다고 말해주었다. ~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"이 사람은 당신이 무기에 대해 더 배울 준비가 되었다는 것을 알 수 있소. 어떤 무기의 숙련자가 되고 싶소?"~ */
  IF ~~ THEN REPLY #26876 /* ~"내게 어떤 무기들에 대해서 가르쳐 줄 수가 있겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"오늘은 괜찮소. 나중에 다시 오리다."~ */ EXIT
END
