// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~이 기묘한 입방형 생명체에는 기계적인 부분이 유기적인 부분만큼 많은 것 같다. 당신이 다가가자 그는 깜박이지 않는 큼직한 눈으로 당신을 조용히 바라본다. 그의 얼굴에는 일체의 감정이 없다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~이 기묘한 입방형 생명체에는 기계적인 부분이 유기적인 부분만큼 많은 것 같다. 당신이 다가가자 그는 깜박이지 않는 큼직한 눈으로 당신을 조용히 바라본다. 그의 얼굴에는 일체의 감정이 없다.~ */
  IF ~~ THEN REPLY #40749 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~모드론은 당신을 조용히 쳐다본다.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~그의 목소리는 말을 하는 것이 아니라 뒤틀린 악기를 연주한 것처럼 금속성이며 잔향이 있다. "당신의 인사에 답례합니다." 작은 *째깍* 소리와 함께 그는 눈을 깜박인다. 그와 당신 사이에는 거북한 침묵이 흐른다.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"당신의 신원을 우리에게 밝히십시오."~ */
  IF ~~ THEN REPLY #40759 /* ~"하지만... 내 질문..."~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"내가 누구인가는 중요하지 않소."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~거짓말: "나는... 아단이오."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"나는 내가 누군지 모르오."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"대상의 신원을 밝히는 것이 우선 순위가 높습니다. 대상의 각종 질문에 대답하는 것은 우선 순위가 낮습니다. 당신의 신원을 우리에게 밝히십시오."~ */
  IF ~~ THEN REPLY #40765 /* ~"내가 누구인가는 중요하지 않소."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~거짓말: "나는... 아단이오."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"나는 내가 누군지 모르오."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"그 신원의 중요성에 대한 대상의 의견은 무의미 합니다. 우리는 대상의 신원을 중요하게 생각합니다. 따라서 모든 점에서 그것은 중요합니다."~ */
  IF ~~ THEN REPLY #40770 /* ~거짓말: "나는... 아단이오."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"나는 내가 누군지 모르오."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~그는 자신의 금속성의 다리들을 축으로 잠시 몸을 앞으로 기울였다가 다시 뒤로 제낀다. 이 동작이 고개를 숙이려 한 건지 아니면 끄덕이려고 한 건지는 알 수가 없다. "우리는 대상 아단에게 우리들이 모드론, 쿼드론 타입, 유익 변종임을 밝힙니다."~ */
  IF ~~ THEN REPLY #40774 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"우리는 그 이유를 알고 싶습니다."~ */
  IF ~~ THEN REPLY #40777 /* ~"그건 정말 별로 중요하지 않소..."~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"난 나 자신에 대해 모르오. 기억을 할 수가 없소."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~거짓말: "나는... 아단이오."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"만물에는 이름이 있어야 합니다. 만물은 구별되어야 합니다. 당신의 답은 만족스럽지 않으나 현재로서는 용인하도록 하겠습니다." 그는 잠시 멈추고 당신에게 눈을 깜박인다. "우리는 대상에게 우리들이 모드론, 쿼드론 타입, 유익 변종임을 밝힙니다."~ */
  IF ~~ THEN REPLY #40782 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"대상은 질문을 해도 좋습니다."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"당신은 이 작은 입방형의 장난감이 무엇인지 아시오?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"여기서 뭘 하고 있는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 22
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40793 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"이 곳에서의 우리의 목적은 관찰입니다."~ */
  IF ~~ THEN REPLY #40796 /* ~"당신은 무엇을 관찰하고 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"우리는 이 시설의 직원들 중 하나를 관찰하고 있습니다."~ */
  IF ~~ THEN REPLY #40800 /* ~"당신은 무엇을 관찰하고 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"전술했듯이 우리는 이 시설의 직원들 중 하나를 관찰하고 있습니다."~ */
  IF ~~ THEN REPLY #40804 /* ~"그래, 하지만 *정확히* 누구를 관찰하고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"우리의 조사 대상은 '돌로라'입니다."~ */
  IF ~~ THEN REPLY #40808 /* ~"왜 당신은 그녀를 관찰하고 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"우리는 우리에게 현재 임무가 주어지게 된 목적 또는 목적들에 대한 정보를 받지 못했습니다. 우리의 상관인 펜타드론의 명령 그 자체만으로도 충분한 이유입니다. 따리서 목적 또는 목적들은 중요하지 않습니다."~ */
  IF ~~ THEN REPLY #40812 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"일반적으로 사무구라고 알려진 시길의 한 지역에 위치한 건물입니다. 시길의 표면이 아직 우리가 밝혀내지 못한 주기로 변화하는 탓에 정확한 좌표는 제공할 수 없습니다. 이 건물의 명칭은 지적인 욕망을 힐난하는 매음굴입니다. 이 곳은 넓은 의미에서 일종의 어학원입니다. 이 학원의 생도들은 대부분 각 생도에 따라 다른, 우리가 아직 추정하지 못한 시점에 감각의 공동체의 당원이 되려는 여성들입니다."~ */
  IF ~~ THEN REPLY #40815 /* ~"감각의 공동체?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"감각의 공동체의 정의에 대한 간략한 설명을 제공하겠습니다: 체험을 통해 다원 우주의 진정으로 이해할 수 있다고 믿는 당파입니다."~ */
  IF ~~ THEN REPLY #40819 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"언급된 대상의 이름은 '에코'입니다. 우리에게는 전술한 대상에 대해 수집한 정보가 없습니다."~ */
  IF ~~ THEN REPLY #40822 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"언급된 래벌이 어떤 래벌인지에 대해서는 가정을 한다고 하더라도 래벌이 케사이의 모친이었는지 여부를 판정할 수단은 우리에게 없습니다."~ */
  IF ~~ THEN REPLY #40825 /* ~"어느 래벌? 그녀가 한 명 이상 있단 말이오?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"사실로 확정할 수는 없으나, 우리는 최소한 11,032 개의 차원이 무한하며, 그 중에서 3,701개에 개인적인 이름을 사용하는 지적 생명체가 존재하고 있습니다. 따라서 어떤 한 순간에 그 이름을 지닌 존재는 무한히 존재한다고 유추할 수 있습니다."~ */
  IF ~~ THEN REPLY #40829 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"모릅니다. 아직 그렇게 하고 있지 않다면 이 건물의 모든 거주자에게 체계적으로 접근해 질문할 것을 권합니다."~ */
  IF ~~ THEN REPLY #40832 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"그럼 돌아다니면서 사람들에게 물어보도록 하겠소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"그러한 명칭을 지닌 존재 또는 물체에 대해 우리는 아무 것도 모릅니다."~ */
  IF ~~ THEN REPLY #40835 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"모릅니다. 우리는 아직 이 건물의 거주자의 리스트를 작성하려는 시도를 하지 않았으며 그러할 예정도 없습니다."~ */
  IF ~~ THEN REPLY #40838 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~당신이 손에 쥐고 있는 물건과 크기를 제외하고는 완전히 똑같은 모드론이 눈을 한 번, 두 번 깜박이고는 말을 한다. "그 물체는 전이문 입방체입니다. 사용자는 전이문 입방체의 부속지들을 그것이 작동할 위치로 움직여야 합니다. 일단 작동을 하면 전이문 입방체가 사용자를 그것이 제작되었을 때 설정된 행선지로 전송할 것입니다."~ */
  IF ~~ THEN REPLY #40841 /* ~"이것을 작동시키기 위한 올바른 위치는 무엇이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"이 입방체는 사용자를 어디로 데려가오?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"우리는 지금 그 정보를 가지고 있지 않습니다. 전이문 입방체의 97%가 각기 조금씩 다른 방식으로 작동합니다. 우리는 대상의 전이문 입방체가 제작되었을 때 현장에 있지 않았으며, 그 사용법에 대한 지시도 받지 못했습니다. 대상이 전이문 입방체를 사용하고자 한다면 실험을 통해 그 조작법과 행선지를 판정해야 할 것입니다.:~ */
  IF ~~ THEN REPLY #40844 /* ~"다른 질문이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
