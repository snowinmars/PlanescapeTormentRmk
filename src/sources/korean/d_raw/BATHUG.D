// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"그 크리스톨이란 년을 죽임으로서 당신은 통행료를 지불한 셈이지. 보스는 그걸로 만족할지 모르지만 난 아직도 우리가 당신을 요절내야 한다고 생각해. 가라고... 여기서 꺼져."~ */
  IF ~~ THEN REPLY #34569 /* ~"감동적이군. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"우린 당신으로부터 곧 돈을 받게 될 거야. 돈 아니면 피야. 가서 통행료 징수원하고 얘기를 해. 그리고 적당히 넘어갈 생각은 하지도 마. 알겠어? ~ */
  IF ~~ THEN REPLY #34571 /* ~"난 그렇게 생각하지 않소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"알겠소."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"돈을 냈으니 어서 꺼지지 그래? 우린 더 이상 당신이 필요없어."~ */
  IF ~~ THEN REPLY #34575 /* ~"뭐든 간에. 그럼 안녕히 계시오."~ */ EXIT
END
