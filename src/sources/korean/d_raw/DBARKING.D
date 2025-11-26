// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~이 미친 듯한 눈매를 지닌 사내는 몸을 구부리고 으르렁거리고 있다. 그는 오랫동안 머리를 손질하지 않은 것 같다... 머리가 얼마나 긴지 그의 눈을 베일처럼 가릴 지경이다. 그의 긴 콧수염은 기름과 땀으로 뒤범벅이 되어 있으며, 그 끝은 늘어져서 턱수염과 뒤엉킨 상태이다. ~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"안녕하시오."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~그에게 으르렁거린다.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~그에게 으르렁거린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~그에게 으르렁거린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~그를 그냥 내버려 둔다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~그를 그냥 내버려 둔다.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~사내는 으르렁거리는 걸 멈추고 그의 눈을 가리고 있는 긴 머리를 말라빠진 손으로 치운다. 그러자 그의 머리에서 기묘한 암갈색 벌레들이 떨어진다. 머리를 치우자 드러난 그의 피부는 달처럼 창백하며 주름투성이다. 그의 두꺼운 눈썹은 그거 당신을 바라보자 V자 모양이 된다. "손, 달로 날아 난, 함께?"~ */
  IF ~~ THEN REPLY #13843 /* ~"어, 오늘은 아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'당신 손을 잡고 문으로 날아간다?' 오늘은 사양하겠소, 내 친구."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'당신 손을 잡고 문으로 날아간다?' 오늘은 사양하겠소, 내 친구."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"문-문즈-스눔-눔?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~그에게 으르렁거리다가 짖기 시작한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~마치 그를 연구라도 하듯이 고개를 한쪽으로 기울인다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~사내는 열심히 고개를 끄덕이고 어린이처럼 손뼉을 친다. "푸른 기름으로 답을 반으로! 알아! 해 질문을!" 이 말을 끝내고 그는 떨리는 목소리로 길게 뽑으며 짖기 시작한다. ~ */
  IF ~~ THEN REPLY #13851 /* ~"자, 진정하시오.당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~사내는 고개를 뒤로 젖히고 *울부짖는다.* 그 소리가 어찌나 끔찍한지 당신은 손으로 귀를 막으나, 그것으로는 충분하지 않다. 당신이 귀를 막고 있는 동안 울부짖음은 비명으로 변한다. 소리는 당신 머리로 뚫고 들어와 당신 해골 안에서 울려 퍼지며 당신의 정신의 파편을 갉아먹는다. 그 견딜 수 없는 소리 때문에 당신은 말을 할 기력조차 낼 수가 없다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~돌아서서 그를 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~돌아서서 그를 그냥 내버려 두고 떠난다.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~그는 얼굴을 찡그린다, 그러나 그의 눈썹은 역V자 모양으로 위쪽으로 기울며 기괴한 표정을 만들어 낸다. 당신은 그가 어떻게 그런 표정을 지었는지 알 수가 없다, 하지만 그의 안면 근육이 움직이며 새로운 표정을 만들어 내는 것은 보기에 매우 거북하다. 당신으로선 그가 화가 난 건지, 궁금해 하는 건지, 아니면 양쪽 모두이거나 그 어느 쪽도 아닌지 도무지 알 수가 없다. "하나의 키스 말한다 남자, 답 선호한다 나무 여자 가슴."~ */
  IF ~~ THEN REPLY #13856 /* ~"어, 오늘은 아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"흥?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~노래를 즉석에서 만든다: "한 사람, 한 사람, 그들이 숲속으로 간다... 숲의 여자의 마음은 결코 떠나지 않으며 눈 속에서 웃고 있다."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'한 번의 키스는 여자의 마음을 드러내나, 당신이 원하는 건 남자의 대답이다?' 그럼 좋소, 하지만 이 사실을 아시오: 내 답은 질문이오, 그리고 당신의 답이 내가 원하는 거요."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'한 번의 키스는 여자의 마음을 드러내나, 당신이 원하는 건 남자의 대답이다?' 그럼 좋소, 하지만 이 사실을 아시오: 내 답은 질문이오, 그리고 당신의 답이 내가 원하는 거요."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~사내는 당신 목소리에 매료된 듯하다. 당신이 단어 하나를 말할 때마다 그에 눈에서 불빛이 깜박인다. "미친 듯 짖는 자 나, 나, 원해, 질문, 당신 해, 해 당신."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"당신은 누구... 또는 어떤 존재요?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~"당신은 카오스맨의 일원이오?~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"내 질문은 이거요: 당신은 굶주려 짖는 개의 일원이오?~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"내가 카오스맨의 일원이 될 수 있겠소?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"일원 될 수 있나 나 카오스맨?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"일원 될 수 있나 나 카오스맨?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"나는 파로드란 사람을 찾고 있소. 그에 대해 아시오?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 어디 가면 그것을 찾을 수 있는지 아시오?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"내 일지들에 대해서 당신이 한 얘기를 다시 들려줄 수 있겠소?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"카오스맨의 일원이 되면 어떤 혜택이 있소? 무슨 힘이나 특수 능력은 없소?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"카오스맨이 멤버들에게 파는 물건들을 볼 수 있겠소?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"어... 질문 없소 오늘은. 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"어... 질문 없소 오늘은. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~그는 축제에 들뜬 아이처럼 손뼉을 친다, 그리고 울부짖듯 소리친다. "질문! 질문!"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"이 질문을 피하지 마시오: 당신은 누구... 또는 어떤 존재요?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"이 질문을 피하지 마시오: 카오스맨의 일원이오?~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"내 질문은 이거요: 당신은 굶주려 짖는 개의 일원이오?~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"내가 카오스맨의 일원이 될 수 있겠소?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"일원 될 수 있나 나 카오스맨?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"일원 될 수 있나 나 카오스맨?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"나는 파로드란 사람을 찾고 있소. 그에 대해 아시오?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 어디 가면 그것을 찾을 수 있는지 아시오?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"내 일지들에 대해서 당신이 한 얘기를 다시 들려줄 수 있겠소?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"카오스맨의 일원이 되면 어떤 혜택이 있소? 무슨 힘이나 특수 능력은 없소?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"카오스맨이 멤버들에게 파는 물건들을 볼 수 있겠소?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"어... 질문 없소 오늘은. 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"어... 질문 없소 오늘은. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~그는 얼굴을 찡그리고, 눈을 감았다가 다시 뜬다. 다시 얘기를 시작했을 때 그의 목소리는 평탄하고 똑바르다... 마치 다른, 보다 정상적인 사람이 말을 하는 것 같다. 어쩐지 등골이 오싹해진다. "둘 이상이 없어졌소, 그러니 당신은 둘 이상을 찾아야 하오. 당신의 각 부분이 하나씩 가졌소, 그러니 둘 이상을 찾아야만 하오." 그는 자기 자신에게 놀란 듯 잠시 눈을 깜박이고 고개를 젓는다, 그리고 거북하게 웃는다. ~ */
  IF ~~ THEN REPLY #13889 /* ~"적어도 그들 중 하나가 어디 있는지 얘기해줄 수 있겠소?"~ */ JOURNAL #58924 /* ~나는 불타는 시체 바 밖에 있는 미친 듯이 짖는 자와 '말을 했다'. 놀랍게도 그는 내 일지의 소재를 알고 있었을 뿐만 아니라, 하나 이상의 일지가 존재한다는 이야기까지 해주었다. 그의 말에 의하면 일지들 중 하나는 도시 지하  깊숙한 곳에 봉인된 돌들이 우는 묘지의 벽에,  또 하나는 센세이트 공회당의 내 객실 벽장에 있으며, 이들 말고도 아직 더 있다고 한다. 나는 그의 정보를 얼마나 믿어야 하는지 모르겠다, 그러나 일지에 대해 이야기했을 때 그는 제정신인 것 같았다. ~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~그는 이의를 제기하려는 듯하다, 그러나 그의 왼쪽 주먹이 갑자기 올라와 그의 관자놀이를 갈긴다. 그는 이에 응답하듯 울부짖는다, 그리고 갑자기 멈춘 후 눈을 깜박인다. "하나는 센세이트의 홀이 있는 당신 객실 선반에 있소, 그리고 또 하나는 시 지하 깊숙한 곳의 돌이 우는 장소에 봉인되어 있는 무덤 벽에 있소. 다른 것들은..." 그가 말을 끝내기 전에 그의 오른쪽 주먹이 올라와 그의 얼굴을 갈겨 그가 다시 울부짖도록 만든다. 그는 자기 자신에게 놀란 듯 잠시 눈을 깜박이고 고개를 젓는다, 그리고 거북하게 웃는다. ~ */
  IF ~~ THEN REPLY #13890 /* ~"센세이트의 홀? 그게 어디요?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"시 지하의 무덤. 어디요?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"이 다른 일지들은 어디에 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~미친 듯 짖는 자는 손을 들어 올린다. 그는 자신이 방금 한 말을 기억하지 못하는 것 같다. ~ */
  IF ~~ THEN REPLY #13896 /* ~"당신은 그들 중 하나가 도시 지하의 석관 안에 있다고 했소? 그게 어디요?"~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"당신이 얘기한 그러한 다른 일지들은 어디에 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"그럼 관두시오. 내 스스로 그것을 찾도록 하겠소."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"그럼 관두시오. 내 스스로 그것을 찾도록 하겠소."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~미친 듯 짖는 자는 잠시 공포에 질린 듯하다, 그러더니 기대에 찬 표정으로 위쪽을 가리킨다. "어... 저기?" 그는 침을 삼킨다. 그는 알지 못하는 것 같다, 그리고 왠지 당신은 그의 말을 믿는다. ~ */
  IF ~~ THEN REPLY #13901 /* ~"당신은 그들 중 하나가 센세이트의 홀에 있다고 했소? 그게 어디요?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"당신이 얘기한 그러한 다른 일지들은 어디에 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"그럼 관두시오. 내 스스로 그것을 찾도록 하겠소."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"그럼 관두시오. 내 스스로 그것을 찾도록 하겠소."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~미친 듯 짖는 자는 당신을 조심스럽게 보며 어깨를 으쓱한다. "아마 다른 장소?" 그는 침을 삼킨다.~ */
  IF ~~ THEN REPLY #13906 /* ~"당신은 그들 중 하나가 센세이트의 홀에 있다고 했소? 그게 어디요?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"당신은 그들 중 하나가 도시 지하의 석관 안에 있다고 했소? 그게 어디요?"~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"그럼 관두시오. 내 스스로 그것들을 찾도록 하겠소."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"그럼 관두시오. 내 스스로 그것들을 찾도록 하겠소."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~미친 듯 짖는 자는 어깨를 으쓱하고 단조로운 목소리로 대답한다. "승산? 불공평? 이상하지 않아? 안 잃었어. 안 도와..." 그는 헛기침을 하려는 듯 으르렁거린다. "먼저 당신이 그를 잃은 후 내게 다시 물어보면 승산이 있겠소?"~ */
  IF ~~ THEN REPLY #13911 /* ~"그를 잃으려면 먼저 난 그를 찾아야만 하오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"그럼 관두시오. 내 스스로 그를 찾도록 하겠소."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"그럼 관두시오. 내 스스로 그를 찾도록 하겠소."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"케이-오쉬!" 그는 발음하기가 어려운 듯 더듬거린다. "어떤 사람은 카오시텍츠라고 하나 난 스텍티소액스라고 해. 사람 아냐. 아냐 사람, 사람 네, 코 셋은 네." 그는 쭈그리고 앉아 몸을 앞뒤로 흔들며 어린이 목소리 같은 소프라노로 노래를 부른다. "카오스맨, 카오스맨, 집으로 껑충, 당파 그건, 하지만 우린 혼자."~ */
  IF ~~ THEN REPLY #13914 /* ~"그래, 당신은 카오스맨들 중 하나군. 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~그는 목이 터져라 짖기 시작한다. 그의 입에서 튀어나오는 침을 피하기 위해 당신은 뒤로 물러선다. 잠시 후 그는 짖는 걸 멈추고 쓸쓸하게 울부짖기 시작한다. ~ */
  IF ~~ THEN REPLY #13917 /* ~"답은 '예스'일 것 같소. 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~그는 당신을 곁눈으로 보고 어깨를 으쓱한다, 그리고 몸을 구부려 당신 냄새를 맡는다. "웅크리고... 뻣뻣하고, 여위고... 축축하고, 습기차고... 쿵쿵거리고, 대구..." 그는 콧숨을 몰아쉬고 자기 자신에게 으르렁거린다. "얼간이!"~ */
  IF ~~ THEN REPLY #13920 /* ~"답은 '노'일 것 같소. 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"흠... 일원 될 수 있나 나 카오스맨?~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~당신이 말로 미친 듯이 짖는 자를 당황하게 한 건 이번이 처음이다. 그는 잠시 생각하고 으르렁거린다, 그리고 손가락으로 당신을 찌른다. "혼돈의 사람 이미 당신! 이 모두 준비 당신 됐어!"~ */
  IF ~~ THEN REPLY #13924 /* ~미소를 짓고 눈을 좁게 뜨면서 말한다: "정-확-히."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"아, 깜빡했소. 미안하오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"해볼 가치는 있겠군. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"해볼 가치는 있겠군. 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~마치 누군가가 짖는 자의 해골에 횃불이라도 붙인 듯 그는 갑자기 눈을 크게 뜨고 미소짓는다. 미소는 싱긋 웃음으로, 그리고 다시 조소로 바뀐다. 그는 당신 앞에서 신나게 뛰놀며 춤추기 시작한다. "똑똑해! 딱딱해! 뻑뻑해!" 그는 당신 어깨를 양손으로 두드리고 하늘을 향해 짖는다. "다시 당신 카오시텍트! 두 번! 세 번! 당번!"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"난 이, 난 카오시텍트."~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"이는 나, 카오시텍트는 나!~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~짖는 자는 당신을 똑바로 쳐다볼 수 있을 있도록 춤을 멈춘다. "당수 당신 곧 될 거야 그런 정신으로는, 그런 생각 치러야 해 대가!" 그는 킬킬 웃으며 두 손을 하늘로 번쩍 든다. "미치광이 왕이 와, 그리고 다원 우주는 뒤집어져!"~ */
  IF ~~ THEN REPLY #13930 /* ~"아마도, 아마도. 하지만 당신에게 물어볼 다른 질문들이 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~짖는 자는 놀란 표정을 짓는다. "당수 당신 됐어, 그런 생각 치러야 해 대가!" 그는 손가락을 가지고 마치 석장으로 가리키듯 당신을 가리킨다. "절해, 당수! 카오스맨의 왕! 난 선언해 당신은 육신의 사내 혼돈의 아내! 이제 말 굴레를 키스해도 좋아!"~ */
  IF ~~ THEN REPLY #13931 /* ~"어... 당수?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"당수는 나! 모두의 말굴레!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~짖는 자는 당신 말을 듣자 당신을 올려다 본 후, 놀란 표정을 짓는다. 그는 후닥닥 일어나 손가락을 가지고 마치 석장으로 가리키듯 당신을 가리킨다. "절해, 당수! 모든 카오스맨의 왕! 난 선언해 당신은 육신의 사내 혼돈의 아내! 이제 말 굴레를 키스해도 좋아!"~ */
  IF ~~ THEN REPLY #13933 /* ~"어... 당수?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"당수는 나! 모두의 말굴레!"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"듣지 마시오 내 질문, 짖는자, 질문 나는 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~짖는 자는 팔짱을 낀다. "혼돈의 왕, 당신은, 당수는 더러운 셔츠처럼 걸치는 이름에 불과해."~ */
  IF ~~ THEN REPLY #13935 /* ~"나는 당수가 되기 싫소."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"당수는 나! 더러운 셔츠 영원히 없다!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~짖는 자는 어깨를 으쓱한 후 장난스럽게 웃는다. "삶처럼, 선택할 수 없어. 최대 최악의 저주를 당신에게!" 그는 눈을 좁게 뜬다. "호칭을 바꿀려면, 정신을 바꿔. 그게 더 쉬워, 당신이 바보 아니면!"~ */
  IF ~~ THEN REPLY #13937 /* ~"글쎄, 내가 당수가 되었는데 아무도 묻지 않는다는 건 공평하지 않소. 이에 대한 규칙이 있어야 할 것 같소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"당수는 나! 전방향으로 세게 나간다!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~짖는 자는 허리를 낮게 구부리고 손가락으로 삼각형 모양을 만든다. "까다로워, 까다로워! 이제 당수 아냐 당신! 공정과 규칙과 법과 그런 완강한 건 당수 정신에 있어선 안돼..." 그는 그것에 대해 잠시 생각한다. "사슬은 풀렸어." 그는 다시 얼굴을 찡그리고 어깨를 으쓱한다. "사슬이 다시 묶였어! 자만 이젠 당수 아냐."~ */
  IF ~~ THEN REPLY #13939 /* ~"자 이제 폐위가 끝났으니 당신에게 뭘 좀 물어봅시다..."~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~당신과 짖는 자는 몇 분간 미친 듯이 뛰놀며 하늘에다 대고 짖는다. 지나가는 사람들은 당시들을 묘한 눈으로 쳐다보고 멀리서 누군가가 조용히 하라고 고함을 지른다. 마침내 짖는 자가 넘어졌다가 일어남으로서 춤은 끝난다.~ */
  IF ~~ THEN REPLY #13941 /* ~"질문할 것이 있소!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"난 질문할 것 없소! 잘 계시오! 계시오 잘!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~그 말을 하자 그의 눈의 인간다운 눈빛이 감돈다. 그는 잠시 하늘을 쳐다본 후, 왼발을 들어 그 밑을 본다. 그는 아무 것도 찾지를 못한다. 그래서 그는 팔을 쭉 뻗고 사팔뜨기처럼 오른쪽 눈으로는 오른손을, 왼쪽 눈으로 왼손을 본다. 그리고 나서 그가 고개를 젓자 두 눈은 원 위치로 돌아가고 그는 당신을 곁눈으로 본다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"나는 이미 갓즈맨의 일원이오, 그러나..."~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"난 이미 더스트맨의 일원이오, 하지만..."~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"난 이미 아나키스트의 일원이오, 하지만..."~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"난 이미 센세이트의 일원이오, 하지만..."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"난 이미 갓즈맨의 일원이오. 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~"난 이미 더스트맨의 일원이오. 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~"난 이미 아나키스트의 일원이오. 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~"난 이미 센세이트의 일원이오. 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"그래... 다음 단계는?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"관두시오. 대신 질문을 좀 하고 싶소..."~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"관두시오. 난 카오스맨이 되고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~짖는 자는 어깨를 으쓱한다. 그는 별로 신경을 쓰지 않는 것 같다. "노-케이, 케이-오, 이봐?"~ */
  IF ~~ THEN REPLY #13954 /* ~"하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"돌아갈 수 없어..." 그는 아직도 곁눈질을 하며 중얼거린다. "옛 당파 안 해 용서..."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"나 이미 카오시텍트 가입. 충성심 없음 옛 당파 갓즈맨."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"나 이미 카오시텍트 가입. 충성심 없음 옛 당파 더스트맨."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"나 이미 카오시텍트 가입. 충성심 없음 옛 당파 아나키스트."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"나 이미 카오시텍트 가입. 충성심 없음 옛 당파 센세이트."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~아나키스트를 위해 카오스맨에 침투하려고 거짓말을 한다: "나 이미 카오시텍트 가입. 충성심 없음 옛 당파."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"난 아직 그걸 할 준비가 되지 않은 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~그는 잠시 혼자서 중얼거린 후 소리친다. "상관없어!" 당신이 미처 반응하기 전에 그의 손바닥이 바람을 가르며 날아와 당신 얼굴을 찰싹 때린다. "만났어 잘! 세 번 함께야 카오스와 당신은!" 그는 당신 얼굴의 부기가 가라앉는 걸 보며 그는 킬킬거린다. 당신에게 방금 그것이 입당식이었으며... 그리고 짖는 자가 그걸 매우 즐겼다는 기묘한 생각이 든다. ~ */
  IF ~~ THEN REPLY #13963 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"그럼 할 것이 있소 당신에게 질문을..."~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~그는 으르렁거린다, 그리고 나서 미소를 지으며 손가락 두 개를 머리 위에 올려 뿔 흉내를 낸다. "없어!" 그는 조소한다, 그리고 손가락을 내린 다음 손을 날개처럼 퍼덕거린다. "전부!" 그는 숨막힐 듯 흐느낀 다음 눈을 닦는다. "수색하면 찾고 찾으면 수색하고..." 그는 손뼉을 친다. "무슨 상관이지? 나이를 찾지 말고 이점을 찾으면, 그것이 당신을 위해 찾아 줄 거야..."~ */
  IF ~~ THEN REPLY #13966 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~짖는 자는 갑자기 관심이 생긴 듯하다. "날 위해 뭐가 있어?"~ */
  IF ~~ THEN REPLY #13968 /* ~"아니, 아니, 난 당신이 뭘 가지고 있느냐고 물었소."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~그에게 당신이 가진 것을 보여준다.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~그에게 당신이 가진 것을 보여준다.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~그에게 당신이 가진 것을 보여준다.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~그는 당신 아이템들을 무관심한 눈으로 본다. "아무 것도 없어! 얼간이 같으니! 쓸모없는 잡동사니!"~ */
  IF ~~ THEN REPLY #13973 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~짖는 자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~그는 기침을 하고 팔짱을 낀다. 그는 그의 긴 머리 뒤에 숨으려는 것 같다. "없어 아무 것도!"~ */
  IF ~~ THEN REPLY #13975 /* ~"그의 정강이를 걷어찬다. 세게.. ~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~짖는 자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~그는 고함을 지른다... "모두! 내겐 모두 다 있어! 그리고 모두 다 있다는 건 아무 것도 없다는 거야, 그러니 나아질 게 없어!" 그는 애처럼 울면서 정강이를 꽉 붙잡는다. "불쌍한 정강이, 불쌍한 정강이, 네가 다치는 건 보고 싶지 않았어..."~ */
  IF ~~ THEN REPLY #13978 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~짖는 자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~짖는 자의 정신은 당신이 가진 쥐꼬리들 중 하나에 온통 쏠려 있다. 그는 당신 손아귀에서 쥐꼬리 하나를 빼낸 다음 그것이 몸부림치는 벌레라도 되는 것처럼 두 손가락 사이에 끼운다. 그는 번개같은 속도로 그것을 이상한 모양의 매듭으로 만든 후 다시 당신에게 준다. "부저억, 트으을림 어어없어..." 그는 분명치 않게 발음한 후 킬킬거린다. ~ */
  IF ~~ THEN REPLY #13980 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"고맙소, 짖는 자. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~미친 듯이 짖는 자가 보인다. 그는 아직도 자신의 긴 머리털에 휩싸여 웅크리고 있다... 그는 스스로에게 으르렁거리는 데 여념이 없는 듯하다. ~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"퀘스트 피한다, 짖는 자! 눈감고 내 말 듣는다!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"질문, 짖는자! 눈감고 내 말 들어시오!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"질문, 짖는자! 눈감고 내 말 들어시오!"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"듣지 마시오 내 질문, 짖는자, 질문 나는 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~짖는 자를 그냥 내버려 둔다.~ */ EXIT
END
