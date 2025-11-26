// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~때묻은 옷을 입은 여윈 사내가 보인다. 그의 코는 매부리코이며, 이마에는 뭉뚝한 뿔이 두 개 나 있다. 그는 비틀거리면서 뭐라고 중얼거리고 있다... 그로부터는 소금물, 구토, 그리고 싸구려 와인 냄새가 난다. [Be sure to put in placeholder 2]~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"안녕하시오."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"당신이 젤라이요? 그렇다면 크래독이 당신이 시장으로 돌아와 주기를 바라고 있소.~ */ JOURNAL #30880 /* ~숙고할 수 있는 자는 래벌이 레이디 오브 페인의 미로들 중 하나로 추방되었으며, 그녀의 미로로 통하는 전이문의 열쇠는 그녀의 일부분이라고 내게 말했다. 별 도움이 되지 않는군. ~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~그냥 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"에?" 사내는 멍한 눈으로 당신을 본다. "뭐요? 뭐?"~ */
  IF ~~ THEN REPLY #38705 /* ~"당신이 젤라이요? 그렇다면 크래독이 당신이 시장으로 돌아와 주기를 바라고 있소.~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END
