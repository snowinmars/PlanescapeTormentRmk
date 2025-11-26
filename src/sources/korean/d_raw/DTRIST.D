// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~당신의 관심을 끌려고 애쓰고 있는 젊은 여인이 보인다. 그녀는 허름한 옷을 걸치고는 있으나, 그녀 주위의 다른 사람들과는 달리 그녀의 태도는 매우 우아하다. 자세히 살펴보니 그녀의 피부는 깨끗하고 매끄럽다. 그녀에게서는 이 구역 주민들의 공통된 특징인 누런 피부색은 찾아볼 수가 없다. 당신이 다가가자 그녀는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #37973 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"당신 눈에 띄게 되어 정말 다행이에요. 나는 용병의 도움을 필요로 하고 있어요..." 그녀는 잠시 멈추고 당신을 보다 자세히 살펴본다. "겉모습만 가지고 판단한다면 당신이 바로 그런 인물인 것 같군요."~ */
  IF ~~ THEN REPLY #37976 /* ~"겉모습만 가지고 사람을 판단하는 건 어리석은 일이오."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"당신은 내게 정확히 뭘 원하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"이 얘기는 별로 마음이 내키지 않는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~그녀의 얼굴에 걱정하는 빛이 스친다. "당신이 옳아요. 날 용서하세요. 당신을 모욕하려고 한 건 아니었어요. 나는 매우... 절박한 상황에 처했어요. 나는 현상을 타개하려고 내가 가진 모든 수단을 다 동원했지만.."~ */
  IF ~~ THEN REPLY #37980 /* ~"당신은 내게 정확히 뭘 원하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"이 얘기는 별로 마음이 내키지 않는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~그녀는 고개를 끄덕인다. "핵심만 말하자면 나는 짓지도 않은 죄 때문에 노예로 팔리게 되었어요. 나는 내 무죄를 입증하고 이 운명으로부터 날 해방시켜 줄 투사를 찾고 있어요..." 그녀는 잠시 얘기를 멈추고 기대에 찬 눈으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #37983 /* ~"정확히 어떤 일이 일어나고 있는지 내게 말해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"이 얘기는 별로 마음이 내키지 않는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~그녀는 잠시 생각을 한다. "이건 긴 얘기예요, 하지만 부디 끝까지 들어주세요."~ */
  IF ~~ THEN REPLY #37986 /* ~"계속하시오."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~그녀는 자신의 이야기를 시작하면서 한숨을 쉰다. "내 남편은 얼마 전에 죽으면서 내게 사업을 물려주었어요. 하지만 나는 장사에는 소질이 없기 때문에 가게를 팔기로 했어요. 그런데 얼마 뒤에 어떤 사채업자가 나타나서 가게의 채무가 아직 변제되지 않았다고 하더군요..." 그녀는 생각을 정리하려고 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #37989 /* ~"계속하시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"나는 내 남편이 보관해 둔 모든 서류를 점검했고 실제로 그가 돈을 빌린 사실이 있다는 것을 확인했어요. 하지만 그 채무는 최근에 전액 변제되었어요. 나는 이 사실을 사채업자에게 설명했고, 며칠 후 그는 내게 서류의 사본을 달라고 요구했어요..." 그는 근심에 찬 표정으로 생각을 하기 위해 잠시 얘기를 중단한다...~ */
  IF ~~ THEN REPLY #37991 /* ~"계속하시오."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"들을 만큼 들은 것 같소. 요점만 말하시오."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"내가 채무 변제 사실을 입증할 수 없게 되자 사채업자는 날 법정에 세웠어요. 내가 지닌 모든 돈은 채무를 변제하기 위해 차압당했으며, 그것으로도 빛을 다 갚을 수가 없었기 때문에 나는 그 차액의 변제를 위해 여기서 노예로 팔리게 되었어요." 그녀는 절망적인 표정을 짓는다.~ */
  IF ~~ THEN REPLY #37993 /* ~"난 이해를 못하겠소. 왜 당신은 노예로 팔리게 된 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"이미 충분히 들은 것 같소. 요점만 말하시오."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~그녀는 어깨를 으쓱한다. "그들은 그 제도에는 여러 가지 목적이 있다고 해요. 첫째로, 감옥에는 가장 흉악한 죄인들만 가두면 되기 때문에 감옥을 상대적으로 여유 있게 운영할 수가 있어요. 둘째, 죄인의 판매를 통해 그 사건과 관련된 일체의 비용을 회수할 수가 있어요. 마지막으로 죄인들은 응분의 죄값을 치르게 되며, 일정 기간이 지난 후에는 더 나은 시민으로서 사회에 복귀하게 된다고 해요."~ */
  IF ~~ THEN REPLY #37996 /* ~"흥미로운 얘기이긴 하나 어떻게 내가 당신을 도울 수 있는지 난 모르겠소."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"나... 나는 채무를 변제했다는 걸 입증할 서류를 찾아 줄 사람이 필요해요. 또는 당신이 내 노예 계약서를 사 주신다면 그 비용을 나중에 갚아 드리겠어요..." 그녀는 애원하는 표정으로 당신을 쳐다본다. "나는 이 구역에서 다음 5년간을 보낼 수는 없어요. 그럼 난 죽을 거예요! 당신도 여기서 사는 사람들이 공통적으로 앓는 병에 대해서는 알고 계시겠지요?"~ */
  IF ~~ THEN REPLY #37999 /* ~"아니오, 무슨 병 얘기를 하는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"그렇소, 노란 피부와 기침..."~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"내가 상관할 바가 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~그녀는 자신의 주위에 있는 사람들을 가리킨다. "그들을 좀 보세요. 누런 피부가 보이지요? 또 지속적인 기침도. 그리고 이제는 하늘에서 소용돌이치고 있는 매연을 올려다보세요..." 그녀는 자신의 머리 위를 가리킨다. "치료사의 도움을 받지 않으면 매연이 날 죽일 거예요. 하지만 노예가 치료사에게 돈을 지불할 수 있으리라고 생각되지 않아요."~ */
  IF ~~ THEN REPLY #38003 /* ~"그래서 모두들 피부가 노란 거였군..."~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"내가 상관할 바가 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~그녀는 고개를 끄덕인다. "그래요. 제발 자비를 베풀어 날 도와주세요..." 그녀는 당신을 초조하게 바라본다. "제발..."~ */
  IF ~~ THEN REPLY #38006 /* ~"만약 내가 당신을 도우면 난 뭘 얻게 되오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~진실: "당신은 법정에서 유죄판결을 받았고, 당신을 도울 수 있는 건 오직 법뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"그렇소, 당신을 돕겠소. 하지만 당신에게 물어볼 것들이 좀 있소..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~트리스트라는 여자는 잃어버린 채무 서류를 찾지 못하는 한 노예로 팔릴 신세이다. 나는 그녀를 돕기로 했다.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"아니, 난 연관되고 싶지 않소."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"이 일에 대해서는 좀 생각해 봐야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~그녀는 열심히 고개를 끄덕인다. "뭐든지 물어보세요."~ */
  IF ~~ THEN REPLY #38012 /* ~"체권자의 이름은 무엇이오?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"당신 계약에 대해선 누구와 얘기를 해야 하오?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"혹시 채무 서류를 어디다 잘못 둔 건 아니오?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"당신은 채무 서류가 도난당했을지도 모른다고 생각하시오?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"당신은 이러한 것들에 대해 법정에서 진술했소?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"이만 실례해야 할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"나는 그의 이름을 똑똑히 기억하고 있어요. 내가 당한 일들을 생각하면 쉽게 잊을 수가 없죠..." 그녀는 꿈꾸는 듯한 표정을 짓더니 잠시 몸을 부르르 떤다. "그의 이름은 바이런 픽잇이에요." 그녀는 잠시 얘기를 중단한다. "그리고 그의 동료는 렌니란 사람일 거예요."~ */
  IF ~~ THEN REPLY #38019 /* ~"이 렌니란 자는 누구요?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"바이런은 어디 가면 만날 수가 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~그녀는 잠시 생각을 한다. "그는 아마 개방 시장 부근에 있을 거예요. 죄송하지만 확실히는 모르겠어요."~ */
  IF ~~ THEN REPLY #38024 /* ~"당신은 렌니란 사람에 대해 얘기했소. 그가 누구요?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"경매인 디레인이에요. 그는 대개 저쪽에 서 있어요." 그녀는 연단의 앞쪽을 가리킨다.~ */
  IF ~~ THEN REPLY #38028 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~그녀는 고개를 젓는다. "아니에요. 나는 매우 세심한 성격이에요. 나는 내 남편의 서재에 있는 금고에 서류를 보관해 두었어요. 서류는 그 방 밖으로 나간 적이 없어요..."~ */
  IF ~~ THEN REPLY #38031 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~그녀는 어깨를 으쓱한다. "모르겠어요. 누가 왜 다른 귀중품들은 놔두고 그것만 훔쳐 가겠어요? 이치에 맞지 않아요."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"글쎄... 채권자가 당신이 빚을 두 번 갚도록 만들기 위해 훔쳐갔을지도..."~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"글쎄... 그냥 스쳐 지나간 생각이었을 뿐이오..."~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"글쎄... 채권자가 당신이 빚을 두 번 갚도록 만들기 위해 훔쳐갔을지도..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"글쎄... 그냥 스쳐 지나간 생각이었을 뿐이오..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~그녀는 충격을 받은 표정으로 당신을 쳐다본다. "그건... 그건 정말 끔찍한 생각이에요!" 그녀는 잠시 머뭇거린다, 그리고 생각을 하면서 턱을 손가락으로 두드리기 시작한다. "하지만 동시에 매우 교묘한 수법이기도 하군요. 바이런 픽잇은 초소의 기사처럼 보였어요."~ */
  IF ~~ THEN REPLY #38039 /* ~"그가 뭐라고?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~그녀는 의아스럽다는 표정으로 당신을 본다. "도둑이나 사기꾼을 가리키는 말이에요. 그런 사람들은 초소 또는 배신의 기사라고 부르죠."~ */
  IF ~~ THEN REPLY #38043 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~그녀는 고개를 끄덕인다. "물론이에요. 나는 내 처지에 대해 많은 이들에게 호소했어요. 하지만 돕겠다고 나선 건 당신이 처음이에요." 그녀는 따듯한 미소를 짓는다. ~ */
  IF ~~ THEN REPLY #38046 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~그녀는 어깨를 으쓱한다. "생각해볼 만한 가치가 있어요."~ */
  IF ~~ THEN REPLY #38050 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~그녀는 한동안 당신을 멍하니 바라본다, 그리고 우려의 빛이 그녀의 얼굴을 스치고 지나간다. "나... 나는 아무 것도 가진 게 없어요. 나는 모든 걸 잃었어요." 그녀는 이제 필사적이다. "제발 날 버리고 가지 마세요..."~ */
  IF ~~ THEN REPLY #38052 /* ~"그렇소, 당신을 돕겠소. 대신 물어볼 것들이 좀 있소..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~트리스트라는 여자는 잃어버린 채무 서류를 찾지 못하는 한 노예로 팔릴 신세이다. 나는 그녀를 돕기로 했다.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"아니, 난 연관되고 싶지 않소."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"이 일에 대해서는 좀 생각해 봐야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~트리스트가 보인다. 그녀는 절박한 표정으로 당신을 바라보고 있다. "다시 만나 반가워요. 당신과 어떤 중대한 일에 대해 상의할 수 있을까요?"~ */
  IF ~~ THEN REPLY #38056 /* ~"좋소."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"지금은 그럴 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~트리스트가 보인다. 그녀는 절박한 표정으로 당신을 바라보고 있다. "다시 만나 반가워요. 혹시 날 도우러 오셨나요?"~ */
  IF ~~ THEN REPLY #38059 /* ~"당신은 아직도 자신을 도와줄 사람을 찾고 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"당신에 대한 이야기를 다시 들려주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"관심없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~트리스트가 보인다. 그녀는 절박한 표정으로 당신을 바라보고 있다. "다시 만나 반가워요. 혹시 날 도우러 오셨나요?" 마음을 바꾸셨나요?"~ */
  IF ~~ THEN REPLY #38063 /* ~"당신은 아직도 자신을 도와줄 사람을 찾고 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"당신에 대한 이야기를 다시 들려주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"아니, 관심없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~트리스트가 보인다. 그녀는 당신이 다가오는 것을 보며 기대에 부풀어 미소를 짓는다. "서류는 찾으셨나요? 날 해방시켜 주실 수 있나요?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"그렇소. 난 그 서류를 디레인에게 줄 것이고, 그는 즉시 당신을 풀어 줄 것이오."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"당신에게 몇 가지 질문을 다시 해야겠소..."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"아니, 아직 노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~그녀는 긴장이 너무 급격히 풀린 탓인지 방심 상태에 빠진 듯하다. 당신은 그녀가 기절하지 않을까 걱정하나 그녀는 빨리 회복한다. "고마워요. 가서 디레인하고 얘기를 한 후 돌아와 주세요."~ */
  IF ~~ THEN REPLY #38070 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~트리스트는 당신을 바라보며 따뜻한 미소를 짓는다. "당신은 내 구세주예요. 이 은혜는 영원히 잊지 않겠어요."~ */
  IF ~~ THEN REPLY #38072 /* ~"당신을 도울 수 있어 기뻤소, 트리스트."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"다시는 내게 그런 부탁을 하지 마시오. 정말 골치 아픈 일이었으니까."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"고마워요." 그녀는 주변을 흘긋 본 후 잠시 생각에 잠긴다. "당신은 나를 확실한 죽음... 그것도 느리고 고통스러운 죽음으로부터 구했어요..." 그녀는 생각을 하느라 눈살을 찌푸린다. "잠깐 기다리세요. 곧 돌아올 테니." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #38075 /* ~"좋소, 트리스트."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~트리스트가 다가오고 있다. 그녀는 미소를 지으며 손을 흔들고 있다. "안녕하세요. 기다려 주셔서 고마워요." 그녀는 주변을 흘긋 보더니 드레스 속에서 지갑을 꺼낸다. "당신이 찾아준 서류만 있으면 법정은 내게 지위와 재산을 되찾아 줄 거예요. 얼마되지는 않지만 당신이 날 위해 해주신 일에 대한 감사의 표시로 받아 주세요." 그녀는 지갑을 건네준다.~ */
  IF ~~ THEN REPLY #38078 /* ~"고맙소, 트리스트."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~그녀는 미소짓는다. "천만의 말씀이에요. 정말 고마워요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #38080 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~그녀는 얼굴을 찌푸린다, 그러나 이내 고개를 끄덕인다. "그래요. 나도 상상이 가요. 다시 한 번 감사드리겠어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #38082 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~그녀는 잠시 생각을 한다. "키가 작고 야성적으로 생긴 남자가 법정에 몇 번 나타났었어요. 그는 픽잇 뒤에 앉아서 가끔씩 그에게 뭐라고 속삭이곤 했어요." 그녀는 잠시 멈추고 생각에 잠긴다.~ */
  IF ~~ THEN REPLY #38084 /* ~"계속하시오."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~그녀는 눈살을 찌푸린다. "내가 그를 기억하는 건 그가 자신을 입은 옷을 몹시 불편하게 여겼었기 때문이에요. 그는 마치 그 옷이 몸에 잘 맞지 않는 새 옷인 듯 손가락으로 잡아당기곤 했어요." 그녀는 다시 말을 멈춘다. "그러다 한 번은 픽잇이 그에게 안절부절하지 말고 좀 가만히 있으라고 주의를 주었어요. 그는 그를 렌니라고 불렀어요."~ */
  IF ~~ THEN REPLY #38086 /* ~"렌니는 어디 가면 만날 수 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~그녀는 잠시 생각을 한 후 어깨를 으쓱한다. "나도 잘은 몰라요... 하지만 전에 남편에게 불량배들이 시장 남동쪽에 있는 공성탑 부근에서 어슬렁거린다는 얘기를 들은 적이 있어요.."~ */
  IF ~~ THEN REPLY #38090 /* ~"바이런은 어디 가면 만날 수가 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~우려의 빛이 그녀의 얼굴을 스치고 지나간다. "법도 때로는 실수를 할 수 있다는 사실은 당신도 아시겠지요? 만약 결백한 사람이 그런 실수에 의해 고통을 받는다면... 그건 정말 끔찍한 오심이에요." 그녀는 이제 필사적이다. "제발 날 버리고 가지 마세요..."~ */
  IF ~~ THEN REPLY #38094 /* ~"그렇소, 당신을 돕겠소. 대신 물어볼 것들이 좀 있소..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"아니, 난 연관되고 싶지 않소."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"이 일에 대해서는 좀 생각해 봐야겠소. 안녕히 계시오."~ */ EXIT
END
