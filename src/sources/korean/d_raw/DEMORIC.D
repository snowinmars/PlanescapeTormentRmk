// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~당신 앞에는 피부가 검고 험상궂게 생긴 덩치큰 사람이 서 있다. 그는 더스트맨 법복을 입고 있으며 냉담한 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #1791 /* ~"안녕하시오."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~그를 무시한다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~에모릭이 보인다. 그는 무표정한 얼굴로 당신을 본다. ~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"당신에게 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~에모릭을 무시하고 가던 길을 간다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"당신은 우리와의 관계를 끊었소." 에모릭은 침묵한다. 마치 그가 판결을 내리는 것처럼 느껴진다. "당신은 더 이상 더스트맨이 아니오."~ */
  IF ~~ THEN REPLY #14825 /* ~"알고 있소. 하지만 아직도 더 알고 싶은 것들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"당신은 방황하는 자처럼 보이오." 그의 목소리는 마치 돌을 내려놓는 소리 같다. "당신은 우연히 이 곳에 온 것이오, 아니면 이유가 있어 온 것이오?"~ */
  IF ~~ THEN REPLY #14828 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"나는 방문자일 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"나는 에모릭으로 제4원의 참입자이자 당원이오."~ */
  IF ~~ THEN REPLY #14831 /* ~"이 바는 당신 것이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"좋소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"금전적인 측면에서 본다면 이 가게는 내 소유가 아니오. 하지만 영적인 측면에서 본다면 이 곳은 내 것이라고 할 수 있소." 그는 강조를 하려는 듯 잠시 말을 멈춘다. "여기 있는 더스트맨들은 내 제자요. 그들은 내 보호를 받고 있소."~ */
  IF ~~ THEN REPLY #14834 /* ~"당신에게 뭘 좀 물어봐도 괜찮겠소...?~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~에모릭은 기다린다.~ */
  IF ~~ THEN REPLY #14837 /* ~"이 바는 당신 것이오?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"내게 더스트맨 당파에 대해 더 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"내게 더스트맨 당파에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~아나키스트를 위해 더스트맨에 잡입한다: "나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"내게 사후 계약서에 대해 얘기해줄 수 있겠소?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"나는 일지를 찾으러 이 곳에 왔소."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"나는 파로드란 사람을 찾고 있소. 그를 본 적이 있소?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"나는 파로드와 얘기를 해서 그가 당신들에게 가져오는 시체의 출처를 알아냈소." ~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"파로드를 찾아내 그로부터 시체의 출처를 알아내는 일은... 아직 남아 있소?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"나는 노로치와 얘기를 하고 그가 시키는 일을 처리했소."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"나는 죽음을 기다리는 자와 얘기를 나누었소."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"나는 세레와 얘기를 나누었소."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"나는 소에고를 발견했소."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"나는 소에고를 발견했소."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"더스트맨으로서 나는 당신에게 도움을 청하오."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"더스트맨으로서 나는 우리 당파에 대해 질문하고 싶은 것들이 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"나는 당신이 왜 수집자 파로드를 찾는지 알고 싶소."~ */
  IF ~~ THEN REPLY #14860 /* ~"수집자?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"그는 나로부터 어떤 물건을 훔쳤소."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"나는 그와 얘기를 하고자 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"왜? 무슨 문제라도 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"실은 내가 실언을 했소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"수집자들은 시체를 모아서 우리에게 가져온다오. 나는 당신이 왜 이 수집자를 찾는지 알고 싶소."~ */
  IF ~~ THEN REPLY #14867 /* ~"왜 수집자들은 시체를 모으는 거요?"?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"그는 나로부터 어떤 물건을 훔쳤소."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"나는 그와 얘기를 하고자 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"왜? 무슨 문제라도 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"실은 내가 실언을 했소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"그들은 돈을 받으려고 우리를 위해 시체를 수집하오."~ */
  IF ~~ THEN REPLY #14874 /* ~"당신들은 그들이 시체를 가져오면 돈을 지불하오? 왜?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"그는 나로부터 어떤 물건을 훔쳤소."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"나는 그와 얘기를 하고자 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"왜? 무슨 문제라도 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"실은 내가 실언을 했소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"거리는 묘지가 아니오. 죽은 자는 시체안치소에서 매장되어야 하오. 그것은 더스트맨의 임무요." 에모릭은 잠시 침묵을 지킨다. 왠지 당신은 그가 자신의 의견을 강조하려고 한다는 생각이 든다. "나는 당신이 왜 수집자 파로드를 찾는지 알고 싶소."~ */
  IF ~~ THEN REPLY #14881 /* ~"나는 그와 얘기를 하고자 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"왜? 무슨 문제라도 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"실은 내가 실언을 했소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"수집자 파로드는 최근 시체안치소로 많은 시체를 가지고 왔소. 나는 그 시체들의 출처에 대해 알고 싶소."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"나는 그들의 출처를 알아냈소."~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"내게 시체들에 대해 더 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"이것 보시오, 당신네들 사이에 무슨 일이 있었는지는 모르나 그건 당신 문제요. 나는 그가 어디 있는지를 알고 싶을 뿐이오."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"난 그가 시체를 어디서 가져오는지를 알아내 줄 수도 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"난 정말 모르오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"난 당신을 도울 수가 없을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"일부는 최근에 죽은 시체들로, 그들의 눈에는 그들의 최후의 순간들이 생생하게 투영되어 있소. 하지만 많은 시체들은 죽은지 몇 세기가 지난 것들이오. 그들의 뼈에는 오랜 세월의 흔적이 역력하오. 나는 그 시체들의 출처에 대해 알고 싶소."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"나는 그들의 출처를 알아냈소."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"이것 보시오, 당신네들 사이에 무슨 일이 있었는지는 모르나 그건 당신 문제요. 나는 그가 어디 있는지를 알고 싶을 뿐이오."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"난 그가 시체를 어디서 가져오는지를 알아내 줄 수도 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"난 정말 모르오.그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"난 당신을 도울 수가 없을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~에모릭은 침묵을 지킨다. 그의 시선은 보는 사람의 기운을 빠지게 만든다... 그는 눈을 전혀 깜박이지 않는다. ~ */
  IF ~~ THEN REPLY #14899 /* ~"왜 당신은 나와 파로드 사이의 용건을 알고자 하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"나도 마찬가지요. 그러나 그것은 쉽지가 않소. 그는 다른 사람들을 통해 얘기를 하오." 에모릭은 잠시 침묵한다. "두 사람이 다른 사람들을 통해 대화를 하면, 전해지는 내용보다 도중에서 유실되는 내용이 더 많기 마련이오."~ */
  IF ~~ THEN REPLY #14903 /* ~"왜 당신은 파로드와 얘기를 하고 싶은 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"왜 파로드는 다른 사람들과 얘기를 하려 하지 않소?"~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"그가 어디에 있는지 혹시 아시오?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"그 이유는 분명하지 않소. 그는 남들로부터 자신과 자신의 목적을 감추는 자요."~ */
  IF ~~ THEN REPLY #14909 /* ~"왜 당신은 나와 파로드 사이의 용건을 알고자 하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"왜 당신은 그런 일을 하겠다는 것이오?"~ */
  IF ~~ THEN REPLY #14913 /* ~"파로드를 찾아내 그에게 물어보도록 하겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"난 정말 모르오.그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"난 당신을 도울 수가 없을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"만약 당신이 수집자 파로드를 만나서 그로부터 이 문제에 대한 그의 대답을 가지고 돌아온다면, 당신은 더스트맨을 위해 큰 봉사를 하는 셈이오. 그가 우리에게 가져오는 시체의 출처를 알아 오시오, 그러면 그에 상응하는 사례를 하겠소."~ */
  IF ~~ THEN REPLY #14917 /* ~"좋소. 파로드를 찾아낸 후 그와 얘기를 해서 그가 당신들에게 가져오는 시체의 출처를 알아내겠소."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"사양하겠소. 난 이 일거리를 원하지 않소."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~에모릭은 고개를 끄덕인다. "당신의 길은 우리의 길이기도 하오. 수집자 파로드로부터 대답을 들은 후 이 곳으로 돌아오시오."~ */
  IF ~~ THEN REPLY #14920 /* ~"그가 어디 있는지 내게 얘기해줄 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"그럼 최선을 다하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~에모릭은 고개를 끄덕인다. "당신의 길은 당신 자신만의 것이오."~ */
  IF ~~ THEN REPLY #14924 /* ~"그가 어디 있는지 내게 얘기해줄 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"나는 파로드가 어디 있는지 알지 못하오. 그는 더스트맨의 눈으로부터 자신을 감추고 있소. 다른 수집자들을 만나 물어보는 것이 좋을 것이오."~ */
  IF ~~ THEN REPLY #14928 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"그럼 최선을 다하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"그가 우리에게 가져는 시체의 출처는 어디요?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~진실: "그 시체들은 시길 지하의 지하 묘지로부터 왔소. 그는 당신들이 매장한 시체들을 훔쳐서 다시 당신들에게 팔고 있소. 당신들이 시체들을 다시 매장하면 그는 그들을 또다시 파내오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~진실: "그 시체들은 시길 지하의 지하 묘지로부터 왔소. 그는 당신들이 매장한 시체들을 훔쳐서 다시 당신들에게 팔고 있소. 당신들이 시체들을 다시 매장하면 그는 그들을 또다시 파내오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~거짓말: "넝마주이 광장에 사는 사람들 중 일부가 사체가 조기에 부패하도록 만드는 병에 걸렸소. 그 탓에 그들의 시체는 실제보다 더 오래된 것처럼 보이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"실은 내가 말을 잘못했소. 아직 알아내지를 못했소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"실은 아직도 조사 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~에모릭은 입을 다문다. 그는 당신을 냉엄한 시선으로 응시하고 있다. 그의 눈이 당신 머릿속까지 꿰뚫어 보고 있다는 생각이 갑작스럽게 든다. ~ */
  IF ~~ THEN REPLY #14937 /* ~"어..."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~에모릭은 고개를 끄덕인다. "당신은 더스트맨을 위해 큰 공을 세웠소." 그는 소매에서 양손을 뺀다, 그리고 긴 소매로 테이블을 마치 커튼처럼 덮는다. 그가 소매를 치우자 테이블 위에는 청금석으로 만든 작은 관이 놓여 있다. 그것은 폭 5 cm, 길이 7.5 cm 정도의 매우 작은 물건이다. 관의 덮개에는 더스트맨의 심벌이 새겨져 있다. ~ */
  IF ~~ THEN REPLY #14939 /* ~상자를 연다.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~당신이 관을 손으로 집자 그것은 *짹짹* 소리와 함께 열린다, 그리고 수백 닢의 동전이 물줄기처럼 쏟아진다. 당신은 돈이 땅바닥에 떨어지는 것을 간신히 막는다. 어떻게 이 많은 동전이 그렇게 작은 관 안에 들어 있었는지는 알 도리가 없다. ~ */
  IF ~~ THEN REPLY #14941 /* ~"고맙소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"나는 당신의 일지를 보지 못했소. 다른 곳에 가서 알아보는 것이 좋을 듯하오."~ */
  IF ~~ THEN REPLY #14944 /* ~"좋소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"그럼 다른 곳에서 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"더스트맨은 진정한 죽음을 추구하오. 어떤 사람들은 그것을 '소멸'이라고 부르기도 하나 그것은 잘못된 것이오. 더스트맨에게 있어 진정한 죽음은 거짓된 현생으로부터의 해방이오."~ */
  IF ~~ THEN REPLY #14947 /* ~"거짓된 삶?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"그건 미처 생각하지 못했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"많은 사람들이 감정 때문에 미련을 버리지 못하고 있는 이 '삶', 즉 현생은 잘못된 존재요. 그것에 대한 미련을 버리지 못하는 한 사람은 계속 그 안으로 환생하게 되오. 이 윤회에서 벗어나려면 일체의 감정을 버려야만 하오."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"알겠소. 내게 당신들 당파가 어떻게 조직되어 있는지 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"알겠소. 내게 당신들 당파가 어떻게 조직되어 있는지 얘기해줄 수 있겠소?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"그건 미처 생각하지 못했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"더스트맨은 다섯 개의 원으로 구성되어 있소. 제5원은 가장 낮은 계급의 더스트맨인 참입자들로 구성되어 있소. 제1원은 가장 높은 계급의 더스트맨들로, 우리 당파의 지도층이오."~ */
  IF ~~ THEN REPLY #14956 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"그건 미처 생각하지 못했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"당신은 사후 계약서에 서명하기를 원하오?"~ */
  IF ~~ THEN REPLY #14959 /* ~"그건 정확히 어떤 것이오?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"그렇소, 서명하겠소."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"아니오, 당신에게 물어볼 다른 질문들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"다른 기회에 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"사후 계약서는 동전 쉰 닢을 지불하는 대신 더스트맨 당파로 하여금 당신의 사후에 당신 시체에 대한 권리를 가질 수 있도록 하오. 당신은 사후 계약서에 서명하기를 원하오?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"서명하겠소."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~모타이의 계약서의 서명했음에도 불구하고: "서명하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~카퍼아아즈의 계약서의 서명했음에도 불구하고: "서명하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~모타이와 카퍼아이즈의 계약서 양쪽 모두에 서명했음에도 불구하고: "서명하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"아니오, 당신에게 물어볼 다른 질문들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"다른 기회에 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~그는 법복으로부터 먼지투성이 양피지와 깃펜을 꺼낸다. 그는 당신에게 계약서에서 당신이 서명해야 할 곳 세 군데를 일러준다.~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~표시된 장소에 서명한다.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~표시된 장소에 서명한다.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"마음을 바꿨소. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"다른 기회에 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~당신은 깃펜을 손에 쥐고 양피지에 서명을 하기 시작한다... 깃펜이 양피지에 닿자 마치 조각칼로 돌을 긁는 것처럼 *끽끽* 소리가 난다.~ */
  IF ~~ THEN REPLY #14976 /* ~계속 서명한다...~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~당신은 양피지에 서명을 하려고 한다, 하지만 당신은 그것이 당신 펜을 받아들이려고 하지 않는다는 사실을 깨닫게 된다... 아무리 노력을 해도 그 위에 당신 이름을 서명할 수가 없다. 잉크가 펜을 떠나지 않으려는 듯하다..."~ */
  IF ~~ THEN REPLY #14978 /* ~"어... 에모릭? 이 계약서는 대체 어떻게 된 거요?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~당신은 에모릭와 얘기를 하려고 그를 쳐다본다. 그러나 그의 얼굴은 어느새 돌로 변해 있다... 그는 석상이 되었다. 바 안은 회색 안개로 가득 찼다, 그리고 더 이상 다른 손님들이 보이지 않는다. 그의 돌로 된 허파가 숨을 쉬려고 하듯 에모릭의 입에서는 희미하게 속삭이는 소리가 들린다. ~ */
  IF ~~ THEN REPLY #14981 /* ~"에모릭...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~당신은 에모릭의 돌로 된 입술에서 나오는 속삭임을 간신히 알아들을 수가 있다. 당신은 그것이 하나가 아니라 여러 개의 속삭임이라는 것을 깨닫는다. 

  *서명하시오."

  *하지만 그 대가는 돌과 혼에 새겨졌다는 것을 잊지 마시오."

  *그리고 무엇이 인간의 본성을 바꿀 수가 있소?"

