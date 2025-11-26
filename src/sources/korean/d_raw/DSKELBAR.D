// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~스켈레톤은 덜컥거리는 소리를 내며 당신을 향해 몸을 돌린다. 그의 뼈들 중 일부는 가죽끈으로 동여매져 있으며, 와인이 묻은 녹색 튜닉을 착용하고 있다.~ */
  IF ~~ THEN REPLY #2567 /* ~"멋진 튜닉이오. 정말이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~스켈레톤을 살펴본다.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~스켈레톤을 살펴본다.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~스켈레톤은 아무런 응답도 하지 않는다. ~ */
  IF ~~ THEN REPLY #2571 /* ~"당신과 얘기를 나눌 수 있어 반가웠소, 해골 양반. 건강하게 지내시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~~ THEN REPLY #2573 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 철제 볼트에 고정되어 있다. 이 스켈레톤은 상태가 양호하다. 최근에 백색 도료를 바른 그것의 뼈들에는 일체의 살점이 남아있지 않다. ~ */
  IF ~~ THEN REPLY #7074 /* ~스켈레톤을 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~시체안치소의 스켈레톤들과 마찬가지로 누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 하지만 시체안치소의 스켈레톤들과는 달리 이 스켈레톤의 관절에는 볼트가 박혀 있지 않다... 당신으로서는 마디가 서로 어떻게 연경되었는지 알 수가 없다. 전반적으로 이 스켈레톤의 상태는 양호하며, 최근에 백색 도료를 바른 그것의 뼈들에는 일체의 살점이 남아있지 않다. ~ */
  IF ~~ THEN REPLY #7075 /* ~스켈레톤을 내버려 두고 떠난다.~ */ EXIT
END
