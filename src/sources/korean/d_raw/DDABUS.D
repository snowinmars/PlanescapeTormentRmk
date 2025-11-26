// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDABUS~

IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1782 /* ~당신 눈에 벼락 맞은 것 같은 머리를 한 키가 크고 머리색이 하얀 생물이 들어온다. 그의 피부는 녹색 빛을 띠고 있으며 이마에는 두 개의 염소 뿔이 나 있다. 그는 흐르는 듯한 긴 법복을 입고 있으며, 지면에서 약간 떠있는 듯 하다.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #1784 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #1783 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1785 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #6863 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2781 /* ~그 생명체는 당신을 마주보기 위하여 돌아선다, 그리고 그의 머리 주변에는 일련의 기호들이 나타나다. 기호들은 약간 빛나고 있으며, 그냥 그 자리에... 떠있다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 52
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #1786 /* ~그 생명체는 당신을 마주보기 위하여 돌아선다, 그리고 그의 머리 주변에는 일련의 기호들이 나타나다. 기호들은 약간 빛나고 있으며, 그냥 그 자리에... 떠있다.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1787 /* ~다버스는 손을 소매에 넣고 인내심 있게 기다린다. 그의 머리 위에는 일련의 심벌들이 나타난다, 그리고 그것들이 사라진 후 질문 부호가 나타난다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6864 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6867 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6869 /* ~대화를 시도하여 당신이 다버스가 하는 말을 이해할 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6870 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6871 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6872 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6873 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6874 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6875 /* ~"안나, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6876 /* ~"다콘, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6877 /* ~"훨-후럼-그레이스, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6878 /* ~"미안하오. 난 당신 말을 이해할 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6879 /* ~"어... 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 22.0 22.1
  SAY #6730 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하며, 당신이 번역하기 쉽도록 가능한 한 쉬운 표현을 쓰려고 노력한다. 몇 분이 지난 후 당신은 그것을 이해하기 시작한다... 당신에게는 자신이 전에도 이런 일을 해본 적이 있다는 생각이 든다.~ */
  IF ~~ THEN REPLY #6880 /* ~"아마 당신이 날 도울 수 있을지도 모르오..."~ */ GOTO 8
  IF ~~ THEN REPLY #6881 /* ~"내 그림놀이 실력을 향상시키려고 했을 뿐이오. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 22.2
  SAY #6731 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하나 당신은 도저히 이해할 수가 없다. 결국 그는 심벌들을 표시하는 것을 멈추고 그냥 기다린다.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6882 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6883 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6884 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6885 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6886 /* ~"안나, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6887 /* ~"다콘, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6888 /* ~"훨-후럼-그레이스, 날 위해 그가 하는 말을 통역해 줄 수 있겠소?~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6889 /* ~"미안하오. 난 당신 말을 이해할 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6890 /* ~"어... 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.12 4.1 5.8 8.6 9.1 10.1 10.2 11.1 12.1 12.2 19.3 22.12
  SAY #6732 /* ~다버스는 가볍게 고개를 숙인다. 그의 머리 위에서는 심벌들이 소용돌이친다. 그리고 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #6891 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.11 5.7 22.4
  SAY #6733 /* ~일련의 심벌들이 다버스의 머리 위에 나타난다. 다버스는 가볍게 고개를 숙인 후 고개를 돌린다.~ */
  IF ~~ THEN REPLY #6892 /* ~"어... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.0 9.0 10.0 11.0 12.0 19.2 22.3
  SAY #6734 /* ~다버스는 기다린다.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6893 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6894 /* ~"뭘 하고 있는 거요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6895 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6896 /* ~"무엇을 하고 있는 거요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #6897 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #6898 /* ~"내게 휄에 대해 얘기해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #6899 /* ~"안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6735 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. 그는 자신이 다버스라고 하는 것 같다.~ */
  IF ~~ THEN REPLY #6902 /* ~"당신에게 또 하나의 질문을 하고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #6903 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #6736 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. 그는 자신이 직무를 수행 중이라고 하는 것 같다.~ */
  IF ~~ THEN REPLY #6904 /* ~"당신에게 또 하나의 질문을 하고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #6905 /* ~"매우 서술적이이군. 고맙소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6906 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #6737 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. (나는 다버스요.)~ */
  IF ~~ THEN REPLY #6900 /* ~"당신에게 또 하나의 질문을 하고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #6901 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #6738 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. (나는 내 직무를 수행 중이오.)~ */
  IF ~~ THEN REPLY #6907 /* ~"당신에게 또 하나의 질문을 하고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #6908 /* ~"매우 서술적이이군. 고맙소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6909 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #6739 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6910 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6911 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6912 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6913 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6740 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6914 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6915 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6916 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY #6741 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. 그는 자신이 다버스라고 하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6917 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6918 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6919 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6920 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #6742 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. 그는 자신이 직무를 수행 중이라고 하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6921 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6922 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6923 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY #6743 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. (나는 다버스요.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6924 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6925 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6926 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6927 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY #6744 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. (나는 내 직무를 수행 중이오.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6928 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6929 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6930 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY #6745 /* ~하나의 심벌이 다버스의 머리 위에 나타난다. 이것은 사방에서 칼날이 튀어나오고 있는 금속제 여자 가면을 보여주고 있다. 그 유령같은 이미지는 보고만 있어도 마음이 거북해진다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6931 /* ~"어... 내가 기대하고 있던 답이 아니군."~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 4
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6932 /* ~"어... 다콘, 그에게 다른 것을 물어볼 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 1
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6933 /* ~"어... 당신에게 할 다른 질문이 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~~ THEN REPLY #6934 /* ~"어... 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY #6746 /* ~하나의 심벌이 다버스의 머리 위에 나타난다. 그것은 검은색 번개에 의해 갈라진 달걀 모양의 물체이다. 다버스는 그 심벌을 잠시 표시한 후, 고개를 돌리고 당신을 무시한다.~ */
  IF ~~ THEN REPLY #6935 /* ~"어... 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #6747 /* ~다버스가 보인다. 그는 길고 흐르는 듯한 법복을 입고 있으며 지면에서 약간 떠 있다.~ */
  IF ~~ THEN REPLY #6936 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~~ THEN REPLY #6938 /* ~다버스를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.1 21.0
  SAY #6748 /* ~그는 돌아서서 당신을 마주본다, 그리고 일련의 심벌들이 그의 머리 주위에 나타난다. 심벌들은 약간 빛나고 있으며, 그것들은 그냥... 그 곳에 떠 있다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6939 /* ~대화를 시도하여 당신이 그 생물이 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6940 /* ~대화를 시도하여 당신이 그 생물이 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6941 /* ~대화를 시도하여 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6942 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6943 /* ~"미안하오... 난 당신을 이해할 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6944 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6945 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6946 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6947 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6948 /* ~"안나, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6949 /* ~"다콘, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6950 /* ~"훨-후럼-그레이스, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6951 /* ~"관두시오. 방해해서 미안하오. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END
