// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~뭔가에 짓눌린 듯한 인상의 이 작은 사내는 골동품 가게 안을 부지런히 돌아다니면서 이 가게의 여주인을 위해 먼지를 털고, 목록을 작성하며, 물건들을 재배치하고 있다. 그의 몸에서는 약간의 양파 냄새가 난다. 당신이 다가가자 그는 불안한 표정으로 당신을 쳐다본다. "제발... 저는 손님과 얘기를 할 수 없습니다. 제겐 할 일이 있고, 주인님도 허락하지 않을 것입니다..."~ */
  IF ~~ THEN REPLY #46109 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"미안합니다, 하지만 그럴 수가 없습니다. 주인님이 내가 당신과 얘기하는 것을 보기 전에 제발 날 그냥 내버려 두고 떠나 주십시오..."~ */
  IF ~~ THEN REPLY #46112 /* ~"당신 여주인?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~작은 사내가 고개를 끄덕인다. "그렇습니다... 브리스치카 님 말입니다. 저는 그분의 하인... 노예입니다. 저는 죄를 지어 노예형을 선고받았으며, 그녀의 다른 많은 노예들과 마찬가지로 마계구에서 그녀에게 팔렸습니다... 다른 노예들은 대부분 그녀의 저택에 있습니다. 이제 제발 날 그냥 내버려 두십시오, 아니면 그녀가 화가 나서 절 무자비하게 구타할 테니!"~ */
  IF ~~ THEN REPLY #46115 /* ~"좋소. 안녕히 계시오, 스탠디쉬~ */ EXIT
END
