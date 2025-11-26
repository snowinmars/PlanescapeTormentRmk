// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~당신이 책을 만지자 목소리가 들린다. "안녕하십니까, 주인님. 이 미천한 책에게 뭘 원하십니까?"~ */
  IF ~~ THEN REPLY #26926 /* ~"당신은 말을 할 수가 있소?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"당신은 날 도울 수가 없소. 내게 더 이상 말을 걸지 마시오."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"분부를 따르겠습니다, 주인님. 제게 말씀만 하시면 제가 어떤 방법으로든 도와 드리겠습니다."~ */
  IF ~~ THEN REPLY #26929 /* ~"내게 당신이 뭘 할 수 있는지 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"좋소. 이제 조용히 하시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"물론입니다 주인님. 그것도 여러 가지 언어로 말입니다. 우리들이 얘기하는 것을 아무도 보지 못하도록 주의하십시오, 다른 사람들은 내가 하는 말을 들을 수 없으니까요. 그리고 말하는 능력은 제가 지닌 여러 가지 능력들 중 하나에 불과합니다. "~ */
  IF ~~ THEN REPLY #26932 /* ~"당신은 어떤 일을 할 수가 있소? 당신의 능력에는 어떤 것들이 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"어떻게 만투옥이 당신을 소유하게 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"지금으로선 그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"저는 주인님이 인생에서 성공하시는 데 필요한 능력들을 드릴 수가 있습니다, 주인님. 또한 조언도 해드릴 수 있습니다. ~ */
  IF ~~ THEN REPLY #26937 /* ~"어떤 능력 말이오?"~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"내게 조언을 해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"관두시오. 다른 질문들도 좀 대답해주시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"뭘 알고 싶으십니까, 주인님?"~ */
  IF ~~ THEN REPLY #26956 /* ~"당신은 어떤 일을 할 수가 있소? 당신의 능력에는 어떤 것들이 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"어떻게 만투옥이 당신을 소유하게 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"내게 조언을 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"내게 조언을 해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"지금으로선 그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"그 병에 걸린 쥐 마법사가 저를 지하 묘지에서 발견했습니다. 그는 저를 이미 오래 전에 죽은 제 전 주인으로부터 빼앗았습니다. 그는 저로부터 배우기 위해 저를 자신의 소굴로 가져왔습니다. 하지만 그의 능력은 매우 한정된 것이었습니다... 그와는 얘기를 하기도 힘들었고, 제가 가르쳐 주는 것들을 제대로 이해하지 못했습니다."~ */
  IF ~~ THEN REPLY #26977 /* ~"당신의 능력에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"알겠소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"주인님이 하신 질문은 결코 대답하기 쉬운 것이 아닙니다, 하지만 제가 최선을 다해 대답하도록 하겠습니다. 저는 이제는 잊혀진 순간들과 잃어버린 이념들, 그리고 다른 시간과 공간의 생각들을 담은 사본입니다. 제 안에는 잊혀진 문명들의 예지가 담겨 있습니다. 주인님, 하지만 정말 중요한 것은 저라는 책의 페이지 안에는 강대한 힘이 잠자고 있다는 사실입니다. 그 힘은 바로 당신의 것이 될 수 있습니다... 주인님."~ */
  IF ~~ THEN REPLY #26981 /* ~"당신의 능력에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"지금은 관심이 없소. 대신 날 위해 다른 질문에 대답해 주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"관심없소. 안녕히 계시오, 책."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"주인님께 다음과 같은 충고를 하겠습니다: 당신 가까이에 있는 자를 조심하십시오. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 마십시오. 제가 아는 많은 황제들이 그런 우를 범했으며, 저는 당신이 그와 같은 같은 운명에 처하는 것을 바라지 않습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"그걸로 충분하오."~ */ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다: 만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하십시오. 행동에 비해 말은 별 의미가 없습니다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"그걸로 충분하오."~ */ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~책이 얘기를 하자 당신의 가슴 속에서 약간의 긴장감이 감돈다: "그럼 주인님께 다음과 같은 충고를 하겠습니다. 약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 됩니다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여줍니다. 균형을 잃은 돌은 쉽게 무너집니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"그걸로 충분하오."~ */ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 자비를 조심하십시오. 적에게 등을 보이는 것은 자객의 칼 앞에 무방비 상태인 것과 같습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"그걸로 충분하오."~ */ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 사랑에 대한 일반적인 관점을 주의하십시오. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 합니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"그걸로 충분하오."~ */ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~당신은 입의 한쪽 구석이 냉소하는 표정을 지으려고 말려올라감을 느낀다. 당신은 재빨리 그것을 억누른다. "그럼 주인님께 다음과 같은 충고를 하겠습니다: 당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하십시오. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 됩니다~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"그걸로 충분하오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 위대해지는 데는 두 가지 비결이 있습니다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"그걸로 충분하오."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 강해지기 위해서는 희생을 치를 각오를 해야만 합니다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래입니다: 받기 위해서는 주어야만 합니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~책은 나에게 충고했다: '강해지기 위해서는 희생을 치를 각오를 해야만 한다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래이다: 받기 위해서는 주어야만 한다.'~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"그걸로 충분하오."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~책이 얘기를 하자 당신의 피가 정맥 속에서 흐르는 속도가 느려지는 것처럼 느껴진다. "그럼 주인님께 다음과 같은 충고를 하겠습니다. 명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들입니다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과합니다. 자신에게 정직하도록 하며 자신의 의지에만 복종하십시오."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~책은 나에게 충고했다: '명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들이다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과하다. 자신에게 정직하도록 하며 자신의 의지에만 복종하라.'~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 당신을 해친 자를 살려두지 마십시오. 그렇게 하는 것은 약점을 인정하는 일입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~책은 나에게 충고했다: '당신을 해친 자를 살려두지 마라. 그렇게 하는 것은 약점을 인정하는 일이다.'~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 인간의 영혼은 감정의 바다입니다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서입니다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~책은 나에게 충고했다: '인간의 영혼은 감정의 바다이다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서이다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태이다.'~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하십시오, 그러나 자비를 베풀지는 마십시오."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~책은 나에게 충고했다: '자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하라, 그러나 자비를 행하지는 말라.'~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 타인 안의 공포를 키우십시오, 이는 공포만이 타인을 지배할 수 있기 때문입니다. 공포보다 더 깊은 상처를 남기는 것은 없습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~책은 나에게 충고했다: "타인 안의 공포를 키우라, 이는 공포만이 타인을 지배할 수 있기 때문이다. 공포보다 더 깊은 상처를 남기는 것은 없다.'~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"그럼 주인님께 다음과 같은 충고를 하겠습니다. 웃으며 적에게 우정의 악수를 청하십시오. 적이 당신의 손을 잡으면 다른 손에 들고 있던 단도로 적을 찌르십시오, 아니면 적이 선수를 칠 테니."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~책은 나에게 충고했다: '웃으며 적에게 우정의 악수를 청하라. 적이 당신의 손을 쥐면 다른 손에 들고 있던 단도로 적을 찌르라, 아니면 적이 선수를 칠 테니.~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"그걸로 충분하오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~책이 이러한 얘기들을 하자 당신은 심장이 차갑게 짓눌리는 듯한 느낌을 받는다. 당신은 왠지 자신이 타락했다는 느낌이 든다: "이것이 제가 드리는 마지막 충고입니다. 당신 마음에 들지 않는 것은 뭐든지 말살할 수 있습니다. 단지 그럴 의지가 필요할 뿐입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"내게 조언을 더 해주시오."~ */ JOURNAL #27058 /* ~책은 나에게 충고했다: '당신 마음에 들지 않는것은 뭐든지 말살할 수 있다. 단지 그럴 의지가 필요할 뿐이다.'~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"유감스럽게도 주인님께 해 드릴 충고가 더 이상은 없습니다. 당신은 이미 제가 해 드린 조언들로부터 많은 것을 배웠습니다. 그 내용을 상기해 보십시오."~ */
  IF ~~ THEN REPLY #27060 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"그걸로 충분하오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"주인님, 이들은 당신의 삶을 크게 향상시킬 수 있는 힘들입니다. 불행히도 제게 제약을 가하고 있는 법이... 이러한 힘들의 대가로 작은 봉사를 요구하도록 규정하고 있습니다."~ */
  IF ~~ THEN REPLY #27063 /* ~"작은 봉사? 예를 들면?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"그럼 나는 아무 것도 원하지 않소."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"주인님, 치러야 하는 대가는 매우 하찮은 것입니다. 만약 저를 책 안에 묶어 두고 있는 법만 아니라면 굳이 말할 필요조차 없는 것입니다..." 책은 잠시 멈춘다. "제 힘을 개방하려면 주인님의 신체의 일부를 희생해야 합니다. 당신은 제 첫 페이지에 당신의 피를 떨어뜨려야만 합니다. 이 행위는 당신과 저 사이의 유대를 한층 돈독히 하고, 제가 당신이 자신이 잠재력을 끌어내는 일을 도울 수 있게 해줄 것입니다. 당신이 얻을 주문과 비교한다면 대단치 않은 대가입니다."~ */
  IF ~~ THEN REPLY #27066 /* ~"좋소. 여기 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~내가 입수한 기묘한 책은 나에게 내 피를 그 지면에 흘리라고 요구했다. 나는 요구에 따랐으며 주문을 하나 얻었다. 그것은 보다 큰 힘 또한 약속했다. ~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"싫소.."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~당신은 칼로 몸을 베어 몇 방울의 피를 페이지에 떨어뜨린다. 당신은 뼛속까지 스며드는 오한을 느낀다, 그리고 왠지 속이 텅 비고 상처를 입은 듯한 느낌도 받는다. 하지만 동시에 승리감도 느껴진다. 당신은 새로운 주문: 시각장애를 배웠다. "이제 그것은 당신의 힘이 되었습니다, 주인님... 하지만 그것이 제 페이지 안에 담긴 첫 번째 힘에 불과하다는 것을 잊지 마십시오."~ */
  IF ~~ THEN REPLY #27070 /* ~"내게 이러한 다른 능력들에 대해 얘기해주시오."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"다른 질문들도 좀 대답해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"나는 당신의 조언을 원하오."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"지금은 더 이상 아무 것도 필요없소."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"주인님, 어떻게 도와 드릴까요? 호기심을 진정시키길 원하십니까?"~ */
  IF ~~ THEN REPLY #27075 /* ~"그렇소. 내 질문에 좀 대답해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"아니오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"큰 것을 얻기 위한 작은 희생에 불과합니다, 주인님... 하지만 선택권은 당신께 있습니다. 제 제의는 계속 유효하다는 걸 기억하십시오."~ */
  IF ~~ THEN REPLY #27078 /* ~"좋소. 다른 질문들도 좀 대답해주시오."~ */ JOURNAL #27080 /* ~내가 입수한 기묘한 책은 나에게 힘을 얻으려면 대신 내 자신의 일부를 내놓으라고 요구했다. 나는 거절했다. 하지만 아직 재고할 여지는 있다. ~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #27080 /* ~내가 입수한 기묘한 책은 나에게 힘을 얻으려면 대신 내 자신의 일부를 내놓으라고 요구했다. 나는 거절했다. 하지만 아직 재고할 여지는 있다. ~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"그럼 나중에 당신이 더 큰 힘을 원하게 될 것이라는 사실과 그 때 제가 당신을 기다리고 있을 것이라는 사실만 기억하십시오... 주인님."~ */
  IF ~~ THEN REPLY #27082 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~책의 목소리가 슬퍼진 듯하다. "주인님, 죄송하지만 저를 속박하는 규정 때문에 더 큰 힘을 얻기 위해서는 더 큰 희생이 요구됩니다. 가능하다면 주인님께 아무런 조건도 없이 힘을 드리고 싶지만 보시다시피 저는 속박된 존재에 불과합니다. ~ */
  IF ~~ THEN REPLY #27084 /* ~"그 희생이란 무엇이오?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"그럼 관두시오."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"두 번째 희생은 당신의 동료들 중 하나를 노예로 팔거나 감금당하도록 만드는 것입니다. 이 행위는 당신과 힘 사이의 유대를 상징합니다 - 당신의 동료는 당신이 얻을 힘을 나타내는 것입니다. 제가 알기로 사무구에는 당신이 이 일을 실행하는 것을 도울 사람이 있습니다. 수입상 브리스치카를 찾아가십시오."~ */
  IF ~~ THEN REPLY #27087 /* ~"생각해 보겠소. 내게 조언을 좀 해주시오."~ */ JOURNAL #27092 /* ~내가 입수한 기묘한 책은 나에게 또 하나의 주문을 얻으려면 내 일행 중 하나를 노예로 팔라고 요구했다. 만약 그럴 의사가 있다면 사무구에 있는 *수입업자 브리스치카*를 찾아가야 한다.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"하겠소. 내게 조언을 좀 해주시오."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~내가 입수한 기묘한 책은 나에게 또 하나의 주문을 얻으려면 내 일행 중 하나를 노예로 팔라고 요구했다. 만약 그럴 의사가 있다면 *수입업자 브리스치카*를 찾아가야 한다. 나는 그러기로 했다. ~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"생각해 보겠소. 하지만 그 전에 먼저 내 질문에 더 대답해주시오."~ */ JOURNAL #27092 /* ~내가 입수한 기묘한 책은 나에게 또 하나의 주문을 얻으려면 내 일행 중 하나를 노예로 팔라고 요구했다. 만약 그럴 의사가 있다면 사무구에 있는 *수입업자 브리스치카*를 찾아가야 한다.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"하겠소. 하지만 그 전에 먼저 내 질문에 더 대답해주시오."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~내가 입수한 기묘한 책은 나에게 또 하나의 주문을 얻으려면 내 일행 중 하나를 노예로 팔라고 요구했다. 만약 그럴 의사가 있다면 *수입업자 브리스치카*를 찾아가야 한다. 나는 그러기로 했다. ~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"생각해 보겠소. 안녕히 계시오."~ */ JOURNAL #27092 /* ~내가 입수한 기묘한 책은 나에게 또 하나의 주문을 얻으려면 내 일행 중 하나를 노예로 팔라고 요구했다. 만약 그럴 의사가 있다면 사무구에 있는 *수입업자 브리스치카*를 찾아가야 한다.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"제가 드릴 힘이 그런 조그만 희생을 감수할 가치도 없다고 생각하신다니 슬프군요. 의심과 혼란이 당신을 속박하도록 하지 마십시오, 주인님... 제가 주제넘은 말을 했군요. 제 제의는 계속 유효하다는 사실만 잊지 마십시오."~ */
  IF ~~ THEN REPLY #27095 /* ~"하겠소. 내게 조언을 좀 해주시오."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"생각해 보겠소. 하지만 그 전에 먼저 내 질문에 더 대답해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"주인님. 교육을 계속 받으시기로 결정하셨습니까? 보다 뛰어난 통찰력과 힘을 얻을 기회가 당신을 기다리고 있습니다."~ */
  IF ~~ THEN REPLY #27099 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"아직 아니오. 다른 질문들도 좀 대답해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"아직 아니오. 난 당신 조언이 필요하오."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"주인님. 교육을 계속 받으시기로 결정하셨습니까? 두 번째 희생만 바치신다면 보다 뛰어난 통찰력과 힘을 얻을 기회가 당신을 기다리고 있습니다."~ */
  IF ~~ THEN REPLY #27104 /* ~"좋소, 하리다. 이제 내 질문에 좀 대답해주시오."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"타당한 것 같소. 하리다. 내게는 당신 조언이 더 필요하오."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"생각해 보겠소. 내게 조언을 더 해주시오."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"먼저 내 질문에 대답부터 해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"주인님, 두 번째 희생을 바치는 일을 마치셨습니까? 분위기를 보니 그러신 것 같군요. 잘 하셨습니다. 당신은 정말 빨리도 터득하시는군요. 이 단어들에 귀를 기울이십시오, 그리고 더 많은 것을 배우십시오." 책은 알아들을 수 없는 음절로 말을 한다, 그러자 당신은 가슴 속에서 뭔가가 타오르는 듯한 느낌을 받는다. 당신은 이제 살무사의 키스의 주문을 알게 되었다. ~ */
  IF ~~ THEN REPLY #27110 /* ~"내게 더 가르쳐 줄 것이 있소, 책?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~책은 나에게 일행 중 하나를 노예로 판 대가로 주문 '살무사의 키스'를 주었다.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"감사하오. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"대답을 원하십니까?"~ */
  IF ~~ THEN REPLY #27114 /* ~"어떻게 만투옥이 당신을 소유하게 되었소?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"내게 조언을 해줄 수가 있겠소?"~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"당신에게는 내게 줄 능력이 더 있소?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"내가 새 능력을 얻기 위해 감수해야 희생이 뭔지 다시 말해주겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"제가 지닌 지식을 원하십니까... 주인님?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"그렇소."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"그렇소."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"대신 내 질문에 좀 대답을 해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"지금으로선 그걸로 충분하오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"다음과 같은 충고를 하겠습니다. 당신 가까이에 있는 자를 조심하십시오. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 마십시오. 제가 아는 많은 황제들이 그런 우를 범했으며, 저는 당신이 그와 같은 같은 운명에 처하는 것을 바라지 않습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"그걸로 충분하오."~ */ JOURNAL #27016 /* ~책은 나에게 충고했다: '당신에게 가까운 자를 조심하라. 그들을 절대로 완전히 믿어서는 안 되며 나눔으로서 힘을 약하게 만들지 말라. 내가 아는 많은 황제들이 그렇게 했으며, 나는 당신도 같은 운명에 처하는 것을 바라지 않는다.'~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"그럼 다음과 같은 충고를 하겠습니다. 만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하십시오. 행동에 비해 말은 별 의미가 없습니다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"그걸로 충분하오."~ */ JOURNAL #27017 /* ~책은 나에게 충고했다: '만약 그들이 우정에 대해서 얘기하면 그들로 하여금 그것을 입증하게 하라. 행동에 비해 말은 별 의미가 없다. 만약 그들이 진정한 친구라면 당신을 위해 기꺼이 죽을 것이다.'~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~책이 얘기를 하자 당신의 가슴 속에서 약간의 긴장감이 감돈다: "그럼 다음과 같은 충고를 하겠습니다. 약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 됩니다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여줍니다. 균형을 잃은 돌은 쉽게 무너집니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"그걸로 충분하오."~ */ JOURNAL #27018 /* ~책은 나에게 충고했다: '약점을 보이지 말 것이며, 실수를 인정하거나 망설여서는 안 된다. 이러한 것들은 남들에게 당신에게 확신이 부족하다는 걸 보여준다. 군형을 잃은 돌은 쉽게 무너진다.'~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"그럼 다음과 같은 충고를 하겠습니다. 자비를 조심하십시오. 적에게 등을 보이는 것은 자객의 칼 앞에 무방비 상태인 것과 같습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"그걸로 충분하오."~ */ JOURNAL #27019 /* ~책은 나에게 충고했다: '자비에 대해 주의하라. 적에게 등을 보여주는 것은 자객의 칼 앞에 무방비 상태인 것과 같다.'~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"그럼 다음과 같은 충고를 하겠습니다. 사랑에 대한 일반적인 관점을 주의하십시오. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 합니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"그걸로 충분하오."~ */ JOURNAL #27020 /* ~책은 나에게 충고했다: '사랑에 대한 일반적인 관점을 주의하라. 사랑이 감상적인 수준 이상의 것으로 승화되기 위해서는 때로 잔인해져야만 한다.'~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~당신은 입의 한쪽 구석이 냉소하는 표정을 지으려고 말려올라감을 느낀다. 당신은 재빨리 그것을 억누른다. "그럼 다음과 같은 충고를 하겠습니다: 당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하십시오. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 됩니다~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"그걸로 충분하오."~ */ JOURNAL #27021 /* ~책은 나에게 충고했다: '당신에게는 운명이 기다리고 있다는 사실을 깨닫고 우민과 약자들을 멀리 하라. 이 하나만으로도 당신은 남이 가기를 두려워하는 곳을 활보할 권위를 얻게 된다.'~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"그럼 다음과 같은 충고를 하겠습니다. 위대해지는 데는 두 가지 비결이 있습니다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"그걸로 충분하오."~ */ JOURNAL #27022 /* ~책은 나에게 충고했다: '위대해지는 데는 두 가지 비밀이 있다. 하나는 자신이 아는 것을 어떤 경우에도 다 밝히지 않는 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"그럼 다음과 같은 충고를 하겠습니다. 강해지기 위해서는 희생을 치를 각오를 해야만 합니다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래입니다: 받기 위해서는 주어야만 합니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~책은 나에게 충고했다: '강해지기 위해서는 희생을 치를 각오를 해야만 한다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래이다: 받기 위해서는 주어야만 한다.'~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27023 /* ~책은 나에게 충고했다: '강해지기 위해서는 희생을 치를 각오를 해야만 한다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래이다: 받기 위해서는 주어야만 한다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"그걸로 충분하오."~ */ JOURNAL #27023 /* ~책은 나에게 충고했다: '강해지기 위해서는 희생을 치를 각오를 해야만 한다 - 그것이 당신의 일부이든 아니면 당신에게 소중한 것이든 간에. 힘은 거래이다: 받기 위해서는 주어야만 한다.'~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~책이 얘기를 하자 당신의 피가 정맥 속에서 흐르는 속도가 느려지는 것처럼 느껴진다. "그럼 다음과 같은 충고를 하겠습니다. 명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들입니다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과합니다. 자신에게 정직하도록 하며 자신의 의지에만 복종하십시오."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~책은 나에게 충고했다: '명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들이다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과하다. 자신에게 정직하도록 하며 자신의 의지에만 복종하라.'~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27028 /* ~책은 나에게 충고했다: '명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들이다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과하다. 자신에게 정직하도록 하며 자신의 의지에만 복종하라.'~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"그걸로 충분하오."~ */ JOURNAL #27028 /* ~책은 나에게 충고했다: '명예와 미덕은 사람들을 죽이고 정신마저 파괴하는 개념들이다. 그들은 사람들을 죽음과 기행으로 내모는 추상 개념에 불과하다. 자신에게 정직하도록 하며 자신의 의지에만 복종하라.'~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"그럼 다음과 같은 충고를 하겠습니다. 당신을 해친 자를 살려두지 마십시오. 그렇게 하는 것은 약점을 인정하는 일입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~책은 나에게 충고했다: '당신을 해친 자를 살려두지 마라. 그렇게 하는 것은 약점을 인정하는 일이다.'~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27033 /* ~책은 나에게 충고했다: '당신을 해친 자를 살려두지 마라. 그렇게 하는 것은 약점을 인정하는 일이다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"그걸로 충분하오."~ */ JOURNAL #27033 /* ~책은 나에게 충고했다: '당신을 해친 자를 살려두지 마라. 그렇게 하는 것은 약점을 인정하는 일이다.'~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"그럼 다음과 같은 충고를 하겠습니다. 인간의 영혼은 감정의 바다입니다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서입니다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~책은 나에게 충고했다: '인간의 영혼은 감정의 바다이다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서이다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태이다.'~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27038 /* ~책은 나에게 충고했다: '인간의 영혼은 감정의 바다이다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서이다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태이다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"그걸로 충분하오."~ */ JOURNAL #27038 /* ~책은 나에게 충고했다: '인간의 영혼은 감정의 바다이다. 때로 사람은 이러한 감정들에 질서를 부여하려 하나 그것은 거짓된 질서이다. 인간의 자연스런 상태는 혼돈이며, 그것이야말로 자신을 내맡겨야 할 상태이다.'~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"그럼 다음과 같은 충고를 하겠습니다. 자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하십시오, 그러나 자비를 베풀지는 마십시오."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~책은 나에게 충고했다: '자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하라, 그러나 자비를 행하지는 말라.'~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27043 /* ~책은 나에게 충고했다: '자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하라, 그러나 자비를 행하지는 말라.'~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"그걸로 충분하오."~ */ JOURNAL #27043 /* ~책은 나에게 충고했다: '자비의 의미를 이해하고 그것을 당신에게 유리하게 이용하라, 그러나 자비를 행하지는 말라.'~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"그럼 다음과 같은 충고를 하겠습니다. 타인 안의 공포를 키우십시오, 이는 공포만이 타인을 지배할 수 있기 때문입니다. 공포보다 더 깊은 상처를 남기는 것은 없습니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~책은 나에게 충고했다: "타인 안의 공포를 키우라, 이는 공포만이 타인을 지배할 수 있기 때문이다. 공포보다 더 깊은 상처를 남기는 것은 없다.'~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27048 /* ~책은 나에게 충고했다: "타인 안의 공포를 키우라, 이는 공포만이 타인을 지배할 수 있기 때문이다. 공포보다 더 깊은 상처를 남기는 것은 없다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"그걸로 충분하오."~ */ JOURNAL #27048 /* ~책은 나에게 충고했다: "타인 안의 공포를 키우라, 이는 공포만이 타인을 지배할 수 있기 때문이다. 공포보다 더 깊은 상처를 남기는 것은 없다.'~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"그럼 다음과 같은 충고를 하겠습니다.웃으며 적에게 우정의 악수를 청하십시오. 적이 당신의 손을 잡으면 다른 손에 들고 있던 단도로 적을 찌르십시오, 아니면 적이 선수를 칠 테니."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"내게 조언을 더 해주시오."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~책은 나에게 충고했다: '웃으며 적에게 우정의 악수를 청하라. 적이 당신의 손을 쥐면 다른 손에 들고 있던 단도로 적을 찌르라, 아니면 적이 선수를 칠 테니.~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27053 /* ~책은 나에게 충고했다: '웃으며 적에게 우정의 악수를 청하라. 적이 당신의 손을 쥐면 다른 손에 들고 있던 단도로 적을 찌르라, 아니면 적이 선수를 칠 테니.~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"그걸로 충분하오."~ */ JOURNAL #27053 /* ~책은 나에게 충고했다: '웃으며 적에게 우정의 악수를 청하라. 적이 당신의 손을 쥐면 다른 손에 들고 있던 단도로 적을 찌르라, 아니면 적이 선수를 칠 테니.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~책이 이러한 얘기들을 하자 당신은 심장이 차갑게 짓눌리는 듯한 느낌을 받는다. 당신은 왠지 자신이 타락했다는 느낌이 든다: "이것이 제가 드리는 마지막 충고입니다. 당신 마음에 들지 않는 것은 뭐든지 말살할 수 있습니다. 단지 그럴 의지가 필요할 뿐입니다."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"내게 조언을 더 해주시오."~ */ JOURNAL #27058 /* ~책은 나에게 충고했다: '당신 마음에 들지 않는것은 뭐든지 말살할 수 있다. 단지 그럴 의지가 필요할 뿐이다.'~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #27058 /* ~책은 나에게 충고했다: '당신 마음에 들지 않는것은 뭐든지 말살할 수 있다. 단지 그럴 의지가 필요할 뿐이다.'~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"그걸로 충분하오."~ */ JOURNAL #27058 /* ~책은 나에게 충고했다: '당신 마음에 들지 않는것은 뭐든지 말살할 수 있다. 단지 그럴 의지가 필요할 뿐이다.'~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"유감스럽게도 주인님께 해 드릴 충고가 더 이상은 없습니다. 당신은 이미 제가 해 드린 조언들로부터 많은 것을 배웠습니다. 그 내용을 상기해 보십시오."~ */
  IF ~~ THEN REPLY #27201 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"그걸로 충분하오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~책은 한숨을 쉰다. "그 병에 걸린 쥐 마법사가 저를 지하 묘지에서 발견했습니다. 그는 저를 이미 오래 전에 죽은 제 전 주인으로부터 빼앗았습니다. 그는 저로부터 배우기 위해 저를 자신의 소굴로 가져왔습니다. 하지만 그의 능력은 매우 한정된 것이었습니다, 그리고 그는 제가 가르쳐 주는 것들을 제대로 이해하지 못했습니다."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"당신의 능력에 대해 얘기해주시오."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"당신의 능력에 대해 얘기해주시오."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"알겠소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"주인님, 저는 곧 힘입니다, 그리고 저는 당신에게 많은 것들을 가르쳐 드릴 수 있습니다. ~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"어떻게?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"내 기억을 되살려 주시오."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"지금은 관심이 없소. 대신 날 위해 다른 질문에 대답해 주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"관심없소. 안녕히 계시오, 책."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"때가 되면! 인내심을 좀 기르시오! 당신은 이미 이 힘을 얻기 위해 필요한 일을 할 각오를 보여주었소, 그리고 당신은 이 힘을 얻기 위해서는 그에 상응하는 대가를 치러야 한다는 사실을 깨달아야 하오."~ */
  IF ~~ THEN REPLY #27214 /* ~"난 무슨 일을 해야 하오?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"나는 이미 충분한 대가를 치렀소. 관두시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~책은 경멸하는 어조로 말한다. "여기까지 와서 물러나겠다는 건가? 수치스럽군. 당신은 내가 생각했던 것만큼 강인하지 않군."~ */
  IF ~~ THEN REPLY #27217 /* ~"어쨌든 간에 내 질문에 좀 대답해주시오."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"좋소. 난 뭘 해야하오?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"어쨌든 간에 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"아니, 당신이 스스로의 가능성을 실현할 각오가 되어 있다는 걸 보여주기 전에는 그럴 수 없소."~ */
  IF ~~ THEN REPLY #27221 /* ~"난 무슨 일을 해야 하오?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"그럼 관두시오."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"마음대로 하시오. 한 길은 실패로, 다른 하나의 길은 당신을 성공으로 인도할 테니."~ */
  IF ~~ THEN REPLY #27224 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"기꺼이 배신할 동료가 있소?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"모트는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~책은 나에게 일행 중 하나를 죽이면 더욱 강력한 주문을 주겠다고 제의했다. 솔직히 구미가 당긴다...~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"안나는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"다콘은 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"훨-후럼-그레이스는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"노돔은 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"베일로는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"이그너스는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"나는 아무도 배신하지 않겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"내게는 동료가 없소."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"나는 당신에게 한 가지 힘을 더 줄 수 있소. 당신은 일을 완수하기 위해 필요한 일을 할 각오를 보여주었소. 당신의 마지막 임무는 당신의 동료들 중 한 사람을 주문을 사용하지 않고 직접 죽이는 일이오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"모트는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"안나는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"다콘은 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"훨-후럼-그레이스는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"노돔은 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"베일로는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"이그너스는 어떻소?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"난 그렇게 생각하지 않소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"내게는 동료가 없소."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"흥! 그럼 나는 당신같은 자를 교육하는 데 시간을 낭비하지 않겠소. 당신에게는 야심도 욕망도 없소? 나약한 얼간이 같으니."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"좋소. 모트는 어떻소?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"좋소. 안나는 어떻소?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"좋소. 다콘은 어떻소?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"좋소. 훨-후럼-그레이스는 어떻소?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"좋소. 노돔은 어떻소?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"좋소. Pour뭐 pas 베일로?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"좋소. 이그너스는 어떻소?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"내가 이미 말했듯이 난 아무도 희생시키지 않겠소. 어떠한 힘도 그만한 가치는 없소."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~당신은 책이 냉소할 수 있다는 사실을 지금까지는 알지 못했었다. "그럼 어둠 속에서 고통받아라, 이 어리석은 놈아."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"마음을 바꿨소. 모트를 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"마음을 바꿨소. 안나를 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"마음을 바꿨소. 다콘을 죽이겠소.."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"마음을 바꿨소. 훨-후럼-그레이스를 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"마음을 바꿨소. 노돔을 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"마음을 바꿨소. 베일로를 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"마음을 바꿨소. 이그너스를 죽이겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"내게는 동료가 없소."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"그럼 가서 그럴 만한 사람을 가서 찾아와! 다른 사람의 신뢰를 얻은 후 배신을 해, 그러면 당신은 자신이 세 번째 힘을 얻을 자격이 있다는 걸 입증할 수 있어! 이 과업을 완수하기 전에는 내게 다시는 말을 걸지마."~ */
  IF ~~ THEN REPLY #27266 /* ~"싫소."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"좋소, 좋아."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"그래, 목표를 달성했소? 동료 한 명을 주문을 쓰지 않고 직접 죽였소?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"그렇소.~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"아직 아니오."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"아니오. 그리고 난 그러지도 않을 거요."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~책은 갑작스럽게 침묵한다. ~ */
  IF ~~ THEN REPLY #27273 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"누구든지 상관하지 않을 테니 가서 당신의 각오를 입증하시오. 지금 당장 가서 실행하시오."~ */
  IF ~~ THEN REPLY #27275 /* ~"좋소."~ */ JOURNAL #27276 /* ~나는 책으로부터 힘을 얻는 대신 내 동료들 중 하나를 죽이기로 합의했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"훌륭하오. 당신은 스스로가 내 뛰어난 생도임을 입증했소. 그럼 이게 내가 당신에게 가르쳐 줄 수 있는 마지막 주문이오." 책은 기묘한 음절을 몇 마디 중얼거린다, 그러자 당신은 가슴 속에서 뭔가가 울부짖는 듯한 소리가 나는 것을 느낀다. 당신은 주문 파워 워드: 킬을 알게 되었다. ~ */
  IF ~~ THEN REPLY #27278 /* ~"고맙소, 책. 이젠 뭐요?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~책은 내 일행 중 하나를 죽이는 대가로 또 하나의 보다 강력한 주문을 내게 주었다. 할만한 가치가 있는 거래였다. ~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"안녕히 계시오, 책."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~책은 내 일행 중 하나를 죽이는 대가로 또 하나의 보다 강력한 주문을 내게 주었다. 할만한 가치가 있는 거래였다. ~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~책은 침묵만 지킬 뿐 당신에게 아무런 대답도 하지 않는다. 더 이상 얘기할 밑천이 떨어진 것 같다. ~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"알겠소."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~책은 더 이상 내게 말을 하지 않는다..~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"알겠소."~ */ EXIT
END
