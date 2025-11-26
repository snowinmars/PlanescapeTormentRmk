// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"당신은 이미 이 곳에서 사라졌어야 하는 것 아니오? 경비병! 이 자를 밖까지 안내해 주시오."~ */
  IF ~~ THEN REPLY #4730 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"도와주시오! 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #4732 /* ~공격한다.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"신들이여! 우리 기계는 파괴되었소! 이제 당수는 어디서 우리에게 지불할 돈을 구하지? 우리가 대의에 일신을 바치고 있다는 건 다행한 일이야. 어쨌든 하던 일을 다시 해야겠군... 이번에는 두 배는 더 열심히. 정말 가혹한 시험이야."~ */
  IF ~~ THEN REPLY #4735 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"안녕하시오, 형제! 당신과 얘기를 나누었으면 좋겠지만 녹은 강철은 그 누구도 기다려 주지 않소. 만약에 뭐가 필요하면 저기 있는 감독들에게 말하시오... 그들에겐 시간이 남아도니까."~ */
  IF ~~ THEN REPLY #4737 /* ~"좋소. 행운을 빌겠소."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"그럼 당신은 살인 사건을 조사하고 있소? 난 그가 죽어서 안됐다고 말하진 못하겠소, 하긴 그 친구를 좋아한 사람은 별로 없었으니까. 어딜 찾아봐야 하느냐고? 난 모르겠소."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"하지만 당신에게는 내게 얘기해줄 것이 더 있소, 그렇지 않소?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"하지만 당신에게는 내게 얘기해줄 것이 더 있소, 그렇지 않소?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"좋소. 이 노를 사용하는 요령을 다시 가르쳐 주겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"좋소. 시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"그래..." 대장장이는 몰래 주변을 살핀다." 감독부터 조사하는 게 좋을 거요. 그녀는 요즘 기분이 좀 더럽소. 그녀가 했다고는 생각하지 않지만 아마 그녀라면 누가 했는지 알고 있을지도 모르오."~ */
  IF ~~ THEN REPLY #4744 /* ~"감독? 그녀는 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"아니, 내가 당신에게 해줄 말은 그것뿐이오."~ */
  IF ~~ THEN REPLY #4747 /* ~"좋소. 이 노를 사용하는 요령을 다시 가르쳐 주겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"좋소. 시간을 내주어 고맙소."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"만약 용광로에서 작업을 하려고 한다면 우선 보호용 앞치마부터 구하시오. 그 다음에는 집게, 망치, 그리고 아무도 사용하고 있지 않은 모루가 필요할 거요. 그리고 나서는 철광석 한 덩어리를 불 속에 넣어 부드러워질 때까지 달군 후, 모루에 올려 놓고 망치로 두들기시오. 원하는 모양새를 만든 다음에는 근처에 있는 물통에 담드시오. 이걸로 집중 강좌는 끝이오, 하지만 제대로 하려면 기교가 필요할 거요."~ */
  IF ~~ THEN REPLY #4750 /* ~"어려워 봐야 얼마나 어렵겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"그녀는 대개 사무실 근처에서... 우리를 감시하고 있소. 뭐, 그게 그녀의 직무니까, 하지만 난 그런 감시없이도 내 할 일을 하오."~ */
  IF ~~ THEN REPLY #4754 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"만약 당신에게 믿고 말길 수가 있었다면 애초에 감독은 필요하지도 않았을 거요. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"상상이 가오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"아마 놀랄 걸. 여기서 꺼지시오. 난 바쁘오."~ */
  IF ~~ THEN REPLY #4758 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"그래, 뭐요? 서두르시오. 난 바쁘니까."~ */
  IF ~~ THEN REPLY #4761 /* ~"당신은 누구요?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"사무실은 어디 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"당신 감독은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"갓즈맨에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"관두시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"내가 서서 수다나 떨 정도로 한가한 사람으로 보이시오? 여기 온 무슨 목적이라도 있소?"~ */
  IF ~~ THEN REPLY #4767 /* ~"그래, 그렇소."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"아니, 별로."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"그럼 더 이상 내 시간을 낭비하지 마시오. 내겐 일정이 있으니까. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #4770 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"책상이 있는 방과 그 책상 뒤에 앉아 있는 노인이 보이시오? 그 방이 바로 사무실이고 거기 앉아 있는 사람이 사무원이오. 뭐 다른 게 더 필요하시오, 아니면 난 이만 하던 일로 돌아가도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #4772 /* ~"다른 질문이 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"아니, 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"오, 나는 하루를 빈둥거리며 보낸다오. 이보시오, 결례를 할 생각은 없지만, 내가 이 곳에서 뭘 하고 있는지는 명백하지 않소? 난 대장간일을 하고 있고, 만약 빨리 일로 돌아가지 않으면 처음부터 다시 시작해야만 하오."~ */
  IF ~~ THEN REPLY #4775 /* ~"좋소, 좋아. 몇 가지만 더 물어보겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"그런 태도를 취할 필요는 없잖소, '친구.' 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~대장장이는 하던 일을 멈추고 당신에 대해 파악하려는 듯 쳐다본다. "갓즈맨은 만물이 다 신이 될 수 있다고 믿소. 당신 같은 사람조차도. 그것이 좋은 일인지 아니면 나쁜 일인지는 관계없소. 우리는 보다 완벽한 형태에 도달하기 위해 사는 동안 끊임없이 학습을 하오. 갓즈맨은 또한 짜증나게 뻔한 질문을 하는 사람과도 친해질 수 있는 사람들과도 해질 수 있는 사람들을 지칭하오."~ */
  IF ~~ THEN REPLY #4779 /* ~"그래 당신 얘기는 우리 앞에는 극복해야 할 시련들이 있고 우리는 그 때문에 위대해진다는 거요?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"그래 당신 얘기는 당신이 지금 이 일에 대해 얘기할 수 있는 최적의 인물이 아니라는 거요?~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"고맙소. 이만 가보도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"내 얘기는 동쪽에 있는 문으로 들어가 거기 있는 열성 당원들과 얘기를 하라는 거요. 그들은 달리 할 일이 없으니까. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #4783 /* ~"다른 질문이 있소."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"친구, 내 생각에 당신은 그 용광로를 충분히 사용한 것 같소. 모두 다 당신이... 에... 솜씨가 있다는 건 아오. 그러니 정말 필요한 사람이 쓸 수 있도록 좀 비켜 주시오.~ */
  IF ~~ THEN REPLY #4786 /* ~"좋소."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"신들이여! 우리 기계는 파괴되었소! 이제 당수는 어디서 우리에게 지불할 돈을 구하지? 우리가 대의에 일신을 바치고 있다는 건 다행한 일이야. 어쨌든 하던 일을 다시 해야겠군... 이번에는 두 배는 더 열심히. 정말 가혹한 시험이야."~ */
  IF ~~ THEN REPLY #4788 /* ~떠난다..~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"신들이여! 우리 기계는 파괴되었소! 이제 당수는 어디서 우리에게 지불할 돈을 구하지? 우리가 대의에 일신을 바치고 있다는 건 다행한 일이야. 어쨌든 하던 일을 다시 해야겠군... 이번에는 두 배는 더 열심히. 정말 가혹한 시험이야."~ */
  IF ~~ THEN REPLY #4790 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~그는 당신을 흘긋 보더니 시선을 다시 연사 쪽으로 돌린다. "쉿! 나는 켈도의 연설을 들으려 하고 있소. 나는 배우려고 하는데 당신이 날 방해하고 있소."~ */
  IF ~~ THEN REPLY #64515 /* ~"미안하오. 안녕히 계시오."~ */ EXIT
END
