// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #286 /* ~스켈레톤은 돌아서서 당신을 마주본다. 그의 이마에는 번호가 새겨져 있으며, 턱과 관절 등의 일부 뼈들은 가죽끈으로 묶여져 있다. 떠한 그는 흑색 작업복을 온몸에 걸치고 있다.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #288 /* ~"실례하오, 혹시 이 부근에서 해골들이 걸어다니는 걸 보았소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #289 /* ~"실례하오, 혹시 이 부근에서 해골들이 걸어다니는 걸 보았소?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #287 /* ~"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #1164 /* ~"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1340 /* ~스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #1341 /* ~스켈레톤을 조심스럽게 살펴본다.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #3929 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 65
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3930 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3931 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3932 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3933 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3934 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3935 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3936 /* ~"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?~ */ EXTERN ~DMORTE~ 69
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3937 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3938 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3939 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #290 /* ~스켈레톤은 아무런 응답도 하지 않는다. ~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #291 /* ~"당신과 얘기를 나눌 수 있어 반가웠소, 해골 양반. 건강하게 지내시오."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3940 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3941 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.4
  SAY #1162 /* ~스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #1163 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3942 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3943 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #3927 /* ~누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 금속 볼트에 고정되어 있다. 이 스켈레톤은 오랫동안 사용된 것 같다. 그 뼈들 중 상당수가 깨졌으며 부서진 부분들은 봉함제와 악취가 나는 접착제로 봉합되어 있다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #3928 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 65
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3944 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3945 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3946 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3947 /* ~"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3948 /* ~"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #3949 /* ~"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3950 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3951 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3952 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #3953 /* ~당신은 철제 볼트를 뽑아 내려고 시도하나, 당신은 그것들을 뽑아 낼 정도로 힘이 세지 못하다, 그것들은 매우 튼튼히 박혀 있다. ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3954 /* ~"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데... 흠... 나중에 다시 오리다, 해골 양반." ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3955 /* ~"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데... 흠... 나중에 다시 오리다, 해골 양반." ~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3956 /* ~"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데... 흠... 나중에 다시 오리다, 해골 양반." ~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3957 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3958 /* ~스켈레톤을 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3959 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #3960 /* ~당신은 온몸의 힘을 다 기울여 철제 볼트를 뽑아 내려고 노력한다, 그리고 수 초간의 분투 끝에 마침내 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.~ */
  IF ~~ THEN REPLY #3962 /* ~"미안하네, 해골 양반..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #3961 /* ~당신은 쇠 지렛대를 이용하여 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.~ */
  IF ~~ THEN REPLY #3963 /* ~"미안하네, 해골 양반..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
AddexperienceParty(15)
~ EXIT
END
