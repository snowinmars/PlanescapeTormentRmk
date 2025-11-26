// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~이 오래된 시체의 뼈에는 살점이라곤 남아 있지 않다... 몇 조각의 해어진 천을 걸치고 있기는 하나, 그것들은 옷이라기보다는 장식품에 가깝다.~ */
  IF ~~ THEN REPLY #19744 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"안녕하시오." 먼 곳에서 울려 퍼지는 듯한 그의 고요한 목소리는 그의 해골 속으로부터 먼지와 함께 나오고 있다. ~ */
  IF ~~ THEN REPLY #19753 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"내가 대답할 수 있는 질문이라면 대답하리다." 스켈레톤이 말을 할 때마다 그의 턱의 이음 부분에서는 먼지가 떨어진다. "원하는 질문을 하시오. 내게는 그대와 얘기를 할 시간이 얼마든지 있으니까."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"여기는 어디요?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"그대는 우리가 죽은 자의 왕국이라고 부르는 곳에 있소... 시길시의 지하에 있는 우리들의 나라이자 집이오. 이 곳은 우리 문명의 일부, 즉 국경 지대에 불과하오... 죽은 자의 왕국은 어둠 속 아주 깊숙한 곳까지 뻗치고 있소."~ */
  IF ~~ THEN REPLY #19769 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"이 곳은 침묵의 왕이 다스리시는 언데드의 왕국이오. 이 곳에는 우리말고도 좀비와 굴들이 있소. 동쪽으로 멀리 떨어진 지하 묘지에는 크래니움 랫들이 살고 있소. 또한 소에고나 그대와 같은 산 자들도 이 곳까지 내려올 때가 있소." ~ */
  IF ~~ THEN REPLY #19771 /* ~"이 침묵의 왕이란 인물은 누구요?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"당신 동족에 대해서 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"다른 언데드에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"크래니움 랫에 대해 얘기해주시오."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"소에고에 대해 얘기해주시오."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"소에고에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~스켈레톤은 천천히 고개를 끄덕인다, 그러자 그의 목뼈가 약간 비걱거린다. "부디 질문을 하시오."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"여기는 어디요?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~스켈레톤은 고개를 끄덕인다. "우리들은 이 곳의 언데드들 중 가장 나이가 많고, 육신으로부터 거의 자유롭소. 우리는 이 곳의 공동체를 건전하게 유지하기 위해 다른 언데드들의 좋은 안내자이자 선도자가 되기 위해 노력하고 있소."~ */
  IF ~~ THEN REPLY #19786 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"힘이 세기는 하지만 정신적 육체적으로 느리오. 그리고 그들에게는 우리들보다 인간적인 요소 - 즉 감정이 더 많이 남아 있소. 그들은 그들 중 가장 총명하고 자상한 썩은 메리의 지도 아래 공동체의 노동자이자 일꾼으로서의 역할을 하고 있소."~ */
  IF ~~ THEN REPLY #19789 /* ~"썩은 메리에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"굴들은 강하고, 난폭하며, 게걸스러운 자들로, 소름 끼치는 여족장인 아카스트가 이끌고 있소. 그들은 죽음의 왕국에서 일종의 경비병 노릇을 하고는 있지만... 매우 불안정한 요소이기도 하오. 그들의 폭주를 막고 있는 것은 다른 언데드들의 수와 침묵의 왕의 존재뿐이오. 우리의 위대한 주군의 존재 없이는 우리와... 우리의 보호를 받고 있는 자들도 언젠가 굴들의 먹이가 될지도 모르오."~ */
  IF ~~ THEN REPLY #19793 /* ~"아카스트에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"이 침묵의 왕이란 인물은 누구요?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"당신들의 피보호자?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"누구에 대해 묻고 싶소?"~ */
  IF ~~ THEN REPLY #19799 /* ~"좀비."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"굴."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"그럼 관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"우리의 주군이자 왕이시오. 그분께서 침묵의 왕이고 불리게 되신 것은 그분이 가장 긴박한 상황에서만 말씀을 하시기 때문이오." 그는 말하면서 몸짓도 함께 하는데. 그럴 때마다 그의 뼈의 이음 부분에서는 삐걱거리는 소리가 난다. "우리의 대제사장인 하그림에게 물어보시오. 그라면 그대에게 더 자세히 말해줄 수 있을 것이오."~ */
  IF ~~ THEN REPLY #19803 /* ~"하그림에 대해 얘기해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"일정 범위 안에 있는 동족의 수에 비례하여 그 지능이 상승하는 쥐요. 한때는 매우 심각한 위협이었소... 그것들은 우리가 보호하는 자들을 습격하였고, 고요히 잠든 자들의 뼈를 훼손시켰소. 이제 그것들은 지하 묘지의 동쪽 지역에서만 머무르고 있소. 굴들이 많은 수의 쥐들을 잡아먹은 덕분에 그것들의 약탈도 일시적이나마 중단되게 되었소."~ */
  IF ~~ THEN REPLY #19808 /* ~"당신들의 피보호자?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"내게 굴들에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"그는 진정한 죽음을 받아들이라고 우리를 설득하려고 온 더스트맨으로, 일종의 선교사였소. 하지만 내가 알기로 이제는 그도 우리의 보호를 받아야 하는 자들 중 하나요."~ */
  IF ~~ THEN REPLY #19814 /* ~"당신들의 피보호자?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"그는 진정한 죽음을 받아들이라고 우리를 설득하려고 온 더스트맨으로, 일종의 선교사였소. 그는 이 차갑고 먼지투성이인 홀의 북쪽에 있는 예배당 주변을 어슬렁거리고 있을 것이오. 가서 그와 직접 얘기를 해보도록 하시오."~ */
  IF ~~ THEN REPLY #19818 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"산 자들은 지상에서 무슨 일을 하오? 우리는 이 곳의 고요한 암흑 속에서 우리들 나름대로의 삶을 영위하고 있소. 우리는 다른 자들의 약탈로부터 우리의 피보호자인 고요한 자들을 지키기 위해 노력하고 있소. ~ */
  IF ~~ THEN REPLY #19821 /* ~"당신들의 피보호자?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"고요한 자들... 그들은 아무 것도 하지 않고 영면을 취하는 자들이오. 우리는 그들을 보호해 그들이 편히 쉴 수 있도록 하오."~ */
  IF ~~ THEN REPLY #19824 /* ~"누가 그들을 휘저어 놓겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~스켈레톤이 어깨를 으쓱하자 그의 어깨뼈가 그의 흉곽의 뒷부분을 스친다. "아니, 본 적이 없소. 우리의 대제사장인 하그림과 얘기를 해보시오. 그는 많은 것을 알고 있소."~ */
  IF ~~ THEN REPLY #19827 /* ~"하그림에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~스켈레톤은 머리를 약간 위쪽으로 기울이며 턱을 만진다. "굴들은 지하 묘지를 도굴하는 자라면 누구든지 잡아먹을 수 있도록 허용되어 있소. 침묵의 왕께서는 그대처럼 떠돌다가 우리의 포로가 된 자들의 경우, 이 곳에서 탄식하다가 우리의 피보호자가 되도록 하는 편이 굴들에게 잡아 먹히도록 하는 것보다 나을 것이라고 생각하셨소. 우리의 대제사장인 하그림에게 물어보시오. 침묵의 왕과 말씀을 나누는 건 그니까."~ */
  IF ~~ THEN REPLY #19830 /* ~"하그림에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"침묵의 왕?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"'당신들의 피보호자이 된다?'"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~스켈레톤은 고개를 끄덕인다. "우리의 피보호자들, 즉 고요한 자들 중 하나가 되기 위해서요. ~ */
  IF ~~ THEN REPLY #19835 /* ~"당신들의 피보호자?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"이 침묵의 왕이란 인물은 누구요?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"다시 만나 반갑소. 그대의 새로운 집에는 이제 익숙해졌소?"~ */
  IF ~~ THEN REPLY #19839 /* ~"전혀. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"많소." 그는 얘기를 하면서 자신의 먼지로 뒤덮인 노란 손가락뼈로 수를 센다. "통제되지 않은 굶주린 굴, 쥐들, 그리고 무엇보다도... 살아 있는 인간들. 매장된 마을의 파로드라는 사내의 부하들은 죽은 자의 왕국의 납골당으로 자주 내려와 고요한 자들의 잠을 방해하오. 나는 그들이 왜 그러는지 알지 못하고, 또 알고 싶지도 않지만, 그들의 사악한 행위는 중단되어야만 하오."~ */
  IF ~~ THEN REPLY #19841 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~스켈레톤은 점잖게 고개를 끄덕인다. "누구에 대해 묻고 싶소?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"침묵의 왕."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"하그림."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"썩은 메리."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"아카스트."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"소에고."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"그럼 관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"아무도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"우리의 대제사장이오. 그는 침묵의 왕과 말씀을 나누고, 그분의 말씀과 법을 우리에게 전하는 사람이오. 그는 침묵의 왕의 알현실 옆의 대기실에 있소."~ */
  IF ~~ THEN REPLY #19850 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"다른 사람에 대해 물어봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"그녀는 느리지만 자상하며, 또한 현명하오. 그녀는 다른 좀비들의 어머니 역할을 하고 있소. 그녀는 그대가 처음으로 죽은 자의 왕국에 들어왔을 때 이용한 입구가 있는 방의 서쪽에 있을 것이오."~ */
  IF ~~ THEN REPLY #19854 /* ~"좀비들에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"다른 사람에 대해 물어봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"그녀는 스스로를 황폐한 자들이라고 부르는 굴의 일족의 소름 끼치는 여족장이오. 그들은 죽은 자의 왕국의 경비병 노릇을 하고 있소... 적어도 지금은. 그녀는 죽은 자의 왕국의 출입구가 있는 있는 방을 지키고 있소."~ */
  IF ~~ THEN REPLY #19858 /* ~"황폐한 자들에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"다른 사람에 대해 물어봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
