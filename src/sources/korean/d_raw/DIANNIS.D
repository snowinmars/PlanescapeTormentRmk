// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~이 남자는 정교한 문양으로 뒤덮인 연한 청색 법복을 입고 있다. 옷은 고급스럽기는 하나 많이 구겨지고 해졌다. 당신이 보기에 그 남자의 연령은 중년과 60대 초반 사이인 것 같다. 그러나 근심으로 인한 주름살 때문에 그의 정확한 연령을 파악하기는 어렵다. 당신이 들어오자 구는 천천히 당신을 향해 몸을 돌리고, 그 순간 당신은 자신이 그을 *알고* 있거나 안 적이 있다는 강렬한 감각에 휩싸이게 된다.~ */
  IF ~~ THEN REPLY #2936 /* ~"안녕하시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~그를 무시하고 사무실을 둘러본다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"좋소. 어떤 도움을 원하시오?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"물어봐서 미안하오, 하지만 어디 불편한 데라도 있소?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"물어봐서 미안하오, 하지만 어디 불편한 데라도 있소?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"괜찮소?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"괜찮소?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"우리가 전에 만난 적이 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"여기가 어떤 곳인지 다시 얘기해주겠소?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"변호사란 무엇인지 다시 얘기해주겠소?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"유증에 대해 얘기해줄 수 있겠소?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"이언니스, 감각 체험실에는 당신 딸의 체험의 일부를 담고 있는 감각석이 있소."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"약속한 대로 데이오나라의 유증이 여기 있소."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"그 화재에 대해 얘기해줄 수 있겠소?"~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"당신 딸에 대해 얘기해줄 수 있겠소?"~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"오늘은 아무런 용건도 없소. 이만 실례해야겠소... 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~이언니스가 보인다... 당신이 들어서자 그는 돌아서서 피곤한 표정으로 당신을 바라본다. 그의 눈언저리는 거무스름하며, 그는 잠을 계속 자지 못한 것 같다.~ */
  IF ~~ THEN REPLY #29727 /* ~"안녕하시오, 이언니스."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~이언니스를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"또 당신이군." 이언니스는 당신을 보며 눈살을 약간 찌푸린다. "이번엔 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #29730 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"오늘은 아무런 용건도 없소. 고맙소."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~이언니스가 보인다... 당신이 들어서자 그는 돌아서서 당신을 맞이한다. 그리고 그의 눈빛은 희망으로 밝아진다. "아! 드디어! 내가 그들의 감각 체험실에 들어갈 수 있도록 그들로부터 허락을 받아 냈소?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"그렇소. 그들은 당신이 당신 딸의 감각석을 이용하는 것을 허락했소."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"먼저 내 질문에 좀 대답해주시오."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"아니, 아직 아니오. 당신에게 곧 좋은 소식을 가져오기 위해 노력하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~그는 당신을 평가하려는 듯 눈을 가늘게 뜬다. "무슨 용건이오? 내가 도와 드릴 일이라도 있소?"~ */
  IF ~~ THEN REPLY #29737 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~나는 사무구에서 일하는 이언니스라는 사내를 만났다. 그를 어디에선가 본 적이 있다는 느낌이 드나, 정확한 장소는 알 수가 없다. ~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"미안하오, 엉뚱한 가게에 들어온 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"나는 이언니스요." 그는 당신을 살펴보고 눈살을 찌푸린다. "나를 찾아왔소?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"모르겠소... 이 곳은 뭐 하는 곳이오?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"미안하오... 당신은 전에 이미 그것에 대해 얘기했소. 다른 사안에 대해 날 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"미안하오, 엉뚱한 가게에 들어온 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"이미 얘기했듯이 나는 이언니스요. 무슨 필요한 것이라도 있소?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"잘 모르겠소... 이 곳은 뭐 하는 곳이오?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"미안하오... 당신은 전에 이미 그것에 대해 얘기했소. 다른 사안에 대해 날 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"미안하오, 엉뚱한 가게에 들어온 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"나는 변호사이며, 이 곳은 내 사무실이오." 이언니스는 짜증스러워하는 듯한 목소리로 말한다. "법적 자문을 원하시오? 아니라면 당신 호기심은 다른 곳에 가서 시험하는 것이 좋을 것이오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"변호사? 그건 무엇이오?"~ */ JOURNAL #28830 /* ~이언니스는 법적 조언을 하고, 유서를 작성하며, 법정에서 변호를 하는 "변호사"인 것 같다. ~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"변호사? 그건 무엇이오?"~ */ JOURNAL #28830 /* ~이언니스는 법적 조언을 하고, 유서를 작성하며, 법정에서 변호를 하는 "변호사"인 것 같다. ~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"변호사? 그건 무엇이오?"~ */ JOURNAL #28830 /* ~이언니스는 법적 조언을 하고, 유서를 작성하며, 법정에서 변호를 하는 "변호사"인 것 같다. ~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"나는 변호사이며, 이 곳은 내 사무실이오. 법적 자문이 필요한 사람들은 내게로 온다오."~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~어떤 종류의 자문 말이오?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~어떤 종류의 자문 말이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"알겠소. 그렇다면 당신이 날 도울 수 있는 일이 있을지도 모르겠소..."~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~이언니스는 얼굴을 한층 더 찌푸린다. "변호사는 법적 자문을 제공하고, 다른 이들이 시길의 미궁과도 같은 법체계를 이해하는 것을 도우며, 고객의 사후 그가 원하는 대로 재산이 분배되도록 유증의 준비를 도와주고, 시길의 법정에서 억울한 누명을 쓴 사람들을 변론하오..." 그는 잠시 멈춘다. "당신은 이러한 분야에서의 도움을 원하시오?"~ */
  IF ~~ THEN REPLY #29758 /* ~"유증?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"실은 당신이 날 위한 유증을 하나 가지고 있는 것 같소."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"실은 난 어떤 젊은 여인의 유증을 수령하러 왔소."~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"실은 자문이 좀 필요하오."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"아니, 오늘은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"변호사는 법적 자문을 제공하고, 다른 이들이 시길의 미궁과도 같은 법체계를 이해하는 것을 도우며, 고객의 사후 그가 원하는 대로 재산이 분배되도록 유증 또는 유서의 준비를 도와주고, 시길의 법정에서 억울한 누명을 쓴 사람들을 변론하오..." 그는 잠시 멈춘다. "당신은 이러한 분야에서의 도움을 원하시오?"~ */
  IF ~~ THEN REPLY #29764 /* ~"유증?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"실은 당신이 날 위한 유증을 하나 가지고 있는 것 같소."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"실은 난 어떤 젊은 여인의 유증을 수령하러 왔소."~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"실은 자문이 좀 필요하오."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"아니, 오늘은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"그것은 고객이 사망하면 효력을 발휘하는 일종의 계약서요. 그것은 사망시 고인의 재산을 어떻게 분배할 것인가에 대해 상세하고 기술하고 있소. 그것은 *유서*라고 불리기도 하오."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"그것은 더스트맨 계약서와 유사한 것이오?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"실은 당신이 날 위한 유증을 하나 가지고 있는 것 같소."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"실은 난 어떤 젊은 여인의 유증을 수령하러 왔소."~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"아니, 전혀 다르오. 더스트맨 계약서도 고객이 죽으면 효력을 발휘하지만, 그것은 더스트맨에게 고인의 시체에 대한 권한을 부여하는 계약서요. 별로 유쾌한 거래가 아니오, 하지만 일부 가난한 사람들은 더스트맨 계약서를 생계수단으로 이용하기도 하오..."~ */
  IF ~~ THEN REPLY #29776 /* ~"더스트맨 계약서를 무효화하려면 어떻게 해야 하오?"~ */ JOURNAL #28829 /* ~이언니스는 더스트맨과의 계약을 무효화시키는 유일한 방법은 계약서를 파기하는 것뿐이라고 말했다. ~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"미안하오... 유증이 무엇인지 다시 얘기해주겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~그는 눈살을 약간 찌푸린다. "이미 서명된 것 말이오? 일단 서명된 계약서에 대해서는 어찌할 도리가 없소. 더스트맨 계약서는 죽은 후의 시체의 용도에 대해 매우 상세하게 기술하고 있소. 계약서를 없애지 않는 한 계약을 파기하는 것은 사실상 불가능하오."~ */
  IF ~~ THEN REPLY #29781 /* ~"알겠소. 이 정보에 대해 내가 당신에게 보수를 지불해야 하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"미안하오... 유증이 무엇인지 다시 얘기해주겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"고맙소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"정말이오? 좋소... 당신은 그 유증에 대해 기억을 하고 계시오?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"내 생각에 유중 번호는 '51-AA'이오."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"젊은 여인의 유증 번호는 '687-KS'이오."~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"젊은 여인의 유증 번호는 '687-KS'이오."~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"실은 지금은 기억이 나지 않소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"아니오, 내가 실수한 것 같소. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~당신이 유증의 이름을 대자 그는 놀란 표정으로 당신을 쳐다본다. "그건 매우 오래된 것이오... 그것이 틀림없는..." 그의 얼굴에는 충격받은 기색이 역력하다. "그것이 타버린 유증들 중 하나가 아니기 바랄 뿐이오..."~ */
  IF ~~ THEN REPLY #29792 /* ~"그건 얼마나 오래되었소?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"타버려?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"그 유증이 아직도 존재하는지 확인해 줄 수 있겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"나는 유증에 대해 착각을 한 것 같소. 신경을 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~이언니스는 잠시 생각에 잠긴다. "적어도 몇 세기는 되었소."~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"당신은 그것이 불타버렸을지도 모른다고 했소? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"그 유증이 아직도 존재하는지 확인해 줄 수 있겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"유증에 대해선 내가 착각을 한 것 같소. 산경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~이언니스는 슬픈 표정을 짓는다. "그렇소. 이 사무실은 몰상식한 파괴 행위의 대상이 된 적이 있소. 일 년 전 누군가가 사무실에 침입했소. 방화범의 유일한 목적은 내가 보관하고 있는 공문서를 불태우는 것이었소. 많은 서류들이 소실되었소. 정말 부끄러운 일이오. 시길은 때로는... 사람의 믿음에 시련을 주곤 하오..." 시길에 대해 얘기를 할 때 그는 왠지 좀 왜소해 보인다. "방화범은 일부 문서들만 파괴했소. 하지만 그것들은 대체할 수 없는 것들이었소."~ */
  IF ~~ THEN REPLY #29803 /* ~"그 유증은 얼마나 오래되었소?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"그 유증이 아직도 존재하는지 확인해 줄 수 있겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"그 화재에 대해 더 얘기해줄 수 있는 건 없소?"~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"유증에 대해선 내가 착각을 한 것 같소. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~그는 재빨리 고개를 끄덕인다. "물론이오... 잠시 시간이 걸릴 것이오."~ */
  IF ~~ THEN REPLY #29809 /* ~"좋소. 기다리겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"아니오, 유증에 대해선 내가 착각을 한 것 같소. 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~이언니스는 고개를 끄덕이며 돌아온다. "다행히도 화재의 피해를 입지 않았소. 모든 물품이 다 무사하오."~ */
  IF ~~ THEN REPLY #29813 /* ~"그것을 받을 수 있겠소? 내가 수취인이오."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"고맙소. 그것이 안전한지 한 번 확인하고 싶었을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~"물론이오... 여기와 여기에 서명하시오... 점선으로 표시된 곳에..."~ */
  IF ~~ THEN REPLY #29817 /* ~"저곳? 그리고 저곳? 좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"됐소. 그걸로 서류 작성은 끝이오. 금고 안에 있었던 물건들이 모두 여기 있소... 그것들 중 하나는 주조소 영수증인 것 같소, 그것도 매우 오래된. 혹시 고인이 주조소에 물건을 발주했었소?"~ */
  IF ~~ THEN REPLY #29819 /* ~"모르겠소... 아마도... 난 그 어떤 일도 일어날 수 있다고 생각하기 시작하고 있소. 주조소는 어디 있소?".~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~나는 내 유서를 사무구에 사는 변호사 이언니스로부터 받았다. 유서에 포함된 물건들 중에는 매우 오래된 것처럼 보이는 기묘한 영수증이 있었다. 이언니스는 그것이 "대 주조소의 영수증"이며 그것은 내가 갓즈맨에게 뭔가를 위탁했다는 뜻이라고 한다. 이언니스는 그 영수증이 있으면 마계구에 있는 대 주조소에 들어갈 수 있을 것이라고 했다. ~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"주조소는 마계구에 있소. 그 곳은 웅대한 정문 너머 있소. 그 문은 여러 명의 갓즈맨 경비병들이 지키고 있으니 찾기는 쉬울 거요."~ */
  IF ~~ THEN REPLY #29821 /* ~"좋소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"길을 일러주어 고맙소. 이제 그 곳에 가보도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"나는 이러한 사소한 도움을 주고 수임료를 요구하는 그런 종류의 위인이 아니오." 그는 가볍게 미소짓는다. "나는 변호사지 장사치가 아니오, 그리고 내 사무실에서 탐욕은 용납되지 않소."~ */
  IF ~~ THEN REPLY #29824 /* ~"고맙소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"그건..." 당신이 유증의 이름을 대자 그의 눈이 휘둥그레진다. "내 *딸*의 유증...?!" 그는 충격을 받은 듯하다. "어떻게 당신이 내 딸을 아는 거요?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"나도 잘 모르겠소. 공회당에 유증 번호를 담고 있는 감각석이 있었소."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"나도 잘 모르겠소. 나는 그 번호를 내가 전에 당신에게 얘기해준 적이 있는 공회당의 감각석에서 얻었소. 그것을 나를 위한 것이었소."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"모르겠소. 나는 유증이 그 질문에 대답해줄 수 있기를 바랄 뿐이오."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"실은 그건 법적인 문제로 당신과는 상관이 없는 일이오."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"당신이 상관할 바는 아니오. 그 유증이 아직도 존재하는지 확인해줄 수 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"유증에 대해선 내가 착각을 한 것 같소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"미안하오, 그건 엉뚱한 유증이었소. 수고를 끼쳐 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"왜..." 이언니스는 할 말을 잃은 듯하다. "당신이 대체 누구이기에 내 딸이 당신에게 유증을 남긴 것이오?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"나도 잘 모르겠소. 공회당에 유증 번호를 담고 있는 감각석이 있었소."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"나도 잘 모르겠소. 나는 그 번호를 내가 전에 당신에게 얘기해준 적이 있는 공회당의 감각석에서 얻었소. 그것을 나를 위한 것이었소."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"내가 한때는 그녀를 알았으나... 지금은 잊어버렸을 가능성도 있소..."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~"전에 말했듯이 나도 모르겠소. 나는 유증이 그 질문에 대답해줄 수 있기를 바랄 뿐이오."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"실은 그건 법적인 문제로 당신과는 상관이 없는 일이오."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"당신이 상관할 바는 아니오. 그 유증이 아직도 존재하는지 확인해줄 수 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"유증에 대해선 내가 착각을 한 것 같소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"미안하오, 그건 엉뚱한 유증이었소. 수고를 끼쳐 미안하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~이언니스는 당신 얼굴을 골똘히 살핀다. "당신은 왠지 낯이 익소..."~ */
  IF ~~ THEN REPLY #29840 /* ~"당신은 내가 누군지 아시오?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"만약 당신이 그 유증을 가져오면, 우리들 두 사람이 지닌 의문들의 일부가 풀릴지도 모르오."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"그녀의 유증을 날 위해 가져다 줄 수 있겠소? 이 일은 법적인 문제이지 논의의 대상은 아니오."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"유증에 대해선 내가 착각을 한 것 같소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"미안하오, 이만 실례해야겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"솔직히 말해 아니오." 이언니스는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #29846 /* ~"만약 당신이 그 유증을 가져오면, 우리들 두 사람이 지닌 의문들의 일부가 풀릴지도 모르오."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"그녀의 유증을 날 위해 가져다 줄 수 있겠소? 이 일은 법적인 문제이지 논의의 대상은 아니오."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"유증에 대해선 내가 착각을 한 것 같소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"미안하오, 이만 실례해야겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"물론이오, 물론... 잠시 기다리시오, 곧 돌아오리다. ~ */
  IF ~~ THEN REPLY #29851 /* ~"좋소. 기다리겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~나는 데이오나라의 유언을 그녀의 아버지로부터 받았다.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~이언니스는 잠시 당신을 노려본다, 그리고 눈을 가늘게 뜬다. "물론이오." 그의 목소리는 얼음처럼 차갑다. "기다려 주신다면 그녀의 유증을 가지고 곧 돌아오도록 하겠소."~ */
  IF ~~ THEN REPLY #29853 /* ~"알겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~나는 데이오나라의 유언을 그녀의 짜증나는 아버지로부터 받았다. 나는 그가 내게 말할 때의 어조가 마음에 들지 않는다. 그는 조심해야 할 것이다, 아니면 딸과 마찬가지 신세가 될 테니까.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"위탁된 물품들이 모두 여기 있소..." 이언니스는 손에 세 개의 두루마리를 들고 있다. "나는 그녀가 이 곳에서 유증을 작성한 줄은 몰랐었소..." 그는 무엇에라도 홀린 듯 그 물건들을 멍하니 쳐다보고 있다. "여기 있소. 혹시... 내가 그것들을 읽어볼 수 있겠소?"~ */
  IF ~~ THEN REPLY #29855 /* ~"그건 *사적인* 문제요. 변호사로서 당신은 이 점을 이해해야 하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"내가 먼저 읽은 후에 결정하도록 하겠소."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"물론이오. 여기 있소."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"물론이오..." 이언니스는 낙담한 것 같다. "하지만 제발 부탁이오. 내게는 내 딸의 추억이 담긴 물건들이 거의 남아 있지 않소..."~ */
  IF ~~ THEN REPLY #29859 /* ~거짓말: "당신에게 그것을 읽을 기회를 주도록 하겠소. 지금은 일단 다른 일을 좀 도와주시오..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~맹세: "당신에게 그것을 읽을 기회를 주겠다고 약속하오. 하지만 지금은 일단 다른 일을 좀 도와주시오..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"이해하오. 지금은 일단 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~거짓말: "잊지 않고 기억하겠소. 그것들을 읽은 후에 돌아오리다."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~맹세: "잊지 않고 기억하겠소. 그것들을 읽은 후에 돌아오리다."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~이언니스는 두루마리를 받아 세심히 살펴본다. 오랜 침묵이 흐른 후 그는 천천히 당신을 올려다 본다. "당신은... 내 딸에게 매우 소중한 사람이었던 것 같소. 그녀는 당신을 위해 자신의 목숨을 버릴 각오였소."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"불행히도 그랬던 것 같소."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~나는 이언니스가 데이오나라의 유언을 읽도록 해주었다. 그녀가 마지막으로 남긴 말들은 그에게 다소의 위안을 준 것 같다. ~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"그랬던 것 같소."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~나는 이언니스가 데이오나라의 유언을 읽도록 해주었다. 그녀가 마지막으로 남긴 말들은 그에게 다소의 위안을 준 것 같다. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~이언니스는 두루마리를 당신에게 돌려준다. "고맙소. 당신의 호의에 정말 감사하오."~ */
  IF ~~ THEN REPLY #29874 /* ~"그건 내가 할 수 있는 최소한의 일이었소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"나는 당신 딸의 죽음을 애도하오. 그녀가 남긴 말이 당신에게 조금이나마 위안이 됐기를. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~그는 생각을 하느라 눈살을 찌푸리며 잠시 당신을 살펴본다. 그러자 그의 얼굴의 주름이 한층 더 두드러져 보인다, 그리고 당신은 그를 짓누르고 있는 세월의 중압감을 느낀다. "아니... 하지만 당신은 낯이 익은 것 같소..."~ */
  IF ~~ THEN REPLY #29877 /* ~"하지만..."~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"상관없소, 난 이제 떠나야 하니까."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~그는 계속 당신 얼굴을 살펴본다, 그리고 얼마 뒤 고개를 젓는다. "당신에게는 어딘가 낯익은 구석이 있소, 그러나 미안하게도 내 기억이 뚜렷하지 못한 탓에 정확히 기억하지는 못하겠소... 나는 얼마 전부터 몰두하고 있는 일이 있어 정신이 없소. 혹시 우리가 전에 만난 *적*이 있소?"~ */
  IF ~~ THEN REPLY #29881 /* ~진실: "그런 것 같소. 하지만 나는 내 자신에 대해 거의 기억할 수가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~거짓말: "아니, 내가 실수를 했소. 우리가 서로 만난 적이 있다고는 생각되지 않소;"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"여념이 없다?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"여념이 없다?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"여념이 없다?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"그럼 관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"상관없소, 난 이제 떠나야 하니까."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"흠. 우리 두 사람 모두에게 있어 참 답답한 일이오."~ */
  IF ~~ THEN REPLY #29889 /* ~"그럼 관두시오. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"관두시오. 이만 실례하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"흠, 그럼 좋소."~ */
  IF ~~ THEN REPLY #29892 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"그 사건에 대해서는 별로 할 얘기가 없소... 기묘한 국지적인 화재였소. 불탄 문서들에 어떤 중요한 내용이 담겨 있었는지는 나도 모르오, 하지만 누군가 그것들을 없애려 했던 건 분명한 사실이오."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"어... 화재를 일으킨 자는 찾아낼 수 있었소?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"화재를 일으킨 자는 찾아낼 수 있었소?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"어떤 것들이 타버렸는지 내게 얘기해줄 수 있겟소?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"알겠소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"당신? 그게 무슨 뜻이오?"~ */
  IF ~~ THEN REPLY #29904 /* ~진실: "그건 내가 과거의 어느 시점에 저지른 일 같소. 그 때 나는 제정신이 아니었소. 나는 내 행동을 뉘우치고 당신에게 용서를 구하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~거짓말: "마법에 의해 강제된 탓에 그런 짓을 저질렀소. 내게는 무슨 일이 일어났는지 전혀 알지 못하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"미안하오, 내가 실언을 했소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"용서하시오. 무슨 악의가 있어 그런 말은 한 것은 아니오. 괜찮다면 다른 일도 좀 도와주시오..."~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"그건 중요하지 않소. 안녕히 계시오."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"아니..." 이언니스의 얼굴은 마치 돌처럼 굳어졌다. "나는 당신이 한 말을 분명히 들었소. 당신인 자신이 그 화재에 책임이 있다고 주장했소. 왜 그런 짓을 했다고 주장하는 거요? 당신은 미쳤소?"~ */
  IF ~~ THEN REPLY #29910 /* ~진실: "그건 내가 과거의 어느 시점에 저지른 일 같소. 그 때 나는 제정신이 아니었소. 나는 내 행동을 뉘우치고 당신에게 용서를 구하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~거짓말: "마법에 의해 강제된 탓에 그런 짓을 저질렀소. 내게는 무슨 일이 일어났는지 전혀 알지 못하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"다시 한 번 내게 언성을 높이면, 다음 번에 이 곳을 엄습할 화재는 치명적인 것이 될 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~이언니스의 얼굴이 분노로 일그러진다. "이... 시길산 똥개 같으니! 나는 네 놈이 그런 비열한 짓을 저지른 후 다시 내 앞에 나타나기만 기다리고 있었다! 내 집과 내게 소중한 추억거리들을 훼손시키고는 이제 한밤의 흡혈귀처럼 돌아와 감히 나를 다시 협박해?!"~ */
  IF ~~ THEN REPLY #29914 /* ~진실: "그건 내가 과거의 어느 시점에 저지른 일 같소. 그 때 나는 제정신이 아니었소. 나는 내 행동을 뉘우치고 당신에게 용서를 구하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~거짓말: "마법에 의해 강제된 탓에 그런 짓을 저질렀소. 내게는 무슨 일이 일어났는지 전혀 알지 못하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~그의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~그의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~그의 목을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"내가 감히 그러겠다면? 어떻게 할 생각이지, 늙은이?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~당신이 달려들자 이언니스는 뒤로 피한다, 그리고 고함을 지르기 시작한다. "경비병! 도와주시오! 나는 습격을 당하고 있소!"~ */
  IF ~~ THEN REPLY #29921 /* ~"빌어먹을..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~당신의 양손은 이언니스의 관자놀이를 손쉽게 움켜쥔다, 그리고 당신을 그의 머리를 옆으로 세게 비튼다. ~ */
  IF ~~ THEN REPLY #29923 /* ~"당신 설교를 들을 시간은 없소, 늙은이..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~*우두둑* 소리가 난다, 그리고 이언니스는 당신 손 안에서 맥없이 늘어진다.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"이제 편히 잠드시오..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~이언니스는 나를 마지막으로 또 한 번 짜증나게  했다, 그래서 나는 그가 조용해질 때까지 그의 목을 졸랐다. 살인을 하자 기억이 다시 요동을 쳤다... 하지만 의식의 표면으로 떠오를 정도로 강하지는 않았다. 한 가지 확실한 건 내가 이전에도 사람의 목을 조른 적이 있다는 사실이다. ~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"이제 편히 잠드시오..."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~이언니스는 나를 마지막으로 또 한 번 짜증나게  했다, 그래서 나는 그가 조용해질 때까지 그의 목을 졸랐다. ~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~놀랍게도 이러한 행동은 당신에게 있어 매우 자연스러운 일인 것 같다... 마치 전에도 여러 번 비슷한 일을 해본 것처럼. 그런 생각이 들자 기억이 자극이 받으나, 표면으로 떠오를 정도로 강하지는 않다. ~ */
  IF ~~ THEN REPLY #29928 /* ~시체를 놔두고 가던 길을 간다.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~이언니스는 고함을 지르기 시작한다. "경비병! 도와주시오! 침입자요! 도와주시오!"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"빌어먹을..."~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"빌어먹을..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"하지만..." 이언니스는 할 말을 잃은 것처럼 보인다. "하지만... 왜? 불탄 것들 중 일부는... 내게만 소중한 것들이었소... 이 세상에 둘도 없을 정도로!" ~ */
  IF ~~ THEN REPLY #29933 /* ~"그 문서와 유품들 중 하나가 내 다른 화신에게 있어 위협적인 것이었을 가능성이 높소... 하지만 그 정확한 진상은 영원히 알 수 없을 것 같소."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"실은 나도 모르오."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"당신의 다른 화신? 대체 무슨 얘기를 하는 거요?"~ */
  IF ~~ THEN REPLY #29936 /* ~"나에게는 이상한 중세가 있소... 나는 때로 자아를 잃고 일정 기간 동안 전혀 다른 사람이 되오. 그 기간 동안 나는 스스로의 행동을 일절 제어할 수 없소." ~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"실은 나도 모르오."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~거짓말: "마법에 의해 강제된 탓에 그런 짓을 저질렀소. 내게는 무슨 일이 일어났는지 전혀 알지 못하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"모른다고?! 아니, 당신이 무슨 어린아이요?! 어떻게 자신이 취한 행동의 이유를 모를 수가 있단 말이오!"~ */
  IF ~~ THEN REPLY #29940 /* ~"나에게는 이상한 중세가 있소... 나는 때로 자아를 잃고 일정 기간 동안 전혀 다른 사람이 되오. 그 기간 동안 나는 스스로의 행동을 일절 제어할 수 없소." ~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~거짓말: "마법에 의해 강제된 탓에 그런 짓을 저질렀소. 내게는 무슨 일이 일어났는지 전혀 알지 못하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~이언니스는 얼굴을 찌푸린다... 그는 그 문제에 대해 깊이 생각하는 듯하다. "나는 그러한 마법에 걸린 사람에 대한 얘기를 들은 적이 있소." 그는 잠시 아무 말도 하지 않는다. "그리고 당신은 이 곳에 와서 그 범죄에 대한 책임을 지기로 선택했소..." ~ */
  IF ~~ THEN REPLY #29943 /* ~"나는 그 범죄에 대한 당신의 용서를 구하러 왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~나는 이언니스에게 내가 마법에 의하여 강제된 상황에서 그의 가게에 불을 질렀다고 거짓말을 하고 그에게 용서를 구했다. 그는 내 거짓말을 믿고 간단히 나를 용서하였다. 그는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"나는 그 범죄에 대한 당신의 용서를 구하고, 내 힘이 닿는 한도 내에서 그에 대한 보상을 하려고 왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~나는 이언니스에게 내가 마법에 의하여 강제된 상황에서 그의 가게에 불을 질렀다고 거짓말을 하고 그에게 용서를 구했다. 그는 내 거짓말을 믿고 간단히 나를 용서하였다. 그는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"범죄에 대한 책임은 아니오. 그 때 나는 스스로의 행동을 어찌할 수가 없었으니까."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~나는 이언니스에게 내가 마법에 의하여 강제된 상황에서 그의 가게에 불을 질렀다고 거짓말을 하고 그에게 용서를 구했다. 그는 내 거짓말을 믿고 간단히 나를 용서하였다. 그는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~이언니스는 얼굴을 찌푸린다... 그는 그 문제에 대해 깊이 생각하는 듯하다. "나는 그러한 정신 이상에 대해 들은 적이 있소... 일시적인 기억 상실과 다른 인격의 출현... 그리고 당신은 이 곳에 와서 그 범죄에 대한 책임을 지기로 선택했다는 사실..." ~ */
  IF ~~ THEN REPLY #29948 /* ~"그건 내 증세와 흡사하오. 나는 그 범죄에 대한 당신의 용서를 구하러 왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~나는 이언니스에게 내가 그의 가게에 불을 질렀다고 거짓말을 고백하고 그에게 용서를 구했다. 그는 간단히 나를 용서했으며는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"나는 그 범죄에 대한 당신의 용서를 구하고, 내 힘이 닿는 한도 내에서 그에 대한 보상을 하려고 왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~나는 이언니스에게 내가 그의 가게에 불을 질렀다고 거짓말을 고백하고 그에게 용서를 구했다. 그는 간단히 나를 용서했으며는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"범죄에 대한 책임은 아니오. 그 때 나는 스스로의 행동을 어찌할 수가 없었으니까."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~나는 이언니스에게 내가 그의 가게에 불을 질렀다고 거짓말을 고백하고 그에게 용서를 구했다. 그는 간단히 나를 용서했으며는 영속적인 피해는 없었다고 날 안심시켜주기까지 했다. ~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"나.." 이언니스는 얼굴을 찌푸린다, 그러나 그는 곧 얼굴을 편다. "용서할 건 아무 것도 없소... 나는 이제 그 상실을 견디고 살아갈 수 있게 되었고, 지속적으로 남을 만한 피해도 없었소. 하지만 나는 내가 왜 표적이 되었는지 모르겠소. 불탄 문서들 중에서 값나가는 것은 전혀 없었소."~ */
  IF ~~ THEN REPLY #29953 /* ~"어떤 문서들이었소?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"대부분 유증들이었소. 그리고 그것들 중 일부는 매우 오래된 것들이었소."~ */
  IF ~~ THEN REPLY #29955 /* ~"유증?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"아니오, 하모니움도 머시킬러도 방화범을 찾아내지는 못했소."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"어떤 것들이 타버렸는지 내게 얘기해줄 수 있겟소?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"알겠소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"알겠소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"참으로 불행한 일이오. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"상당수의 오래된 유증들이 타버렸으며, 내게만 가치가 있는 몇 개의 추억거리와 유품들도 함께 타버렸소."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"내가 방화범이었을지도 모르오."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"유증?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"알겠소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"알겠소. 당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"당신에게 양해를 구해야만 하겠소. 최근 나는 거듭되는 불행에 시달리고 있소... 내게 있어 지난 몇 년간은 시련의 나날들이었소." ~ */
  IF ~~ THEN REPLY #29971 /* ~"내가 할 수 있는 일은 없겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"어떤 재난 말이오?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"알겠소. 괜챃다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"방해해서 미안하오... 당신이 처한 상황이 호전되기를 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"아니오... 당신이 해줄 수 있는 일은 없소." 그는 고개를 끄덕여 사의를 표한다. "하지만 당신 제의에 대해서는 감사하오. 고맙소."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"당신이 안고 있는 문제들에 대해 털어놓는 것이 마음을 진정시키는 데 도움이 될지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"당신이 안고 있는 문제들에 대해 털어놓는 것이 마음을 진정시키는 데 도움이 될지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"당신이 안고 있는 문제들에 대해 털어놓는 것이 마음을 진정시키는 데 도움이 될지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"당신은 어떠한 재난들을 겪었소?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"당신은 어떠한 재난들을 겪었소?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"당신은 어떠한 재난들을 겪었소?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"알겠소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"당신이 처한 상황이 호전되기를 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~이언니스는 한숨을 쉰다. "나는 당신에게 부담을 주고 싶지는 않소... 나는 얼마 전에 내 딸을 잃었소. 그리고 화재도 일어났소... 하지만 그건 별개의 문제요."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"당신 딸에 대해 얘기해주시오."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"당신 딸에 대해 얘기해주시오."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"화재?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"알겠소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~이언니스는 한숨을 쉰다. "나는 당신에게 이 이상 부담을 주고 싶지는 않소... 이미 말했듯이 나는 얼마 전에 내 딸을 잃었소. 그리고 화재도 일어났소... 하지만 그건 별개의 문제요."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"당신 딸에 대해 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"화재?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~순식간에 이언니스가 오그라드는 것처럼 보인다. "그렇소..." 그의 얼굴에서 사무적인 표정이 사라지고 대신 절대적인 절망감으로 가득 찬다. "내 딸 데이오나라는 얼마 전에 죽었소..." 그 이름을 듣자 당신 몸을 싸늘한 충격이 엄습한다. 당신은 그 *여자*를 알고 있다.~ */
  IF ~~ THEN REPLY #30225 /* ~"그녀에 대해 얘기해주시오. 그녀는 어떤 사람이었소?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"그녀는 어떻게 죽었소?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소. 그녀는 유령이 되었고 날 안다고 주장했소."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"그 화재에 대해 더 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~순식간에 이언니스가 오그라드는 것처럼 보인다. "그렇소..." 그의 얼굴에서 사무적인 표정이 사라지고 대신 절대적인 절망감으로 가득 찬다. "내 딸 데이오나라는 얼마 전에 죽었소..."~ */
  IF ~~ THEN REPLY #30233 /* ~"그녀에 대해 얘기해주시오. 그녀는 어떤 사람이었소?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"그녀는 어떻게 죽었소?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소. 그녀는 유령이 되었고 날 안다고 주장했소."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"그 화재에 대해 더 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"데이오나라 말이오? 그녀는... 젊었소. 그녀는 최근 감각의 공동체, 즉 센세이트의 일원이 되었소... 그 당파는 결코 나쁜 당파는 아니오, 하지만 그녀는 그 곳에서 어떤 남자를 만나 그와 함께 여행을 떠났소, 그리고 그 도중에 죽었소. 그녀의 유해는..." 그는 괴로워하는 것 같다. "나는 내 딸의 유해조차 찾지를 못했소..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소."~ */ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"나는 그 이름을 지닌 여자가 시체안치소의 기념 홀에 안장되는 것을 보았소. 그녀는 유령이 되었고 날 안다고 주장했소."~ */ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"당신은 그녀와 함께 여행한 남자에 대해 아는 것이 없소?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"당신은 이 여행에서 그녀의 행선지가 어디였는지 아시오?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"당신은 그녀가 어떻게 죽었는지 아시오?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"내가 이런 질문을 하는 걸 용서하시오, 하지만 만약 당신이 그녀의 유해를 찾지 못했다면, 그녀가 죽었다는 건 어떻게 알았소?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~데이오나라의 아버지인 이언니스는 내게 그녀가 센세이트의 일원이었다고 말해주었다. 그는 그녀가 죽었을 때 매우 젊었으며, 여행에서 만난 남자를 따르다가 죽었다고 했다. 그녀의 시신은 발견되지 않았다. ~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"그러리다..." 소중한 기억이 그의 몸과 마음을 따뜻하게 하는 듯 그는 약간의 활력을 되찾는다. "그녀는 독특한 재능을 지녔고... 또 다원 우주에서 체험하고 싶은 것들이 너무나 많았기 때문에 그들의 일원이 되었소. 센세이트는 체험과 감각을 공유하는 데 전력을 기울이고 있소. ~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"그건 나도 아오. 나는 감각 체험실에서 그녀의 체험의 일부를 담고 있는 감각석을 발견했소."~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"선물?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~이언니스는 내게 데이오나라에게는 예언자의 피가 흐르고 있었다고 말해주었다. 그것은 그녀에게 "예지" 능력을 주어 미래의 일을 미리 볼 수 있도록 해주었다. ~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"당신은 그녀와 함께 여행한 남자에 대해 아는 것이 없소?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"당신은 이 여행에서 그녀의 행선지가 어디였는지 아시오?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"당신은 그녀가 어떻게 죽었는지 아시오?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~그의 눈이 희망으로 불타오른다. "그런 감각석이 있소? 하지만 어느 감각석에...? 당신은 내게 말해주어야만 하오!"~ */
  IF ~~ THEN REPLY #30262 /* ~"그것은 센세이트 전용 감각석들 중 하나요... 센세이트가 아니라면 접근을 할 수가 없소."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~그는 잠시 생각한다. "난 반드시 방법을 찾아야만 하오... 혹시 부친에 대해서는 예외를 인정할지도..."~ */
  IF ~~ THEN REPLY #30264 /* ~"만약 당신이 원한다면 센세이트 관계자에게 얘기를 해줄 수도 있소. 난 그들이 당신 경우에는 예외를 인정할 곳이라고 확신하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~나는 이언니스에게 시 공회당에 문의를 하여 그가 딸의 감각석을 볼 수 있도록 해줄 수 있는지 알아보겠다고 했다. 내가 무슨 일을 할 수 있을 지는 모르나 적어도 시도는 해봐야겠다. ~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"나는 센세아트의 규정을 어기고 싶지는 않소. 하지만 관계자와 얘기해 다른 방법을 모색해 볼 수는 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~나는 이언니스에게 시 공회당에 문의를 하여 그가 딸의 감각석을 볼 수 있도록 해줄 수 있는지 알아보겠다고 했다. 내가 무슨 일을 할 수 있을 지는 모르나 적어도 시도는 해봐야겠다. ~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"대가를 지불하겠다면 당신을 도울 수도 있소. 내 말이라면 시 공회당에서 무시는 못할 거요." ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~나는 이언니스에게 만약 내게 대가를 지불할 의사가 있다면 시 공회당에 문의를 하여 그가 딸의 감각석을 볼 수 있도록 해줄 수 있는지 알아보겠다고 했다. 그는 내가 센세이트로부터 허가를 받아오면 돈을 지불하겠다고 했다. ~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"그럴지도 모르오. 그런데 그녀는 감각석에 나를 위해 유증 번호를 남겨 놓았소."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"그럴지도 모르오. 그런데 그녀는 감각석에 나를 위해 유증 번호를 남겨 놓았소."~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"그건 당신과 그들 사이의 문제요. 데이오나라에 대해서 더 얘기해주시오..."~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"가능하오. 그들과 한 번 얘기를 해보시오. 어쨌든, 당신에게 물어볼 것들이 조금 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"아마 그럴지도. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~이언니스는 마음이 한결 편안해진 듯하다. "만약 그렇게 해줄 수만 있다면 정말 고맙겠소."~ */
  IF ~~ THEN REPLY #30273 /* ~"최선을 다하리다. 하지만 먼저 데이오나라에 대해 더 알고 싶소. 그녀는 어떤 사람이었소?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"가서 그 일을 곧 처리하도록 하겠소. 그런데 그녀는 감각석에 나를 위해 유증 번호를 남겨 놓았소."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"가서 그 일을 곧 처리하도록 하겠소. 그런데 그녀는 감각석에 나를 위해 유증 번호를 남겨 놓았소."~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"시도해 보겠소. 내가 가기 전에 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"노력해 보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~이언니스는 마음이 한결 편안해진 듯하다. "당신이 그들로부터 내가 그 감각석을 볼 수 있도록 허락을 받아 내면 부디 여기로 돌아와 주시오, 당신 노고에 대해 후사하도록 하겠소."~ */
  IF ~~ THEN REPLY #30277 /* ~"최선을 다하리다, 그러나 그렇게 간단한 문제는 아닐 거요. 공회당에 요청을 하기 전에 먼저 데이오나라에 대해 더 알고 싶소. 그녀는 어떤 사람이었소?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"그럼 가서 그 일을 곧 처리하도록 하겠소. 그런데 나는 그녀가 날 위해 남긴 유증에 관심이 있소..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"그럼 가서 그 일을 곧 처리하도록 하겠소. 그런데 나는 그녀가 날 위해 남긴 유증에 관심이 있소..."~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"시도해 보겠소. 내가 가기 전에 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"노력해 보리다... 하지만 많은 비용이 들 수도 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"아... 정말... 너무나도 고맙소! 나는 당신에게 큰 빚을 졌소!"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"실은 허가가 내렸소. 하지만 ~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~나는 이언니스에게로 돌아와 센세이트가 그가 딸의 감각석을 이용하는 것을 허락했다는 말을 전했다. 그는 매우 고마워했다... 상당한 액수의 돈을 지불하고 덤으로 자신이 보관해두었던 약간의 마력을 지닌 아이템들까지 내게 줄 정도로. 딸에 대한 아버지의 사랑은 그만한 가치가 있는 것인 모양이다...~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"전혀 힘든 일이 아니었소, 이언니스. 부디 가서 당신 딸의 체험을 보시오. 아마 그것은 당신 마음을 편하게 해줄 것이오."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~나는 이언니스에게로 돌아와 센세이트가 그가 딸의 감각석을 이용하는 것을 허락했다는 말을 전했다. 그는 매우 고마워했다. 단지 그의 딸 데이오나라의 감각석을 이용할 허락을 얻었다는 말 한 마디에 그의 우울함은 상당히 가신 듯 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"물론이오... 잠깐 기다리시오, 곧 돌아오겠소."~ */
  IF ~~ THEN REPLY #30286 /* ~"좋소. 기다리겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~잠시 후 이언니스가 돌아온다. 그는 손에 큰 돈자루와 기묘하게 생긴 부적같은 것들을 들려 있다. "여기 있소... 그리고 당신의 노고에 대해 다시 한 번 감사드리겠소."~ */
  IF ~~ THEN REPLY #30288 /* ~"그래, 그렇소... 그런데 다른 일을 좀 도와주면 고맙겠소."~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"물론이오... 보수로 받은 돈의 액수를 감안할 때 전혀 대수롭지 않은 일이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"별로 없소. 그녀가 떠나기 전에는 그런 사람이 존재한다는 사실조차 몰랐소. 그리고 이미 그 때는 그를 알기에는 너무 늦었소."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"그 사내는 나였던 것 같소. 하지만 난 많은 것을 잊어벼렸소."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"당신은 이 여행에서 그녀의 행선지가 어디였는지 아시오?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"그녀는 어떻게 죽었소?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"그녀가 죽은 것을 어떻게 알았소?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"그녀는 아무 말도 하지 않았소. 솔직히 그녀가 행선지에 대해 알고 있었는지 여부도 확실치 않소. 그 곳은 정말 끔찍한 곳이었음이 틀림없소..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"당신은 그녀와 함께 여행한 남자에 대해 아는 것이 없소?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"그녀는 어떻게 죽었소?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"그녀가 죽은 것을 어떻게 알았소?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"그건 정말 기묘했소... 나는 더스트맨이 그녀의 유해를 찾았는지 알아 보려고 그들을 찾아갔소, 그리고 그들은 나를 더스트맨 기념관 밖에 서 있는 그들의 동료에게로 안내했소... 그 더스트맨의 이름은 '이름의 죽음'이었소. 그는 죽은 자에 대해서는 예언자와 같은 능력을 지니고 있다고 하오. 그가 내게 내 딸이 죽었다는 사실을 알려 주었소."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"당신은 그녀와 함께 여행한 남자에 대해 아는 것이 없소?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"당신은 이 여행에서 그녀의 행선지가 어디였는지 아시오?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~이언니스는 잠시 당신 말을 듣지 못한 듯하다. 그가 다시 말문을 열고 느릿느릿하게 말을 꺼낸다. "말해주시오, 나는 알아야만 하오."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~진실: "당신 딸을 죽인 건 바로 나요. 나는 그녀의 나에 대한 사랑이 그녀를 그 곳에 묶어둘 거라는 생각에서 그녀를 음의 에너지계에서 살해했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~나는 데이오나라의 아버지인 이언니스에게 고백을 하고 그의 딸에게 무슨 일이 일어났는지를 말해주었다. 내가 지은 죄는 중대하다, 하지만 그녀의 운명에 대해 알게됨으로서 그가 다소나마 정신적인 안정을 얻기를 바랄 뿐이다. ~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~진실: "당신 딸을 죽인 건 바로 나요. 나는 그녀의 나에 대한 사랑이 그녀를 그 곳에 묶어둘 거라는 생각에서 그녀를 음의 에너지계에서 살해했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~나는 데이오나라의 아버지인 이언니스에게 고백을 하고 그의 딸에게 무슨 일이 일어났는지를 말해주었다. 내가 지은 죄는 중대하다, 하지만 그녀의 운명에 대해 알게됨으로서 그가 다소나마 정신적인 안정을 얻기를 바랄 뿐이다. ~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~절반의 진실: "그녀는 배신을 당해 음의 에너지계에서 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~절반의 진실: "그녀는 배신을 당해 음의 에너지계에서 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~거짓말: "그녀는 여행 도중에 병이 났소... 그녀는 시길에서 오랜 시간을 보낸 탓에 다른 차원의 환경에 적응할 준비가 덜 되었던 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"신경 쓰지 마시오, 내가 실언을 했소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"그건 중요하지 않소. 안녕히 계시오."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~I이언니스는 아무 말도 않고 당신을 쳐다본다, 그리고 잠시 후 그가 입을 연다. "왜... *왜* 그런 끔찍한 짓을 저질렀소?"~ */
  IF ~~ THEN REPLY #30333 /* ~"그건 내가 아니었소... 그건 나의 다른 부분이었소. 그는 자신의 목적을 위해 그녀가 그 차원과의 연결고리 역할을 해줄 거라는 생각에서 그런 짓을 저질렀소. 미안하오, 이언니스."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"나는 많은 끔찍한 짓들을 한 것 같소, 하지만 대부분 기억조차 하지 못하오. 나는 그녀가 그 차원과의 연결고리 역할을 해줄 거라는 생각에서 그런 짓을 저질렀소. 미안하오, 이언니스."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"그건 '끔찍한' 짓이 아니라 *필요한* 행위였소, 이언니스. 당신 딸은 날 위해 죽을 각오가 되어 있었고, 나는 내 목숨을 구하기 위해 그녀의 생명이 필요했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~이언니스는 아무 말도 않고 당신을 쳐다본다. "누구?"~ */
  IF ~~ THEN REPLY #30337 /* ~진실: "내게 책임이 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~거짓말: "모르겠소. 그런 일을 너무 깊게 파고드는 것은 바람직하지 않을 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~이언니스는 비탄에 잠긴 듯 하다. "나는 찾아내야만 하오..." 그는 당신을 올려다 본다. "말해주어 고맙소. 나는 그녀에게 어떤 일이 생겼는지 알아야만 했소..."~ */
  IF ~~ THEN REPLY #30340 /* ~"이해하오. 괜찮다면 내가 가기 전에 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"당신 딸의 죽음에 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"당신..." 이언니스는 당신이 한 말을 이해하려고 노력하고 있는 듯하다. "기다리시오... 당신은 그녀를 그 차원과 연결할 생각이라고 했소? 그게 무슨 뜻이오?"~ */
  IF ~~ THEN REPLY #30343 /* ~"내가 이해하는 바로 그는 그녀의 나에 대한 사랑과 음의 에너지계에서 그녀의 죽음의 조합이 그녀를 혼령으로 살아가게 만들 것이라고 생각했던 것 같소."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"그녀가 *살아* 있소?"~ */
  IF ~~ THEN REPLY #30345 /* ~"어떤 의미에서는... 그렇소."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"그녀가 *산다*고는 할 수가 없소, 하지만 그녀의 혼령은 아직도 존재하오..."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"그건..." 그는 공포에 질린 듯하다. "그녀는 해방되어야만 하오!"~ */
  IF ~~ THEN REPLY #30348 /* ~"만약 그렇게 할 방법만 찾을 수 있다면 나는 그렇게 할 것이오."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"나는 이미 그녀를 해방하거나 그녀와 운명을 함께 하겠다고 맹세했소."~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"당신에게 약간의 관대함이라도 있다면 내 딸을 구해주시오. 이미 일어난 일은 어떻게 해볼 도리가 없소, 그러니 나는 당신에게 그 아이의 영혼이 안식을 취할 수 있도록 해 달라고 부탁하겠소. 만약 그렇게 해준다면 나도 당신이 저지른 일을 용서할 방도를 찾도록 하겠소."~ */
  IF ~~ THEN REPLY #30351 /* ~맹세: "나는 당신 딸이 편안히 잠들 수 있도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"최선을 다 하겠소."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"난 그럴 수 없소..."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"그럼 좋소. 그만 떠나시오. 나는 홀로 생각에 잠기고 싶소." ~ */
  IF ~~ THEN REPLY #30355 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"그럼 다원 우주 당신에게 정의의 심판을 내리기를 기원하겠소!" 이언니스는 이를 악문다. "내 딸이 겪은 고통이 백 배가 되어 당신에게 되돌아가기를!"~ */
  IF ~~ THEN REPLY #30357 /* ~"말조심하시오, 이언니스, 아니면 생각보다 훨씬 빨리 당신 딸을 만나게 될 테니."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"더 이상 얘기할 건 없는 것 같소. 안녕히 계시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"모르겠소... 그 아이의 유해는 발견되지 않았소." 이언니스의 얼굴이 핏빛이 된다, 그리고 그는 두 주먹을 불끈 쥔다. "그리고 가장 날 *미치게* 만드는 것은... 내가 그녀가 왜 집을 떠났고, 그녀에게 무슨 일이 일어났으며, 그녀의 유해가 어디 있는지 영원히 알지 못할 것이라는 사실이오!"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"당신은 데이오나라와 이 사내의 여행의 행선지가 어디였는지 아시오?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"내가 이런 질문을 하는 걸 용서하시오, 하지만 만약 당신이 그녀의 유해를 본 적이 없다면, 그녀가 죽었다는 건 어떻게 알았소?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"그렇소, 관이 기념 홀에 안치되도록 부탁한 건 바로 나요. 물론 그 곳에 그녀의 유해는 없소, 하지만 나는 관이 내 딸의 영혼이 집으로 돌아오는 길을 찾는 것을 돕기 위한 이정표 구실을 해주길 바랬소."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"그건 효과가 있었소... 그녀의 혼령이 이제 그 곳에 있소."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"당신은 데이오나라와 이 사내의 여행의 행선지가 어디였는지 아시오?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"당신은 그녀가 어떻게 죽었는지 아시오?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"만약 유해가 없다면, 그녀가 죽었다는 건 어떻게 알았소?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"알겠소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"당신 딸의 죽음을 애도하오. 그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"뭐... 뭐라고?!" 이언니스는 이성을 거의 잃은 것 같다. "당신은 방금 뭐.. 뭐라고 했소?"~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"그녀의 혼령은 이제 기념 홀에 머무르고 있소."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"그녀의 혼령은 이제 기념 홀에 머무르고 있소. 나는 그녀와 잠시 얘기를 나누었는데, 그녀는 고뇌하는 듯했소."~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"나는 아무 말도 하지 않았소. 데이오나라에 대해 다시 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"아무 것도 아니오. 내가 말을 잘못 했소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"나는 애도의 뜻을 표한다고 했소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"당신이라고?! 이언니스는 당신을 아래위로 훑어본다. "당신이 바로 그 사람이나... 기억을 잃어버렸다는 거요?" 이언니스는 똑바로 선다. 이언니스는 전투에 대비하려는 사람 같다. "당신은 잊어버렸다고 하나... 그 일은 그다지 오래 전 일이 아니오. 어떻게 그럴 수가 있소?"~ */
  IF ~~ THEN REPLY #30384 /* ~"내 상태는 기이하오... 나는 한동안 정신을 잃곤 하오... 당신이 나나 당신 딸에 대해 해줄 수 있는 얘기는 어떤 것이든 내게 매우 귀중하오." ~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"내가 말을 잘못 했소. 나는 내가 그 사람이라고는 생각하지 않소. 만약 내가 당신 딸과 여행을 했다면 난 틀림없이 그녀를 기억하고 있을 거요."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"이러한 질문들에는 이제 지쳤소. 안녕히 계시오."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"내가 우려했던 대로요." 이언니스는 한숨을 쉰다. "당신 얘기에는 진실미가 있소... 그 아이는 이 도시에서 온실의 화초처럼 자라났고, 가장 상태가 좋았을 때도 그녀는 허약했소." 그는 희망에 찬 표정으로 당신을 쳐다본다. "당신은 그 아이의 유해가 어디 있는지 아시오? 나는 제대로 된 장례식을 치러 주고 싶소." ~ */
  IF ~~ THEN REPLY #30388 /* ~"그녀의 유해는 전혀 남지 않았소... 그녀의 병은 소모성의 병이었기 때문에 그녀가 죽었을 때 별로 남은 것이 없었소."~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"아니, 난 분명히 들었소. 당신은 내 딸이 어떻게 되었는지 알고 있다고 말했소. 당신은 말해야만 하오. 당장!" 이언니스는 얼굴을 한층 더 찌푸린다. "아니면 하모니움 순찰대를 불러 강제로라도 대답을 듣고야 말겠소."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~진실: "당신 딸을 죽인 건 바로 나요. 나는 그녀의 나에 대한 사랑이 그녀를 그 곳에 묶어둘 거라는 생각에서 그녀를 음의 에너지계에서 살해했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~나는 데이오나라의 아버지인 이언니스에게 고백을 하고 그의 딸에게 무슨 일이 일어났는지를 말해주었다. 내가 지은 죄는 중대하다, 하지만 그녀의 운명에 대해 알게됨으로서 그가 다소나마 정신적인 안정을 얻기를 바랄 뿐이다. ~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~절반의 진실: "그녀는 배신을 당해 음의 에너지계에서 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~진실: "당신 딸을 죽인 건 바로 나요. 나는 그녀의 나에 대한 사랑이 그녀를 그 곳에 묶어둘 거라는 생각에서 그녀를 음의 에너지계에서 살해했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~나는 데이오나라의 아버지인 이언니스에게 고백을 하고 그의 딸에게 무슨 일이 일어났는지를 말해주었다. 내가 지은 죄는 중대하다, 하지만 그녀의 운명에 대해 알게됨으로서 그가 다소나마 정신적인 안정을 얻기를 바랄 뿐이다. ~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~절반의 진실: "그녀는 배신을 당해 음의 에너지계에서 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~거짓말: "그녀는 여행 도중에 병이 났소... 그녀는 시길에서 오랜 시간을 보낸 탓에 다른 차원의 환경에 적응할 준비가 덜 되었던 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~나는 데이오나라의 아버지인 이언니스에게 그의 딸에게 무슨 일이 일어났는지에 대해 거짓말을 했다. 난 내 거짓말이 그 노인의 정신을 다소나마 안정시키기 바란다. 아마 그는 도저히 진실을 감당하지 못했을 것이다. 그리고 난 내가 다원 우주에서 일어나는 *모든* 재앙의 원흉이라고 비난하는 사람이 한 사람 더 느는 건 원치 않는다.~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"경비병들을 부르고 싶소? 어디 해보시오. 내 기준으로 사망자 명단은 아직 절반도 차지 않았으니까."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"당신은 왜 그런 짓을 한 거요?! 그건 내 딸의 삶이지--"~ */
  IF ~~ THEN REPLY #30398 /* ~"당신 딸의 목숨을 가지고 뭘 어떻게 하는가는 내 자유였소. 그녀는 자신의 목숨을 내 손에 맡김으로서 내게 그럴 권한을 주었던 셈이오."~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"나는 당신과 언쟁을 하는 데 지쳤소. 조용히 하지 않으면 딸처럼 황천으로 가게 될 거요."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~이언니스의 얼굴이 분노로 일그러진다. "이... 시길산 똥개 같으니! 내 딸을 아무런 양심의 가책도 없이 살해하고선 이제 한밤의 흡혈귀처럼 돌아와 감히 나를 다시 협박해?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"내가 너무 성급하게 말을 했소. 사과하리다."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"난 감히 그럴 생각인데. 그리고 난 내 명단에 시체를 더 올리는 걸 주저할 생각이 없소. 그래 어떻게 할 거요, 늙은이?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"비유적으로 말하고 있는 것이길 바라겠소!" 이언니스는 격노한 것 같다. "그렇다면 난 당신 말장난에 허비할 시간은..."~ */
  IF ~~ THEN REPLY #30462 /* ~"아니오, 내 말은 문자 그대로요. 그녀의 혼령은 이제 기념 홀에 머무르고 있소."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"아니오, 내 말은 문자 그대로요. 그녀의 혼령은 이제 기념 홀에 머무르고 있소. 나는 그녀와 잠시 얘기를 나누었는데, 그녀는 고뇌하는 듯했소."~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"그렇다면 사과하리다... 내게 데이오나라에 대해 다시 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"내가 말을 잘못 했소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"내가 실언을 했소. 삼가 조의를 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"내 딸이... 혼령이 되었소?!"~ */
  IF ~~ THEN REPLY #30468 /* ~"그렇소."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"그렇소, 나는 그녀와 잠시 얘기를 나누었는데, 그녀는 고뇌하는 듯했소."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"아니오, 내가 착각을 한 것 같소. 내게 데이오나라에 대해 다시 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"내가 말을 잘못 했소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"내가 실언을 했소. 삼가 조의를 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"나... 나는... 그녀를 찾아가 내가 그녀와 교신을 할 수 있는지 알아보고, 무엇이 그녀를 그런 상태에 머물게 했는지 알아내야겠소... 어떻게 당신은 그녀가 혼령이 된 걸 아시오?"~ */
  IF ~~ THEN REPLY #30485 /* ~"나는 시체안치소에 있는 그녀의 관대 부근에서 유령과 같은 형체를 흘끗 보았소. 난 그것이 그녀일 거라고 생각했소."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"나는 그녀와 잠시 얘기를 나누었는데, 그녀는 고뇌하는 듯했소."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"아니오, 내가 착각을 한 것 같소. 내게 데이오나라에 대해 다시 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"내가 말을 잘못 했소. 괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"내가 실언을 했소. 삼가 조의를 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"나는 가능한 한 빠른 시일 내에 그 곳으로 가서 그 일을 직접 조사할 것이오." 그는 고개를 끄덕인다. 만약 당신 말이 사실이라면 난 당신에게 큰 빚을 진 셈이오..."~ */
  IF ~~ THEN REPLY #30491 /* ~"그건 중요하지 않소... 내게 데이오나라에 대해 다시 얘기해주시오."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"그럼 좋소. 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"그 빚은 나중에 받도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"당신이... 그녀와 얘기를 나누었다고?!" 이언니스는 가면 갈수록 더 혼란스러워하는 것 같다. "무엇이 그녀가 고민하도록 만들고 있소?"~ */
  IF ~~ THEN REPLY #30495 /* ~"잘 모르겠소. 그녀가 하는 말을 알아들을 수가 없었소."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"그건 나인 듯하오. 그녀는 그녀가 날 사랑했고 나도 그녀를 사랑했었으나... 내가 그녀를 저버렸다고 했소."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"그건 나인 듯하오. 그녀는 그녀가 날 사랑했고 나도 그녀를 사랑했었으나... 내가 그녀를 저버렸다고 했소."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"알겠소. 아마..." 이언니스는 얼굴을 찌푸리며 당신을 살핀다... 그의 얼굴은 마치 돌처럼 딱딱한 표정을 하고 있다. "당신이 내 딸과 함께 시길을 떠난 사람이오? 당신이 그 아이의 죽음을 초래한 여행에 그 아이를 데려간 거요?" ~ */
  IF ~~ THEN REPLY #30498 /* ~"잘 모르겠소... 내가 그 사내였을 수도 있으나, 난 너무 많은 것을 잊어버렸소."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"난 그렇게 생각하지 않소. 그녀는 히스테리에 걸린 듯했으며 자신의 주변에 대해 별로 알지 못했소. 아마 당신이 그녀를 찾아가 보는 게 좋을 듯하오."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"나는 이 도시에서 변호사 생활을 하며 무수한 거짓말쟁이들을 보았소." 이언니스는 당신을 골똘히 살펴본다. "당신은 그런 위인 같지는 않소... 적어도 이 문제에 있어서는." 그는 한숨을 쉰다. "만약 당신이 진정 기억을 하지 못한다면, 여행 중에 당신과 내 딸에게 일어난 일이 당신에게 큰 정신적 외상을 남긴 모양이오."~ */
  IF ~~ THEN REPLY #30501 /* ~"동의를 하고 싶소."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"그럼 내게 이 약속을 해주시오. 만약 당신에게 기억이 돌아와 내 딸에게 무슨 일이 일어났는지 알게 된다면, 내가 적어도 이 문제에 대해서는 마음의 평온을 찾을 수 있도록 돌아와서 내게 알려 주시오."~ */
  IF ~~ THEN REPLY #30503 /* ~맹세: "그렇게 하리다."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~거짓말: "그렇게 하리다."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"만약 그녀에게 무슨 일이 일어났는지 알게 되면 돌아오리다... 만약 가능하다면."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"알겠소..." 이언니스는 얼굴을 찌푸린다. "내 마음을 편하게 해주어 고맙소. 나는 그녀가 고통스럽지 않게, 그리고 신속하게 눈을 감았기를 바랄 뿐이오."~ */
  IF ~~ THEN REPLY #30507 /* ~"그건 걱정하지 않아도 좋소. 그녀의 죽음은 신속했으며 고통도 없었소. 병은 예고도 없이 찾아와 마치 비수처럼 그녀를 찔렀소. *정말* 불행한 일이오."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"그렇소..." 이언니스는 고개를 끄덕인다. "내 딸에게는 예언자의 피가 흐르고 있었소, 하지만 그 아이의 능력은 불안정했소. 때로 그 아이는 어떤 일이 일어나기 전에 그 일에 대해 미리 알 수가 있었소... 예지 능력이 있었던 거요. 그 아이는 운명의 실을 따라가면서 시간 그 자체를 볼 수 있었소..." ~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"이언니스, 난 데이오나라에게 무슨 일이 일어났는지를 알아냈소."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"당신은 그녀가 센세이트였다고 했소?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"당신은 그녀와 함께 여행한 남자에 대해 아는 것이 없소?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"당신은 이 여행에서 그녀의 행선지가 어디였는지 아시오?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"당신은 그녀가 어떻게 죽었는지 아시오?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"내가 이런 질문을 하는 걸 용서하시오, 하지만 만약 당신이 그녀의 유해를 찾지 못했다면, 그녀가 죽었다는 건 어떻게 알았소?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"알겠소. 그 화재에 대해 얘기해주시오."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"괜찮다면 다른 일을 좀 도와주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"흠... 그건 대단히 유용한 재능이었을 것 같소... 특히 그녀와 함께 여행한 사람에게 있어. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"아니, 난 분명히 들었소. 당신이 알고 있는 것을 모두 내게 털어놓아야 하오. 당장!" 이언니스는 얼굴을 한층 더 찌푸린다. "아니면 하모니움 순찰대를 불러 강제로라도 대답을 듣고야 말겠소."~ */
  IF ~~ THEN REPLY #30519 /* ~"내 상태는 기이하오... 나는 한동안 정신을 잃곤 하오... 나는 당신에게 당신 딸에 대해 거짓말을 하지 않았소. 단지 난 나 자신과 내 인생에 대한 너무나도 많은 것들을 잊어버렸을 뿐이오."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~그의 목뼈를 부러뜨린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"경비병들을 부르고 싶소? 어디 해보시오. 그들도 당신만큼이나 쉽게 죽을 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"아!" 이언니스는 고개를 끄덕인다. 당신은 진실을 말하고 있는 것 같소... 그럼 당신은 내 딸아이를 정말로 알고 있었던 모양이오." 그는 한숨을 쉰다. "잠깐 기다리시오. 당신에게 무엇이 남겨졌는지 확인하리다."~ */
  IF ~~ THEN REPLY #30525 /* ~"기다리겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~나는 데이오나라의 유언을 그녀의 아버지로부터 받았다. ~ */ GOTO 31
END
