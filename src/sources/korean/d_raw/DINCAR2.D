// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"아마... 아마 너희는 그래도 죽을 거야. 내가 너희들을 감시하고 있다는 걸 잊지마, 이 도둑놈들, 이 살인자들아. 너희들 셋은 모두 살인자야!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"너희들은 모두 도둑들이야... 내 몸을 입고서... 내 몸을 내게 돌려줘!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~눈 앞의 사내는 당신을 닮았다, 그러나 그는 누구에게 맞는 것이 두려운 듯 계속 등을 웅크리고 있다, 그는 경계하는 눈초리로 당신을 쳐다본다, 그리고 당신이 다가가자 쉿 소리를 내면서 마치 당신 목을 조르고 싶어하는 듯 손을 불끈 쥐었다 폈다 한다. 그의 두 팔은 마치 산에 담그었다 뺀 것처럼 뒤틀리고 흉터투성이다. 그리고 그의 왼쪽 팔은 실에 의해 간신히 몸에 달라붙어 있다.~ */
  IF ~~ THEN REPLY #63714 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"넌 여기서 오래 버틸 수 없어, 이 도둑아!" 남자의 입에서 침이 튀어나온다, 그리고 그는 이를 드러내며 광인처럼 웃는다. "여기 있는 것들이라곤 미로, 후회, 그리고 죽음밖에 없어..."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"무슨 뜻이오?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"도둑!" 화신은 다른 화신의 목을 조르는 듯한 동작으로 손을 뒤튼다. "난 내 손 안에서 네 목뼈가 우두둑 부서지는 걸 느낄 거야... 그리고 내 몸을 찾을 거야." 그는 당신 쪽으로 돌아선다. "도둑! 넌 내 몸을 망토처럼 걸치고 있어, 그리고 넌 날 부끄럽게 해..."~ */
  IF ~~ THEN REPLY #63719 /* ~"나는 도둑이 아니오. 난 당신으로부터 *아무 것도* 훔치지 않았소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"너는 도둑이야!" 화신의 목이 마치 당신 목을 쥐고 비트는 것처럼 뒤틀린다. "난 내 손 안에서 네 목뼈가 우두둑 부서지는 걸 느낄 거야... 그리고 내 몸을 찾을 거야." 그는 당신 쪽으로 돌아선다. "도둑! 넌 내 몸을 망토처럼 걸치고 있어, 그리고 넌 날 부끄럽게 해..."~ */
  IF ~~ THEN REPLY #63721 /* ~"나는 도둑이 아니오. 난 당신으로부터 *아무 것도* 훔치지 않았소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"넌 전부 다 훔쳤어! 나는 고리 도시의 거리에서 깨어났어, 그리고 날 보는 자는 모두 날 알고 있었어!" ~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~그는 숨을 헐떡인다. "너희들이 저지른 모든 일들, 너희들이 해친 자들 - 그들은 날 기다리고 있었어, 그리고 그들은 내가 목소리들을 더 이상 견디지 못하게 될 때까지 날 책망하고 괴롭혔어..." 그의 손가락은 공기를 움켜 쥔다. "그래서 그들을 모두 침묵시켜야 했어."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"당신이 바로 덫이 있는 12면체 일지를 만든 사람이오, 그렇지 않소?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"당신이 바로 감각석에 덫을 남겨놓은 사람이군, 그렇지 않소? 그리고 덫이 있는 12면체 일지도."~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"당신이 바로 레이디에 의해 미로에 갇혔던 사람이군, 그렇지 않소? 나는 당신 일지를 발견했소... 그리고 덫으로 뒤덮인 12면체 안에 있는 또 하나의 일지도."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~"당신이 바로... 그 많은 사람들을 목졸라 죽였던 사람이군, 그렇지 않소? 나는 레이디의 미로에서 당신 일지를 발견했소... 그리고 덫으로 뒤덮인 12면체 안에 있는 또 하나의 일지도."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"당신이 바로... 그 많은 사람들을 목졸라 죽였던 사람이군, 그렇지 않소? 그리고 내게 덫으로 뒤덮인 일지를 남기지 않았소, 그 12면체 말이오."~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"당신이 바로... 언어학자 휜을 죽인 사람이군, 그렇지 않소? 그리고 그 다음에는 12면체 일지를 우요어로 작성했고."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~이 미치광이 화신은 경계하는 눈초리로 당신을 쳐다본다, 그리고 당신이 다가가자 쉿 소리를 내면서 마치 당신 목을 조르고 싶어하는 듯 손을 불끈 쥐었다 폈다 한다. 그의 두 팔은 마치 산에 담그었다 뺀 것처럼 뒤틀리고 흉터투성이다. 그리고 그의 왼쪽 팔은 실에 의해 간신히 몸에 달라붙어 있다.~ */
  IF ~~ THEN REPLY #63732 /* ~"알고 싶은 것들이 좀 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~미치광이 화신을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~그는 한쪽 눈만 뜨고 경계하는 눈초리로 당신을 응시한다 - 그는 당신을 보기만 해도 심기가 불편해지는 것 같다.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"이 곳을 떠나기 위해서는 당신이 다시 내 일부가 되어야만 하오. 그렇게 하겠소?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"당신이 이언니스가 보관하고 있는 유증에 불을 지른 사람이군, 그렇지 않소? 내 유증을 없애려고 했던 거요?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"감각석 함정 - 당신이 날 위해 그걸 남겨둔 사람이군, 그렇지 않소?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"당신이 시길에서 그 많은 사람들을 목졸라 죽였던 사람이오?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"당신이 바로 레이디에 의해 미로에 갇혔던 사람이군, 그렇지 않소? 나는 레이디의 미로에서 당신 일지를 발견했소..~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"당신이 바로 언어학자 휜을 죽인 사람이군, 그렇지 않소?"~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"당신 팔은 어떻게 된 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"어떻게 하면 이 곳에서 나갈 수 있는지 아오?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"다른 화신들에 대해 무엇을 아시오?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~우요어: (우리 두 사람만 몰래 얘기합시다.)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~우요어: (우리 두 사람만 몰래 얘기합시다.)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~양손으로 그의 목을 꽉 죈 다음 목졸라 죽인다.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~양손으로 그의 목을 꽉 죈 다음 목졸라 죽인다.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"관두시오. 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"나는 거짓말이 담긴 종이들을 태웠어, 그래. 내 가짜 삶들에 대한 거짓말, 그리고 또 거짓말..." ~ */
  IF ~~ THEN REPLY #63750 /* ~"그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"그래..." 그는 사악한 미소를 짓는다. "간단한 함정이었지. 죽을 수 없는 자를 위한 함정 - 정신 함정."~ */
  IF ~~ THEN REPLY #63753 /* ~"실은 말이오, 탈출하는 것은 매우 간단했소."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~화신의 얼굴이 얼어붙는다. "넌 거짓말 하고 있어!"~ */
  IF ~~ THEN REPLY #63757 /* ~"아니, 그건 한심할 정도로 쉬웠소. 아무런 힘도 들이지 않고 탈출할 수가 있었소."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"아마 그럴지도. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"거짓말쟁이 도둑!" 그의 눈이 불처럼 타오른다, 그리고 그는 당신이 보는 가운데 왼쪽 팔을 움켜쥔다... 그리고 그것을 *당기자* 어깨의 실이 끊어지면서 풀린다...~ */
  IF ~~ THEN REPLY #63761 /* ~"뭐-?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~그의 눈은 두 개의 검은 보석처럼 번득인다, 머치 어떤 불쾌한 기억을 상기한 것처럼. 그는 몸을 약간 떨기 시작한다. "그들은 날 안다고 했어. 그들을 침묵시켜 그들의 목소리를 멈추어야만 했어. 날 비난했어, 항상 비난했어..."~ */
  IF ~~ THEN REPLY #63763 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"간단한 탈출, 간단한 함정, 난 그녀의 미로에서 쉽게 탈출했어. 그걸 더 위험하고 빈틈없게 만들 수도 있었어." 그는 미소짓는다. "그녀는 날 가두기 위해서는 어떻게 해야 하는지 전혀 몰랐어."~ */
  IF ~~ THEN REPLY #63766 /* ~"그런 것 같소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"내가..." 그는 잠시 혼란스러워 한다. "내가 죽인 사람들은 많아, 침묵시켜야 할 사람들이 많았어."~ */
  IF ~~ THEN REPLY #63769 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~그는 잠시 팔을 내려다본다, 그리고 다시 고개를 쳐들고는 미소를 짓는다. "계속 떨어져서... 실로 꿰매야 했어."~ */
  IF ~~ THEN REPLY #63772 /* ~"알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"차라리 죽겠어."~ */
  IF ~~ THEN REPLY #63775 /* ~"죽는 것도 좋겠지. 하지만 당신에게 기회를 주겠소."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"그럼 죽을 각오를 하시오."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"그럼 죽을 각오를 하시오."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"절대로 안 해." 그는 마지막 단어를 내뱉는다: "도둑."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"그럼 죽을 각오를 하시오."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"그럼 죽을 각오를 하시오."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"난 네게 절대로 말해주지 않을 거야, 그리고 넌 절대 못 떠나..." 그는 미소짓는다. "여긴 조용하고 평화로워."~ */
  IF ~~ THEN REPLY #63786 /* ~"좋소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"도둑들. 그들은 도둑들이야 - 모두 다. 그리고 도둑들은 죽어야 해!"~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"너는 도둑이야! 넌 내 삶과 내 몸을 훔쳤어! 그리고 도둑들은 죽어야 해!"~ */
  IF ~~ THEN REPLY #63792 /* ~"그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"나중에... 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~당신이 우요어로 말하자 화신의 눈이 휘둥그레진다, 그리고 그는 당신을 빤히 쳐다본다. 잠시 후 그는 같은 언어로 대답한다. (오직 나만이 우요어를 알아. 어떻게 네가 알지?)~ */
  IF ~~ THEN REPLY #63795 /* ~(당신 말이 맞소. 오직 당신만이 우요어를 알고 있소. 그러니 내가 우요어를 안다면 나는 당신이오.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(신경 쓰지 마시오. 나중에 더 자세히 얘기합시다. 내가 돌아오기를 기다리시오.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~그는 조용히 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #63798 /* ~(*다른* 두 사람들은 우요어를 모르고 있소, 그러니 그들은 당신이 아니오.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~그는 천천히 고개를 끄덕인다... (당신 말이 들리오.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(내가 공격을 할 때 내 편에 서시오. 우린 이 도둑들을 죽일 거요, 그럼 우린 안식을 얻게 것이오.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(이 곳은 사람의 인지 능력을 혼란스럽게 만드오. 우리는 모두 당신이오, 그리고 이제 우리는 하나가 되어야만 하오.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(당신과 나, 단둘이서만 다시 얘기합시다. 날 기다리시오.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(나는 당신이 공격할 때 함께 공격하겠소.)~ */
  IF ~~ THEN REPLY #63804 /* ~"그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(당신과 나, 단둘이서만 다시 얘기합시다. 날 기다리시오.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~그는 공포에 질린 것처럼 보인다. "나..." 놀랍게도 그는 정상적인 말투로 돌아갔다... 그리고 그의 목소리에서 이상한 억양은 모두 사라졌다. 그의 목소리는 이제 당신 목소리처럼 고르고 조용하다. "나는 더 이상 이런 식으로 살고 싶지 않소." ~ */
  IF ~~ THEN REPLY #63807 /* ~(더 이상 그럴 필요가 없소. 당신 존재의 모든 고통과 근심을 내가 씻어내 주겠소.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(당신은 너무나도 많은 고통을 겪었소. 당신은 이치에 닿는 것이라고는 아무 것도 없는 세상에 태어났소 알지도 못하는 사람들이 당신을 안다고 주장했고, 당신이 알지도 못하는 일을 당신이 저질렀다고 탓했으며, 당신을 해치려고 했소.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(당신과 나, 단둘이서만 다시 얘기합시다. 날 기다리시오.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~그는 당신을 쳐다본다 - 당신이 지켜보는 가운데 그의 눈에서 광기는 사라진다, 그리고 그의 눈은 당신의 눈을 닮는다. "그래..."~ */
  IF ~~ THEN REPLY #63811 /* ~(내가 당신을 지켜주겠소. 당신은 안식을 얻게 될 것이오, 당신이 원했던 것은 그것뿐이었소, 그렇지 않소?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~당신의 말을 듣자 화신은 안도한다, 그리고 당신과 시선이 마주치자 그의 눈이 흐릿해지기 시작한다. 아주 작은 속삭임과 함께 그는 검은 돌바닥 위에 쓰러진다. 그리고 그와 동시에 당신은 후두부에 뭔가가 기어가는 듯한 묘한 감각을 느낀다...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~당신은 번개와 같은 속도로 양손을 내밀어 그의 목을 움켜쥔다. 당신이 그의 목을 조이기 시작하자 그는 놀라 비명을 지른다, 그는 으르렁거린다, 그리고 사악한 표정으로 당신을 흘겨본 후, 양손을 내밀어 당신 목을 움켜 쥐고 *비틀기* 시작한다.~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"내가... 당신의... 존재를... 끝내 주겠소..."~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"내가... 당신의... 존재를... 끝내 주겠소..."~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"내가... 당신의... 존재를... 끝내 주겠소..."~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~항복하여 그가 당신 목을 부러트리도록 한다.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~당신이 손으로 *꽉* 누르자, 화신의 눈이 갑자기 튀어나온다, 그리고 손을 당신 목에서 떼서는 당신 손아귀에서 벗어나려고 당신 손을 할퀸다, 하지만 그의 저항은 미약하다. ~ */
  IF ~~ THEN REPLY #63819 /* ~"나는 당신에게 선택할 기회를 주겠소. 내 손에 죽든지, 아니면 나와 융합하고 내 정신 안에서 생존할 수 있기를 *기도*나 하시오."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~우요어: (이건 휜의 죽음에 대한 대가다.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"이제 우리는 당신의 불쌍한 삶에 *종지부*를 찍을 것이오..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~당신이 손으로 *꽉* 누르자, 화신은 눈을 가늘게 뜬다, 그리고 당신 목을 한층 세게 누르기 시작한다  - 당신들 두 사람의 힘은 서로 우열을 가릴 수가 없어 교착 상태에 돌입한다... 이제는 누가 더 오래 버티느냐의 문제인 것 같다...~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~참는다...~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~참는다...~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~그의 손아귀에서 벗어나려고 시도한다.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~항복하여 그가 당신 목을 부러트리도록 한다.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~당신이 손으로 *꽉* 누르자, 화신은 사악한 미소를 짓는다, 그리고 당신 목을 한층 세게 누르기 시작한다  - 당신은 비로소 이 화신의 힘이 얼마나 센지를 깨닫는다 - 몇 초만 있으면 그가 당신을 목 졸라 죽일 것이다...~ */
  IF ~~ THEN REPLY #63828 /* ~그의 손아귀에서 벗어나려고 시도한다.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~항복하여 그가 당신 목을 부러트리도록 한다.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~그의 눈이 불처럼 타오른다, 그리고 그는 당신이 보는 가운데 왼쪽 팔을 움켜쥔다... 그리고 그것을 *당기자* 어깨의 실이 끊어지면서 풀린다...~ */
  IF ~~ THEN REPLY #63831 /* ~"뭐 - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~영원처럼 느껴지는 시간이 흐른 후, 당신은 당신의 목을 조이고 있는 그의 손이 떨리면서  마치 무슨 약점이라고 찾는 듯 당신 목을 할퀴다가... 실패하는 것을 느낀다. 그의 눈은 공포에 질리기 시작한다, 그리고 손을 당신 목에서 떼서는 당신 손아귀에서 벗어나려고 당신 손을 할퀸다, 하지만 그의 저항은 미약하다. ~ */
  IF ~~ THEN REPLY #63833 /* ~"나는 당신에게 선택할 기회를 주겠소. 내 손에 죽든지, 아니면 나와 융합하고 내 정신 안에서 생존할 수 있기를 *기도*나 하시오."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~우요어: (이건 휜의 죽음에 대한 대가다.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"이제 우리는 당신 삶에 *종지부*를 찍을 것이오..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~당신은 그보다 더 오래 버티려고 그의 목을 누르는 것을 멈추지 않는다, 그리고 당신은 이 화신이 어떤 정신병에 걸렸는지는 알 수 없으나, 그것이 그에게 당신을 월등히 능가하는 힘과 지구력을 주고 있다는 사실을 깨닫는다... 이대로 나가다가는 그가 승리할 것이다.~ */
  IF ~~ THEN REPLY #63837 /* ~그의 손아귀에서 벗어나려고 시도한다.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~항복하여 그가 당신 목을 부러트리도록 한다.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~당신은 갑자기 오른쪽으로 돌진하여 그의 허를 찌른다, 그리고 그의 손아귀로부터 벗어난다. 그의 눈이 불처럼 타오른다, 그리고 그는 당신이 보는 가운데 왼쪽 팔을 움켜쥔다... 그리고 그것을 *당기자* 어깨의 실이 끊어지면서 풀린다...~ */
  IF ~~ THEN REPLY #63840 /* ~"뭘 하는 - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~당신은 번개와 같은 속도로 양손을 내밀어 그의 목을 움켜쥔다. 화신은 놀라 비명을 지른다, 그러나 당신이 그의 목을 조이기 시작하자 이내 조용해진다. 그는 당신 손아귀에서 벗어나려고 당신 손을 할퀸다, 하지만 그의 저항은 미약하다. ~ */
  IF ~~ THEN REPLY #63842 /* ~"나는 당신에게 선택할 기회를 주겠소. 내 손에 죽든지, 아니면 나와 융합하고 내 정신 안에서 생존할 수 있기를 *기도*나 하시오."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~우요어: (이건 휜의 죽음에 대한 대가다.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"이제 우리는 당신 삶에 *종지부*를 찍을 것이오..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~당신은 그의 목을 왼쪽으로 확 비튼다 - 마치 수천 개의 목이 동시에 부러지듯이 *우두둑* 소리가 메아리친다, 그리고 화신은 당시 팔 안에서 축 늘어진다. 당신이 그를 놓자 그는 검은 돌바닥에 쓰러진다 - 그가 죽자 당신은 후두부에 뭔가가 기어가는 듯한 묘한 감각을 느끼며 몸을 떤다, 그리고 당신은 화신이 더 이상 존재하지 않는다는 사실을 안다.~ */
  IF ~~ THEN REPLY #63846 /* ~"안녕히 가시오..."~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~그는 이를 악물고 마치 악귀와 같은 형상이 되어 당신을 쳐다본다, 그러나 이내 그의 눈빛이 흐릿해지고 그의 몸에서는 힘이 빠져나간다. 아주 작은 속삭임과 함께 그는 검은 돌바닥 위에 쓰러진다. 그리고 그와 동시에 당신은 후두부에 뭔가가 기어가는 듯한 묘한 감각을 느낀다...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~기억, 힘, 그리고 감정이 홍수처럼 밀려든다 - 당신은 잠시 아찔해 하나, 이내 정신을 가다듬는다, 그리고 다시 시야가 밝아지며 당신은 원래의 당신으로 돌아간다.~ */
  IF ~~ THEN REPLY #63849 /* ~"안녕히 가시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~화신의 죽음의 손아귀 안에서 당신의 시야가 어두워지기 시작하자, 고통은 사라지고 대신 망각의 냉기가 엄습한다. 당신의 개성이 한 조각 한 조각씩 사라지는 것이 느껴진다, 그리고 갑자기 당신은 더 이상 존재하지 않게 된다.~ */
  IF ~~ THEN REPLY #63851 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"그 여자 - 그 유령?!" 웅크린 남자의 눈이 분노로 이글거리고, 그의 입에서는 침이 튀어나오기 시작한다. "그녀는 날 오랫동안 쫓아다니고 증오하면서 날 괴롭혔어, 그런데 그녀를 죽인 게 바로 너야?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"쓸모없어!" 두 번째 화신은 불규칙한 웃음을 터트린다, 하지만 광기보다는 즐거움이 앞서는 듯하다. "그 어린애 장난 같은 함정을 돌파하는 건 간단했지. 난 그걸 찾아내서는 바꿨어. 더 힘들게 만들었지. 글도 바꾸어 놓고."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
