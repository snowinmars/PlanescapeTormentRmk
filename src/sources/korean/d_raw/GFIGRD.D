// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"동지들! 내게로 오시오! 침입자가 여기 있소! 이쪽이오!"~ */
  IF ~~ THEN REPLY #5692 /* ~싸운다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"우리는 당신에게 떠나 달라고 했소. 그러니 지금 당장 그렇게 해주시오."~ */
  IF ~~ THEN REPLY #5694 /* ~완료.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"밖이든 안이든 간에 작업장 부근에는 가지 마시오."~ */
  IF ~~ THEN REPLY #66282 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"안녕하시오. 어떤 도움이 필요하시오?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"그렇소. 난 이 일에 대해 누구와 얘기해야 할지를 몰랐소, 하지만 당신이 바로 그 사람인 것 같소. 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"사무실은 어디 있소?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"미안하지만 그건 비밀이오. 그건 우리의 귀중한 당원들에게도 마찬가지요. 당신이 프로젝트의 일원이거나, 고위 간부들로부터 허가를 받기 전에는 당신을 들여보내 줄 수가 없소."~ */
  IF ~~ THEN REPLY #5721 /* ~"좋소. 사무실이 어디 있는지 가르쳐 줄 수 있겠소?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"좋소. 어디 가면 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"좋소. 어디 가면 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"고위층 얘기가 나왔으니까 하는 말인데, 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"만약 내가 당신을 두들겨 패서라도 내 뜻을 이루겠다면?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"주 공장 구획의 바로 남쪽에 책상이 있는 방이 보일 것이오. 그 곳이 사무실이오."~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"고맙소. 어디 가면 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"고맙소. 어디 가면 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"이 일을 누구에게 얘기해야 할지 모르겠소, 하지만... 베다이-린은 내게 산도즈를 죽여달라고 부탁했소."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"산도즈가 죽었으니, 이제 당신에게 도움을 줄 수 있는 사람은 켈도뿐이오. 그는 강당에 있소. 주 공장 구획의 오른쪽에 있는 문으로 들어가시오. 아마 그는 쉽게 찾을 수 있을 거요."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"좋소. 저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"내게 사무실이 어디 있는지 가르쳐 줄 수 있겠소?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"이 일에 대해서는 산도즈나 켈도가 당신을 도울 수 있을 것이오. 켈도는 주 공장 구획의 오른쪽에 있는 문으로 들어가면 나오는 강당에 있소. 그리고 산도즈는 대개 강당의 뒤쪽에 있는 방에 있소."~ */
  IF ~~ THEN REPLY #5771 /* ~"고맙소. 사무실은 어디 있소?"~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"산도드 얘기가 나왔으니까 하는 말인데, 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"어디 한 번 해보시오."~ */
  IF ~~ THEN REPLY #5777 /* ~공격한다.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"아니오. 우리는 그 밤에는 여기 없었소. ~ */
  IF ~~ THEN REPLY #5780 /* ~"그건 좀 이상하지 않소?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"누구의 명령으로?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"당신에게 살인 이외의 사안에 대한 질문들을 하고 싶소."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"알겠소. 흥미롭군. 시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"뭐라고? 정말이오? 가서 켈도에게 이 사실을 알리시오. 그 사이 우리는 그 기술자를 처리하리다. 고맙소."~ */
  IF ~~ THEN REPLY #5785 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"그렇소, 정말 이상한 일이오. 대개 그들은 프로젝트의 안전을 보장하기 위해 우리가 여기를 밤낮으로 지키도록 명령하오."~ */
  IF ~~ THEN REPLY #5787 /* ~"누가 당신을 그렇게 퇴거시킬 권한을 가지고 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"프로젝트에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"그래 당신은 아무 것도 보지 못했다는 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"흥미롭군. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"그러한 권한을 가지고 있는 사람은 틸돈과 베다이-린뿐이오. 물론 간부들이나 그 측근도 그런 명령을 내릴 수도 있지만, 그들이 그랬을 가능성은 극히 희박하오. 나는 누가 왜 그런 명령을 내렸는지 알 수가 없소."~ */
  IF ~~ THEN REPLY #5792 /* ~"별 도움이 되진 않았지만 처음부터 너무 많은 걸 기대할 수는 없으니까. 대신 다른 질문에 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"그리고 이런 명령을 받은 것은 별로 이상한 일이 아니오?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"그리고 당신은 아무 것도 보지 못했소?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"그것 참 사건 해결에 대단한 '광명'을 던지는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"질문할 것이 더 있소?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"그렇소. 난 이 일에 대해 누구와 얘기해야 할지를 몰랐소, 하지만 당신이 바로 그 사람인 것 같소. 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"나는 대장장이를 죽인 범인을 찾고 있소. 혹시 그날 밤 뭔가 보았소?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"사무실은 어디 있소?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"그렇소. 나는 아무 것도 보지 못했소."~ */
  IF ~~ THEN REPLY #5805 /* ~"흠. 그럼 그 밖의 다른 질문에 좀 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"이런 명령이 이상하다고는 생각하지 않았소?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"그것 참 사건 해결에 대단한 '광명'을 던지는군. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"나는 우리가 이번 살인 사건 조사에 대해 당신에게 전폭적인 협조를 해야 한다는 것을 아오, 하지만 미리 말해 두겠는데 나는 당신에게 별로 대단한 도움을 주지는 못할 거요."~ */
  IF ~~ THEN REPLY #5809 /* ~"왜 도움이 안된다는 거요? 당신은 그날 밤 이 곳에 있지 않았소?"~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"알겠소. 어차피 다른 질문들을 할 생각이었으니까.~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"아. 그럼 관두시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~유능해 보이나 다소 지루해 하고 있는 듯한 경비병이 보인다. "안녕하시오. 무슨 도움이 필요하시오?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"그렇소. 난 이 일에 대해 누구와 얘기해야 할지를 몰랐소, 하지만 당신이 바로 그 사람인 것 같소. 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"사무실은 어디 있소?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"안녕하시오. 무슨 도움이 필요하시오?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"저 삼엄하게 지켜지고 있는 문들 저편에는 무엇이 있소?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"그렇소. 난 이 일에 대해 누구와 얘기해야 할지를 몰랐소, 하지만 당신이 바로 그 사람인 것 같소. 베다이-린은 내게 산도즈를 죽여달라고 부탁했소. 어떻게 생각하시오?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"사무실은 어디 있소?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"어디 가면 이 곳의 고위층을 만날 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~경비병은 당신을 노려본다. "비키시오., 우리는 해야 할 일이 있소."~ */
  IF ~~ THEN REPLY #67222 /* ~"안녕히 계시오."~ */ EXIT
END
