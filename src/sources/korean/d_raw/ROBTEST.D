// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~은박 망치~ */
  IF ~~ THEN REPLY #167 /* ~은박 망치~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~은박 망치
대미지: 1-4 타격
속도: 6
중량: 6
숙련도: 망치
화이터만 사용 가능

이것은 작은 전투용 망치이다. 이 망치의 머리 부분에는 곳곳에 흠집과 구멍이 난 얇은 은박이 입혀져 있다. 아마도 이 망치는 한 때 의식용으로 사용되었던 것 같다. ~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~전투용 도끼~ */
  IF ~~ THEN REPLY #172 /* ~향료
특수:
 HP를 2-8 포인트 증가시킴
 아머 클래스에 +1 보너스
중량: 1
이름 없는 자와 모트만 사용 가능

이것은 봉인된 단지 안에 든 향료로 사체를 보존하는 데 쓰인다. 이 향료의 추가적인 장점은 어떠한 시체가 썩는 냄새라도 감출 수 있을 정도로 그 향기가 강하다는 점이다. 향료에 의한 효과는 모두 일시적이다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~자물쇠 따개
자물쇠를 딸 확률+5%
중량: 0
도둑만 사용 가능

이 금속 도구는 견고한 자물쇠를 따는 데 사용된다. ~ */
  IF ~~ THEN REPLY #173 /* ~전투용 도끼
대미지: 1-8 베기
속도: 7
중량: 7
숙련도: 도끼
화이터만 사용 가능

이 거대한 도끼는 양쪽에 날이 달려있으며 끝부분에는 뾰족한 돌기가 있다. 날은 면도날처럼 날카로우며 긴 손잡이는 사용자로 하여금 도끼를 휘두를 때 큰 힘을 실을 수 있도록 해준다.~ */ EXIT
END
