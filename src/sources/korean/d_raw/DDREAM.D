// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~당신은 교수대의 올가미 아래에 있는 자신을 발견한다. 귀에 거슬리는 목소리가 어둠 속에서 킬킬댄다. "또 꿈을 꾸는가? 또? 또?"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~당신의 신체는 이상할 정도로 가볍게 느껴진다. 바람이 부는 대로 날려 갈 것 같다. ~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~당신은, 뒤틀린 식물들과 검은 가시들이 당신의 실체가 없는 몸을 찢고 할퀴는, 미로에서 떠다니고 있다.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~악몽에서나 나올 것 같은 괴물들이 땅과 벽으로부터 솟아나와 당신의 육신을 찢는다. 그들의 맹공은 당신으로 하여금 의식을 잃게 만든다.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~당신은 당신에게 뭐라고 중얼거리고 있는 해골들의 탑 앞에 서 있다, 하지만 그들이 하는 말을 알아들을 수가 없다. 뒤에서 나는 소리가 당신의 주의를 돌린다, 그리고 수많은 마족들이 당신을 향해 달려오고 있다. ~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~당신은 다시 미로에 서 있다. 그리고 죽음의 냄새가 당신을 에워싸고 있다. 당신은 자신이 그들 모두를 죽였다는 사실을 알고 있다. 킬킬대는 목소리가 다시 터져 나온다. ~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"아, 내 귀여운 퍼즐, 자네가 이들 모두를 죽이고, 또 더 많은 자들도 죽였네. 어찌나 많이 죽였는지 나도 세질 못할 정도네." 당신은 말문이 막혀 대답도 하지 못한다.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"내게 오게, 내 인형... 검은 가시 미로에 있는 래벌에게 오게. 와서 나와 꿈을 꾸세."~ */
  IF ~~ THEN REPLY #56051 /* ~당신 자신을 흔들어 깨운다.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
