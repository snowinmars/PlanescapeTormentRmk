// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~이 사람은 흥분해서 몸을 떨고 있다. 그의 눈은 사악한 기대감으로 이글거리고 있다. 당신은 다가가자 그는 돌아서서 능글맞게 웃는다. "뭐요?"~ */
  IF ~~ THEN REPLY #53203 /* ~"대체 무슨 일이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"당신도 끼고 싶으면 주조그에게 가서 얘기해. 그만 가봐!"~ */
  IF ~~ THEN REPLY #53206 /* ~"기다리시오... 주조그가 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~그는 짜증스런 표정으로 당신을 흘긋 보더니 대충 손짓을 한다. "갑옷을 걸치고 저기 서 있는 경비병."~ */
  IF ~~ THEN REPLY #53209 /* ~떠난다.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~이 사람은 공황 상태에 빠져 소리를 지르고 있으며, 정상적인 판단력을 거의 상실한 듯하다. "주조그가 죽었어! 우린 어떻게 하지?우린 여기서 도망쳐야 해!"~ */
  IF ~~ THEN REPLY #53211 /* ~떠난다.~ */ EXIT
END
