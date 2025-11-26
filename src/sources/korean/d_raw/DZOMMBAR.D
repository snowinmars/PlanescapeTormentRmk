// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~좀비는 텅 빈 눈으로 당신을 바라본다. 그의 입술은 꿰매져 있으며, 그의 몸 여러 곳에는 붕대가 감겨져 있다.시체로부터는 약간의 알코올 냄새가 난다.~ */
  IF ~~ THEN REPLY #2587 /* ~"그래... 이 부근에서 뭐 재미있는 건 보지 못했소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~좀비는 계속 당신을 바라본다.~ */
  IF ~~ THEN REPLY #2590 /* ~"좋소 그럼. 당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~좀비는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~~ THEN REPLY #2586 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
