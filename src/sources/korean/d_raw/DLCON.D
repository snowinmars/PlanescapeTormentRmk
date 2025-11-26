// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~창백한 초록색 피부의 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #60953 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"그르르." 그는 당신에게 으르렁거린 후 잠시 멈추고 당신 반응을 살핀다.~ */
  IF ~~ THEN REPLY #60956 /* ~"날더러 그걸 보고 놀라라는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"당신은 어떤 존재요?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"뭘 하고 있는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~그는 혼란스러워하는 듯하다. "그르르?" 그는 위협하는 동작을 취하나 그 꼴은 보기에도 한심하다. ~ */
  IF ~~ THEN REPLY #60962 /* ~"나는 당신에게 내가 그걸 보고 놀라야 하는 거냐고 물었소."~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~그는 당신 질문에 대해 생각하는 동안 당신을 노려본다. "그렇소. *그르르*란 소리는 위협할 때 쓰는 소리요, 나는 추가적인 효과를 위해 적절한 몸짓도 곁들였소. 나는 당신이 날 두려워할 것으로 예상하고 있으며, 곧 시작될 전투를 내게 유리하게 할 것이오." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60966 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~당신 질문은 그의 얼을 빼놓은 것 같다. 그는 무엇을 할지 몰라 머리를 한쪽으로 기울이면서 당신을 쳐다보고 있다. "나는 몬스터요... 이제는 싸움을 하겠소 ?"~ */
  IF ~~ THEN REPLY #60968 /* ~"농담하는 거겠지..."~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~로봇을 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~그는 잠시 당신을 계속 쳐다본다. "아니오... 그르르." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60971 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"나는 경 전투용 로봇이오. 내 사양은: 평균 이하의 전투능력, 낮은 지능, 그리고 수준 이하의 공격 능력이오." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60973 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~그는 무엇을 할지 몰라 머리를 한쪽으로 기울이면서 당신을 쳐다보고 있다. "나는 던젼의 거주자요. 당신은 내 개인적인 공간을 침범했으며 이제 그 대가를 치러야 하오. 따라서 나는 다음과 같은 적절한 공격 절차를 밟겠소: *그르르* 소리, 위협적인 몸짓, 그리고 전투." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60976 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~그는 팔을 들고 무기를 휘두른다. "적이 내 앞에서 도망치는 것을 보라. 여자가 통곡하는 소리를 들으라. 나는 승리자다." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60978 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~창백한 초록색 피부의 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #60980 /* ~"안녕하시오."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~"날더러 그걸 보고 놀라라는 거요?"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"사악한 위저드의 이름으로 죽어라!" 그는 당신에게 무기를 휘두른다~ */
  IF ~~ THEN REPLY #60983 /* ~"대체 어떤 사악한 마법사에 대해 얘기하는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"당신은 어떤 존재요?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"뭘 하고 있는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"내가 이런 것들에 놀라기를 바라는 거요?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~그는 무기를 휘두르는 것을 멈추고 잠시 생각을 한다. "어... 그는 당신이 루비콘 던젼의 설정을 *고난도*로 하기 전에는 나타나지 않소. 고난도로 설정하면 당신은 정말 큰 코 다칠 거요. 어쨌든 지금은 사악한 위저드의 이름으로 죽어라!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60990 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"나는 당신을 죽이거나 당신에게 죽임을 당할, 이름도 얼굴도 없는 악의 수하에 불과하오."~ */
  IF ~~ THEN REPLY #60992 /* ~"이건 농담이오, 그렇지 않소?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~로봇을 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~그는 표정을 닥치는 대로 바꾸다가 적절하다고 생각하는 표정을 하나 골라 그걸로 고장시킨다. "넌 날 조롱했다! 죽어라, 인간 암컷의 더러운 자식아!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60995 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"나는 루비콘에게 도전하는 모든 침입자를 죽이도록 프로그램된 경 전투용 로봇이다!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60997 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"나는 루비콘 던젼에 의해 내 기종에 설정된 스크립트를 실행하고 있소. 이제 나는 적대적이 되어 당신을 죽이던지 아니면 당신 손에 죽을 거요!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60999 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~그는 무기를 휘두르는 것을 멈추고 잠시 생각을 한다. "그렇소... 강대한 악의 존재를 암시하면 우민들의 가슴에 공포를 심을 수 있소. 그러면 영웅이 온갖 위험을 무릅쓰고 찾아와 말도 안 되는 어리석은 방법으로 악을 물리치게 되는 거요!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61001 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~그는 팔을 들고 무기를 휘두른다. "벌레 같은 자가 내 위용 앞에서 기는 것을 보라. 내게 자비를 빌지 말라, 벌레야. 네게 베풀 자비는 없다!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61003 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~창백한 초록색 피부의 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #61005 /* ~"안녕하시오."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~그는 갑자기 얼굴을 찡그리는 것을 멈추고 두려워하는 시늉을 한다. "이크! 영웅이다! 마왕을 무찌르려고 온 영웅이 틀림없다! 그가 도착할 때 임무를 서다니 난 정말 불행한 로봇이다!~ */
  IF ~~ THEN REPLY #61008 /* ~"무슨 말을 하는 거요?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"당신은 누구요?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"당신은 어떤 존재요?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"뭘 하고 있는 거요?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~그는 손을 엉덩이에 얹고  눈살을 찌푸린다. "시나리오 대로 하라고. 당신이 협조하지 않으면 내가 어떻게 내 역할을 할 수 있겠소? 어디까지 했더라?" 그는 잠시 멈추고 생각을 한다. "아, 기억했어. 난 당신을 혼내 주려던 참이었지." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61014 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~그는 잠시 멈추고 생각을 하더니 어깨를 과장되게 으쓱한다. "당신은 무력한 희생자요?" 그는 공격할 준비를 한다.~ */
  IF ~~ THEN REPLY #61016 /* ~"이건 현실이 아니오, 그렇지 않소?"~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~로봇을 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"아! 하지만 그렇다고! 받아라, 얼간아!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61019 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"나는 당신을 혼내줄 던젼 거주자요!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61021 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~그는 가까이 다가와 당신 귀에 속삭이기 시작한다. "나는 지금 영웅을 처음으로 만난 악의 수하 역할을 하고 있소." 그는 다시 몸을 똑바로 세우고, 겁에 질린 목소리로 외치기 시작한다. "전투 준비를, 동료 로봇들, 우리는 영웅을 쓰러트려야 하오!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61023 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~그는 어둡지만 만족스러운 표정을 짓는다. "아니, 뱀. 당신은 당신 앞에 서 있는 공포로부터 도망칠 수가 없어. 당신과 같은 죄인은 대가를 치러야 해." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #61025 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
