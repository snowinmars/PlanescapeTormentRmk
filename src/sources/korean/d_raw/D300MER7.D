// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~이 마른 청년은 불안한 미소를 지으며 지나가는 사람들을 상대로 호객 행위를 하고 있다. 그는 당신이 거기 서 있다는 사실을 눈치채지 못한 듯하다.~ */
  IF ~~ THEN REPLY #17744 /* ~"안녕하시오..."~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~상인을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"다시 만나 반갑습니다. 내 물건을 구경하시겠습니까?"~ */
  IF ~~ THEN REPLY #17746 /* ~"아니, 난 옷은 필요없소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"어서 오십시오... 어서 오십시오! 오늘은 뭘 보여 드릴까요? 털가죽? 비단? 면?"~ */
  IF ~~ THEN REPLY #17748 /* ~"아무 것도 아니오. 난 옷은 필요없소. 질문할 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"물론입니다. 아무 질문이나 하십시오." 그는 걱정스럽게 웃는다. 아마 좋은 인상을 주려고 애쓰고 있는 것 같다.~ */
  IF ~~ THEN REPLY #17750 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"오!" 그는 갑자기 실망을 한 것 같다. "나... 어... 나는 손님이... 천에 대해 질문할 거라고 생각했습니다."~ */
  IF ~~ THEN REPLY #17754 /* ~"옷?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"아니오. 내 질문에 대답해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~상인의 눈이 빛난다. "그렇습니다, 천! 나는 온갖 종류의 천을 취급합니다! 뭐 특별히 보시고 싶은 거라도 있습니까?"~ */
  IF ~~ THEN REPLY #17757 /* ~"아니오, 하지만 내 질문에 대답해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~그는 눈살을 찌푸리며 고개를 젓는다. "어... 아닙니다." 갑자기 그는 갑자기 좋은 생각이라도 난 듯 자신이 파는 직물들을 가리킨다. "천?"~ */
  IF ~~ THEN REPLY #17759 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END