속삭이는 소리는 조화되지 않은 죽음의 합창으로 변한다. 마치 다섯, 열, 스물, 백의... 남, 녀, 노, 소, 절박한, 조용한, 신경질적인... 목소리가 한꺼번에 말하는 것 같다.
~ */
  IF ~~ THEN REPLY #14988 /* ~"인간의 본성...?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~당신은 그 말을 하면서 갑자기 아찔해진다. 그리고 나서 당신 귀에 들리는 건 에모릭의 보통 목소리다. "아직도 서명할 생각이 있소?"~ */
  IF ~~ THEN REPLY #14994 /* ~정신을 차리려고 노력한다...~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~마치 시간이 숨을 내쉬고 다시 정상적으로 호흡하는 듯하다... 바 안을 가득 채웠던 안개도 사라졌으며, 에모릭도 더 이상 석상이 아니다. 마치 어떤 것이 절박하게 부상하려고 하나 그럴 수 없는 것처럼, 당신은 당신 해골 안에서 이상한 압력을 느낀다. 마치 당신이 서로 찔러 하나의 이미지를 만드는 여러 개의 기억의 파편들을 동시에 기억해 낸 것처럼 느껴진다... 그리고 어떤 이유에서인지 에모릭이 돌과 같은 얼굴이 속삭인 모든 것들이 이미 오래 전에 죽은 사람들의 사람들의 속삭임이라는 사실을 안다. ~ */
  IF ~~ THEN REPLY #15001 /* ~양피지를 다시 본다.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~테이블 위에 놓인 양피지를 보자 당신은 당신이 계약서에 서명을 한 것이 이번이 처음은 아니라는 사실을 깨닫게 된다... 그리고 이와 같은 계약서에 서명하는 것 역시 처음은 아니라는 생각이 든다. ~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~계약서에 서명하는 것을 마친다.~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~모타이의 계약서에 서명했음에도 불구하고 에모릭의 계약서에 서명하는 일을 마친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~카퍼아이즈의 계약서에 서명했음에도 불구하고 에모릭의 계약서에 서명하는 일을 마친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~모타이와 카퍼아이즈 양쪽 모두의 계약서에 서명했음에도 불구하고 에모릭의 계약서에 서명하는 일을 마친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"실은 말이오, 이 계약서에 서명하는 것을 잠시 미루고 싶소. 우선 다른 질문들부터 하고 싶소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"나는 서명하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~당신이 다시 깃펜으로 양피지에 쓰려고 하자, 속삭이는 소리가 들리고, 당신 머릿속에서 기억과 생각이 요동하는 것이 느껴진다..~ */
  IF ~~ THEN REPLY #15031 /* ~기억을 억누르고 계약서에 서명을 한다.~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~기억에 몸을 맡긴다.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"실은 말이오, 이 계약서에 서명하는 것을 잠시 미루고 싶소. 우선 다른 질문들부터 하고 싶소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"나는 서명하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~당신이 계약서에서 에모릭이 가리킨 세 장소에 'X'라고 적어 넣는다. 당신이 서명을 끝내자 에모릭은 계약서를 집어 들고 당신에게 동전 쉰 닢이 담긴 자루를 넘겨준다. ~ */
  IF ~~ THEN REPLY #15086 /* ~"이제 그 일이 끝났으니 당신에게 질문을 좀 합시다..."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"우리 거래는 완료되었소... 안녕히 계시오."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"당신은 이미 다른 당파의 일원이오."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~거짓말: "당신이 잘못 안 거요. 나는 다른 당파에 속해 있지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"나는 그 당파를 버리고 더스트맨의 일원이 되고 싶소."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"그건 미처 생각하지 못했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"나는 잘못 알지 않았소." 에모릭의 목소리는 돌처럼 딱딱하다, 그럼에도 불구하고 당신은 그의 확신이 완전한 것이 아니라는 사실을 눈치챈다. ~ */
  IF ~~ THEN REPLY #15094 /* ~"당신은 잘못 알고 있소. 내 정신은 더스트맨의 것이며, 다른 어떤 당파에도 소속되어 있지 않소. 날 *의심*한다면 날 시험해보시오."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"알겠소, 나는 그 당파를 버리고 더스트맨의 일원이 되고 싶소."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"그럼 우린 더 이상 얘기할 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~당신이 *의심*이라는 말을 하자 그는 약간 움찔한다. 그것은 그의 돌같은 표정에 가려 거의 감지할 수 없을 정도이기는 하나, 당신은 그것을 통해 그를 어떻게 공략해야 할지를 깨닫는다. 에모릭이 더스트맨이기는 하나, 약간의 표정의 변화를 통해 그의 생각을 읽는 것은 가능하다. ~ */
  IF ~~ THEN REPLY #15099 /* ~"다시 말하건대, 만약 *의심*한다면 날 시험해보시오. 당신은 내 정신에는 일체의 감정이 없으며 내가 걷는 길은 바로 더스트맨의 길이란 것을 알게 될 거요."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"관두시오. 그 밖에 질문할 것들이 좀 있소... "~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~에모릭은 침묵하며 당신을 살펴본다. 잠시 후 그가 입을 연다. "내게 의심은 없소. 하지만 시험은 필요하오. 만약 당신이 더스트맨 당파의 일원이 되기를 원한다면 당신의 요청을 받아들이겠소."~ */
  IF ~~ THEN REPLY #15103 /* ~"그렇소, 난 더스트맨의 일원이 되고 싶소."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"당신은 날 또 오판했소. 나는 더스트맨의 일원이 되고자 하는 *욕망*이 없소. 나는 더스트맨이 믿는 것을 믿을 뿐이오."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"신경 쓰지마시오. 그 밖에 질문할 것들이 좀 있소... "~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"더스트맨 당파의 일원이 되고자 하는 당신의 욕구가 다른 당파의 대한 당신의 충성심보다 강하오?"~ */
  IF ~~ THEN REPLY #15108 /* ~"그렇소."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"당신은 내 의도를 잘못 보았소. 나는 더스트맨의 일원이 되고자 하는 *욕망*이 없소. 나는 더스트맨이 믿는 것을 믿을 뿐이오."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"나는 내 요청을 철회하겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"관두시오. 이만 떠나야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"만약 당신이 더스트맨 당파의 일원이 되기를 원한다면, 그것은 열정이 당신의 마음을 지배하고 있다는 증거요. 열정의 길은 더스트맨의 길이 아니오."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"내가 실언했소. 나는 더스트맨의 일원이 되고자 하는 *욕망*이 없소. 나는 더스트맨이 믿는 것을 믿을 뿐이오."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"그럼 내게 더스트맨이 걸어야 할 길에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"나는 내 요청을 철회하겠소. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"그럼 관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"당신은 당신이 전에 속했던 당파의 분노를 사게 될 것이오. 당신은 더 이상 그들의 전당과 마음에서 환영을 받지 못할 것이오."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~당파를 탈퇴: "만약 그래야만 한다면 그럴 수 밖에. 내 정신은 다른 것들이 아닌 그 자체에게만 충실해야 한다. 이 순간부터 나는 갓즈맨의 신념을 저버린다."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~당파를 탈퇴: "만약 그래야만 한다면 그럴 수 밖에. 내 정신은 다른 것들이 아닌 그 자체에게만 충실해야 한다. 이 순간부터 카오스맨의... 어, 신념을 저버린다."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~당파를 탈퇴: "만약 그래야만 한다면 그럴 수 밖에. 내 정신은 다른 것들이 아닌 그 자체에게만 충실해야 한다. 이 순간부터 나는 센세이트의 신념을 저버린다."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~아나키스트를 위해 더스트맨에 잠입하려고 거짓말을 한다: "만약 그래야만 한다면 그럴 수 밖에. 내 정신은 다른 것들이 아닌 그 자체에게만 충실해야 한다. 이 순간부터 나는 내 이전 당파의 신념을 저버린다."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"그럼 난 아직 준비가 되지 않았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"좋소. 당신은 우리의 철학을 아오?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"그렇소."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"완전히는 아니오."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"나는 더스트맨에 가입시켜 달라는 내 요청을 철회하오. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"관두시오. 이만 떠나야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"더스트맨은 진정한 죽음을 추구하오. 어떤 사람들은 그것을 '소멸'이라고 부르기도 하나 그것은 잘못된 것이오. 더스트맨에게 있어 진정한 죽음은 거짓된 현생으로부터의 해방이오."~ */
  IF ~~ THEN REPLY #15211 /* ~"거짓된 삶?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"나는 더스트맨에 가입시켜 달라는 내 요청을 철회하오. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"관두시오. 이만 떠나야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"많은 사람들이 감정 때문에 미련을 버리지 못하고 있는 이 '삶', 즉 현생은 잘못된 존재요. 그것에 대한 미련을 버리지 못하는 한 사람은 계속 그 안으로 환생하게 되오. 이 윤회에서 벗어나려면 일체의 감정을 버려야만 하오."~ */
  IF ~~ THEN REPLY #15216 /* ~"좋소. 이제 나는 당신들의 철학을 이해하오."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"나는 더스트맨에 가입시켜 달라는 내 요청을 철회하오. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"관두시오. 이만 떠나야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"반복하시오."~ */
  IF ~~ THEN REPLY #15223 /* ~"모든 더스트맨의 목표는 진정한 죽음, 즉 소멸의 경지에 도달하는 것이오. 많은 이들이 감정과 열정을 가지고 매달리는 현생은 거짓된 것이오. 그것에 매달리는 한 계속해서 그 안에 다시 태어나게 되오. 이 윤회에서 탈출하려면 일절의 감정을 버려야만 하오."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"나는 내 요청을 철회하겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"관두시오. 이만 떠나야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"당신은 그것을 믿소?"~ */
  IF ~~ THEN REPLY #15230 /* ~진실: "그렇소."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~진실: "완전히는 아니오."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"나는 더스트맨에 가입시켜 달라는 내 요청을 철회하오. 그 밖에 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"그럼 관두시오. 나는 더 이상 더스트맨의 일원이 되는 것을 원하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"그럼 시험을 하겠소. 가서 참입자 노로치와 얘기하시오. 그는 이 바 안에 있소. 그가 시키는 일을 마치고 나서 다시 오시오."~ */
  IF ~~ THEN REPLY #15609 /* ~"그와 얘기를 하도록 하겠소. 하지만 먼저 질문을 좀 하고 싶소..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"좋소. 이제 가서 그와 얘기를 하겠소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"생각해 보니 이 일을 하고 싶지가 않소. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"시간이 흐름에 따라 믿음을 가지게 될 수도 있소. 우리의 철학을 결코 받아들이지 못할 정도로 당신의 확신은 강하오?" ~ */
  IF ~~ THEN REPLY #15613 /* ~"나는 내 믿음의 불확실성을 시간의 시험에 맡기고 싶소. 나는 일정 기간 동안 더스트맨들 속에서 지낸 후 내 믿음을 검증하고 싶소."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"나는 내가 당신들의 철학을 믿게 되는 일이 있으리라고는 생각하지 않소. 나는 내 요청을 철회하겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"나는 더스트맨 당파의 일원이 되고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~에모릭은 고개를 끄덕인다. "당신은 내가 시키는 대로 했소. 참입 의식을 계속하겠소?'~ */
  IF ~~ THEN REPLY #15618 /* ~"그렇소. 나는 더스트맨 당파에 대해 더 알고 싶소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"그렇소. 나는 아직도 내 믿음이 더스트맨의 그것과 일치하는지 확신이 서지 않소, 하지만 최종적인 결정을 내리기 전에 더스트맨에 대해 더 알고 싶소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"아니오. 나는 더스트맨 당파의 일원이 되겠다는 내 요청을 철회하고 싶소."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"당신에게 더 이상 요구는 하지 않을 것이오."~ */
  IF ~~ THEN REPLY #15628 /* ~"좋소. 하지만 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"당신이 거쳐야 할 다른 시험이 있소. 우리 당파의 참입자들 중 하나인 죽음을 기다리는 자를 찾아가시오. 그는 이 바 안에 있소. 그는 열정으로 진정한 죽음을 추구하고 있소. 만약 그가 계속 그렇게 한다면, 그는 영구히 그것을 얻지 못할 것이오. 그와 얘기를 해서 그를 구원할 수 있는지 알아보시오."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"나는 이미 그와 그 일에 대해 얘기했소"~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"그는 나와 이야기를 하려고 하지 않소."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"죽음을 기다리는 자와 얘기하여 그의 문제를 어떻게 해결할 수 있는지 보겠소."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"그와 얘기하겠소. 하지만 먼저 물어보고 싶은 것들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"그는 내 말도 들으려 하지 않소. 나는 죽음을 기다리는 자에 대한 당신 생각을 듣고 싶소."~ */
  IF ~~ THEN REPLY #15646 /* ~"그토록 격정으로 가득 찬 더스트맨을 과연 더스트맨이라고 할 수가 있겠소? 난 아니라고 생각하오."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"그는 더스트맨이 아니오. 시간이 지나면 달라질지도 모르나."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"그는 더스트맨이오."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"이 일에 대해서는 아무런 견해도 없소. 그가 그런 건 내가 알 바가 아니오."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"나는 당신이 무슨 얘기를 했는지 알고 싶소."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"그는 나와 얘기를 하려하지 않소. 난 노력했으나 그는 들으려고 하지 않았소."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"그는 죽음보다 삶을 택했소. 현재로서는."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"그는 잠시 더 살며 죽음에 대한 자신의 열정을 누그러트리려고 노력하기로 했소."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"그는 현생을 인내하며, 인내함으로서 죽음에 대한 자신의 열정을 누그러트리기로 했소."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"그는 잠시 더 살며 어떻게 죽어야하는지를 배우기로 했소."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"나는 당신이 무슨 얘기를 했는지 알고 싶소."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"그는 죽음보다 삶을 택했소. 현재로서는."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"그는 잠시 더 살며 죽음에 대한 자신의 열정을 누그러트리려고 노력하기로 했소."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"그는 현생을 인내하며, 인내함으로서 죽음에 대한 자신의 열정을 누그러트리기로 했소."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"그는 잠시 더 살며 어떻게 죽어야하는지를 배우기로 했소."~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"죽음을 기다리는 자의 선택에 대한 당신 생각을 알고 싶소."~ */
  IF ~~ THEN REPLY #15680 /* ~"그는 결코 더스트맨이 되지 못할 거요."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"그는 더스트맨이 아니오. 시간이 지나면 달라질지도 모르나."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"그는 더스트맨이오. 그는 이번 일로 교훈을 얻었소."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"이 일에 대해서는 아무런 견해도 없소. 그가 그런 건 내가 알 바가 아니오."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"당신은 죽음을 기다리는 자와 얘기했소. 나는 당신이 그의 일에 대해 어떻게 생각하는지 알고 있소. 당신은 내가 부탁한 대로 했소." 에모릭은 고개를 끄덕인다. "당신이 거쳐야 할 시험이 또 있소. 나는 당신이 이 바 안에 있는 다른 사람과 얘기를 나누었으면 하오. 그녀의 이름은 세레요. 그녀는 제5원의 참입자요." 그는 잠시 침묵한다. "그녀는 더스트맨의 사상에 대한 믿음을 잃었소. 그녀의 가슴은 신랄함으로 가득 차 있소. 나는 그녀가 왜 그렇게 되었는지 알고 싶소."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"그녀는 나와 이야기를 하려고 하지 않소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"나는 이미 그녀와 얘기를 했소. 반 달 전에 걸린 열병 때문에 그녀는 죽음을 두려워하게 되었소. 그녀는 그 책임을 더스트맨에게 돌리고 있소.."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"이제 가서 그와 얘기를 하겠소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"그녀와 얘기하도록 하겠소. 하지만 먼저 당신에게 물어보고 싶은 것들이 있소..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"나는 이 시험을 받고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"그녀가 당신에게 뭐라고 말했는지 알고 싶소."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"그녀는 나와 이야기를 하려고 하지 않소."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"반 달 전에 걸린 열병 때문에 그녀는 죽음을 두려워하게 되었소. 그녀는 그 책임을 더스트맨에게 돌리고 있소.."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"아직 중요한 건 아무 것도 없소. 그녀와 다시 얘기하도록 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"당신이 그녀에게 뭐라고 말했는지 알고 싶소."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"나는 그녀의 공포와 회의가 그녀 자신을 규정했다고 말해주었소. 그녀는 더스트맨이 아니오."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"나는 그녀에게 공포는 일시적인 것이라고 말해주었소. 시간이 지나면 그녀는 더스트맨으로 돌아올 것이오." ~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"나는 그녀에게 공포는 일시적인 것이라고 말해주었소. 시간이 지나면 그녀는 더스트맨으로 돌아올 것이오." ~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"나는 그녀의 고뇌의 원인을 알아냈으나 그녀의 문제를 해결해 주지는 못했소."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"얘기하고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"그녀는 내 얘기도 들으려고 하지 않소." 에모릭은 고개를 끄덕인다. "당신은 내가 시키는 대로 했소. 참입 의식을 계속하겠소?'~ */
  IF ~~ THEN REPLY #15753 /* ~"그렇소. 나는 더스트맨 당파에 대해 더 배우고자 하오. 나는 시험을 계속하고 싶소."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"아니오. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"당신은 내가 시키는 대로 했소." 에모릭은 고개를 끄덕인다. " 참입 의식을 계속하겠소?'~ */
  IF ~~ THEN REPLY #15756 /* ~"그렇소. 나는 더스트맨 당파에 대해 더 배우고자 하오. 나는 시험을 계속하고 싶소."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"내가 더 이상 배울 수 있는 건 없는 듯하오. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"제5원의 참입자인 소에고가 더스트맨을 위해 선교 임무를 맡아서 떠났소." 에모릭은 잠시 아무 말도 하지 않는다... 당신으로선 그가 뭔가를 강조하려는 건지, 아니면 혼란스러워 하고 있는 건지 알 수가 없다. "나와 당파는 그의 행선지를 알지 못하오. 나는 그의 소재를 알고 싶소."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"소에고는 시체안치소에 있지 않소?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"나는 내가 그를 죽... 어, 내가 그에 대해 들은 마지막 소식은 그가 사고를 당했다는 거요. 그는 아직도 시체안치소에 있지 않소?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"나는 이미 그를 발견했소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"나는 이미 그를 발견했소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"가서 그를 찾도록 하겠소. 하지만 먼저 당신에게 물어보고 싶은 것들이 있소..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"나는 이 일을 하고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"더 이상은 아니오. 그는 갑작스럽게 떠났소."~ */
  IF ~~ THEN REPLY #15766 /* ~"가서 그를 찾도록 하겠소. 하지만 먼저 당신에게 물어보고 싶은 것들이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"가서 그를 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"나는 그의 소재를 알고 싶소."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"나는 그를 시길 지하의 지하 묘지에서 발견했소. 그는 거기서 죽었소."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"나는 그를 시길 지하의 지하 묘지에서 발견했소."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"나는 얘기하고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"왜 그는 그 곳에 있소?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"모르겠소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"그는 지하 묘지를 지키는 한 그룹의 언데드 수호자들을 발견했소. 그는 그들이 진정한 죽음에 귀의하도록 설득하고 있소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"그는 수인화의 저주에 감염되었소. 그의 정신은 더 이상 그의 것이 아니며 그는 더스트맨의 믿음을 상실했소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"나는 얘기하고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"왜 그는 그 곳에 있었소?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"모르겠소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"그는 지하 묘지를 지키는 한 그룹의 언데드 수호자들을 발견했소. 그는 그들이 진정한 죽음에 귀의하도록 설득하려고 했소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"그는 수인화의 저주에 감염되었고, 그 때문에 그는 지하 묘지로 도망치게 되었소. 그의 정신은 더 이상 그의 것이 아니었으며 그의 더스트맨의 믿음도 상실되었소."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"나는 얘기하고 싶지 않소. 나는 더스트맨의 일원이 되고 싶다는 내 요청을 철회하오."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"좋소. 당신을 그를 찾아냈소." 에모릭은 당신의 대답에 대해 가볍게 고개를 끄덕이는 것 이상의 반응은 보이지 않는다. "당신은 내가 시킨 임무를 모두 완수했소. 나는 당신을 더스트맨 제5원의 참입자로 만들어 주겠소. 당신은 아직도 더스트맨의 일원이 되기를 원하오?"~ */
  IF ~~ THEN REPLY #15791 /* ~"그렇소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"아니오. 난 마음을 바꿨소."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"참입 의식을 위해 당신은 서약을 해야 하오."~ */
  IF ~~ THEN REPLY #15797 /* ~"약속?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"당신은 더스트맨을 위해 봉사할 것을 서약해야 하오. 당신은 삶을 남겨 두고 떠나겠다고 서약해야 하오. 당신은 자신의 목표가 진정한 죽음에 도달하는 것이라고 서약해야 하오."~ */
  IF ~~ THEN REPLY #15800 /* ~"어... 사양하겠소."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"알겠소."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"다시 묻겠소. 당신은 더스트맨의 교의를 신봉하오?"~ */
  IF ~~ THEN REPLY #15844 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"그렇소."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"아니오. 난 마음을 바꿨소."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"내가 증인이 되겠소. 서약을 하시오."~ */
  IF ~~ THEN REPLY #15849 /* ~맹세: "나는 더스트맨을 위해 봉사할 것을 맹세하오. 나는 삶을 뒤로 했소. 나는 진정한 죽음만을 추구할 뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~거짓말: "나는 더스트맨을 위해 봉사할 것을 맹세하오. 나는 삶을 뒤로 했소. 나는 진정한 죽음만을 추구할 뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"아니오. 난 마음을 바꿨소."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"당신은 이제 더스트맨의 일원이오. 당신에게 반드시 얘기해주어야 할 것들이 있소."~ */
  IF ~~ THEN REPLY #15854 /* ~귀를 기울인다.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"언데드들은 더스트맨과 함께 거주하오. 그들은 더스트맨과 함께 일하오. 그러나 그들이 산 자들의 적이었던 때도 있소."~ */
  IF ~~ THEN REPLY #15856 /* ~"그건 나도 알고 있소."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"더스트맨은 모든 언데드와 협정을 맺고 있소. 이 협정은 *죽음의 협정*이라고 알려져 있소. 우리가 그것을 지키는 한 언데드는 결코 우리를 해칠 수가 없소." 에모릭이 이러한 얘기를 하자 당신은 머리 뒤편에서 무엇인가 기어 다니고 있는 듯한 기묘한 느낌을 받는다... 죽음의 협정과 무슨 관련이 있는 것 같으나 기억을 할 수가 없다.~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"알겠소."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~더스트맨의 일원이 될 때 에모릭은 내게 '죽음의 협정'에 대해 말해 주었다. 더스트맨은 좀비나 스켈레톤 같은 언데드와 협정을 유지하고 있는 듯하며, 때문에 언데드는 먼저 공격 당하지 않는 한 더스트맨을 해치지 않는다. 하지만 그가 나를 더스트맨으로 받아들였을 때 내가 과거에 이미 이 협정을 깨트린 것 같다는 기묘한 느낌이 들었다. 죽음의 협정이 나를 언데드에 의한 공격으로부터 보호하는 일종의 방어막 구실을 할지는 모르나, 언데드가 날 공격하는 것을  막지는 못할 것이라는 생각이 든다. 그 이유는 모르겠다... 혹시 내가 과거에 그들에게 죄를 지었나?~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"어... 그렇소, 그들은 진정한 더스트맨을 결코 해치지 않을 것이오. 하지만 더스트맨 흉내를 내는 사람은 그러한 보호를 받을 수가 없을 것이오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"어... 그렇소, 그들은 진정한 더스트맨을 결코 해치지 않을 것이오. 하지만 더스트맨 흉내를 내는 사람은 그러한 보호를 받을 수가 없을 것이오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"어... 그렇소, 그들은 진정한 더스트맨을 결코 해치지 않을 것이오. 하지만 더스트맨 흉내를 내는 사람은 그러한 보호를 받을 수가 없을 것이오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"어... 그렇소, 그들은 진정한 더스트맨을 결코 해치지 않을 것이오. 하지만 더스트맨 흉내를 내는 사람은 그러한 보호를 받을 수가 없을 것이오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"또한 죽음을 방해하거나 삶을 연장하는 마법들이 있소. 그러한 마법들은 우리 당파에게 있어 금기요. 그러한 마법들은 우리 당파의 멤버들에게는 별 효과를 발휘하지 못하는 경우가 많소. 그 어떤 것도 진정한 죽음으로 이른 길을 방해해서는 안 되오. 알겠소?"~ */
  IF ~~ THEN REPLY #15875 /* ~"만약에 말이오... 그 사람이 죽기가 어려울 경우에는 어떻게 하오?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"거기에는 치유 마법도 포함되오?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"나는 이 죽음의 협정이란 것에 대해 물어보고 싶은 것이 하나 있소."~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"어... 그렇소, 소생에 대한 금기는 진정한 더스트맨에게만 해당되오, 그렇지 않소? 그것은 치유의 마법도 방지하오? ~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"어... 그렇소, 소생에 대한 금기는 진정한 더스트맨에게만 해당되오, 그렇지 않소? 그것은 치유의 마법도 방지하오? ~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"어... 그렇소, 소생에 대한 금기는 진정한 더스트맨에게만 해당되오, 그렇지 않소? 그것은 치유의 마법도 방지하오? ~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"어... 그렇소, 소생에 대한 금기는 진정한 더스트맨에게만 해당되오, 그렇지 않소? 그것은 치유의 마법도 방지하오? ~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"이해하오. 이제 나는 더스트맨이니 당파와 관련된 질문을 좀 하고 싶소..."~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~에모릭은 기다린다.~ */
  IF ~~ THEN REPLY #15886 /* ~"'그 어떠한 것도 진정한 죽음을 방해해서는 안된다'는 철학에 대해서 말안데, 만약 문제의 사람이... 죽기가 힘들다면 어떻게 하오?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"그 '소생 금지' 원칙에는 치유 마법도 포함되오?"~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"죽음의 협정에 대해 물어볼 것이 한 가지 있소."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"더스트맨으로서 나는 어떤 종류의 도움을 받을 수가 있소?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~"나는 도움이 좀 필요하오."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"질문의 뜻이 명확하지 않소, 참입자."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~진실: "나는 불사신인 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~진실: "나는 불사신인 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"나는 어떤 불사신을 알고 있으며, 나는 그를 위해 이 질문을 하는 거요."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"만약 문제의 더스트맨이 불사신이라면?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"관두시오. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"관두시오. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"무엇 때문에 그런 말을 하는 것이오, 참입자?"~ */
  IF ~~ THEN REPLY #15902 /* ~"나는 죽을 수가 없는 듯하오. 상처가 나도 급속도로 회복되오."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"그럼 관두시오. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~에모릭은 당신을 응시한다. "내게 보여주시오, 참입자."~ */
  IF ~~ THEN REPLY #15907 /* ~한다.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"그럼 관두시오. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"산경 쓰지 마시오... 내가 명확하지 못했던 것 같소. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"내가 잘못 말했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~당신은 작은 자상을 낸다, 그러자 상처가 순식간에 없어진다. 에모릭은 상처가 낫는 것을 지켜보면서 잠시 침묵한다, 그리고 나서 다시 시선을 당신에게로 돌린다. "당신의 본성 중 그 무엇인가가 진정한 죽음을 거부하고 있소. 당신은 더 이상 더스트맨이 아니오. 당신은 여기를 떠나야만 하오."~ */
  IF ~~ THEN REPLY #15912 /* ~"만약 그래야만 한다면... 더스트맨에서 탈퇴하도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~에모릭은 잠시 침묵한다. "그렇다면... 이 친구라는 사람은... 크나큰 고통을 받고 있는 것이오. 그는 스스로를 거짓된 현생 안에 가두었으며, 진정한 죽음에 결코 도달할 수가 없소."~ */
  IF ~~ THEN REPLY #15914 /* ~"*스스로를* 가두었다?"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"누가 왜 이 거짓된 존재 안에 갇힌 채 남아있으려고 하겠소?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"진정한 죽음에 도달하기 위해서는 모든 열정과 거짓된 현생과의 관계를 떨쳐없애야 하오. 이러한 것들은 영혼에게 있어 닻이나 마찬가지요. 유령이나 다른 안식을 취하지 못하는 혼령들은 충족되지 못한 열정 때무에 거짓된 현생 안에 갇혀 있소."~ */
  IF ~~ THEN REPLY #15920 /* ~"당신이 전에 이 불사신이 스스로를 현생에 가두었다고 했을 때 그건 어떤 뜻으로 한 말이었소?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"그럼 그들은 더스트맨이 될 수가 없소. 불사에 대한 그들의 믿음이 그들을 현생에 가두어, 영원히 진정한 죽음에 도달할 수 없게 만들 것이오." 에모릭은 잠시 침묵한다. "무엇 때문에 그런 질문을 했소, 참입자?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~진실: "나는 불사신인 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~진실: "나는 불사신인 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"내게는 불사신인 친구가 있소. 나는 그를 위해 질문을 했던 것이오."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"그들의 *믿음*이 그들을 가둔다? 어떻게?"~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"아무런 이유도 없소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"그럼 관두시오. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"그냥 물어봤을 뿐이오 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"치유 마법은 정상적으로 작동하오. 하지만 환생과 소생의 마법은 우리 당파의 멤버들에게 사용되어서는 안 되오. 그러한 마법은 진정한 죽음에 대한 믿음에 어긋나는 것이오.~ */
  IF ~~ THEN REPLY #15933 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~에모릭은 기다린다.~ */
  IF ~~ THEN REPLY #15937 /* ~"만약 내가 언데드를 공격하면 어떻게 되오?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"스스로를 보호하기 위한 경우에는?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"그렇다면 죽음의 협정을 깨트린 것이오."~ */
  IF ~~ THEN REPLY #15943 /* ~"스스로를 보호하기 위한 경우에는?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"협정이 유지되는 한 언데드가 당신을 공격하는 일은 있을 수가 없소."~ */
  IF ~~ THEN REPLY #15948 /* ~"만약 내가 언데드를 공격하면 어떻게 되오?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"내게 어떤 도움을 원하오, 참입자?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"나는 치료가 필요하오."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"내게 도움이 될만한 주문이나 아이템은 없소?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"나는 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~에모릭은 고개를 가볍게 숙인다, 그리고 당신은 당신 온몸에 감각을 마비시키는 냉기가 엄습하는 것을 느낀다. 마치 당신의 뼈의 근육이 돌로 변하는 듯하다. 차가운 바람이 당신 몸을 휩쓸고 가자 고통이 가라앉는다. 잠시 후 감각이 돌아온다... 하지만 이제 고통은 사라졌다.~ */
  IF ~~ THEN REPLY #15960 /* ~"고맙소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"난 다시 건강해진 것 같소. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"여기서 휴식을 취해도 좋소, 참입자."~ */
  IF ~~ THEN REPLY #15964 /* ~"고맙소..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~몇 시간이 지난 후 당신은 상쾌한 기분으로 일어난다, 그리고 다시 에모릭에게로 간다. ~ */
  IF ~~ THEN REPLY #15966 /* ~"덕분에 잘 쉬었소, 고맙소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"난 다시 건강해진 것 같소. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"쉴 수 있게 해주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"만약 당신이 더스트맨 당파의 일원이 되기를 원한다면 당신의 요청을 받아들이겠소."~ */
  IF ~~ THEN REPLY #15970 /* ~"그렇소, 나는 더스트맨 당파의 일원이 되고 싶소."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"당신은 날 오판했소. 나는 더스트맨의 일원이 되고자 하는 *욕망*이 없소. 나는 더스트맨이 믿는 것을 믿을 뿐이오."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"오늘은 아니오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"더스트맨 참입자로서 당신은 우리들의 지식의 저장고를 이용하고, 우리 창고로부터 마법과 아이템을 구입할 수가 있소. 또한 치료를 필요로 하거나 후식을 하고 싶으면 내게로 오도록 하시오."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"나는 치료가 필요하오."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"당신들의 창고에는 어떤 물건들이 있소?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"좋소. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~당신이 막 얘기를 하려고 할 때 당신의 후두부에서 바늘로 찌르는 듯한 감각이 느껴진다. 에모릭에게 당신의 '상태'에 대해 얘기하는 것은 바람직하지 않을 것이라는 생각이 든다. 그는 아직도 당신을 말하기를 기다리며 당신을 응시하고 있다.~ */
  IF ~~ THEN REPLY #15982 /* ~진실: "나는 불사신인 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"나는 어떤 불사신을 알고 있으며, 나는 그를 위해 이 질문을 하는 거요."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"만약 문제의 더스트맨이 불사신이라면?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"그럼 관두시오. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"관두시오. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"달리 필요한 것은 있소, 참입자?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"나는 치료가 필요하오."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"당신이 팔고 있는 물건들을 다시 보고 싶소."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Oui. 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"불사는 선택이오. 자신 또는 타인의 믿음이 육신에 영향을 미치오. 삶을 포기하는 것을 *원하지* 않을 때 사람은 불사신이 되오."~ */
  IF ~~ THEN REPLY #15996 /* ~"하지만 당신 주장에 의하면 죽음 역시 하나의 선택이오. 그럼 왜 애초에 사람이 죽는 거요?" ~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"누가 왜 거짓된 현생에 갇힌 채 남아있으려고 하겠소?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"흠... 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"죽음 역시 선택이오. 하지만 불사와는 달리 죽음을 믿는 사람들은 많소. 그들의 믿음이 우리로 하여금 죽을 수 있게 하오." 에모릭은 잠시 침묵한다. "우리는 영원히 살아서는 안 되오, 참입자. 우리는 우리 마음 속에서 그것이 진실이라는 것을 아오."~ */
  IF ~~ THEN REPLY #16002 /* ~"그래... 누가 왜 거짓된 현생에 갇힌 채 남아있으려고 하겠소?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"알겠소. 당파와 관련된 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"흠... 당파와 관련없는 사안에 대해 질문을 좀 하고 싶소..." ~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END
