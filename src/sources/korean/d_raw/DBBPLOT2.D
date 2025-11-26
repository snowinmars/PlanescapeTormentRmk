// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT2~

IF ~  Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53136 /* ~미로의 바닥에 있는 이 원형의 작은 구획은 기이하게도 중앙의 역겹게 생긴 잔 가지 셋을 제외하고는 모든 식물들이 죽어 있다... 마치 잔 가지들이 주변의 다른 식물들을 모두 먹어 치운 것 같다.~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #53137 /* ~래벌이 미로의 힘을 불러낼 때 사용했던 것과 같은 곡조로 콧노래를 부르기 시작한다.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53153 /* ~작은 가지들을 살펴본다.~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53156 /* ~작은 가지들을 살펴본다.~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53163 /* ~작은 가지들을 살펴본다.~ */ GOTO 7
  IF ~~ THEN REPLY #53164 /* ~작은 가지들을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53138 /* ~당신이 콧노래를 시작하자, 잔 가지들이 갑자기 자신들의 죽음의 원 안에서 뭔가를 잡으려고 튀어나가는 손가락처럼 뒤틀리며 움직이기 시작한다... 그리고 당신은 그들이 검은 가시 씨앗을 원하고 있다는 사실을 본능적으로 깨닫는다...~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53139 /* ~콧노래를 부르며 검은 가시 씨앗 하나를 그 속으로 던진다. ~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_2","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53151 /* ~"다른 씨앗들을 찾을 수 있었으면 좋겠지만... 아무래도 래벌이 내게 준 것이 이 곳에서 발견할 수 있는 유일한 종류 같군."~ */ EXIT
  IF ~~ THEN REPLY #53152 /* ~작은 가지들을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53140 /* ~당신은 콧노래를 부르면서 검은 가시 씨앗을 덤불 속으로 던진다, 그러자 세 잔 가지들이 씨앗을 휘감아 *우두둑* 소리와 함께 그것을 박살낸다. 잔 가지들은 동작을 멈추고 당신이 지켜보는 가운데 천천히 자라나 굵은 가지가 된다. 그것들은 자라면서 서로를 휘감는다, 그리고 *우두둑* 소리를 내며 기부로부터 떨어져 나온다. 그것들은 바닥을 떼굴떼굴 구르다가 죽은 듯이 멈춘다.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53141 /* ~삼중으로 얽힌 나뭇가지를 줍는다.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53144 /* ~삼중으로 얽힌 나뭇가지를 줍는다.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53147 /* ~삼중으로 얽힌 나뭇가지를 줍는다.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53148 /* ~삼중으로 얽힌 나뭇가지를 줍는다.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53142 /* ~당신은 삼중으로 얽힌 가지를 집어 든다. 그것은 당신 손 안에서 가만히 있으나, 당신은 그 안에서 당신의 콧노래를 희미하게 느낄 수 있다. 그것은 분명히 마력을 지니고 있다... 하지만 가지들은 다소 발육부진인 것 같다. 당신은 그 안에 어느 정도의 마력이 들었는지 단언할 수가 없다.~ */
  IF ~~ THEN REPLY #53143 /* ~"그럼 그냥 이걸 가져가야겠군... 쓸모가 있을지도 모르니."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53145 /* ~당신은 삼중으로 얽힌 가지를 집어 든다. 그것은 당신 손 안에서 가만히 있으나, 당신은 그 안에서 당신의 콧노래를 느낄 수 있다. 그것은 분명히 마력을 지니고 있다... 그것도 강력한 마력을.~ */
  IF ~~ THEN REPLY #53146 /* ~"그럼 그냥 이걸 가져가야겠군... 쓸모가 있을지도 모르니."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53149 /* ~당신은 삼중으로 얽힌 가지를 집어 든다. 그것은 당신 손 안에서 가만히 있으나, 당신은 그 안에서 당신의 콧노래를 강하게 느낄 수 있다 - 그것은 마치 심장이 고동치는 소리와 같다. 그것은 분명히 강력한 마력을 지니고 있다. 당신은 가지가 당신의 콧노래에 반응하는 것을 느낄 수 있었다, 그것도 가지들이 서로 얽힐 때 당신이 임의로 그것의 성장을 촉진 시킬 수 있을 정도로. 가지 안에는 엄청난 마력이 담겨 있다... 아마 래벌의 힘도 일부는 있을 것이다, 하지만 대부분은 당신 자신의 의지의 힘이다. 당신은 자신의 능력에 감탄하지 않을 수 없다. ~ */
  IF ~~ THEN REPLY #53150 /* ~나뭇가지... 당신의 나뭇가지를 주워 가진다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53154 /* ~잔 가지들은 뭔가를 움켜쥐려는 가는 손가락들처럼 생겼으며, 미로의 다른 곳에 있는 나뭇가지들과는 달리 표면에 검은 가시가 없다. 그 이외에 별 다른 특색은 없는 듯하다.~ */
  IF ~~ THEN REPLY #53155 /* ~작은 가지들을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53157 /* ~잔 가지들은 뭔가를 움켜쥐려는 가는 손가락들처럼 생겼으며, 미로의 다른 곳에 있는 나뭇가지들과는 달리 표면에 검은 가시가 없다. 하지만 자세히 살펴보니 그것들로부터는 마법의 진동이 느껴진다 - 그 진동은 미로의 다른 곳에서 느낄 수 있는 진동과 흡사하나, 작은 아이들의 울부짖음처럼 더욱 끈덕지다. ~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53158 /* ~래벌이 미로의 힘을 불러낼 때 사용했던 것과 같은 곡조로 콧노래를 부르기 시작한다.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53159 /* ~작은 가지들을 조심스럽게 연구하여 오라의 특성을 판별할 수 있는지 알아본다. ~ */ GOTO 8
  IF ~~ THEN REPLY #53162 /* ~작은 가지들을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53160 /* ~당신은 잔 가지들을 유심히 살핀다. 왠지 이 잔 가지들은 의도적으로 재배되었다는 생각이 든다. 그들에게는 마력이 내재되어 있는 듯하나, 그것을 어떻게 하면 개방할 수 있는지는 알 수가 없다. ~ */
  IF ~~ THEN REPLY #53161 /* ~작은 가지들을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_2","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53165 /* ~당신 앞에 미로 바닥의 죽음의 원이 있다... 그새 새로운 가지는 자라나지 않았다, 그리고 래벌이 죽은 이상 앞으로도 그런 일은 없을 것이다.~ */
  IF ~~ THEN REPLY #53166 /* ~원을 떠난다.~ */ EXIT
END
