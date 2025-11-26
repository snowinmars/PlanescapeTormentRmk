// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS42.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS42~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6595 /* ~스켈레톤은 돌아서서 당신을 마주본다. 그것의 이마에는 "42"란 번호가 새겨져 있으며 그것의 뼈들 중 일부 - 주로 턱과 관절은 가죽끈으로 묶여 있다. 그것의 몸에는 흑색 작업복이 걸쳐져 있다.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6612 /* ~"이 시체가 그 기억에서 본 시체인 것 같소..."~ */ GOTO 1
  IF ~~ THEN REPLY #6613 /* ~"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #6614 /* ~"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #6615 /* ~"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6616 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6617 /* ~스켈레톤을 조심스럽게 살펴본다.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6618 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6619 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
~ THEN REPLY #6620 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6621 /* ~"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6622 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6623 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6624 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.9 3.0 3.3
  SAY #6596 /* ~당신 목소리를 듣자 스켈레톤은 갑자기 똑바로 선다. 그것은 두 팔을 가슴 위에 포개 놓고, 손가락으로는 흉곽을 훅으로 채우듯 쥔다.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6625 /* ~양팔을 당신 가슴 위에서 교차시킨다.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6626 /* ~몸짓을 흉내낸다... 어떤 일이 일어나는지 지켜본다. ~ */ GOTO 9
  IF ~~ THEN REPLY #6627 /* ~"어..."~ */ GOTO 10
  IF ~~ THEN REPLY #6628 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #6597 /* ~스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6629 /* ~스켈레톤을 그냥 내버려 두고 떠난다.. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6630 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6631 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 10.2
  SAY #6598 /* ~이 해골이 산산조각 나지 않고 아직 멀쩡히 있다는 것에 당신은 놀란다. 그것의 누런 뼈들은 회반죽과 여러 겹의 악취 나는 접착체로 범벅이 되어 있다. 접착체 사이로 간간이 드러나는 뼈에서는 수백 개의 미세한 균열이 보인다. 누군가가 이 해골을 가죽끈으로 묶고 관절에 볼트를 박기는 했으나, 끈은 해졌으며 볼트들도 곧 떨어져 나올 것 같다.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63495 /* ~"이 시체가 그 기억에서 본 시체인 것 같소..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6632 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6633 /* ~스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다. ~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6634 /* ~"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6635 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6636 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6637 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 12.0
  SAY #6599 /* ~그에 반응하여 스켈레톤은 차렷자세를 한다. 그러자 스켈레톤의 동체를 유지시키던 가죽꾼이 특 끊어지고, 흉곽이 마치 한 쌍의 문처럼 바깥쪽으로 열린다.~ */
  IF ~~ THEN REPLY #6638 /* ~흉곽에 손을 넣고 더듬거린다.~ */ GOTO 5
  IF ~~ THEN REPLY #6639 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0
  SAY #6600 /* ~놀랍게도 당신 손은 스켈레톤의 흉곽 안으로 들어가자 그 모습을 감춘다... 당신은 손이 어딘가 *다른* 곳에 있다는 기묘한 느낌을 받는다. 흉곽 안에서 손을 뒤적이다 당신은 어떤 투명한 물체에 부딪친다. 그것은 주먹만하며 스켈레톤의 척추에 붙어 있는 것 같다.
~ */
  IF ~~ THEN REPLY #6640 /* ~아이템을 꺼낸다.~ */ DO ~Kill(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6641 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.7 0.8 3.2
  SAY #6601 /* ~볼트는 스켈레톤의 관절로부터 쉽게 빠져나온다. 스켈레톤은 무너진다. 그러나 그 뼈들 중 일부는 아직도 씰룩거리고 있다.~ */
  IF ~~ THEN REPLY #6642 /* ~"미안하네, 해골 양반..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #6602 /* ~당신이 그 아이템을 빼내자 스켈레톤은 갑자기 소멸한다, 그리고 그 관절을 고정시키고 있던 볼트들은 요란한 소리를 내며 바닥에 떨어진 것 같다. 그것이 무엇이었던 간에 스켈레톤은 그것의 힘에 의해서 유지되고 있었던 것 같다.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6643 /* ~아이템을 살펴본다.~ */ GOTO 8
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6644 /* ~아이템을 살펴본다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #6603 /* ~그것은 평범한 쇳덩어리인 것 같다. 당신이 누가 왜 그것을 스켈레톤의 흉곽에 숨겼는지 이해할 수가 없다.~ */
  IF ~~ THEN REPLY #6645 /* ~철 조각을 살펴본다.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 1.1 12.1
  SAY #6604 /* ~그에 반응하여 스켈레톤은 차렷자세를 한다. 그러자 스켈레톤의 동체를 유지시키던 가죽꾼이 특 끊어지고, 흉곽이 마치 한 쌍의 문처럼 바깥쪽으로 열린다. 이유는 알 수 없으나 당신은 흉곽 속에 손을 넣고 싶다는 충동을 느낀다. ~ */
  IF ~~ THEN REPLY #6646 /* ~흉곽에 손을 넣고 더듬거린다.~ */ GOTO 5
  IF ~~ THEN REPLY #6647 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 12.2
  SAY #6605 /* ~스켈레톤은 차렷자세를 한다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6648 /* ~"어... 여보시오?"~ */ GOTO 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #6649 /* ~"어... 안녕하시오?"~ */ GOTO 13
  IF ~~ THEN REPLY #6650 /* ~스켈레톤을 조심스럽게 살펴본다.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #6651 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #6606 /* ~그것은 평범한 쇳덩어리인 것 같다. 당신의 전신이 그것을 여기에 숨긴 데는 무슨 이유가 있었을 것이다.~ */
  IF ~~ THEN REPLY #6652 /* ~철 조각을 조심스럽게 살펴본다.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #6607 /* ~스켈레톤은 다시 두 팔을 가슴 위에 포갠다.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6653 /* ~양팔을 당신 가슴 위에서 교차시킨다.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6654 /* ~몸짓을 흉내낸다... 기다리며 어떤 일이 일어나는지 지켜본다. ~ */ GOTO 9
  IF ~~ THEN REPLY #6655 /* ~"어..."~ */ GOTO 10
  IF ~~ THEN REPLY #6656 /* ~스켈레톤을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #6608 /* ~스켈레톤은 다시 두 팔을 가슴 위에 포갠다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 112
END

IF ~~ THEN BEGIN 14 // from: 8.0 11.0
  SAY #58983 /* ~당신이 쇳덩어리를 살피려고 그 위에 양손을 얹자, *쉿쉿* 소리와 함께 금속이 증발해버린다. 남은 건 기묘한 대거, 더러운 천으로 싸인 한줌의 동전, 그리고 두 개의 핏빛 눈물방울뿐이다. 이것들은 쇳덩어리 *속에* 들어 있었던 것 같다.~ */
  IF ~~ THEN REPLY #58984 /* ~물건들을 가지고 떠난다.~ */ DO ~GiveItemCreate("GSKnife",Protagonist,1,0,0)
GiveItemCreate("Rags",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveGoldForce(99)
~ EXIT
END
