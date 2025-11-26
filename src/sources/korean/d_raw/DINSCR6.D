// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~그것에 대해 어떻게 해볼 수 있는 방법은 없다. 기억은 사라져서 다시는 돌아오지 않는다. 죽을 때마다 나는 자신의 일부를 잃는다.~ */
  IF ~~ THEN REPLY #53738 /* ~계속한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~어떻게 불사신이 죽을 수가 있는가?~ */
  IF ~~ THEN REPLY #53741 /* ~계속한다.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~그는 내 정신이 죽을 때마다 약해진다고 했다. 나는 그에게 어떻게 이런 일이 있을 수 있느냐고 물었으나 그는 대답하지 못했다. 그는 쓸모가 없었다. 나는 내 다른 화신들이 그의 무능함 때문에 고통받지 않도록 그를 죽였다. ~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~패널과는 달리 비문은 매우 조잡하게 새겨졌다. 자세히 살펴보니 패널은 밀면 벽 속으로 들어갈 것 같다.~ */
  IF ~~ THEN REPLY #53747 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~패널은 벽 속으로 들어간다, 그리고 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53750 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
