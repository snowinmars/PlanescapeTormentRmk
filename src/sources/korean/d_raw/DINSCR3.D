// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~과거로부터 교훈을 얻을 수 있도록 일지에 여행의 경과를 기록하는 것은 매우 중요하다. 하지만 더욱 절실한 것은 이 수수께끼를 푸는 데 필요한 정보원을 찾아냈을 때 그것을 보호하는 일이다. 만약 핵심적인 인물, 서류, 또는 탁선이 어떤 이유에서든 죽음 또는 파괴에 의해 없어진다면, 너는 자신이 누구 혹은 무엇이며 어떻게 이런 상황에 처하게 되었는지를 영원히 모르게 될 것이다. ~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~패널을 조사한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~정말 놀라운 기술이다. 패널은 오직 달인만이 이룩할 수 있는 정확도로 벽에 삽입되어 있다. 밀면 패널이 벽 속으로 더 들어갈 것 같다."~ */
  IF ~~ THEN REPLY #53710 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~손으로 약간만 누르자 패널은 벽 속으로 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53713 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
