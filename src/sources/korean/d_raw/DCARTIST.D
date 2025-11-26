// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~이 매력적이나 얼굴이 창백한 아가씨는 당신에게 미소를 짓는다, 그리고 목탄으로 그린 스케치들로 가득한 책을 가리킨다. "만나서 반가워요. 제 이름은 울라나예요. 나는 화가가 직업이에요. 동전 다섯 닢만 주시면 멋진 초상화를 그려 드리겠어요. 리얼하게 그려 드릴 수도 있고 SD로 그려 드릴 수도 있어요." ~ */
  IF ~~ THEN REPLY #51718 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"다시 만나서 반가워요. 초상화를 그리려고 오셨나요? 나는 당신이 결과에 만족하실 거라고 보증해 드릴 수 있어요..."~ */
  IF ~~ THEN REPLY #51720 /* ~"고맙지만 지금은 아니오. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~그녀는 미소짓는다, 하지만 왠지 좀 슬픈 듯하다. "그럼 안녕히 가세요. 생각이 바뀌면 주저하시지 말고 다시 오세요."~ */
  IF ~~ THEN REPLY #51722 /* ~떠난다.~ */ EXIT
END
