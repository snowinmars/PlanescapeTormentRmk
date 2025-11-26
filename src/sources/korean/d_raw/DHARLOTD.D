// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~그녀는 비틀거리다가 당신에게 부딪친 후, 한 걸음 물러서서 반쯤 웃는 얼굴로 당신을 쳐다본다. 그녀로부터는 주조소의 냄새가 난다.~ */
  IF ~~ THEN REPLY #1893 /* ~"어... 안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"앞으로는 수작을 부릴 때 조심하는 게 좋을 거요!"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"안녕..." 그녀는 당신에게 손을 흔들다가 킬킬거리기 시작한다. "안녕하세요, 오빠..." 그녀는 다시 웃기 시작한다.~ */
  IF ~~ THEN REPLY #7486 /* ~"괜찮소?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~그녀는 당신을 흘긋 보고, 한 손을 자신의 엉덩이 위에 올린 후, 가슴이 다 보이도록 몸을 구부린다. "내가 괜찮지 않은 것처럼 보이나요? 그래요?" 그녀는 몸을 흔든 후 다시 웃기 시작한다. "당신이야말로 사랑과 보살핌이 필요한 사람처럼 보이는군요!" 그녀는 강조하려는 듯 당신 가슴을 손가락으로 찌른다.~ */
  IF ~~ THEN REPLY #7491 /* ~"당신 제의?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"그래 어쨌든. 날 좀 도와주시오. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~그녀는 짐짓 심각한 체 한다. "만약 좋은 제의를 한다면 그럴 수도 있겠지요." 그녀는 당신에게 기댄다. "그래 어쩔 거죠?"~ */
  IF ~~ THEN REPLY #7497 /* ~"사양하겠소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"사양하겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"물론."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~그녀는 입을 삐죽 내민다. "그럼 매독이나 걸리라고! 당신처럼 생긴 얼굴 가지고 나보다 난 여자를 찾을 수 있는지 한 번 해보라고."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"좋아요, 그럼." 그녀는 당신을 아래위로 쳐다본다, 그리고 약간 술에서 깨는 듯하다. "에... 관둘래요. 난 당신을 감당하지 못할 것 같아요."~ */
  IF ~~ THEN REPLY #7508 /* ~"좋소, 그럼. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"알겠소... 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"알겠소... 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"알겠소... 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"알겠소... 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"알겠소... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"아, 그럼 당신은 내가 당신을 도울 수 있으리라고 생각하나요?! 정말 요구가 지나치군요! 그런 아부로 날 반하게 해보세요." 그녀는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #7513 /* ~"이 도시에 대해 얘기해줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"내게 이 구역에 대해서 얘기해줄 수 있겠소?~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"나는 어떤 일지를 찾고 있소. 혹시 그것을 본 적이 있소?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"그래요!" 그녀는 술취해 웃는다.~ */
  IF ~~ THEN REPLY #7521 /* ~"그래, 뭐요?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"아니요요요요!" 그녀는 그 말이 웃긴 듯 당신 가슴을 가볍게 두드린다. "아니, 아니에요!"~ */
  IF ~~ THEN REPLY #7527 /* ~"어... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"그럼 관두시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"그럼 관두시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"그럼 관두시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"그럼 관두시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"네에에에?" 그녀는 당신을 곁눈질한다. "뭐죠?"~ */
  IF ~~ THEN REPLY #7532 /* ~"이 도시에 대해 얘기해줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"나는 어떤 일지를 찾고 있소. 혹시 그것을 본 적이 있소?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~당신은 돌아서서 떠나려다 발걸음을 멈춘다. 당신은 갑자기 뭔가 *잘못되었다는* 느낌을 받는다... 그리고 이 여자의 주정은 어디까지나 연극에 불과하다는 것을 깨닫게 된다. 그녀를 자세히 보니 그녀가 소매에 뭔가를 쑤셔 넣는 것이 보인다... 그것은 당신 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~그녀의 손을 잡는다.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~그녀의 손을 잡는다.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~그녀를 공격한다.~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~당신은 손을 재빨리 내밀어 그녀의 손목을 부서질 듯이 세게 잡는다. 그녀는 즉시 정신을 차리고, 당시 손아귀로부터 벗어나려고 발악을 하며 목청이 터지도록 비명을 지르기 시작한다.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~조용하게: "비명 지르는 걸 멈추지 않으면 당신 폐를 잘라내 버리겠소."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"닥치시오! 빌어먹을, 조용하시오!"~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~빈 손으로 그녀의 목을 부러트린다.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~그녀를 그냥 보내준다.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~그녀는 당신이 미처 잡기 전에 손을 뒤로 뺀다. 그녀의 얼굴에서 술에 취한 표정은 사라지고, 목청이 터지도록 비명을 지르기 시작한다.~ */
  IF ~~ THEN REPLY #7553 /* ~"그럼 좋소..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~여자의 얼굴에서 술에 취한 표정은 사라지고, 목청이 터지도록 비명을 지르기 시작한다.~ */
  IF ~~ THEN REPLY #7554 /* ~"그럼 좋소..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~그녀는 계속 당신 손아귀에서 발악을 하며 도와 달라고 외치고 있다. 이 여자의 성량은 믿기 힘들 정도로 크다... 당신 귀가 얼얼할 지경이다. ~ */
  IF ~~ THEN REPLY #7555 /* ~그녀를 공격한다.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~빈 손으로 그녀의 목을 부러트린다.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~그녀를 그냥 보내준다.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~그녀는 계속 당신 손아귀에서 발악을 하며 도와 달라고 외치고 있다. 이 여자의 성량은 믿기 힘들 정도로 크다... 당신 귀가 얼얼할 지경이다.~ */
  IF ~~ THEN REPLY #7558 /* ~그녀를 공격한다.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~빈 손으로 그녀의 목을 부러트린다.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~그녀를 그냥 보내준다.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~당신으로 하여금 경계를 늦추지 않도록 한 것은 당신 자신의 소매치기 기술인지도 모른다. 하지만 당신은 돌아서서 떠나려다 본능적으로 지갑을 확인해 본다... 그리고 그 창녀가 그것으로부터 손을 빼내는 것을 눈치챈다. 그러나 그녀는 당신이 그녀가 하는 일을 보았다는 걸 눈치채지 못한 듯하다. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~그녀의 손을 잡는다.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~그녀의 손을 잡는다.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~그녀가 다시 당신을 소매치기하도록 유도한 다음, 그녀의 기술을 관찰한다.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~그녀를 공격한다.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~당신은 그녀 쪽으로 몸을 구부려 그녀와 함께 웃는다, 그리고 그녀의 손이 잽싸게 당신 지갑으로 향하는 걸 지켜본다... 술에 취한 듯한 수다와 풍만한 가슴으로 표적의 정신을 산란하게 한 후 그의 지갑에서 돈을 훔치는 것이 그녀의 수법인 것 같다. 그녀의 드레스의 소매는 훔친 물건을 재빨리 감출 수 있도록 길고 헐렁헐렁하다. 그녀가 또다시 손을 당신 지갑에 뻗치는 동안에도 당신은 그녀의 수법을 마음 속으로 기억해 둔다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~그녀의 손을 잡는다.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~그녀의 손을 잡는다.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~그녀를 공격한다.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~당신의 어조에는 *뭔가* 특별한 것이 있는 듯하다. 왜냐하면 그녀가 갑자기 동작을 멈추고 당신을 두려움에 떠는 큰 눈으로 바라보고 있기 때문이다.~ */
  IF ~~ THEN REPLY #7576 /* ~"내게서 훔친 물건을 돌려주시오. 지금 당장."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~빈 손으로 그녀의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~그녀를 그냥 보내준 후 떠난다.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~그녀는 고개를 끄덕인다. 그녀는 자신의 길고 헐렁헐렁한 소매를 걷어 올린다. 그러자 그녀의 손목에 걸린, 솜을 넣은 작은 자루가 나타난다. 그녀는 동전을 몰래 감추어 주머니 안에 넣을 수 있는 듯하다, 그리고 주머니의 솜은 동전이 부딪치면서 나는 소리를 최소한으로 줄여 준다. 아무런 소리 없이 그녀는 주머니를 당신에게 준다... 그 안에는 수십 닢의 동전이 담겨 있다.~ */
  IF ~~ THEN REPLY #7579 /* ~"우린 이제 비긴 거요. 자, 당신 꼴은 다시는 보고 싶지 않소. 알겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~허풍: "가진 걸 다 내놓으면 목숨만은 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~진실: "가진 걸 다 내놓으면 목숨만은 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~고개를 끄덕여 감사의 표시를 한 후, 빈 손으로 그녀의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~그녀를 그냥 보내준 후 떠난다.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~그녀는 자신의 가터 벨트에서 또 다른 자루를 꺼내 당신에게 준다. 그 안에는 동전이 들어 있으며, 당신은 그것을 당신 지갑에 쏟아 넣는다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"난 *전부*라고 했소, 그러니 *전부* 다 내놓으시오."~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"다시는 당신 꼴도 보기 싫소. 알겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~고개를 끄덕여 감사의 표시를 한 후, 빈 손으로 그녀의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~그녀를 그냥 보내준 후 떠난다.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~그녀는 자신의 부츠에 천천히 손을 넣어 기묘하게 생긴 가는 대거를 꺼낸다, 그리고 그것의 손잡이가 당신 쪽으로 향하도록 한 후 당신에게 넘겨 준다. 다음에는 다른 쪽 부츠에 손을 넣어 *또 다른* 대거를 꺼낸다. 이 대거는 처음 것보다 칼날이 더 넓고 무시무시하게 생겼으며, 그녀는 이 대거도 전과 같은 방법으로 당신에게 건네준다. 다음에 그녀는 머리를 젖혀서 머리에 가려 있던 한 쌍의 귀걸이를 빼내 당신에게 준다.~ */
  IF ~~ THEN REPLY #7588 /* ~"됐소. 자, 당신 꼴은 다시는 보고 싶지 않소. 알겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~고개를 끄덕여 감사의 표시를 한 후, 빈 손으로 그녀의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~그녀를 그냥 보내준 후 떠난다.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~그녀는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #7591 /* ~빈 손으로 그녀의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~그녀를 그냥 보내준 후 떠난다.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~당신이 그녀의 목을 조이자 그녀는 눈이 휘둥그레진다, 그리고 필사적으로 당신 손가락을 할퀴기 시작한다... 그녀가 당신 손아귀로부터 미처 빠져나오기 전에 *우지직* 소리가 나고 그녀의 발악도 그것으로 끝난다.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~그녀를 떨어트린다.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~그녀를 놓아준다.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~그녀를 놓아준다.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~당신이 그녀를 놓자 그녀의 시체는 땅바닥에 쓰러진다. 그녀는 더스트맨들보다 훨씬 죽이기가 쉬웠다. 그녀의 시체를 쳐다보면서 당신은 이상한 전율을 느낀다... 당신은 자신이 전에 같은 방법으로 사람을 죽인 적이 있다는 사실을 깨닫는다. 당신은 필사적으로 그 기억에 매달리나, 그것은 당신의 무의식 세계 속으로 사라지고 만다. ~ */
  IF ~~ THEN REPLY #7595 /* ~떠난다.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~당신이 그녀를 놓자 그녀의 시체는 땅바닥에 쓰러진다. 그녀의 시체를 쳐다보면서 당신은 이상한 전율을 느낀다... 당신은 자신이 전에 같은 방법으로 사람을 죽인 적이 있다는 사실을 깨닫는다. 이러한 생각과 함께 한 가닥의 기억이 되살아나나 그것은 표면으로 떠오를 정도로 강하지는 못하다.~ */
  IF ~~ THEN REPLY #7596 /* ~떠난다.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~여자는 고개를 끄덕이곤 서둘러 달아났다. 두 번 다시 그녀를 볼 수 없을 것이다.~ */
  IF ~~ THEN REPLY #7596 /* ~떠난다.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~여자는 고개를 끄덕이곤 서둘러 달아났다. 두 번 다시 그녀를 볼 수 없을 것이다.~ */
  IF ~~ THEN REPLY #7596 /* ~떠난다.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
