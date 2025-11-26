// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"또 당신이오? 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #5827 /* ~싸운다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"또 당신이오? 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #5830 /* ~싸운다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"좋아, 얼간아... 당장 꺼지면 아무도 다치지 않을 거다."~ */
  IF ~~ THEN REPLY #5833 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"주조소에 다시 오신 것을 환영하오."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"고맙소. 수령할 아이템이 하나 있었소."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"고맙소."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"주조소에 다시 오신 것을 환영하오."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"고맙소. 수령할 아이템이 하나 있었소."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"고맙소."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~억세며, 지루해 하고 있는 듯한 경비병이 보인다. "용건을 말하시오."~ */
  IF ~~ THEN REPLY #5841 /* ~"그냥 구경하고 있을 뿐이오."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"주문한 물건을 찾으러 왔소."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"새로운 주문을 넣으러 왔소."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"당신은 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"뭘 하고 있는 거요?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"나는 잰더가 꿈 제조기를 만드는 일을 돕고 있소."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"나는 꿈 제조기를 사용하려고 왔소..."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"나는 경매인 킬츠퍼로부터 켈도에게 전해줄 메시지를 가지고 왔소."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"아무런 용건도 없소. 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"그렇다면 그냥 가도록 하시오."~ */
  IF ~~ THEN REPLY #5849 /* ~"들어가도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"천만에."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"좋소. 당신 영수증을 볼 수 있겠소?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"그렇소."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"아니오."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"분명히 가지고 있었는데..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"미안하오, 하지만 현재 우리는 진행 중인 대규모 프로젝트 때문에 새로운 주문을 받지 않고 있소. 일 년 정도가 지난 후에 다시 와 주시오. 관심을 가져 주어 고맙소."~ */
  IF ~~ THEN REPLY #5857 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"나는 근원의 신봉자의 경비병이오."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"근원의 신봉자?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"아 알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"정문을 지키고 있소."~ */
  IF ~~ THEN REPLY #5864 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"당신은 근원의 신봉자의 본거지인 대 주조소 앞에 있소."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"누구?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"대 주조소란 무엇이오?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"아. 고맙소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~떠난다: "아."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"무엇을 원하는지 말씀하시오."~ */
  IF ~~ THEN REPLY #5872 /* ~"그냥 구경하고 있을 뿐이오."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"주문할 물건을 찾으러 왔소."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"새로운 주문을 넣으러 왔소."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"당신은 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"뭘 하고 있는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"아무런 용건도 없소. 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"대 주조소에 용건이 있다는 것을 입증하기 전에는 곤란하오."~ */
  IF ~~ THEN REPLY #5880 /* ~"알겠소. 그럼 질문할 것들이 더 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"고맙소. 당신의 찾고 있는 사무원의 사무실은 주조소의 남쪽 벽에 위치하고 있소. 주조소를 이용해 주셔서 감사하오." 그는 당신을 위해 정문을 연다.~ */
  IF ~~ THEN REPLY #5883 /* ~떠난다.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"미안하지만 당신에게는 영수증이 없는 것 같소."~ */
  IF ~~ THEN REPLY #5885 /* ~"분명히 가지고 있었는데..."~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"흠... 없는 것 같소. 하지만 다른 사안에 대해 물어보고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"그렇다면 떠나 주어야겠소."~ */
  IF ~~ THEN REPLY #5889 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"물론 그랬으리라 생각하오. 하지만 당신이 주조소에 용건이 있다는 것을 입증하기 전에는 들여보내 드릴 수가 없소."~ */
  IF ~~ THEN REPLY #5891 /* ~"그럼 질문할 것들이 더 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"그렇소. 우리는 갓즈맨이라고 불리오."~ */
  IF ~~ THEN REPLY #5894 /* ~"무엇 때문이오?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"당신에겐 잘된 일이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"이 곳은 근원의 신봉자들의 본거지일 뿐만 아니라 인간이 아는 한 가장 큰 규모의 주조소들 중 하나요. 이 정문을 통해서는 대규모의 물류가 이루어지며, 우리는 다원 우주의 수많은 고객들로부터 주문을 받고 있소. 하지만 우리는 현재 일체의 추가 주문을 받지 않고 있는데, 이는 우리가 보유하고 있는 대부분의 장인들이 대규모의 신규 프로젝트에 참여하고 있거나, 기존의 소규모 주문을 처리하는 데 투입된 상황이기 때문이오. 이는 당신에게 화급한 용건이 있거나 아니면 주문한 물건을 수령하기 위한 영수증이 없는 한 주조소 안으로 들어갈 수가 없다는 뜻이오."~ */
  IF ~~ THEN REPLY #5897 /* ~"화급한 용건이 있소!"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"내겐 영수증이 있소!"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"우리는 시길에서 공인된 15개의 당파들 중 하나요. 우리는 모든 존재 안에는 신성의 불꽃이 내재한다고 믿소. 이러한 불꽃은 선과 악에 구애받는 것은 아니며 신이 될 가능성을 상징하고 있소. 또한 우리는 신의 단계 이후에도 뭔가 더 위대한 것이 존재한다고 믿소. 우리는 모든 삶에는 목적과 목표가 있다고 믿으며, 우리는 이러한 목표들이 무엇인가 알고자 전력을 다하고 있소. 우리는 삶의 모든 단계에서 스스로를 향상시키고자 노력하고 있소."~ */
  IF ~~ THEN REPLY #5901 /* ~"중요한 것 같소."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"잘된 일이오. 날 들여보내 줄 거요?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"우린 그렇게 생각하오. 우리가 뭐 달리 도와 드릴 일은 있소?"~ */
  IF ~~ THEN REPLY #5904 /* ~"그렇소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"아니오."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"고맙지만 아니오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"좋소. 들어가시오."~ */
  IF ~~ THEN REPLY #5908 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"그렇소. 우리는 당신에 대한 얘기를 이미 들었소. 어서 들어가시오."~ */
  IF ~~ THEN REPLY #6481 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~경비병은 당신을 지리한 표정으로 잠시 쳐다본다. "행운을 빌겠소. 어서 들어가시오."~ */
  IF ~~ THEN REPLY #6483 /* ~"고맙소."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"또 오셨소? 안에 용건이 더 있는 모양이군. 안뜰에서 머뭇거리지 말고 안으로 빨리 들어가시오."~ */
  IF ~~ THEN REPLY #66286 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"고맙소. 그는 갓즈맨 대강당에 있을 거요." 그는 당신을 위해 정문을 연다.~ */
  IF ~~ THEN REPLY #67932 /* ~"고맙소."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
