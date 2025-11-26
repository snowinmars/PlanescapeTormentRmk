// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*마침내." 나는 그가 깨어나는 것을 기다리다가 지쳐서 다시 죽는 줄 알았소."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"내게 말할 때는 조심을 하시오, 이 미친 쓰레기 같으니. *당신*이 다원 우주 전역에 뿌려 놓은 함정들을 생각하면 그가 여기까지 온 것 자체가 기적이오. 내가 과거로 가서 당신의 그 비참한 생에 종지부를... "~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"젠장, 그는 기억을 잃었소! 염병할! 그는 이제 우리에게 소용이 없소!"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"나는 내 인내심의 한계에 도달했소! 조용하지 않으면-"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"우리에게는 시간의 여유가 별로 없소. 우리의 적이 우리를 사냥하고 있는 것은 명백하오, 그러니 여기서 한 순간이라도 허비할 수가 없소.우리는 그가 깨어나기를 충분하고 남을 만큼 기다려 주었소. 이제 내가 가서 그와 얘기를 하겠소."~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~눈 앞에 있는 사람은 당신과 닮았다, 그러나 그는 마치 자신이 인간 이상의 존재나 되는 것 같은 태도를 하고 있다. 그의 눈은 당신을 유심히 바라보고 있다. 당신은 그를 살피면서, 그 역시 당신을 살피고 있다는 인상을 받는다, "그래... 결국 이렇게 되었군."~ */
  IF ~~ THEN REPLY #62918 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"나는 내 이름을 당신이나 다른 누구에게도 알려 줄 생각이 없소." 남자의 목소리는 당신 목소리처럼 거칠다, 그리고 그것이 당신 귀에는 기묘하게 들린다. "그리고 '내가 누구냐'에 대해서는 당신 자신에게 물어보는 것이 좋을 거요 - 당신은 내 화신들 중 하나요. 당신은 내가 남긴 단서들의 인도 덕에 여기까지 오게 된 거요."~ */
  IF ~~ THEN REPLY #62920 /* ~"우리가 각기 다른 화신들이라고? 그게 어떻게 가능하오?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~당신이 다가가자 화신은 냉혹한 시선으로 쳐다본다. 그는 당신의 약점을 찾고 있는 것 같다.~ */
  IF ~~ THEN REPLY #62922 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"만약 당신이 내 일부라면 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~화신을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~화신은 잠시 침묵한다, 그리고 경멸하는 눈초리로 당신을 바라본다.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"당신의 그 끝없는 질문 - 의미와 답을 찾기 위한 필사적인 몸부림은 정말 가증스럽소." 사내의 목소리는 마치 도끼와 같다, 그리고 분노가 그의 얼굴을 스치고 지나간다. 질문의 시간은 지나갔소, 이제 당신은 내 말에 귀를 기울여야 할 거요. 나는 이 요새에 도달한 최초의 사람이오, 그리고 정확한 전후사정은 모르겠지만 여기서 우리를 기다리고 있는 자에게 패배를 당했소. 하지만 놈이 내게 다시 이길 수는 없을 거요."~ */
  IF ~~ THEN REPLY #62927 /* ~"당신은... 이 곳에 잠복해 있는 것이 무엇이든 간에 그것과 싸우려는 생각인 것 같소."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~사내는 묘한 표정으로 당신을 본다, 그리고 당신을 유심히 살핀다. "물론이오, 그것이 지금 우리가 이야기를 하고 있는 유일한 이유니까. 당신은 내 육신이 되어야만 하오 - 하지만 당신 정신은 *내* 정신이 되어야만 하오. 내 말을 이해하겠소?" . ~ */
  IF ~~ THEN REPLY #62929 /* ~"당신은 내 정신을 지배할 생각이란 말이오?"~ */ JOURNAL #68253 /* ~수정을 만진 후 깨어난 나는 내가 어떤 방 안에 갇혔다는 사실을 발견했다. 내 화신들이 나를 둘러싸고 있었으며, 그들 중 하나인 실용적인 화신은 우리들 중 *한 사람*만 이 곳을 떠날 수 있다고 말했다. 그는 우리들 중 하나에게 다른 셋이 자신의 의지를 버리고 굴복하거나, 아니면 우리들 중 하나가 다른 셋을 죽여 하나로 융합해야 한다고 말했다. 우선 상황 파악을 하고 이 문제를 풀어봐야 할 것 같다... 아마 다른 화신들과 얘기를 해보면 무슨 수가 생길지도 모른다.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"그렇소." 그는 못이 박힌 벽들을 둘러보더니 다시 돌아서서 당신을 마주본다. "우리는 이 곳을 각자 떠날 수가 없소. 오직 한 명만이 나갈 수가 있소."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"그러면 어떻게 해야 한다는 거요?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"무슨 얘기를 하는 거요?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"무슨 얘기를 하는 거요?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"Comment proposes-tu que nous proc?ions ?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"당신의 자신의 의지 - 당신의 지식과 기술을 내게 넘겨 주어야 하오. 당신이 살면서 모은 지식과 기술이라고 해봐야 대수롭지 않겠지만, 그래도 쓸모가 있을지 모르니까." 그는 다시 당신을 평가한다. "궁극적으로 내 총체적인 힘의 극히 일부에 불과하겠지만 쓸 데는 있소."~ */
  IF ~~ THEN REPLY #62933 /* ~"만약 내가 당신에게 내 의지를 내맡기지 않겠다면?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"어떻게 하면 내 의지를 당신에게 내맡길 수가 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"이 문제에 있어 당신에게는 선택의 여지가 없소. 당신은 이 곳을 어떻게 떠나야 하는지 모르오. 하지만 나는 아오. 만약 당신이 내게 항복하기를 거부한다면, 나 또한 당신에게 항복하기를 거부하겠소. 그렇게 되면 우리들 중 그 누구도 이 곳을 떠날 수가 없소. 오직 한 명만이 나갈 수 있으나, 그건 *당신*이 결코 아니오."~ */
  IF ~~ THEN REPLY #62939 /* ~"난 당신을 *죽일* 수도 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"어떻게 하면 내 의지를 당신에게 내맡길 수가 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"시도해 보시오." 사내는 재미있어 하는 것 같다. "당신은 내게 이길 힘도 없고, 내가 당신과 융합하도록 강제할 의지력도 없소. 나는 당신을 죽이고 이 곳을 탈출하고 싶진 않지만, 우리의 자유를 위해서라면 그다지 큰 희생은 아니오. 우리가 합치면 내가 더 강해질 수 있는데, 우리들 중 하나가 죽는 것은 득책이 아니오."~ */
  IF ~~ THEN REPLY #62945 /* ~"왜 나와 융합하지 않겠다는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"어떻게 하면 내 의지를 당신에게 내맡길 수가 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"당신과? " 그는 마치 개가 짖듯이 짧게 웃는다. "그래서 얻을 건 아무 것도 없소. 당신은 내가 산 삶의 극히 일부밖에 살지 못했소. 나는 당신 같은 햇병아리에게 내 의지를 맡길 순 없소."~ */
  IF ~~ THEN REPLY #62951 /* ~"어떻게 하면 내 의지를 당신에게 내맡길 수가 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"가장 간단한 방법은, 우리가 서로의 눈을 마주보면서 당신이 스스로의 의지를 포기하는 것이오. 당신은 내게 융합되어, 내 정신을 주축으로 하여 우리는 하나가 될 것이오." ~ */
  IF ~~ THEN REPLY #62956 /* ~진실: "좋소. 내 의지를 당신에게 내맡기겠소."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~허풍: "좋소. 내 의지를 당신에게 내맡기겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~남자는 눈살을 찌푸린다. "예상하지 못했던 일을 당했소. 나는 나와 내 동료들이 도착하자마자 뿔뿔이 흩어지게 되리라고는 생각하지 못했소... 그 후에 일어난 일은... 혼란스럽소."~ */
  IF ~~ THEN REPLY #62962 /* ~"그럼 내가 당신에게 내 자신을 내맡기더라도 실패할 수 있는 거요?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"가망이 없소. 나는 우리가 성공하기 위해 필요한 지식을 지닌 유일한 사람이오. 지금 이 순간은 여러 세기에 걸친 계획의 정점이오. 우리가 여기까지 오기 위해 많은 이들이 고통받고 죽어갔소... 그들의 희생을 헛되게 해서는 안 되오." 그의 마지막 문장은 왠지 꺼림칙하게 느껴진다 - 마치 연설을 하는 듯한 어조로 한 그 말에는 감정이 일절 담겨 있지 않다. ~ */
  IF ~~ THEN REPLY #62966 /* ~"난 당신을 믿지 않소, 그리고 당신에게 내 의지를 내맡기지도 않겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"하지만 당신은 전에 이 곳에 와서... 패배했소."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"왜 내가 당신이 내 정신을 지배하도록 허용해야 하는 거요?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"만약 당신이 내 화신들 중 하나라면, 당신에게 질문할 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"그렇다면 난처하군. 나는 당신에게 내가 아는 것을 알려 줄 생각이 없소. 이는 당신이 결코 이 감옥에서 탈출할 수 없으며, 우리가 우리의 살인자를 찾아 처치함으로서 우리의 자유를 얻을 수도 없다는 뜻이오." 사내의 목소리가 부드러워진다. "만약 당신이 나와 합치면, 우리는 이 곳에서 탈출할 수 있을 뿐만 아니라, 내가 가진 지식 모두를 가질 수 있게 될 것이오. 우리는 우리의 적과 대면할 것이며, 내가 그를 무찌를 것이오, 그리고 마침내 우리는 안식을 얻을 것이오."~ */
  IF ~~ THEN REPLY #62972 /* ~진실: "좋소. 동의하오."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~허풍: "좋소. 동의하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"생각해 보겠소. 그 전에 먼저 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"우선 생각을 정리한 후에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"당신을 상대해 주리다 - 단 조금만 더."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"당신이 바로 '슈라'크트'로에서 다콘을 구한 사람이군. 베일로를 감금하고 데이오나라를 죽음으로 내몬 자이기도 하고."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"당신이 바로 '슈라'크트'로에서 다콘을 구한 사람이군. 베일로를 감금한 자이기도 하고."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"당신이 바로 '슈라'크트'로에서 다콘을 구한 사람이군. 데이오나라를 죽음으로 내몬 자이기도 하고."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"당신이 바로 베일로를 감금한 사람이군. 데이오나라를 죽음으로 내몬 자이기도 하고."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"당신이 바로 '슈라'크트'로에서 다콘을 구한 사람이군."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"당신이 바로 베일로를 커스트 지하에 감금한 사람이군."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"당신이 바로 데이오나라를 죽음으로 내몬 사람이군."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"당신이 다콘에게 저서몬의 깨어지지 않은 원을 주었소? 왜?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"'슈라'크트'로에서 다콘을 구한 목적은 무엇이었소?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"당신은 다콘의 칼 때문에 '슈라'크트'로에서 그를 구했소? 왜?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"베일로를 감금한 목적은 무엇이오?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"왜 데이오나라는 죽어야만 했소?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"왜 데이오나라는 죽어야만 했소?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"자카리아에 대해 얘기해주시오."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"이 곳 요새까지 당신과 함께 여행한 궁수는 어떻게 되었소?"~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"당신이 이그너스에게 마법을 가르쳤소?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"시길 지하에 무덤을 만든 건 혹시 당신이 아니오? 함정으로 가득 찬 무덤 말이오."~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"시길 지하에 무덤을 만든 건 혹시 당신이 아니오? 함정으로 가득 찬 무덤 말이오."~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"해골들의 기둥에서 모트를 빼낸 사람이 당신이오?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"우리 이외의 다른 두 사람은 누구요?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"저기 있는 우리의 다른 버전은 누구요?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"저기 있는 우리의 다른 버전은 누구요?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"저기 있는 우리의 다른 버전들은 어떤 사람들이오?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"어떻게 하면 이 곳에서 탈출할 수가 있소?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"당신은 아직도 이 곳에 잠복하는 존재와 싸울 생각이오?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~진실: "나는 당신과 융합하고 싶소."~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~허풍: "나는 당신과 융합하고 싶소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"나는 당신과 융합하지 않겠소. 당신이 나와 융합해야 할 거요."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"당신이 내 등에 문신을 새겼소? 내가 시체안치소에서 일어난 후에 읽은 것 말이오."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"당신이 파로드에게 지하 묘지로부터 청동 구체를 찾아와 달라고 부탁한 사람이오?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"지금은 더 이상 할 말이 없소. 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~남자는 눈을 가늘게 뜬다. "그게 어떻다는 거요? 모두 목적을 가지고 행해진 일이오."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"당신이 다콘에게 저서몬의 깨어지지 않은 원을 주었소? 왜?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"'슈라'크트'로에서 다콘을 구한 목적은 무엇이었소?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"당신은 다콘의 칼 때문에 '슈라'크트'로에서 그를 구했소? 왜?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"베일로를 감금한 목적은 무엇이오?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"왜 데이오나라는 죽어야만 했소?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"왜 데이오나라는 죽어야만 했소?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"깨어지지 않은 원? 그 거짓말의 모음 말이오? 그렇소 , 그걸 만드는 데는 일주일이나 걸렸소 - 그의 신념을 되찾아 주기 위해서는 그것이 필요했소."~ */
  IF ~~ THEN REPLY #63037 /* ~"당신이 그것을 *만들었소*? 하지만 당신은 그에게-"~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"일단 내 생각을 정리한 후에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"아마 그 안에 어느 정도의 진실이 담겨 있을 수도 있소 - 나도 잘 모르오. 내가 아는 건 그것이 매우 지루한 내용이라는 것뿐이오. 하지만 그에게 신념을 되찾아 주기에는 충분했소."~ */
  IF ~~ THEN REPLY #63041 /* ~"왜?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"일단 내 생각을 정리한 후에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"당신의 무지는 가히 경이적이군." 남자는 도저히 믿을 수가 없다는 표정이다. "당신은 그가 손에 들고 다니는 것이 무엇인지도 모른단 말이오? 그가 가지고 다니는 칼은 그의 *생각*에 의해 형성된 것이오. 그러한 도구는 제대로 사용만 한다면, 다원 우주조차도 파괴할 수가 있소..." 그는 생각에 잠긴다, 그리고 그는 곧 역겹다는 표정으로 냉소한다, "하지만 요새에 도착했을 때 기스는 나와 떨어지게 되었고, 나는 그의 칼을 이용할 수가 없었소." 그는 눈살을 찌푸린다. "애석한 일이오."~ */
  IF ~~ THEN REPLY #63045 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"일단 내 생각을 정리한 후에 다시 얘기하도록 합시다."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~그는 피곤하다는 듯 고개를 젓는다. "베일로는 내게 피곤한 존재가 되고 있었소..." 그는 건조한 미소를 짓는다. "머시킬러 개새끼들은 '정의'를 위해서라면 다원 우주 끝까지도 쫓아올 놈들이오 - 그리고 베일로는 그 중에서도 유별나게 끈질긴 사냥개였소." 화신의 목소리가 좀 낮아진다. "그는 가만히 놔두기에는 너무 정의에 가까운 존재였소."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"그는 왜 우리를 사냥했소?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"그는 왜 우리를 사냥했소?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"그는 당신에게 위협이 되었소?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"알겠소. 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"오, 이유는 헤아릴 수도 없이 많소. 그 중 일부는 내 책임이고 나머지는 다른 화신들의 책임이오." 그는 당신이 처음 도착했을 때 울부짖던 화신을 흘겨본다. "미친 화신들 때문에 엉망이 되어버린 삶들이 결코 적지 않소. 우리들 중 일부는 많은... 문제를 일으켰소. 반면 나는 해법을 찾으려고 했소."~ */
  IF ~~ THEN REPLY #63054 /* ~"그는 당신에게 위협이 되었소?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"알겠소. 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"오, 이유는 헤아릴 수도 없이 많소. 그 중 일부는 내 책임이고 나머지는 다른 화신들의 책임이오. 당신도 우리와 함께 함께 있었던 그 미치광이에서 보았듯이, 미친 화신들 때문에 엉망이 되어버린 삶들이 결코 적지 않소. 우리들 중 일부는 많은... 문제를 일으켰소. 반면 나는 해법을 찾으려고 했소."~ */
  IF ~~ THEN REPLY #63058 /* ~"베일로는 당신에게 위협적인 존재였소?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"알겠소. 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"그렇소 - 그렇지 않았다면 난 그를 그냥 죽였을 것이오." 그는 고개를 끄덕인다. "그는 정의 바로 그 자체와 어떤 연결 고리가 있는 것 같소, 그리고 그것은 그에게 우리 같은 불사신들조차 상대할 힘을 주오." 남자는 가벼운 미소를 짓는다. "특히 우리가 행한 불의가 크다면... 그리고 사실 우리는 끔찍한 불의를 수도 없이 행했소."~ */
  IF ~~ THEN REPLY #63062 /* ~"알겠소... 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"데이오나라? 그 여자는 다원 우주를 느낄 수 있는 힘이 조금 있었소, 그리고 그것이 내가 그녀를 필요로 한 이유요. 더스트맨이 열정이 지나치면 삶을 붙잡고 놓아주지 않게 된다고 한 말은 참으로 옳소. 데이오나라가 바로 그런 경우였소 - 내가 기대했던 대로 말이오."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"왜 데이오나라는 죽어야만 했소?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~화신은 울부짖는 자에게 눈길도 제대로 주지 않고 코웃음만 친다. ~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"당신이 날 책망하는 것은 정말 가소롭소." 그는 다시 당신 쪽으로 돌아선다. "악의로 한 짓은 아니었소 - 물론 그녀가 짜증스러웠던 건 사실이지만. 요새에 도착했을 때 그 곳에 오래 머무를 생각은 없었소. 들어가서 그녀를 희생하고는 곧장 돌아올 생각이었소." ~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"왜 당신은 그녀를 죽였소?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"나는 음의 에너지계에서 내 눈이 될 사람이 필요했소, 척후 역할을 하며 내 살인자가 누구인지 알아낼 자가. 이 곳에서는 오직 죽은 자만이 오래 머무를 수가 있소 - 따라서 그 역할을 하기 위해서 데이오나라는 죽어야만 했소. 간단한 일은 아니었지만 성공했소 - 그녀가 당신을 도와주지 않았소?"~ */
  IF ~~ THEN REPLY #63081 /* ~"그녀를 죽일 필요는 없었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"그렇소, 그녀는 날 도왔소. 아마 그건 옳은 일이었을지도 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"이 일에 대해선 더 이상 논의하고 싶지 않소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~잠시 그는 당신을 조용히 쳐다본다, 그리고 이내 그의 얼굴에 냉소가 돌아온다. "그래서 당신은 우리의 살인자와 대적하더라도 패할 수밖에 없는 거요. 당신은 나약하오, 그리고 어떤 일은 꼭 필요하다는 사실을 깨닫지 못하고 있소."~ */
  IF ~~ THEN REPLY #63086 /* ~"그럴 필요는 없었소. 당신은 당신 편의를 위해 그런 짓을 했던 것에 불과하오. 당신은 다른 방법을 찾았어야만 했소."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"당신이 *감히* *날* 나약하다고 하는 거요? 그래 당신은 이 보이지 않는 적을 물리칠 '웅대한' 계획을 세웠지만 결국 작살이 났고, 그 때문에 한 불쌍한 여자만 희생이 됐소. 만약 당신이 처음 이 곳에 왔을 때 제대로만 일을 처리했다면 이런 건 문제도 되지 않았을 거요!"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"이 일에 대해선 더 이상 논의하고 싶지 않소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"감히 내게 *설교*를 하려는 거요?! 늘 우리 곁에는 우리와 함께 길을 걷는 여자들이 있었소 - 데이오나라이든 래벌이든, 아니면 다른 여자든, 그들은 모두 고통을 받았소. 하지만 그건 그들 자신이 선택한 것이었소. 데이오나라는 내가 죽어 달라고 부탁했으면 기꺼이 죽었을 거요. 따라서 그건 범죄가 아니었소."~ */
  IF ~~ THEN REPLY #63091 /* ~"당신과 이 문제에 대해 더 이상 얘기하고 싶지 않소 - 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"궁수? 늙은 주정뱅이 자카리아는 그의 '눈'으로 내가 볼 수 없는 것들을 볼 수 있었소 -  그리고 화살로 그들을 쓰러트릴 수도 있었소."~ */
  IF ~~ THEN REPLY #63094 /* ~"그래서?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"알겠소. 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"어떤 의미에서 나는 이 요새에 장님 상태로 들어오게 된 것이나 마찬가지였소 - 나는 내 살인자가 누구인지 몰랐소, 그래서 나는 적이 내 시야 밖에 있을 경우에 대비해 내가 볼 수 없는 것을 볼 수있는 자가 필요했소." 그는 냉소한다. "하지만 자카리아는 너무 빨리 죽었소. 결국 그는 아무 쓸모도 없었던 셈이오."~ */
  IF ~~ THEN REPLY #63098 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"거의 잊어버릴 뻔했군 - 그래, 그건 정말 헛수고였소." 화신은 짜증이 난 듯하다. "물론 그건 아무런 성과도 없었소. 그럼에도 그걸 만드는 데는 많은 돈과 생명이 들어갔소." 그는 눈살을 찌푸린다. "내가 적이 나타나기를 기다리기보다는 그와 직접 대적하기로 결심한 것은 그것이 실패한 직후였소."~ */
  IF ~~ THEN REPLY #63101 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"모트가 아직도 *살아* 있소?" 화신은 잠시 믿을 수 없다는 표정으로 당신을 쳐다본다, 그리고 웃기 시작한다. "하! 그 염병할 해골은 전혀 신뢰할 수가 없는 놈이오 - 정보를 가지고 있지 않으면서도 가지고 있다고 허풍을 떨다니. 난 그에게 속아 해골들의 기둥에서 꺼내는 고통을 치러야만 했소, 하지만 일단 기둥에서 나오자 그는 아무 것도 *모르는 척* 했소." 화신은 코웃음친다. "나는 그로부터 내가 들어야 할 것들을 다 들었기 때문에 그를 가지고 놀았소."~ */
  IF ~~ THEN REPLY #63104 /* ~"모르는 척?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"흠... 그 밖에도 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"그렇소." 사내는 미소짓는다. "한 번 거짓말쟁이는 영원한 거짓말쟁이요. 하지만 그 해골 정도의 지능으로 날 속이는 건 어림도 없소."~ */
  IF ~~ THEN REPLY #63108 /* ~"그의 속셈은 무었이었소? 그는 또 어떤 거짓말을 했소?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"흠... 그 밖에도 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~화신은 능글맞게 웃는다. "상관없소. 그가 자신의 비밀을 간직하게 내버려 두시오, 어차피 우리에게는 아무 쓸모가 없으니까."~ */
  IF ~~ THEN REPLY #63112 /* ~"알겠소. 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"이그너스?" 남자는 당신을 쳐다본다, 그리고 눈살을 찌푸린다. "사람 이름이오? 대체 누구 얘기를 하고 있는 거요?"~ */
  IF ~~ THEN REPLY #63115 /* ~"당신이 한 말은 충분히 답이 되었소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"다른 화신들은 우리의 그림자들이오. 나는 당신과의 얘기가 끝난 후 그들을 흡수할 생각이오." 그는 당신이 처음 도착했을 때 울부짖던, 등을 웅크리고 있는 화신을 흘겨본다. "하지만 그가 거부하면 죽일 생각이오. 별 상관은 없소. 그들은 필요가 없으니까."~ */
  IF ~~ THEN REPLY #63118 /* ~"알겠소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"그는 내 그림자인 다른 화신들 중 하나요. 당신과의 얘기가 끝난 후 그를 흡수할 생각이오. 하지만 그가 거부하면 죽일 생각이오. 별 상관은 없소."~ */
  IF ~~ THEN REPLY #63121 /* ~"그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~남자 당신을 쳐다본다, 그리고 믿을 수 없다는 표정으로 미소를 짓는다. "나는 누구에게도 항복하지 않소. 당신이야말로 내게 흡수될 것이오."~ */
  IF ~~ THEN REPLY #63124 /* ~"과연 그럴까."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"그럼 오늘은 당신과 싸우지 않겠소. 하지만 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"그럼 관두시오. 내가 일단 생각을 정리한 다음 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"나와 대적할 생각이오?" 사내는 오히려 재미있어 하는 것 같다. "당신은 내 적수가 아니오. 저항해야 아무런 소용이 없소."~ */
  IF ~~ THEN REPLY #63128 /* ~"어디 해보시오."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"그럼 오늘은 당신과 싸우지 않겠소. 하지만 다른 알고 싶은 것들이 있소..."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"그럼 관두시오. 내가 일단 생각을 정리한 다음 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~당신은 그를 응시한다... 그의 눈은 마치 돌과도 같다, 그리고 그것은 당신을 끌어당기기 시작한다...~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~그를 응시하며 그가 당신과 융합하도록 힘을 기울인다.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~그를 응시하며 그가 당신과 융합하도록 힘을 기울인다.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~그를 응시하며 그가 당신과 융합하도록 힘을 기울인다.~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~자신의 의지를 내맡기고 그가 당신을 흡수하는 것을 허용한다. ~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"그렇다면 할 수 없소." 그의 눈은 안개 같은 회색이 된다, 그리고 그는 기대라도 하듯 미소를 짓는다. "당신 정신에 무엇이 준비되어 있는지 보도록 합시다 ..."~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~당신은 자신의 정신이 화신의 시선 아래에서 양파 껍질처럼 벗겨져 나가는 것을 느낀다. 고통은 없다, 다만 당신의 개성이 한 조각 한 조각씩 사라지는 데 따른 망각의 냉기만이 느껴질 뿐이다. 당신의 시야는 어두워지고, 갑자기 당신은 더 이상 존재하지 않게 된다.~ */
  IF ~~ THEN REPLY #63138 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~그의 시선과 마주치자, 당신은 자신의 정신이 양파 껍질처럼 벗겨져 나가는 것을 느낀다, 그리고 당신은 그의 의지가 당신보다 강하다는 것을 *안다.* 만약 이대로 계속하면, 당신은 그에게 흡수될 것이고, 당신은 더 이상 존재하지 않게 될 것이다...~ */
  IF ~~ THEN REPLY #63140 /* ~화신이 당신을 흡수하도록 허용한다.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~그로부터 눈을 급히 돌린다.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~그의 시선으로부터 눈을 돌리고 그를 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~고통은 없다, 다만 당신의 개성이 한 조각 한 조각씩 사라지는 데 따른 망각의 냉기만이 느껴질 뿐이다. 당신의 시야는 어두워지고, 갑자기 당신은 더 이상 존재하지 않게 된다.~ */
  IF ~~ THEN REPLY #63144 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~당신은 그로부터 시선을 돌리다, 그리고 당신은 그의 얼굴이 분노로 뒤틀리는 것을 본다. "대체 무슨 짓이오?! 당신은 우리의 미래를 직면할 수 없을 정도로 나약하오?! 제기랄, 당신은 정말 텅텅 빈 껍질이 됐군!"~ */
  IF ~~ THEN REPLY #63146 /* ~"아마 그럴지도... 하지만 내게는... 당신을 죽일 힘이 있소... 죽을 각오를 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"그 밖에도... 일고 싶은 것들이... 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"정신을 좀... 차린 후... 다시 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~당신이 그의 정신의 회랑에서 이동하면서 처음으로 조우하는 감정은 경악이다 - 그리고 그의 눈이 휘둥그레진다. 그가 당신을 흡수하는 것이 아니라 당신이 *그*를 삼키고 있다. 당신은 그가 물러나려고 필사적으로 몸부림치는 것을 느낀다. 하지만 그는 그럴 수가 없다 - 그는 너무 약하다, 그리고 당신의 의지가 그가 후퇴하는 것을 막으며 그를 당신의 무의식 속으로 끌고 들어가고 있다.~ */
  IF ~~ THEN REPLY #63150 /* ~"당신과 얘기하는 건 이게 마지막이오. 당신이 본래 있어야 할 죽음의 세계로 돌아가시오."~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~그는 잠시 믿을 수 없다는 표정으로 당신을 본다, 그리고 그는 소멸한다. 당신은 엄청난 양의 지식이 쇄도하면서 표면으로 떠오르려는 것을 느낀다... 한꺼번에 흡수하기에는 너무나도 많아 당신은 혼란 상태에 빠진다. 너무나도 많은 지식 - 너무나도 많은 체험을 그- ~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~...쇄도한 속도만큼이나 빠르게 지식의 물결은 가라앉는다, 그리고 당신은 정신을 가다듬는다. 지식의 일부는 아작도 당신의 정신 속에서 소용돌이치고 있다, 당신은 추후에 그것들을 이해할 것이다. 지금은 단 한 가지 정보만 중요하다 - 그 화신이 이 곳을 떠날 방법을 몰랐다는 사실만. 그는 당신이 항복하도록 속이기 위해 거짓말을 했다. ~ */
  IF ~~ THEN REPLY #63153 /* ~"빌어먹을..."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"그와 얘기를 해봐야 시간 낭비요. 그의 정신에는 음모와 악의 이외에는 들은 것이 없소. 시간을 낭비하지 마시오 - 우리는 서로 얘기해야 할 것들이 많소."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"나를 협박하지 마라, 얼간아 - 내가 경고하겠다. 만약 도둑이 있다면 그거 바로 너다 - 너는 내 계획을 방해하여 우리에게서 문제를 해결할 기회를 훔치려고 했다!"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"거의 잊어버릴 뻔했군 - 그래, 그건 정말 헛수고였소." 화신은 짜증이 난 듯하다. "물론 그건 아무런 성과도 없었소. 그럼에도 그걸 만드는 데는 많은 돈과 생명이 들어갔소."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~첫 번째 화신은 두 번째 화신을 노려보면서 눈살을 찌푸린다. 그는 등을 웅크리고 있는 화신을 공격하려는 충동을 간신히 누르고 있는 것 같다. "네가 그 책임을 져야 할 또 하나의 일이지." 그는 다시 당신 쪽으로 돌아선다. "별로 중요한 일은 아니라고 생각할 수도 있겠소. 내가 적이 나타나기를 기다리기보다는 그와 직접 대적하기로 결심한 것은 무덤 함정이 실패한 직후였소."~ */
  IF ~~ THEN REPLY #63158 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"당신 얘기는 충분히 들었소. 나중에 다시 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"그들은 다른 화신들로 우리의 그림자였소. 나는 그들을 흡수할 생각이었소. 별 상관은 없소. 그들은 필요가 없으니까."~ */
  IF ~~ THEN REPLY #63161 /* ~"알겠소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"*물론* 그것은 당연히 해야 할 일이었소. 나는 그것을 가장 세밀한 부분까지 수십 년에 걸쳐 준비했소." 그는 과거를 회상하는 듯한 표정을 짓는다. "그럼에도 성공에는 한 걸음 못 미쳤소."~ */
  IF ~~ THEN REPLY #63164 /* ~"상상이 가오. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"지시 사항?" 그는 짜증스럽게 고개를 끄덕인다. "*물론* 내가 남겼소 - 나는 내가 이 곳에서 실패를 하고 기억을 잃을 위험이 있다는 사실을 알고 있었소. 나는 미래의 화신들이... 내 안내의 혜택을 받기를 원했소. 그래서 내 등에 지시 사항을 새긴 거요, *일지* 같은 건..." 그는 스스로에게 화가 난 듯 으르렁거린다. "너무나도 *쉽게* 분실되니까."~ */
  IF ~~ THEN REPLY #63167 /* ~"하지만 당신이 남긴 지시 사항은 좀 모호했소..."~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"왜 등에 모트에 대한 경고를 남겼소?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"당신이 파로드에게 지하 묘지로부터 청동 구체를 찾아와 달라고 부탁한 사람이오?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"알겠소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"당신은 *바보*요?" 화신은 화가 난 듯하다. "지시 사항은 모호해야만 했소 - 나는 정확히 우리에게 무슨 일이 일어나고 있는지 쓸 수가 없었소, 그래서 이정표만 남긴 거요. 만약 더스트맨이나 그들보다 더 돈 작자들이 그런 내용을 읽었다면 어떻게 되었을 것 같소? 우리는 순식간에 산 채로 매장되거나 화장당했을 거요!""~ */
  IF ~~ THEN REPLY #63173 /* ~"알겠소. 나보고 파로드를 찾아가라고 한 건 무엇 때문이오? 왜 그였소?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"왜 등에 모트에 대한 경고를 남겼소?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"당신이 파로드에게 지하 묘지로부터 청동 구체를 찾아와 달라고 부탁한 사람이오?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"알겠소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"파로드?" 화신은 잠시 생각한다. "오, 그래 - 날 쉬운 먹이로 생각한, 깡패들을 거느린 그 쓰레기 왕 말이군." 그는 즐거운 기억을 상기하는 듯 가볍게 웃는다. "다소의 유혈 사태를 거친 후, 나는 그와 거래를 하였소 - 그는 만약 자신의 부하가 날 발견할 경우 책임지고 나를 시체안치소로 무사히 운반하기로 약속을 했소  - 물론 나는 시길의  지하 묘지를 탐색하기 위해 그의 부하들의 눈과 손도 필요했소."~ */
  IF ~~ THEN REPLY #63179 /* ~"무엇 때문이오?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"청동 구체 때문에?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"알겠소. 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"구체..."~ */
  IF ~~ THEN REPLY #63184 /* ~"...청동제. 추하다. 만지면 달걀처럼 느껴지며 썩은 커스타드 냄새가 난다. 맞소?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"그렇소. 나는 파로드에게 그것이 그의 비참한 삶을 구할 수 있는 유일한 방법이라고 말해주었소... 놈은 정말 애처로운 사기꾼이었지." 화신은 미소를 짓는다. "그 늙다리는 죽으면 해골들의 기둥으로 가게 될 운명이었소, 그리고 놈은 그 운명을 피하려고 필사적이었소. 그래서 나는 그에게 시길 지하에 찾기만 해주면 그를 *구할* 수 있는 아이템이 있다고 말해주었소."~ */
  IF ~~ THEN REPLY #63186 /* ~"하지만 그것은 그를 구할 수가 없었소. 그건 단지 당신이 그가 찾기를 원했던 것에 불과하오."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"물론 그건 그에게 아무런 소용도 없었소. 운명의 손길을 그렇게 쉽게 피할 수는 없소." 그는 짜증스러운 표정으로 당신을 쳐다본다. "하지만 영혼을 영원한 파멸로부터 구할 수 있는 방법이 있다고 말해주는 것보다 더 큰 동기 부여는 없소. 나는 그가 그것을 찾으면 빼앗을 생각이었소. 내가 직접 찾으려고 했다면... 너무나도 많은 시간이 걸렸을 거요." 그는 다시 미소를 짓는다. "그리고, 대신 찾아 줄 사람이 있는데 왜 내가 땀을 흘려야겠소?"~ */
  IF ~~ THEN REPLY #63188 /* ~"실은 그는 *날* 속여 내가 그를 위해 그것을 찾도록 만들었소. 왜 그것이 그렇게 중요한 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"어, 그렇소... 옳은 말이오. 틀림없이 파로드의 부하들 중 하나가 그를 위해 발견했을 거요. 왜 그것이 그렇게 중요한 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"알겠소... 그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"중요? 당신은 알지 못하오?" 화신은 잠시 침묵한다. "그걸 가지고 왔소?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"아니, 그것은 파로드의 죽음과 함께 사라졌소. 그것의 용도는 무엇이었소?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"아니, 그것은 파로드의 죽음과 함께 사라졌소. 그것의 용도는 무엇이었소?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~거짓말: "아니, 그것은 파로드의 죽음과 함께 사라졌소. 궁금해서 그런데 그것의 용도는 무엇이오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~거짓말: "아니, 그것은 파로드의 죽음과 함께 사라졌소. 궁금해서 그런데 그것의 용도는 무엇이오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"그렇소. 내가 지니고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"그건 죽은 감각석이오." 화신은 먼 곳을 바라보는 듯한 시선으로 당신을 본다. "당신은 그 내용물을 아시오?" 그는 슬픈 미소를 짓는다. "그것에는 우리들 중 *최초*였던 자의 마지막 체험이 담겨 있소. 우리가 일련의 화신들이 아닌 한 인간이었을 때의 체험이." 그의 목소리가 낮아진다. "만약 그것을 열 방법이 있었다면, 나는 그의 *마음* 속을 들여다볼 수 있었을 것이오..."~ */
  IF ~~ THEN REPLY #63202 /* ~"왜 이런 모든 일이 일어났는지 알기 위해?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"그래..." 화신의 얼굴이 침울해진다. "그건 내가 늘 얻고자 했던 답이오. 왜 이런 일이 일어났는가. 왜 우리는 불사신인가." 그는 한숨을 쉰다. "우리로서는 영원히 알 수 없을 것 같소."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"알다시피 그건 내가 지니고 있소."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"그 밖에도 다른 알고 싶은 것들이 있소."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"가지고 있소?!" 화신의 얼굴이 횃불처럼 환해진다. "그럼 당신의 삶도 의미가 있었군!" 그는 부지런히 생각하고 계산을 하고 있는 듯 눈을 번득인다. "우리가 융합을 하고 나면 그것을 열 방법을 찾도록 하겠소. 모든 희망이 사라진 것은 아니군..."~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"구체는 대체 무엇이오. 왜 그것이 중요한 거요?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"나는 *당신*과 융합할 생각이 없소."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~진실: "좋소. 난 당신과 융합할 준비가 됐소."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~허풍: "좋소. 난 당신과 융합할 준비가 됐소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"그건 어디 두고 봅시다... 하지만 그 전에 먼저 알고 싶은 것들이 있소.,"~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"그건 죽은 감각석이오. 당신은 그 안에 무엇이 들었는지 알기나 하시오?!" 그는 기대에 부푼 미소를 짓는다. "그것에는 우리들 중 *최초*였던 자의 마지막 체험이 담겨 있소. 우리가 일련의 화신들이 아닌 한 인간이었을 때의 체험이." 그의 목소리가 낮아진다. "만약 그것을 열 방법이 있다면, 나는 그의 *마음* 속을 들여다볼 수 있을 것이오..."~ */
  IF ~~ THEN REPLY #63215 /* ~"왜 이런 모든 일이 일어났는지 알기 위해?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"그래..." 화신의 얼굴이 침울해진다. "그건 내가 늘 얻고자 했던 답이오. 왜 이런 일이 일어났는가. 왜 우리는 불사신인가." 그는 당신을 살펴본다. "우리가 융합을 하고 나면 그것을 열 방법을 찾도록 하겠소. 모든 희망이 사라진 것은 아니군..."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"나는 *당신*과 융합할 생각이 없소."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~진실: "좋소. 난 당신과 융합할 준비가 됐소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"그건 어디 두고 봅시다... 하지만 그 전에 먼저 알고 싶은 것들이 있소.,"~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*나*는 아마나 혹시 따위에는 관심이 없소." 첫 번째 화신은 코웃음친다. "나는 답만을 추구하오. 우리가 여기까지 오게 된 것도 다 그 덕인 줄 아시오." 그는 세 번째 화신을 경멸하는 눈초리로 본다. "만약 *당신* 손에 우리 삶을 맡겼다면, 우리는 우리가 지금 알고 있는 진실의 극히 일부도 알고 있지 못할 거요. 그리고 바로 *힘*은 진실 속에 있소" 그는 당신 쪽으로 돌아선다. "우리가 융합하면 당신도 깨닫게 될 것이오."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"알다시피 그건 내가 지니고 있소."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"알다시피 그건 내가 지니고 있소."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"그건 어디 두고 봅시다... 하지만 그 전에 먼저 알고 싶은 것들이 있소.,"~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*나*는 아마나 혹시 따위에는 관심이 없소." 첫 번째 화신은 코웃음친다. "나는 답만을 추구하오. 우리가 여기까지 오게 된 것도 다 그 덕인 줄 아시오." 그는 세 번째 화신을 경멸하는 눈초리로 본다. "만약 *당신* 손에 우리 삶을 맡겼다면, 우리는 우리가 지금 알고 있는 진실의 극히 일부도 알고 있지 못할 거요. 그리고 바로 *힘*은 진실 속에 있소" 그는 당신 쪽으로 돌아선다. "우리가 융합하면 당신도 깨닫게 될 것이오."~ */
  IF ~~ THEN REPLY #63227 /* ~"나는 *당신*과 융합할 생각이 없소."~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~진실: "좋소. 난 당신과 융합할 준비가 됐소."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~허풍: "좋소. 난 당신과 융합할 준비가 됐소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"그건 어디 두고 봅시다... 하지만 그 전에 먼저 알고 싶은 것들이 있소.,"~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"내가 일단 생각을 정리할 수 있도록 해주시오, 이야기는 그 다음에 다시 합시다."~ */ EXIT
END
