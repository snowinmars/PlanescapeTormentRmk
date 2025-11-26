// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~이 잘생긴 청년은 깊은 생각에 잠겨 이마와 입술을 찌푸리고 있다.~ */
  IF ~~ THEN REPLY #43992 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~그가 생각을 하도록 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~이 청년은 아직도 고민하고 있는 것 같다. 당신이 다가가자 그는 인사를 한다. "다시 만나게 되어 반갑소. 내게 원하는 것이라도 있소?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"당신과 줄리엣에 대해 얘기해야겠소."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"당신과 줄리엣에 대해 얘기해야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"나도 반갑소. 내게 무엇을 원하시오?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"무슨 용건이오?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"당신이 몬태규요? 줄리엣에 대해 얘기할 것이 있소."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"당신과 줄리엣에 대해 얘기해야겠소."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"당신과 줄리엣에 대해 얘기해야겠소."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"이 곳에 대해 물어볼 것들이 있소..."~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"나는 센세이트 당원 몬태규요."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"몬태규... 난 당신과 줄리엣에 대해 얘기해야만 하오."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"몬태규... 난 당신과 줄리엣에 대해 얘기해야만 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"당원?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"센세이트?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"디른 말로 하면 '멤버'요."~ */
  IF ~~ THEN REPLY #44016 /* ~"'센세이트'라고 얘기했소?"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"그렇소... '감각의 공동체'. 시길 최대의 당파요. 센세이트에 대해 더 알고 싶다면 스플린터와 이야기하시오. 그는 시 공회당 출구 바로 옆에 서 있소."~ */
  IF ~~ THEN REPLY #44019 /* ~"'당원'이라고 얘기했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"나는 당파의 행정관들 중 한 분의 조수로 일하고 있소. 하지만 나는 최근 들어 인생의 기이함 때문에 당혹스러워 하고 있소.""~ */
  IF ~~ THEN REPLY #44023 /* ~"뭐...?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"여자 문제요."~ */
  IF ~~ THEN REPLY #44027 /* ~"대체 무엇이 문제요?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"당신은 여자요?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~청년은 당신을 한참 동안 바라본다. "아니오."~ */
  IF ~~ THEN REPLY #44032 /* ~"대체 무엇이 문제요?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"어쨌든 질문할 것들이 더 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"나는 무엇이 그녀를 괴롭히고 있는지 모르겠소. 나는 그녀를 기쁘게 해주려고 노력했소. 나는 원인이 대체 무엇인지 모르겠소."~ */
  IF ~~ THEN REPLY #44036 /* ~"당신들 두 사람 사이의 관계는 어떻소?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"안됐군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"이 일시적인 불만과 지루함을 제외하고는 모든 것이 다할 나위 없이 만족스럽소! 우리 주변의 모든 것들이 너무나도 평온하오... 우리 가족들은 우리의 다가올 결혼에 대해 만족하고 있으며, 그녀의 형제자매들도 날 좋아하오. 잘못된 건 아무 것도 없소."~ */
  IF ~~ THEN REPLY #44040 /* ~"흠... 문제가 없다는 것이 문제 같소."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"안됐군. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"당신이 처한 상황이 호전되기를 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"문제가 없는 게 문제라는 게 대체 무슨 뜻이오? 직설적으로 말해주기를 바라오."~ */
  IF ~~ THEN REPLY #44045 /* ~"아마 그녀는 당신들 관계에서 더 큰 자극이 있기를 바라는 건지도 모르오."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"어떻게 그대가 그녀가 무엇을 원하는지 알 수 있소?!" 그는 흥분한다. "우리는 서로를 아무런 조건없이 사랑하오, 그리고 미숙한 사랑에서 흔히 볼 수 있는 것 같은 추잡함이나 불쾌함은 우리에게는 해당되지 않소. 나는 그대에게 결투를 신청하오, 그리고 나는 그대를 야비한 악당이자 바보라 부르겠소!"~ */
  IF ~~ THEN REPLY #44049 /* ~"기다리시오... 진정하시오."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"나와 싸우려 하다니 어리석군. 하지만 원한다면 해주지..."~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"날 모욕하는 건 그쯤에서 그만두는 게 좋을 거요. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"혀를 함부로 놀리지 마시오, 아니면 그것이 입에서 떨어져 나올 수도 있으니까. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"미안하오... 일시적인 흥분 때문에 결례를 범했소. 그대에게 진심으로 사과하리다."~ */
  IF ~~ THEN REPLY #44054 /* ~"괜찮소."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"조심하도록 하시오. 만약 나와 싸웠다면 그건 당신 인생에서 최악의 실수가 되었을 것이오."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~그것을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"그대는 정말 자비롭소."~ */
  IF ~~ THEN REPLY #44058 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"그럼 조심을 하도록 하겠소."~ */
  IF ~~ THEN REPLY #44061 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"오?" 그는 의심이 다소 섞인 당혹스러운 표정으로 당신을 쳐다본다. ~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"나는 그녀가 매음굴에서 얘기하는 걸 우연히 들었소. 그녀는 외도를 하는 모양이오."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"나는 그녀의 사랑을 요구하오. 내가 당신을 박살을 내기 전에 당신의 거짓된 사랑의 선언을 철회하시오."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"관두시오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"그녀에 대해서는 나중에 얘기합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"그대는 거짓을 말하고 있소. 내게 그대의 주장을 믿기 위해서는 증거가 필요하오."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"나는 또한 이러한 편지들도 발견했소. 여기 있소, 읽어보시오."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~거짓말: "나는 그녀가 그에게서 온 편지를 읽는 것을 보았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"그 일에 대해서는 나중에 얘기합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"아니. 나는 당신 주장을 믿을 수가 없소... 내가 상황에 대한 정확한 판단을 그러한 편지들을 내 손으로 직접 만져 봐야겠소. 만약 그대가 내게 이러한 편지들을 가져온다면, 그대와 이 문제 대해 다시 얘기하도록 하겠소."~ */
  IF ~~ THEN REPLY #44073 /* ~"편지들을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~그는 편지를 받아서 읽는다. "슬프도다! 사실이었군! 그녀는 자신을 정열적으로 사랑하는 다른 애인을 찾았군! 아, 실연은 센세이트의 운명이오. 그의 편지에 담긴 열정을 고려할 때 나는 이 다른 구애자가 그녀를 차지하도록 하고 다른 사랑을 찾아야겠소."~ */
  IF ~~ THEN REPLY #44075 /* ~"기다리시오, 이건 모두 책략이었소."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"그럼 행운을 빌겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"허? 대체 무슨 얘기요?"~ */
  IF ~~ THEN REPLY #44078 /* ~"그녀는 당신이 보다 정열적이 되도륵 당신을 속이려 하고 있소."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"관두시오... 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"그럼 왜 그녀는 직접 뭐라고 얘기하지 않은 거요?"~ */
  IF ~~ THEN REPLY #44081 /* ~"그녀에게는 그런 생각이 떠오르지 않았던 모양이오..." ~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"이 방법이 그녀에게는 더 쉽게 느껴졌던 것 같소."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"그렇지 않은 모양이오. 그럼 어떻게 해야 하겠소?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"아무런 행동도 취하지 마시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"좋소. 그럼 반응을 보이는 것은 미루도록 하겠소."~ */
  IF ~~ THEN REPLY #44088 /* ~"당신이 이 일을 원만히 해결할 수 있기를 바라겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"당신이 원하는 대로 하리다. 안녕히 계시오."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"어떻게 하면 그렇게 할 수 있겠소?"~ */
  IF ~~ THEN REPLY #44091 /* ~"그녀에게 당신들 관계가 지루해졌으며 이제 그녀에게 더 이상 관심이 없다고 말하시오."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"당신이 외도를 하고 있다고 말하시오."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"난 잘 모르겠소. 당신이 결정할 문제요."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"그대는 내게 그녀의 관심을 자극하기 위해 무관심한 척하라는 거요? 그건 참으로 얄궂소. 나는 그대가 제안한 대로 하고 그 결과를 지켜보겠소."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"일이 잘 되기를 바라겠소. 행운을 비오. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"일이 잘 되기를 바라겠소. 행운을 비오. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"그러한 충고는 매우 위험할 수도 있소, 하지만 그것이 그녀로 하여금 우리의 관계를 검토하고 그것을 유지하기 위해 노력하도록 만들 것이라는 데는 의심할 여지가 없소. 그렇게 하리다. 구체적으로 어떻게 해야 하오?"~ */
  IF ~~ THEN REPLY #44100 /* ~"내가 처리하겠소. 그녀에게 당신이 다른 여자와 있는 걸 보았다고 말하겠소."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"난 잘 모르겠소. 당신이 결정할 문제요."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"그럼 좋소. 그대 말대로 하리다. ~ */
  IF ~~ THEN REPLY #44103 /* ~"다시 생각해 보니, 당신이 처리하는 편이 나을 것 같소."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"다음 번에 그녀를 만나면 그녀에게 반드시 얘기하도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"다음 번에 그녀를 만나면 그녀에게 반드시 얘기하도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"정말이오?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"좋소, 그것 참 마음에 드오."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"일이 잘 되기를 바라겠소. 행운을 비오. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"일이 잘 되기를 바라겠소. 행운을 비오. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"좋소... 그럼 어떻게 해야 하오?"~ */
  IF ~~ THEN REPLY #44113 /* ~"그녀에게 당신들 관계가 지루해졌으며 그녀게 더 이상 관심이 없다고 말하시오."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"당신이 외도를 하고 있다고 말하시오."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"난 잘 모르겠소. 당신이 결정할 문제요."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"하지만... 나는 우리가 서로 어떤 얘기도 나눌 수 있다고 생각했었소."~ */
  IF ~~ THEN REPLY #44117 /* ~"이런 일은 그 특성상 말을 끄내기가 무척 어려운 법이오."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"당신이 잘못 생각했던 것인지도 모르오."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"그럼 내게 어떻게 하라고 권하고 싶소?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"아무런 행동도 취하지 마시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"그대는 나와 싸울 정도로 그녀를 사랑하오?"~ */
  IF ~~ THEN REPLY #44124 /* ~"그렇소."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"아니, 난 그녀를 사랑하지 않소, 하지만 그녀를 위서 싸우겠소."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~그는 당신을 잠시 살펴본다. "그대는 이 문제에 대해 매우 정열적이오. 정열은 사랑에서 나오는 법이오. 그대는 그녀를 사랑하고 있고, 나는 그녀가 그대의 사랑처럼 열정적인 사랑을 잃게 할 수는 없소. 나는 지금 이 순간부터 그녀에 대한 일체의 권리를 포기하겠소. 그대가 원하는 대로 하시오."~ */
  IF ~~ THEN REPLY #44127 /* ~"잠깐 기다리시오... 이건 모두 책략에 불과하오."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"에... 그럼 좋소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"책략? 무슨 책략 말이오?'~ */
  IF ~~ THEN REPLY #44131 /* ~"그녀는 당신이 자기를 위해 싸우도록 유도하려고 했소."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"관두시오... 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"오? 그녀는 자신에 대한 내 사랑이 나로 하여금 그대와 같은 체구의 끔찍한 흉터 투성이의 사내와 난투을 벌이게 할 정도로 무한하다고 생각했던 거요? 그녀는 그녀에 대한 헌신을 과대 평가한 것 같소. 그래... 이 책략에 대해 어떻게 대응하면 되겠소?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"당신도 배신하는 것이 공평하지 않겠소..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"아무런 행동도 취하지 마시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"아, 하지만 보시오... 그건 정열이오. 정열은 사랑에서 나오는 법이오. 그대는 그녀를 사랑하고 있고, 나는 그녀가 그대의 사랑처럼 열정적인 사랑을 잃게 할 수는 없소. 나는 그녀의 아름다움, 성질, 미덕을 잘 알고 있으며, 그리고 그녀가 남자들이 보다 위대해지도록 영감을 불어넣을 수 있다는 것도 알고 있소. 나는 지금 이 순간부터 그녀에 대한 일체의 권리를 포기하겠소."~ */
  IF ~~ THEN REPLY #44138 /* ~"잠깐 기다리시오... 이건 모두 책략에 불과하오."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"에... 그럼 좋소. 안녕히 계시오."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"시 공회당? 스플린터와 이야기하시오. 그는 시 공회당 출구 바로 옆에 서 있소."~ */
  IF ~~ THEN REPLY #44141 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"흠... 전설적인 나이트 해그 말이오? 퀠에게 물어보시오. 그는 그러한 것들에 대해 매우 박식하오. 그는 시 공회당 안에 있을 거요, 하지만 정확히 어디 있는지는 모르겠소."~ */
  IF ~~ THEN REPLY #44144 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"당신도 안녕히 가시오. 이제 나는 일이 있어 가봐야겠소. 만약 다시 만나게 되면 그 일에 대해 더 얘기하도록 합시다." 몬태규는 인사를 하고 돌아서서 자리를 뜬다.~ */
  IF ~~ THEN REPLY #44147 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END
