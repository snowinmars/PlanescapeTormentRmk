// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~이 패닉 상태에 빠진 젊은 아가씨는, 숨도 제대로 못 쉬고 눈물만 줄줄 흘리면서 당신에게 다가온다. "제발! 저 사람들을 말려 주세요! 놔두면 그들은 서로를 죽일 거예요!"~ */
  IF ~~ THEN REPLY #33509 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"미안하지만 내 문제가 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"내 오빠와 내 애인이... 싸우고 있어요! 아직은 서로 험한 말을 주고받는 정도지만, 조금만 있으면 서로를 칼로 찌르기 시작할 거예요! 제발 그들을 말릴 수 있도록 날 도와주세요!"~ */
  IF ~~ THEN REPLY #33511 /* ~"그들과 지금 당장 얘기를 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"싸움을 멈추게 할 수는 있지만 공짜로는 안 되겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"미안하지만 내 문제가 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"정말 고마워요! 그들은 바로 저기 있어요!"~ */
  IF ~~ THEN REPLY #33514 /* ~"그들과 얘기를 한 후에 돌아오겠소."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"나는 당신께 돈을 드릴 수가 있어요... 적어도 동전 백 닢은... 제발 말려만 주세요."~ */
  IF ~~ THEN REPLY #33515 /* ~"그들과 얘기를 한 후에 돌아오겠소."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"생각해 보니 그건 정말 내가 상관할 일이 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"그 싸움을 말려 주셔서 고마워요. 나는 그들이 서로를 죽이지는 않을까 너무 걱정했었어요. 나는 내 오빠와 사랑하는 매스 중 어느 쪽도 잃고 싶지 않아요."~ */
  IF ~~ THEN REPLY #33517 /* ~"별로 어려운 일도 아니었소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"그렇다면 감사의 표시를 하는 것이 어떻겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~여자의 표정이 즉각 어두워진다. "대체 여기가 어디라고 생각하는 거죠? 레이디의 구역? 내게 돈이 있었다면 내 가족을 위한 식료품을 사는 데 썼을 거예요! 당신에게 사례를 할 수 없어 정말 미안해요... 내 감사의 마음으로 대신해야 할 것 같군요." 그녀는 얼굴을 찌푸리고 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #33519 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"제발! 그들을 말려 주세요!"~ */
  IF ~~ THEN REPLY #33520 /* ~"노력해 보리다..."~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"En fait, je trouve que ? ne me regarde pas. 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"그 싸움을 말려 주셔서 고마워요. 나는 그들이 서로를 죽이지는 않을까 너무 걱정했었어요. 나는 내 오빠와 사랑하는 매스 중 어느 쪽도 잃고 싶지 않아요."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"도울 수 있어서 기뻤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"그렇다면 감사의 표시를 하는 것이 어떻겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"천만에. 자, 이제 내 보수를 받아야겠소..."~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~그녀는 고개를 끄덕인다, 그리고 소매를 걷어 올리고 변색된 은팔찌를 벗는다. "여기 있어요... 내 유일한 보물이에요. 하지만 두 사람 중 그 어느 쪽의 목숨도 이것 이상의 가치가 있어요..." 여자는 슬프게 한숨을 쉰다. ~ */
  IF ~~ THEN REPLY #33525 /* ~"기다리시오... 그것을 도로 가져가시오. 팔찌는 당신이 지니도록 하시오."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~여자의 눈빛이 밝아진다. "고마워요! 레이디의 그림자가 당신을 그냐 지나치기를!"~ */
  IF ~~ THEN REPLY #33527 /* ~"천만에... 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"그 싸움을 말려 주셔서 다시 한 번 감사해요."~ */
  IF ~~ THEN REPLY #33528 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END
