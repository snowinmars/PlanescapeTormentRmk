// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~얼굴을 진뜩 찌푸린 청년이 보인다. 그는 스스로에게 중얼거리고 있으며, 뭔가에 몰두한 듯하다.~ */
  IF ~~ THEN REPLY #3173 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~처음에 당신은 그가 당신 말을 듣지 못했다고 생각했다. 그러나 그는 곧 고개를 돌려 당신을 흘긋 본다. 잠시 후 그는 다시 고개를 돌린다. "난 당신을 일지 못하고, 알고 싶지도 않소. 당장 떠나면 당신을 해치지는 않겠소. ~ */
  IF ~~ THEN REPLY #13710 /* ~"이것 보시오, 난 당신에게 질문을 좀 하고 싶을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"당신은 협박할 사람을 잘못 골랐소, 이 얼간이 같으니. 내 질문에 대답을 하지 않으면 당신 버릇을 단단히 고쳐 놓겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"좋소. 그럼 떠나겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~그는 고개를 돌려 당신을 본다. 그의 얼굴은 분노로 빨개졌다. 그는 이를 악물고 당신에게 얘기한다. "질문? 내가 이 도시의 현자처럼 보이나, 얼간아? 내가 네 몸에 흉터를 몇 개 더 내주기 전에 꺼져."~ */
  IF ~~ THEN REPLY #13715 /* ~"당신은 협박할 사람을 잘못 골랐소, 이 얼간이 같으니. 내 질문에 대답을 하지 않으면 당신 버릇을 단단히 고쳐 놓겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"어디 당신이 하는 걸 한 번 봅시다."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"좋소. 그럼 떠나겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~그는 몸을 돌린다. 그의 얼굴은 분노로 빨개졌다. 그는 뭔가를 말하려고 하다가 멈추고 당신을 더 자세히 살펴본다. 당신의 온몸을 뒤덮고 있는 흉터들을 살펴보면서 그의 분노는 공포로 변한다. "어... 미안하오. 무엇에 대해 알고 싶소?"~ */
  IF ~~ THEN REPLY #13719 /* ~"나는 어떤 디바를 찾고 있소. 나는 그를 이 곳에서 만날 수 있다는 얘기를 들었소."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"이 곳의 최신 뉴스는 뭐요?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~그는 생각하느라 눈살을 찌푸린다, 그리고 잠시 당신으로부터 고개를 돌린다. "당신은 엉뚱한 관문 도시로 온 것 같소. 내가 아는 한 디바는 이쪽으로는 오지 않소."~ */
  IF ~~ THEN REPLY #13724 /* ~"좋소. 그럼 다른 질문들에 좀 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"고맙소. 또 봅시다."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"모르겠소. 나는 가급적 남의 일에 참견하지 않으려고 노력하오. 그게 편안히 오래 사는 방법이오." 그는 잠시 말을 멈춘다, 그리고 그는 약간 불안한 듯하다. "당신 기분을 상하게 하려고 한 말은 아니오... 하지만 당신도 그렇게 하는 것이 좋을 거요."~ */
  IF ~~ THEN REPLY #13727 /* ~"기억해 두리다. 하지만 다른 것들에 대해서도 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"웃기는군... 당신에게 충고를 해달라고 한 기억은 없는데. 또 한 번 그런 실언을 하면 대가를 치르게 될 거요."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~"주의를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~그는 대답하기 전에 코방귀를 뀌고 주변을 둘러본다. "커스트(저주받은)라고 불리는 데는 이유가 있소. 여기는 인생 낙오자들의 감옥이오. 정말 슬픈 건 대부분의 얼간이들이 자신이 죄수라는 사실을 모르고 있다는 사실이오."~ */
  IF ~~ THEN REPLY #13731 /* ~"감옥?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"알겠소. 또 다른 질문이 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"좋소, 정보를 주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"좋소. 뭘 알고 싶소?"~ */
  IF ~~ THEN REPLY #13735 /* ~"나는 어떤 디바를 찾고 있소. 나는 그를 이 곳에서 만날 수 있다는 얘기를 들었소."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"이 곳의 최신 뉴스는 뭐요?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~그는 분노를 억누르느라 얼굴이 빨개지기 시작한다. "미안하오, 다시는 그런 일이 없을 거요. 뭐 달리 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #13740 /* ~"그래, 당신에게 물어볼 것들이 좀 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"아나, 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~그는 주변을 둘러본 후 당신에게 더 가까이 다가온다. "첫눈에 봐서는 알 수 없지만 커스트는 분명히 감옥이오. 한 번 이 도시에서 나가려고 해보시오, 그럼 내 말뜻을 알게 될 거요. 좋은 구실과 확실히 나갈 방법이 없는 한 시 밖으로 나갈 수가 없소." 그는 잠시 멈추고 주위를 둘러본다. "그 이상은 말할 수가 없소."~ */
  IF ~~ THEN REPLY #13743 /* ~"흠. 다른 것에 대해 물어봅시다."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"고맙소. 또 봅시다."~ */ EXIT
END
