// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~그래 네가 왔군.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~너는 이 곳에서 환영받지 못한다, 파탄자. ~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"내 친구들에게 대체 무슨 짓을 한 거요?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"내 친구들에게 대체 무슨 짓을 한 거요?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"내 동료들에게 대체 무슨 짓을 한 거요?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"내 동료들에게 대체 무슨 짓을 한 거요?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"당신은 누구요?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~그들은 늘 그랬듯이 너를 위해 죽었다. 그것이 죽어야 하는 숙명을 지닌 자들의 운명이다.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~그는 그들이 늘 그랬듯이 너를 위해 죽었다. 그것이 죽어야 하는 숙명을 지닌 자들의 운명이다.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~그녀는 그들이 늘 그랬듯이 너를 위해 죽었다. 그것이 죽어야 하는 숙명을 지닌 자들의 운명이다.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~그것이 너를 따르는 모든 자들의 숙명이다, 파탄자. 너는 많은 것들을 잊었다. ~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"왜 그런 짓을 했소?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"왜 그런 짓을 했소?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"왜 그런 짓을 했소?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"왜 그런 짓을 했소?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~그들은 다른 곳도 아닌 바로 *여기서* 내게 위해를 가하려고 했다. 나는 자신을 방어했다. 그 과정에서 죽음이 그들을 데려갔다. 그들의 죽음은 그들 자신의 손에 의한 것이다.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~그는 다른 곳도 아닌 바로 *여기서* 내게 위해를 가하려고 했다. 나는 자신을 방어했다. 그 과정에서 죽음이 그를 데려갔다. 그의 죽음은 그 자신의 손에 의한 것이다.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~그녀는 다른 곳도 아닌 바로 *여기서* 내게 위해를 가하려고 했다. 나는 자신을 방어했다. 그 과정에서 죽음이 그녀를 데려갔다. 그녀의 죽음은 그녀 자신의 손에 의한 것이다.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~그녀는 다른 곳도 아닌 바로 *여기서* 내게 위해를 가하려고 했다. 나는 자신을 방어했다. 그 과정에서 죽음이 그녀를 데려갔다. 그녀의 죽음은 그녀 자신의 손에 의한 것이다.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~나는 그들에게 이 곳을 떠날 기회를 주었다, 그러나 그들은 자신들이 치러야 할 대가에도 불구하고, 너를 도울 각오가 되어 있었다. ~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"그래서 당신은 그들을 *죽였군*."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"그래서 당신은 그들을 *죽였군*."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"그래서 당신은 그들을 *죽였군*."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"그래서 당신은 그들을 *죽였군*."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~나는 그에게 이 곳을 떠날 기회를 주었다, 그러나 그는 자신이 치러야 할 대가에도 불구하고, 너를 도울 각오가 되어 있었다. ~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~나는 그녀에게 이 곳을 떠날 기회를 주었다, 그러나 그녀는 자신이 치러야 할 대가에도 불구하고, 너를 도울 각오가 되어 있었다. ~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~나는 그녀에게 이 곳을 떠날 기회를 주었다, 그러나 그녀는 자신이 치러야 할 대가에도 불구하고, 너를 도울 각오가 되어 있었다. ~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~그녀는 너를 보호하려고 특히 정열적이었다. 그녀의 너에 대한 감정은 엘뤼시온의 화염보다 더 밝게 빛났다.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~그녀는 매우 강했다. 그녀의 고통에 대한 내성은 상급 마족 셋을 죽일 정도의 고통도 견딜 수 있을 정도였다.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~그들의 죽음은 내가 원한 바가 아니었다.~ */
  IF ~~ THEN REPLY #64051 /* ~"그럼 왜 그런 짓을 했소?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~티플링 소녀는 너를 보호하려고 특히 정열적이었다. 그녀의 너에 대한 감정은 엘뤼시온의 화염보다 더 밝게 빛났다.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~티플링 소녀는 너를 보호하려고 특히 정열적이었다. 그녀의 너에 대한 감정은 엘뤼시온의 화염보다 더 밝게 빛났다.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~그리고 타나리... 그녀는 매우 강했다. 그녀의 고통에 대한 내성은 바테주조차 무색하게 할 정도였다.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~타나리는 매우 강했다. 그녀의 고통에 대한 내성은 바테주조차 무색하게 할 정도였다.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~그의 죽음은 내가 원한 바가 아니었다.~ */
  IF ~~ THEN REPLY #64049 /* ~"그럼 왜 그런 짓을 했소?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~그녀의 죽음은 내가 원한 바가 아니었다.~ */
  IF ~~ THEN REPLY #64050 /* ~"그럼 왜 그런 짓을 했소?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~그것은 내 뜻이 아니었다. 그들을 이 곳으로 데려온 것은 내가 아니다.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~그것은 내 뜻이 아니었다. 그를 이 곳으로 데려온 것은 내가 아니다.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~그것은 내 뜻이 아니었다. 그녀를 이 곳으로 데려온 것은 내가 아니다.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~그들 모두에게는 선택의 여지가 있었다. 그리고 그녀는 널 위해 죽기로 선택했다.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~그에게는 선택의 여지가 있었다. 그리고 그들은 널 위해 죽기로 선택했다.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~그녀에게는 선택의 여지가 있었다. 그리고 그녀는 널 위해 죽기로 선택했다.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~너를 따르는 자들의 운명은 늘 그랬다. 왜냐하면 그들은 해방을 갈망하는 고통받는 영혼이기 때문이다. 그러나 그들은 그 이유조차 모른다..~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~너는 이것을 잊었었다. 그리고 너는 다시 잊을 것이다.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"당신은 누구요?! 왜 이런 짓을 한 거요?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~설마 너는 여기까지 오고도 종국에 무엇이 기다리고 있는지를 알지 못하는가? ~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"아니, 난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"아니, 난 당신이 누군지 아오. 당신은 내 죽음이오. 당신 갑옷은 나뭇가지처럼 뒤틀려 있소. 그것에는 래벌의 마법의 특징이 잘 나타나 있소."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"무슨 뜻이오?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~나는 모든 생명과 함께 걷는 자이다. 내 목소리는 죽음의 가르랑거림, 산 자가 죽음을 맞이하면서 마지막으로 내쉬는 숨소리이다. ~ */
  IF ~~ THEN REPLY #64065 /* ~"당신은 내... 죽음이군."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~그렇다. 나는 해그의 마력에 의해 너로부터 분리된 존재이다. 네 육신이라는 감옥으로부터 해방된 존재이다.~ */
  IF ~~ THEN REPLY #64066 /* ~"나로부터 해방된?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~그렇다. 나는 해그의 마력에 의해 너로부터 분리된 존재이다.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~나는 모든 생명과 함께 걷는 자이다. 내 목소리는 죽음의 가르랑거림, 산 자가 죽음을 맞이하면서 마지막으로 내쉬는 숨소리이다. .~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~나는 네 육신이라는 감옥으로부터 해방되었다.~ */
  IF ~~ THEN REPLY #64068 /* ~"나로부터 해방된?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~내가 너라는 암적인 껍질로부터 분리된 순간, 나는 삶을 알았다. 나는 자유를 알았다. 나는 그것을 네게 내주지 않겠다.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"우리는 분리되어서는 안 되오. 그리고 우리가 분리된 탓에 다원 우주 전체가 고통을 받았소."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"당신은 나와 내 전신들에게 꽤나 성가신 존재였소, 혼령. 우리는 분리되어서는 안 되오."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~너는 분리의 의미에 대해 아무 것도 알지 못한다. 네 기억이 다시 죽기 전에 우리가 결코 *하나*의 존재가 되어서는 안 되었었다는 것을 알라."~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~이것이 너와 내가 나누는 마지막 대화가 될 것이다, 파탄자.~ */
  IF ~~ THEN REPLY #64074 /* ~"그렇다면 알고 싶은 것들이 있소, 혼령. 나는 머나먼 길을 왔으며 당신만이 대답할 수 있는 질문들이 많소 "~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"나는 당신에게 항복하지 않을 것이오. 준비를 단단히 하시오, 혼령. 내가 내 죽음을 죽일 수 있는지 어디 두고 봅시다. " ~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~나는 마지막으로 너에게 이 번 한 번만 질문에 대답해주겠다. 그 후에 이 요새는 다시 조용해질 것이다.~ */
  IF ~~ THEN REPLY #65848 /* ~"그렇다면 내 질문은 다음과 같소..."~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"나는 당신에게 항복하지 않겠소. 각오를 하시오, 혼령. 어디 내가 내 죽음을 죽일 수 있는지 한 번 봅시다."~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(This is a placeholder.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~너는 내가 널 두려워 한다고 생각하는가, 파탄자? 나는 널 두려워 하지 않는다.~ */
  IF ~~ THEN REPLY #65852 /* ~"그것이 당신이 날 직접 상대하려 하지 않고 날 죽이러 그림자들이나 보내는 이유요? 그들은 날 죽이는 데 성공하지 못했고, 앞으로도 마찬가지일 거요."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"전쟁용 무기들로 만들어진 아이언 골렘이 내게 다음과 같은 얘기를 한 적이 있소: "만약 어떤 자가 직접 모습을 드러내지 않고 멀리 떨어진 곳에서 적을 죽이려 한다면, 그것은 그에게 약점이 있다는 것을 뜻한다. 그것은 *비겁자가* 싸우는 방식이다."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"그것이 당신이 날 직접 상대하려 하지 않고 날 죽이러 그림자들이나 보내는 이유요? 그들은 날 죽이는 데 성공하지 못했소, 하지만 그건 애초부터 그들의 진정한 *목적*이 아니었소, 그렇지 않소? 그들은 내가 기억을 잃어버리도록 날 '죽인' 거요."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"만약 당신이 아직도 날 두려워 하지 않는다면, 당신에게는 배워야할 것이 한 가지 남은 셈이오. 어쨌든 지금은 다른 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~내가 그림자들을 보내는 건 그들이 먼 곳까지 갈 수 있기 때문이다. 하지만 그들을 인도하는 것은 *내* 눈이다.~ */
  IF ~~ THEN REPLY #65857 /* ~"그래 그림자들은 당신이 갈 수 없는 먼 곳까지 갈 수가 있군."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~내가 할 수 없는 일은 *없다.*~ */
  IF ~~ THEN REPLY #65860 /* ~"하지만 당신은 결코 이 요새를 떠나 나와 싸우려 하지 않았소... 단지 그림자들을 보냈을 뿐이오. 것은 *비겁자가* 싸우는 방식이오."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~내 에너지는 이 곳을 유지하기 위해 필요하다, 파탄자, 그렇지 않다면 내가 매번 친히 네 목을 졸랐을 것이다. 나는 이 요새의 밖에서 오래 머무를 수가 없다.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"나는 당신 말을 믿지 않소. 나는 당신이 나와 대결하는 것을 *두려워한다고* 생각하오... 아니면 당신은 내게 거짓말을 하고 있으며, 당신이 이 곳을 떠나지 않는 데는 다른 이유가 있는 것이오..." ~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"나는 당신 말을 믿지 않소. 나는 당신이 나와 대결하는 것을 *두려워한다고* 생각하오... 아니면 당신은 내게 거짓말을 하고 있으며, 당신이 이 곳을 떠나지 않는 데는 다른 이유가 있는 것이오..." ~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"나는 당신 말을 믿지 않소. 나는 당신이 나와 대결하는 것을 *두려워한다고* 생각하오... 아니면 당신은 내게 거짓말을 하고 있으며, 당신이 이 곳을 떠나지 않는 데는 다른 이유가 있는 것이오..." ~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"하지만 내가 요새에 들어온 후에도 당신은 베일로를 보내 날 저지하려 했소, 당신이 직접 날 처치할 수도 있었을 텐데 말이오."~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"하지만 내가 요새에 들어온 후에도 당신은 그 텅 빈 갑옷을 보내 날 저지하려 했소, 당신이 직접 날 처치할 수도 있었을 텐데 말이오."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"하지만 내가 요새에 들어온 후에도 당신은 이그너스를 보내 날 저지하려 했소, 당신이 직접 날 처치할 수도 있었을 텐데 말이오."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"하지만 내가 요새에 들어온 후에도 당신은 그 불타는 미치광이 요술사를 보내 날 저지하려 했소, 당신이 직접 날 처치할 수도 있었을 텐데 말이오."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"그 다음에 당신은 그 수정으로 덫을 놓아 날 분할하여 가두려고 했소 - 당신은 날 죽이는 것을 원했던 게 아니라 단지 감금하기를 원했을 뿐이오."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~머시킬러의 혼령은... 편리했다. 너는 많은 불의를 행했다, 그리고 그러한 행위는 다원 우주에 많은 흉터를 남겼다. 나는 그에게 그것들을 *시정할* 기회를 주었다.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"당신이 어떤 얘기를 했기에 그가 나를 배신했소? 그는 내 동료였고 나를--"~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"그 다음에 당신은 그 수정으로 덫을 놓아 날 가두려고 했지만 *그건* 실패로 돌아갔소."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~나는 그에게 네 *죄*에 대해 말해주었다. 나는 그에게 네가 살기 위해 다른 자들이 어떻게 죽어가는지 말해주었다. 그것이 그에게 힘을 주었다. ~ */
  IF ~~ THEN REPLY #65875 /* ~"하지만 그것은 당신 죄이기도 하오. 우리가 분리되어 있는 한 다른 이들은 계속해서 우리들 대신 죽을 것이오. 그러니 베일로는 *당신*을 죽이려고 했었어야 했소."~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"그 다음에 당신은 그 수정으로 덫을 놓아 날 가두려고 했지만 *그건* 실패로 돌아갔소."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~*나*는 죄를 짓지 않았다.~ */
  IF ~~ THEN REPLY #65878 /* ~"날 계속 죽인 것도 *당신*이고, 이 요새의 회랑이 그림자들로 가득 찰 정도로 수많은 사람들의 목숨을 앗아간 것도 *당신*인데, 감히 당신은 죄를 지은 적이 없다고 말하는 거요? 베일로가 죽은 건 당신에게는 다행한 일이오, 아니면 당신은 그의 도끼를 맞고 두 동강이 날 테니까." ~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~*내* 앞에서 심판에 대해 말하지 말라. 곧 다원 우주가 너를 심판할 것이다, 그리고 우리 사이의 문제들도 종결될 것이다, 파탄자.~ */
  IF ~~ THEN REPLY #65880 /* ~"하지만 베일로가 실패한 후에도 당신은 나와의 대결을 꺼릴 이유가 없다는 자신의 주장과는 달리 나와 직접 대결하려 하지 않았소. 대신 당신은 내가 가는 길에 그 수정으로 덫을 놓아 나를 가두려고 했소. ~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~요술사는... 편리했다. 너에 대한 그의 분노는 뿌리가 깊다. 나는 그에게 네게 복수할 기회를 주는 것이 적절하다고 생각했다. 만약 다원 우주가 네게 자비에 대해 가르칠 수 없다면, *고통*이 그 일을 대신 할 수 있을지도 모른다.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"그가 복수를 원했다고? 내가 그에게 마법을 가르치고 그로 하여금 고통받도록 한 것 때문에?~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"그가 복수를 원했다고? 무엇 때문에?~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~그렇다. 나는 고통이 그를 가르쳤듯이 너 역시 가르칠 것이라고 생각했다. 하지만 요술사는 내 생각보다 약했다. 그리고 이제 네가 여기까지 왔다. 이제 곧 우리 사이의 문제들도 종결될 것이다, 파탄자.~ */
  IF ~~ THEN REPLY #65885 /* ~"그래서 당신은 이그너스를 보내서 날 저지하려 했소... 하지만 그가 실패한 후에도 나와 직접 대결하려 하지 않았소, 나와 직접 맞설 수도 있었을 텐데 말이오. 대신 당신은 내가 가는 길에 그 수정으로 덫을 놓아 나를 가두려고 했소. ~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~상관없다. 너는 그러한 것들을 잊었고, 이제 다시 잊을 것이다.~ */
  IF ~~ THEN REPLY #65887 /* ~"그래서 당신은 그를 보내서 날 저지하려 했소... 하지만 그가 실패한 후에도 나와 직접 대결하려 하지 않았소. 대신 당신은 내가 가는 길에 그 수정으로 덫을 놓아 나를 가두려고 했소. ~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~그렇다, 그 수정은 감옥이다. 아마도 사상 가장 잘 만들어진 감옥일 것이다. ~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~나는 너를 다원 우주 전역에 걸쳐 추적하는 데 지쳐 그것을 사용했다, 이름 없는 자. 너는... 찾아내기가 어렵다. 나는 너를 가까운 곳에 두고 감시하고자 한다. 수정은 바로 그러한 목적을 이룰 수 있는 장치이다. ~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~나는 네가 수정에서 어떻게 풀려났는지 알고 싶다.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"왜 나를 발견하는 일이 힘든 것이오?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"도움을 받았소. 내가 오래 전에 이 곳에 데려왔던 데이오나라라는 여인이 날 풀어주었소."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"내가 사용한 방법은 당신이 알 바가 아니오. 당신이 지금 날 저지할 수 없는 것처럼 그 감옥도 나를 가둘 수가 없다는 사실만 아시오."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~그건 중요하지 않다.~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"그럼 내게 얘기하지 말아야 할 이유는 없지 않소? 나는 어차피 잊을 것이고, 나는 마지막으로 그것에 대해 알고 싶소."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"그렇다면 내게 얘기해서 해가 될 건 없겠소."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~이름에 힘이 있듯이, 이름을 가지지 않는 데도 힘이 있다. 다원 우주의 눈조차도 그런 자는 그냥 스치고 지나간다. 너나 나와 같은 자들은.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~아... 사랑 때문에 상심한 혼령이로군. 나는 이 요새의 홀에서 그녀의 메아리를 느낀 적이 있다. 다시는 그녀가 널 풀어 주지 못할 것이다.~ */
  IF ~~ THEN REPLY #65899 /* ~"그녀가 그럴 *필요*도 없을 것이오. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~대단한 오만이다. 오늘 우리가 여기서 그 오만을 시험해 볼 것이다, 파탄자.~ */
  IF ~~ THEN REPLY #65901 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~너는 아무 것도 알지 못한다.~ */
  IF ~~ THEN REPLY #65903 /* ~"왜 이 곳을 유지하는 것이 당신에게 그토록 중요한 거요? 만약 당신이 만약 스스로 주장하는 만큼 강대하다면 왜 이 곳에 남기를 원하는 거요? 이 곳엔 아무 것도 없소."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~이 곳은 내 요새다. 내 집이다.~ */
  IF ~~ THEN REPLY #65905 /* ~"그리고 이 곳은 집이라 하기에는 너무 처량한 곳이오. 내 후회들로 만들어진 이 요새 안에는 우리가 죽인 자들의 그림자들과 나날이 먼지만 쌓여가는 과거의 버려진 유물들밖에 없으며, 그리고 볼 것이라고 삶을 앗아가는 음의 에너지계의 에너지뿐이오. 그런 장소에 딱 어울리는 말이 있소 - 그건 바로 *감옥*이오."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~너는 말을 할 때마다 스스로의 무지를 드러내고 있다, 파탄자. 이 요새는 조용하다. 이 곳에는 죽은 자들만이 온다, 그리고 그림자들은 조용한 자들이다.~ */
  IF ~~ THEN REPLY #65907 /* ~"내가 생각하기에 당신은 이 곳에 그림자들과 유령들과 함께 남아 있을 수밖에 없소, 왜냐하면 당신은 그들과 같은 존재가 되어버렸으니까. 나는 당신이 이 곳을 유지한다고는 생각하지 않소. 난 오히려 이 곳이 당신을 유지시켜 준다고 생각하오."~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~나는 내 *선택*에 의해 이 곳에 머무른다.~ */
  IF ~~ THEN REPLY #65909 /* ~"*정말로*? 그럼 전에 당신이 이 요새에서 오랫동안 떨어져 있을 수가 없다고 한 말은 거짓말이었소? 그리고 *내* 후회들로 만들어진 요새를 유지하는 데 *당신*이 필요하다는 게 말이나 되는 얘기요?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~무례함에 대한 대가로 너는 천 번 죽고 또 죽을 것이다, 파탄자. 너는 침입자다, 그리고 나는 네가 다시는 돌아가지 못하도록 만들겠다.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"잘 생각해 보시오. 당신은 우리가 연결되어 있다고 했소. 그러니 내가 고통을 받으면 당신도 고통을 받을 것이오. 아마 당신은 고통을 받기 *때문*에 이 곳에 갇혀 있을 것이오, 비록 당신의 고통은 나의 그것과는 다르겠지만."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"당신 협박에는 이제 질렸소. 각오를 하시오, 혼령. 어디 내가 내 죽음을 죽일 수 있는지 한 번 봅시다."~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~이게 대체 무슨 말도 안 되는 소리인가?"~ */
  IF ~~ THEN REPLY #65916 /* ~"나는 죽을 때마다 정신의 죽음을 겪지만 당신은 육체의 죽음을 겪는 것이 아니오? 나는 정신을 잃을 때 당신은 실체를 상실하오. 당신이 이 요새를 떠나 이 차원 밖으로 여행하는 것이 점점 어려워지는 것은 바로 그 때문이오. 이 요새는 당신의 감옥일 뿐만 아니라, 당신의 묘지도 될 것이오."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~불가능하다.~ */
  IF ~~ THEN REPLY #65919 /* ~"정말 그렇소? 당신은 우리가 서로 연결되어 있다고 했소. 당연히 당신은 지난 세기동안 자신의 육체가 쇠약해지는 것을 느꼈을 것이오. 당신은 래벌을 싫어함에도 불구하고 그녀의 틀의 갈래들로 몸을 뒤덮고 있소. 당신의 몸이 붕괴하는 것을 늦추기 위해서는 그 틀로 당신의 망령같은 형체를 보호해야 하기 때문이오."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~네 말이 진실이라고 해도 어쩔 방법이 없다. 너와 함께 존재하는 고통을 감수하기보다는 이 요새에서 육신의 죽음을 맞이하겠다.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"하지만 우리에겐 다른 해결책이 있는데 왜 그런 느리고 고통스러운 파멸의 길을 선택하려는 거요? 만약 나와 당신이 다시 합치면 우리 둘 모두 더 이상 고통을 받지 않을 것이오. 그리고 우리는 완전하게 될 것이오. ~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"하지만 우리가 다시 하나가 될 수 있는데 서서히 죽어갈 이유가 어디 있소? 우리는 마침내 서로에게 고통을 주는 일을 종식시킬 수가 있을 것이오."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~네 말은 내게 있어 *독*과 같다. 나는 너의 일부가 되어 너와 그 *비참한* 삶을 공유할 생각이 없다. 네 자신을 보라, 육신은 망가질 대로 망가지고 온몸은 흉터투성이다. 너라는 역겨운 껍질에 갇히느니 자유로운 채로 죽겠다. ~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"그리고 당신 자신을 한 번 보시오. 당신은 한껏 폼을 잡고 잘난 체 하지만, 실제로는 그 생명력과 힘이 과거의 삶의 허상에 불과한 망령같은 괴물일 뿐이오. 당신은 자신이 소멸한 후 그런 모습으로 다원 우주에 의해 기억되기를 바라시오?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"좋소. 그렇다면 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~나는 한 소멸을 다른 소멸과 바꿀 생각은 없다. 그리고 나는 너라는 역겨운 껍질 속에 갇히고 싶지 않다, 파탄자.~ */
  IF ~~ THEN REPLY #65929 /* ~"당신이 *반드시* 소멸할 것이라고 할 수는 없소. 우리가 하나가 되면 무슨 일이 일어날지 누가 알겠소? 당신의 의식이 남고 내가 소멸할 수도 있소. 또는 우리 둘은 부분들의을 단순한 합보다 더 *위대한* 존재가 될 수도 있소."~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"좋소. 그렇다면 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~너는 자신이 무슨 말을 하고 있는지 알지 못한다. 만약 우리가 다시 합친다면 그것이야말로 진정한 파멸이 될 것이다. 우리에게 *미래*는 없을 것이다, 우리는 더 큰 고통을 받게 될 것이다. 나는 이 사실을 안다. ~ */
  IF ~~ THEN REPLY #65932 /* ~"그럼 우리는 하나의 존재로서 이러한 고통들에 함께 맞설 것이오. 그리고 이들을 물리칠 것이오."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~만약 우리가 다시 합친다면, 우리는 고통받을 것이다. 우리가 구원받기에는 첫 번째가 저지른 죄가 너무나도 크다. 우리는 영원히 저주받을 것이다. ~ */
  IF ~~ THEN REPLY #65934 /* ~"그렇다면 우린 파멸의 끝까지라도 싸워 다시 자유를 얻을 것이오."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~내가 널 늘 *증오했다는* 사실을 알라, 파탄자. 그리고 우리가 하나가 되어도 나는 널 계속 *증오할* 것이다. 그리고 네 껍질이 마침내 죽음을 맞이할 때 나는 희열할 것이라는 사실을 알라. ~ */
  IF ~~ THEN REPLY #65936 /* ~"나는 그건 견딜 수가 있소, 그리고 우주 역시 그럴 것이오. 만약 우리가 마계로 떨어진다면 당신은 내가 받는 고통에 쾌감을 느낄 수가 있을 것이오. 하지만 당신이 나와 합쳐 날 미워하는 편이 따로 떨어져 소멸하기만을 기다리며 서서히 죽어가는 것보다는 낫소."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~너에 대한 내 증오는 차원들을 파멸로 이끌 것이라는 사실을 알라. 준비해라. 우리는 네가 죽는 날까지 다시 하나가 될 것이다. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"우리가 합치기 전에 한 가지만 묻겠소. 내 친구들은 어떻게 되오? 그들을 구할 수는 있소?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"우리가 합치기 전에 한 가지만 묻겠소. 내 친구들은 어떻게 되오? 그들을 구할 수는 있소?"~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"우리가 하나가 되기 전에 나는 내 친구들을 소생시키기--"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"그 일을 하기 전에 나는 당신에게 내 친구들을 소생시킬 것을 요구하오."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~나는 죽음 그 자체이다. 나는 삶과 죽음의 본질을 잘 알고 있다. 우리가 하나가 되면 내 지식도 네 것이 될 것이다. ~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"좋소. 난 다시 인간이 될 준비가 됐소."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~네 정신 속에는 중요한 것이라고는 아무 것도 없다, 파탄자.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"한 가지만 제외하고는. 이제 내가 당신이 어디 있으며 당신이 무엇인지도 아니, 다른 사람에게 얘기하거나 내가 직접 당신을 다시 찾을 수도 있소. 언젠가 내가 당신에게 갈 수 있는 방법을 기억해낼 수도 있고, 그러면 당신은 나와 다시 대결해야 할 거요. 그것이 당신이 내가 기억을 잃기를 바라는 이유요, 그렇지 않소?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"한 가지만 제외하고는. 해골들의 기둥에 의하면 당신이 있는 곳과 그 곳에 가는 방법을 아는 사람은 셋밖에 없소 - 트리어스, 당신, 그리고, 나. 만약 당신이 트리어스와 나를 죽이면 당신이 있는 곳과 그 곳에 가는 방법을 아는 사람은 아무도 없게 되오."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"한 가지만 제외하고는. 해골들의 기둥에 의하면 당신이 있는 곳과 그 곳에 가는 방법을 아는 사람은 셋밖에 없소 - 그 중 하나는 트리어스였으나 그는 죽었소. 나머지 둘은 당신과 나요. 일단 내가 기억을 잃어버리고 나면 다원 우주에서 당신이 있는 곳과 그 곳에 가는 방법을 아는 사람은 아무도 없게 되오."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~그렇다, 황금색 거짓말로 스스로를 감추는 천사. 너는 마침내 나를 그에게로 인도했다. 너처럼 그 배신자도 찾기가 힘들었다. 그는 완전한 최후를 맞이하게 될 것이다~ */
  IF ~~ THEN REPLY #65949 /* ~"그래서 그를 찾는데 날 이용한 거요? 당신은 내가 그를 죽임으로서 그의 지식이 어둠 속에 묻히기를 바랐던 거군. 그 다음에 당신은 나를 죽이려 했소. *내*가 당신이 있는 곳을 잊어버리도록."~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~시간의 칼날도 네 정신으로부터 모든 이성을 빼앗아 가지는 못한 것 같다. 내 목적은 늘 네가 망각하도록 만드는 것이었다. ~ */
  IF ~~ THEN REPLY #65951 /* ~"하지만 *왜?* 왜-"~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~왜냐하면 다시는 너의 존재 때문에 고통받고 싶지 않기 때문이다, 파탄자. 너는 한때 삶이란 어떠했는가를 상기시키는 짜증스런 존재이다, 그리고 나는 그러한 것들이 싫다. 나는 내 요새에서 평온하게 지내고 싶다.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~네가 나를 잊은 것처럼 나도 너를 잊고 싶다. 영원히.~ */
  IF ~~ THEN REPLY #65955 /* ~"그렇다면 그건 용인할 수가 있소. 하지만 내가 더 이상 당신 공격을 참고 견디지 않을 것이라는 걸 명심하시오. 당신이 이 곳에 그림자들을 묶어두고 내가 내 삶을 살도록 해준다면, 나도 당신이 당신 삶을 살도록 해주겠소."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"나는 그것도 이유가 아니라고 생각하오. 생각하건대 당신이 내가 잊도록 만들려는 건 당신이 날 두려워하기 때문이오."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"하지만 이제 나는 죽더라도 더 이상 기억을 잃지 않소. 과거에는 기억을 잃었을 지도 모르오, 그러나 이제 더 이상은 아니오."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~너는 거짓말을 하고 있다. 너는 늘 잊고 있었다. 그러나 나는 늘 기억하고 있었다. 언제나 그랬다. ~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"하지만 '항상'이란 말에는 더 이상 이전과 같은 의미는 없소. 나는 이미 한 번 죽었소, 그러나 기억은 내게 고스란히 돌아왔소."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"하지만 '항상'이란 말에는 더 이상 이전과 같은 의미는 없소. 나는 이미 여러 차례 죽었소, 그러나 기억은 그 때마다 내게 고스란히 돌아왔소."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~네 기만은 여기서는 널 지켜 주지 못할 것이다, 파탄자.~ */
  IF ~~ THEN REPLY #65962 /* ~"그건 진실이오. 날 죽인다고 해서 날 멈출 순 없소, 왜냐하면 날 죽여도 나는 더 이상 기억을 잃지 않기 때문이오. 나는 항상 당신을 알 것이며, 당신이 저지른 모든 짓들, 이 곳에 오는 방법, 그리고 궁극적으로는 당신을 파멸시킬 방법도 기억해낼 것이오."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~그렇다면 나는 너를 감금하겠다, 이름 없는 자. 만약 네가 잊지 않을 것이라면 나는 널 자유롭게 해줄 수 없다.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"하지만 나는 이미 '사상 가장 삼엄한 감옥'으로부터도 탈출했소. 당신을 날 가둘 수도 죽일 수도 없으며, 더 이상 내가 잊도록 만들 수조차 없소."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"하지만 나는 이미 당신이 날 가로막기 위해 만든 수정 감옥도 탈출했소. 당신을 날 가둘 수도 죽일 수도 없으며, 더 이상 내가 잊도록 만들 수조차 없소."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~그렇다... 그러나 그것은 네가 한 일이 아니었다. 사랑 때문에 상심한 혼령이 너를 풀어 주었다. 그녀는 다시는 그러지 못할 것이다. 일단 내가 네 몸의 뼈들을 모두 부수고 나면, 네 힘없는 육신을 가지고 가서 수정 안에 봉인할 것이다. 너는 다원 우주를 다시는 활보하지 못할 것이다.~ */
  IF ~~ THEN REPLY #65967 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"하고 싶으면 해보시오. 각오를 하는 것이 좋을 거요, 혼령. 어디 내가 내 죽음을 죽일 수 있는 한 번 봅시다."~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~그럼 나는 너를 그림자들에게 먹이겠다. 나는 너를 여기서 죽인 후 그림자의 갤러리로 너를 보내, 그들이 너를 먹어 치우도록 하겠다. 그들은 널 영겁의 세월에 걸쳐 죽일 것이다. 너는 다원 우주를 다시는 활보하지 못할 것이다.~ */
  IF ~~ THEN REPLY #65970 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"하고 싶으면 해보시오. 각오를 하는 것이 좋을 거요, 혼령. 어디 내가 내 죽음을 죽일 수 있는 한 번 봅시다."~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~너에게는 선택의 여지가 없다, 파탄자. 네가 여기를 떠나면 너는 이 곳에서 일어났던 모든 일을 잊을 것이다. 나는 네가 날 찾는 방법을 아는 것을 더 이상 원하지 않는다. 너는 거듭해서 정신의 죽음을 죽을 것이다. 그것이 내 의지이기 때문이다.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"하지만 이제 나는 죽더라도 더 이상 기억을 잃지 않소. 과거에는 기억을 잃었을 지도 모르오, 그러나 이제 더 이상은 아니오."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~상관없다. 너는 죽을 수가 없다. 정신은 사라질지 모르나, 네 육신은 존속될 것이다.~ */
  IF ~~ THEN REPLY #65976 /* ~"정신을 상실할 수도 있다? 그게 무슨 뜻이오?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~나는 네 영혼이 부식하는 것을 느꼈다. 하지만 너는 계속 살아가고 있다. 필요한 건 그것뿐이다.~ */
  IF ~~ THEN REPLY #65978 /* ~"필요해? 왜?~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~상관없다. 너는 죽을 수가 없다. 정신은 사라질지 모르나, 네 육신은 존속될 것이다. 필요한 건 그것뿐이다.~ */
  IF ~~ THEN REPLY #65980 /* ~"필요해? 왜?~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~우리 사이에는 비록 미약하다고는 할지라도 연결 고리가 존재한다. 나는 네가 파괴되는 것을 원하지 않는다. 단지 멀리 떨어져 있기를 바랄 뿐이다.~ */
  IF ~~ THEN REPLY #65982 /* ~"그럼 왜 당신은 지금까지 줄곧 날 *죽이려고* 했던 거요?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"만약 우리가 서로 연결되어 있다면, 그건 내가 고통을 받을 때 당신 역시 고통을 받는다는 뜻이오."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"당신이 날 죽이길 원하지 않았던 것은 내가 죽으면 그 연결이 끊어지기 때문이였군..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~상관없다. ~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"잠깐... 당신이 내게 보낸 그림자들 -- 그들은 결코 날 죽이는 데 성공하지 못했소... 하지만 그것은 애초부터 그들의 목적이 아니었소. 그들은 내가 잊도록 날 '죽일' 뿐이오."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"잠깐... 당신이 내게 보낸 그림자들 -- 그들은 결코 날 죽이는 데 성공하지 못했소... 하지만 그것은 애초부터 그들의 목적이 아니었소. 그들은 내가 잊도록 날 '죽일' 뿐이오."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"잠깐... 당신이 내게 보낸 그림자들 -- 그들은 결코 날 죽이는 데 성공하지 못했소... 하지만 그것은 애초부터 그들의 목적이 아니었소. 그들은 내가 잊도록 날 '죽일' 뿐이오."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"그렇소? 당신이 날 죽이길 원하지 않았던 것은 내가 죽으면 그 연결이 끊어지며... 그렇게 되면 당신 역시 소멸하기 때문일 것이오."~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~약한 자는 고통받으나, 나는 *인내*한다.~ */
  IF ~~ THEN REPLY #65991 /* ~"내가 죽으면 그 연결도 끊어지겠군..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~너는 죽을 수가 없다.~ */
  IF ~~ THEN REPLY #65993 /* ~"만약 내가 죽을 수가 없다면 당신도 존재할 수가 없소. 당신은 내 *죽음*이니까."~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~한때는 그랬을지도 모르나 더 이상은 아니다. 나는 변했다. 나는 초월하여 보다 위대한 존재가 되었다.~ */
  IF ~~ THEN REPLY #65995 /* ~"그럴지도, 하지만 당신의 본성은 *여전히* 내 죽음이오. 내가 죽으면 당신도 죽소." ~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"그래 당신은 어떤 생명체가 스스로의 본성을 바꿀 수 *있다고* 인정하는 거요?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"하지만 그 무엇도 인간의 본성을 바꿀 순 없소. 그건 당신 스스로 한 말이오."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~너는 자신이 무슨 말을 하고 있는지 모른다. 너의 말은 네 껍질만큼이나 공허하다. ~ */
  IF ~~ THEN REPLY #66000 /* ~"나는 내가 무슨 말을 하고 있는지 정확히 알고 있소. 만약 내가 죽는다면 당신 역시 파멸하오."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"어디 두고 봅시다. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~너는 귀로 듣기만 할 뿐 이해하지는 못하는 것 같다. 내가 죽을 수 없다는 사실을 알라..~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"실은 이제는 죽을 수가 있소. 나는 어떤 골렘에게 부탁해 나조차도 죽일 수 있는 무기를 만들었소. 그 무기를 다른 차원들로부터 차단되어 내 불사성이 다른 생명을 앗아갈 수 없는 장소에 가져오기만 하면 필요한 모든 조건은 성립되오. 그리고 나는 바로 그 장소에 있소."~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"그럴지도. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~너는 거짓말을 하고 있다. ~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~칼을 치켜든다: "그런 것 같소? 이 칼을 잘 보시오, 그리고 그것의 본성을 보시오. 만약 당신이 스스로 주장하는 것처럼 전지하며 강대하다면 이 무기가 나를 죽일 수 있다는 사실을 알 수 있을 것이오." ~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~칼을 치켜든다: "그런 것 같소? 이 칼을 잘 보시오, 그리고 그것의 본성을 보시오. 만약 당신이 스스로 주장하는 것처럼 전지하며 강대하다면 이 무기가 나를 죽일 수 있다는 사실을 알 수 있을 것이오. 그리고 우리는 서로 연결되어 있으므로 이 칼은 결과적으로 당신도 죽일 수가 있소."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~당신이 칼을 쥐고 말을 하자, 칼이 뒤틀려 전혀 다른 것으로 변화하는 것이 느껴진다. 다원 우주에 일찍이 존재한 적이 없는 치명적인 무기로.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~너는 감히 그러지 못할 것이다. ~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"당신은 내가 그러리라는 것을 잘 *알고* 있을 거요. 당신 때문에 겪어야했던 고통을 생각한다면 나는 기꺼이 이 칼을 당신의 유령같은 가죽을 찌를 것이오."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"만약 당신이 항복하지 않으면 칼을 내 자신에게 사용하겠소. 당신과 나 양쪽 모두 죽을 것이오."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~칼로 스스로를 찌른다.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~내가 죽으면, 너 역시 죽을 것이다. 우리 사이의 연결 고리는 끊어지고, 너는 진정한 죽음을 맞이할 것이다.~ */
  IF ~~ THEN REPLY #66015 /* ~"그럼 보다시피 내게는 두 가지 선택이 있소 - 하나는 우리가 둘 다 죽는 것이고, 나머지는 당신이 거듭해서 날 죽이게 하여 그나마 몇 조각 남지 않은 내 정신마저 잃어버리는 것이오. 나는 신속한 죽음을 택하겠소, 당신에게 세 번째 해답이 없는 한."~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~칼로 자신을 찌른다.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~그것은 어리석은 짓이 될 것이다. 네 죽음은 아무런 의미도 없을 것이다.~ */
  IF ~~ THEN REPLY #66017 /* ~"그럼 보다시피 내게는 두 가지 선택이 있소 - 하나는 내가 이 칼로 자살하는 것이고, 나머지는 당신이 거듭해서 날 죽이게 하여 그나마 몇 조각 남지 않은 내 정신마저 잃어버리는 것이오. 나는 신속한 죽음을 택하겠소, 당신에게 세 번째 해답이 없는 한."~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~칼로 자신을 찌른다.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~이 문제에는 해법이 없다. 너는 칼을 내놓은 후 항복해야 할 것이다. 너는 이 요새를 떠날 것이다, 아무런 기억도 없이. 다른 해법은 없다. ~ */
  IF ~~ THEN REPLY #66020 /* ~"또 다른 선택이 있소. 나와 재결합하시오. 우리는 당연히 그래야 했었듯이 다시 하나가 될 것이오."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~너는 자신이 무슨 짓을 하고 있는지 알지 못한다. 만약 우리가 다시 합친다면 그것이야말로 진정한 파멸이 될 것이다. 우리에게 *미래*는 없을 것이다, 우리는 더 큰 고통을 받게 될 것이다. 나는 이 사실을 안다. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"다원 우주가 계속 고통받는 것보다는 그 편이 낫소."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"나는 그런 고통을 감수할 각오가 되어 있소. 다원 우주와 시간을 가로질러 당신과 싸우는 데는 이제 지쳤소. 그것은 이제 막을 내릴 것이오."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~만약 우리가 다시 합친다면, 우리는 고통받을 것이다. 우리가 구원받기에는 첫 번째가 저지른 죄가 너무나도 크다. 우리는 영원히 저주받을 것이다. ~ */
  IF ~~ THEN REPLY #66025 /* ~"아니, 난 내가 무슨 짓을 하는지 잘 알고 있소. 그리고 난 이것이 유일한 해법이라고 생각하오. 자, 각오하시오."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~내가 널 늘 *증오했다는* 사실을 알라, 파탄자. 그리고 우리가 하나가 되어도 나는 널 계속 *증오할* 것이다. 그리고 네 껍질이 마침내 죽음을 맞이할 때 나는 희열할 것이라는 사실을 알라. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"나는 그건 견딜 수가 있소, 그리고 우주 역시 그럴 것이오"~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"너는 아무런 쾌감도 느끼지 못할 것이다. 너는 내 하인이 될 것이며, 네가 오랜 세월 동안 축적한 모든 것이 내 것이 될 것이다."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~한 사람의 이름은 그가 자신의 행동을 통해 얻는 것이다. 따라서 한때 우리가 지녔던 이름은 아무런 의미도 없다.~ */
  IF ~~ THEN REPLY #66031 /* ~"당신은 우리 이름이 무엇이었는지 모르는군, 그렇지 않소?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~한 사람의 이름은 그가 어떤 자인지 아는 자들에 의해 그에게 주어지는 것이다. 따라서 한때 우리가 지녔던 이름은 아무런 의미도 없다.~ */
  IF ~~ THEN REPLY #66033 /* ~"당신은 우리 이름이 무엇이었는지 모르는군, 그렇지 않소?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~한 사람의 이름은 그가 걸치고 있는 문자로 짜여진 망토에 불과하다. ~ */
  IF ~~ THEN REPLY #66035 /* ~"당신은 우리 이름이 무엇이었는지 모르는군, 그렇지 않소?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~너는 네 이름을 결코 알지 못할 것이다, 파탄자.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"나는 우리의 이름을 알고 있소. 그걸 앎으로서 난 강해졌소."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"당신은 우리 이름이 무엇이었는지 모르는군, 그렇지 않소?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~현존하는 자들 중 우리의 이름을 아는 자는 없다. 이것은 우리에게 있어 방패나 마찬가지이다. 이름에는 힘이 있다. 우리처럼 이름이 *없는* 자는 강하다. 우리는 사냥될 수 없다. 우리는 추적될 수 없다. 아무도 우리를 해칠 수가 없다. ~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"나는 우리의 이름을 알고 있소. 그걸 앎으로서 난 강해졌소."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"왜 그것이 그렇게 중요했던 거요? 우리는 쫓김을 당하고 있었소?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~너는 *거짓말*을 하고 있다. 우리의 이름은 소실되어 잊혀졌다. 그리고 영원이 끝날 때까지 그 상태로 유지될 것이다."~ */
  IF ~~ THEN REPLY #66043 /* ~"내가 거짓말을 한다고? 당신이 내 죽음이라면 내가 당신을 속이려 해도 쉽게 알아챌 수 있을 것이오. 나는 지금 거짓말을 하고 있지 않소."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~그러한 지식을 가지고도 너는 나를 이길 수가 없다.~ */
  IF ~~ THEN REPLY #66045 /* ~"아니, 내겐 그럴 힘이 있소. 그리고 당신에게 속아 필요도 없는 싸움을 하게 되는 일도 없을 거요. 내 진정한 이름을 알게 됨으로서 당신 이름도 알게 되었소. 더 이상 당신이 내게 할 수 있는 짓은 없소."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"어디 두고 봅시다, 혼령. 각오를 하시오. 어디 내 죽음이 죽을 수 있는지 한 번 봅시다..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~나는 너를 *없앨* 것이다.~ */
  IF ~~ THEN REPLY #66048 /* ~"아니, 내가 당신을 없앨 것이오. 나는 더 이상 이 세상에 남고 싶은 생각이 없소... 작별을 고하오, 그리고 망각이 당신을 환영한다는 사실을 알도록 하시오."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"아니, 그러지 못할 거요. 당신은 나와 다시 합칠 것이고, 진작 그랬어야 했듯이 우리는 다시 하나가 될 것이오."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~살아 있는 모든 자들은 사냥을 당한다. 사냥꾼은 죽음이다. 그는 더 이상 우리를 사냥하지 않는다.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"그럼 이제는 그것이 우리를 쫓고 있다는 사실을 알도록 하시오. 나는 우리들의 이름을 알고 있소. 그것을 앎으로서 나는 강해졌소."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"아니, 지금 그것은 우리 대신 다른 사람들을 사냥하고 있소. 당신과 내가 분리된 탓에 무수한 타인들이 희생됐소. 우리가 계속 이렇게 살아서는 안 되오, 아니면 우린 계속 우리 대신 다른 사람들을 죽이게 될 테니."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~살아 있는 자들은 반드시 죽는다. 이 곳의 그림자들은 고통을 받고 있다, 그러나 동시에 그것은 그들에게 있어 일종의 영생이다. 나는 이 요새의 어둠을 비추는 광명이다. 그리고 그들의 증오의 대상은 너지 내가 아니다.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"그럼 당신은 죄도 없는 사람들을 우리 대신 희생시키겠다는 거요?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~만약 네가 그들의 고통을 종식시키고 싶다면, 내게 항복하라. 스스로를 이 요새 안의 수정 속에 봉인하도록 하라, 그러면 죄없는 자들은 고통받지 않을 것이다. 그들은 네가 죽기 때문에 고통받는 것이다, 나는 책임이 없다.~ */
  IF ~~ THEN REPLY #66058 /* ~"나는 죄수로 있고 싶은 생각은 없소... 각오하시오, 혼령. 내 죽음이 죽을 수 있는지 어디 봅시다."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"좋소. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~그 질문은 무의미하다.~ */
  IF ~~ THEN REPLY #66061 /* ~"그럼에도 불구하고 나는 우리들 사이에 결판이 나기 전에 당신 대답을 듣고 싶소."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~그렇다면 이것이 내 답이며, 너는 그 살아 있는 증거이다. 그 *무엇도* 인간의 본성을 바꿀 수는 없다.~ */
  IF ~~ THEN REPLY #66063 /* ~"그렇다면 내가 알고 싶었던 건 그게 전부요. 나는 당신이 틀렸다는 것을 입증할 것이오... 각오하시오, 혼령. 내 죽음이 죽을 수 있는지 어디 봅시다."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"만약 내가 많은 차원들을 여행하면서 배운 것이 있다면 그것은 많은 것들이 인간의 본성을 바꿀 수 있다는 사실일 거요. 후회, 사랑, 복수, 공포... 어떤 것이든 상관없소. 무엇이든 강하게 *믿는다면* 그것은 인간의 본성을 바꿀 수가 있소."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"당신은 틀렸소. 믿음은 인간의 본성을 바꿀 수가 있소. 나는 믿음의 힘으로 베일로를 없앨 수가 있었소 - 나 자신도 그렇게 없앨 수가 있을지지 궁금하군."~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"당신은 틀렸소. 믿음은 인간의 본성을 바꿀 수가 있소. 오래 전 나는 믿음의 힘으로 사람을 '만들' 수 가 있었소 - 반대로 없앨 수도 있는지 궁금하군."~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"그럼 그것은 당신의 답이오. 그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~그렇다면 너는 잘못된 교훈을 얻었다, 파탄자.~ */
  IF ~~ THEN REPLY #66069 /* ~"과연 그럴까? 나는 믿음이 도시를 움직이고, 사람으로 하여금 죽음을 회피하게 하며, 그리고 사악한 마귀할멈의 마음조차 돌려놓는 것을 보았소. 바로 이 요새 전체가 믿음으로 만들어졌소. 믿음이 자신을 사랑하지도 않는 남자가 자신을 사랑하고 있을 거라는 잘못된 희망에 매달렸던 여인을 파멸시켰소. 일찍이 그것은 어떤 사나이로 하여금 불사를 추구하고 마침내 그것을 달성하게 만들었소. 그리고 그것은 잘난 체하는 혼령으로 하여금 자신이 내 일부 이상의 존재라고 착각하게 만들었소."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~이 곳에서는 너의 저항이 그 어떤 상처보다도 널 심하게 해칠 것이다. 믿음은 인간의 본성을 바꿀 수는 없다.~ */
  IF ~~ THEN REPLY #66071 /* ~"나는 그럴 수가 있다고 생각하오. 믿음은 나조차도 없앨 수가 있소 - 만약 내가 충분할 정도로 강렬하게 그것을 믿는다면. ~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"그것은 나중에 시험해 보도록 하겠소... 지금은 다른 알고 싶은 것들이 있소."~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~너는 그럴 정도로 강한 의지력을 지니고 있지 못하다.~ */
  IF ~~ THEN REPLY #66074 /* ~"그럼 당신은 그것이 가능하다는 걸 인정하는군."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"어디 두고 봅시다... 아마 한 번 시험해 보는 것이 좋을 듯하군."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"또는 만약 우리가 당신이 말하는 것처럼 연결되어 있다면 내가 *당신*을 없앨 수 있을지도 모르오."~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"그것은 나중에 시험해 보도록 하겠소... 지금은 다른 알고 싶은 것들이 있소."~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~내 인내심을 시험하지 마라, 파탄자.~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~의지의 힘을 내면으로 향하게 해 정신을 집중한다.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~정신을 집중하려고 노력한다.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"그것은 나중에 시험해 보도록 하겠소... 지금은 다른 알고 싶은 것들이 있소."~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~자신이 그런 일을 할 수 있다고 믿는다니 너는 정말 어리석다. 너에게는 자신의 누더기가 된 정신을 유지하는 일조차도 힘겹다. 네게는 더 이상 추락할 곳조차 없다, 파탄자.~ */
  IF ~~ THEN REPLY #66083 /* ~계속 집중한다.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~당신은 집중을 하고는 자신의 존재의 중심부로 파고 들어간다. 그러나 그 곳에는 파편과 조각들만이 있을 뿐 당신을 지탱해줄 것은 거의 없다... 그리고 당신은 자신에게 스스로를 없앨 의지력이 없다는 것을 깨닫는다.~ */
  IF ~~ THEN REPLY #66085 /* ~"설령 지금은 안될지라도... 지금은 다른 알고 싶은 것들이 있소."~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*멈춰라.*  너는 자신이 무슨 짓을 하고 있는지 알지 못한다.~ */
  IF ~~ THEN REPLY #66087 /* ~"나는 내가 무슨 짓을 하는지 잘 알고 있소. 당신은 날 이미 충분히 괴롭혔소, 그러니 이만 끝내야겠소."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~만약 네가 그 짓을 하면, *우리는* 사라진다. 이것은 너 혼자만의 문제가 아니다. 너는 우리 둘 모두를 파괴할 것이다.~ */
  IF ~~ THEN REPLY #66089 /* ~"그럼 보다시피 내게는 두 가지 선택이 있소 - 하나는 우리가 둘 다 죽는 것이고, 나머지는 당신이 거듭해서 날 죽이게 하여 그나마 몇 조각 남지 않은 내 정신마저 잃어버리는 것이오. 나는 신속한 죽음을 택하겠소, 당신에게 세 번째 해답이 없는 한."~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"그럼 우린 둘 다 죽어야 하오. 나는 우리 둘 모두를 없앨 것이오."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~이 문제에는 다른 해법이 없다.~ */
  IF ~~ THEN REPLY #66092 /* ~"방법이 있소 - 우리가 원래부터 그래야 했던 거처럼 다시 하나가 되는 것이오."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"그럼 우린 둘 다 죽어야 하오. 나는 우리 모두를 다 없앨 것이오."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~그럴 수는 없다. 그들은 *죽었다.* 그리고 그 상태로 머무를 것이다. ~ */
  IF ~~ THEN REPLY #66095 /* ~"왜? 당신은 그들을 구할 수가 없소? 당신에겐 그럴 힘이 없소?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"그럼 당신에겐 그들을 구할 힘이 없소? 그래 당신 힘에는 한계가 있군..."~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"그럼 당신이 그들과 저승에서 합류하도록 만들겠소. 각오하시오, 혼령. 내가 내 죽음을 죽일 수 있는지 어디 한 번 봐야겠소."~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~이 곳에서의 내 힘을 의심하지 마라. 너로부터 자유로워진 지금, 내게 불가능이란 없다.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"그럼 해서 해가 될 건 없--?"~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~그러나 나는 그들을 구할 생각이 없다. 그들은 내 집에서 내게 도전을 했다, 그리고 그들의 유해는 내게 도전하려는 모든 자들에 대한 본보기가 될 것이다.~ */
  IF ~~ THEN REPLY #66101 /* ~"당신은 그들을 소생시킬 수가 없소, 안 그렇소?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"당신에게 선택의 여지가 있다고는 생각하지 않소. 당신은 그들을 소생시킬 수가 없소."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"아마 당신은 그들과 곧 합류하게 될 거요. 지금은 다른 알고 싶은 것들이 있소."~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"그럼 당신이 죽어 그들과 함께 드러눕도록 만들겠소. 각오하시오, 혼령. 내가 내 죽음을 죽일 수 있는지 어디 한 번 봐야겠소."~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~네가 망각의 삶을 반복할 동안, 나는 관찰하고, 배우고, 그리고 내 몸 안에 힘을 축적해 왔다, 파탄자.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~내가 암흑 십 년 전쟁에서 싸웠을 때, 네 군사 지식은 내 정신 안에 모두 기록되었다. 네가 미치광이 럼과 함께 마법을 연구했을 때, 나도 너와 함께 배웠다. 너는 모두 망각했다. 하지만 나는 아니다. 삶과 죽음을 지배하는 힘은 내 능력의 극히 일부에 불과하다. ~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"당신은 나와 *함께* 배웠다고 했소 - 내가 경험한 건 당신도 경험했소. 당신 얘기는 당신과 내가 서로 연결되어 있다는 거요...?~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"그래 우리 사이의 연결은... 당신으로 하여금 내가 경험하는 것을 경험하고, 내가 배우는 것을 배울 수 있게 하는군..."~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~그것은 하찮은 일에 불과하다.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"아니, 그렇게 생각하지 않소. 만약 당신이 자신에게 그럴 힘이 있다고 주장한다면 내게도 그럴 힘이 있을지도 모르오."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"데이오나라는 희생자가 내 가까이에서 죽었을 때만 내가 그들의 죽음을 되돌려 놓을 수 있다고 내게 말해주었소. 하지만 그녀가 내 안에서 각성시킨 힘... 당신은 그 힘이 삶과 죽음에 대한 내 힘의 극히 일부분에 지나지 않는다고 말하고 있는 거요?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~네 정신은 깨진 돌과 같다, 그리고 그 테두리는 오용과 무관심으로 무디어졌다. 설령 네가 힘을 알더라도 너는 그것을 이용할 방법을 알지 못할 것이다.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"아니, 그렇게 생각하지 않소. 내 생각에 연결은 양쪽 방향으로 작용하오. 만약 당신이 자신에게 그럴 힘이 있다고 주장한다면 내게도 그럴 힘이 있을지도 모르오."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"만약 당신이 자신에게 그럴 힘이 있다고 한다면 내게 틀림없이 같은 힘이 있을 것이오 - 설령 내가 희생자가 죽었을 때 그 곳에 있지 않았더라도."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~네게는 삶과 죽음의 마법을 터득하는 데 필요한 세월이 없다. 너는 내 앞에서 쓰러질 것이다. ~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~정신 속에서 뭔가가 요동친다, 그리고 당신은 자신이 삶과 죽음의 마법을 터득하는 데 필요한 세월을 지니고 있다는 사실을 갑자기 깨닫는다 - 왜냐하면 한때 당신은 여러 화신들에 걸쳐 그것을 모두 알고 있었기 때문이다. 하지만 그 과정은 많은 시간을 필요로 한다, 그리고 당신은 당신의 '죽음'이 그런 시간을 주지 않으리라는 것을 안다, 당신에게는 단 한 사람의 동료를 소생시킬 시간밖에 없다.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"나는 이 곳에 오는 도중에 그 안쪽 금고실의 문을 열었소. 상급 그림자들은 요새를 자유로이 활보하고 있소 - 그들은 더 이상 그 방에 갇혀 있지 않소."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~동료들 중 한 명을 소생시킨다...~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~동료들 소생시킨다...~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"그럼 그들을 그대로 내버려둘 수밖에. 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~당신이 손을 내밀자 시간이 느려지는 듯하다. 당신은 당신 동료의 영혼을 희미하게나마 느낄 수가 있다, 그리고 당신은 당신이 그것을 다시 동료의 몸으로 불러올 수 있다는 사실을 안다.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~모트를 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~안나를 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~다콘을 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~훨-후럼-그레이스를 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~노돔을 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~이그너스를 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~베일로를 소생시킨다.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"그럼 그들을 그대로 내버려둘 수밖에... 그 밖에도 알고 싶은 것들이 있소..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~너는 거짓말을 하고 있다. ~ */
  IF ~~ THEN REPLY #66128 /* ~"내 말을 못 믿겠으면 당신이 직접 확인하시오. 난 아무 데도 가지 않을 테니."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~나는 다녀와서 너를 상대하도록 하겠다, 파탄자. 만약 네가 그림자들을 풀어 놓았다면, 나는 너들 그들에게 먹이겠다.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"좋소... 난 여기 있도록 하겠소. 만약 당신이 살아서 돌아온다면 말이지만."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~질문을 하라, 하지만 네가 그 답을 결코 기억하지 못할 것이라는 것을 알라.~ */
  IF ~~ THEN REPLY #66132 /* ~"당신은 모든 수단을 동원해 우리가 직접 만나는 것을 막으려 했소. 무엇 때문이오?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"베일로가 나를 죽일 수가 있다는 사실을 알면서 왜 베일로를 내게 보낸 거요?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"이그너스가 나를 죽일 수가 있다는 사실을 알면서 왜 이그너스를 내게 보낸 거요?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"당신은 당신과 내가 서로 연결되어 있다고 했소."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"나는 불사신일지도 모르오, 하지만 래벌은 내게 의식이 잘못되었다고 했소. 죽을 때마다 나는 내 정신의 일부를 상실하오. 따라서 죽는 것을 반복하다 보면 결국에 가서는 나는 스스로 생각할 수 있는 능력조차 상실하게 될 것이오."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"우리는 결코 분리되어 있어서는 안 되오, 혼령. 우리의 분리는 부자연스러운 일이오. 이처럼 계속 살고 죽도록 내버려둘 수는 없소."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 나는 내 이름을 알고 싶소."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 나는 내 이름을 알고 싶소."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 나는 내 이름을 알고 싶소."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 나는 내 이름을 알고 싶소."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 우리 이름을 말해보시오."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 우리 이름을 말해보시오."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 우리 이름을 말해보시오."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"만약 우리가 당신이 얘기하는 것처럼 서로 연결되어 있다면, 우리 이름을 말해보시오."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"내 친구들... 나는 그들이 목숨을 되찾고 이 곳으로 부터 자유로이 나갈 수 있기를 바라오."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"내 동료들... 그들에 대한 생사여탈권은 내 것이지 당신 것이 아니오. 그들을 소생시키도록 하시오. 당장.~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"내 친구들을 소생시키고 그들이 이 곳으로부터 안전히 나갈 수 있도록 해주시오. *만약* 당신에게 그럴 힘이 있다면."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"나는 당신에게 내 친구들을 소생시키고 그들이 이 곳으로부터 안전히 나갈 수 있도록 해줄 것을 요구하오. *만약* 당신에게 그럴 힘이 있다면."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"그럼 이것이 내 마지막 질문이오: 무엇이 인간의 본성을 바꿀 수가 있소?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"더 이상 알고 싶은 것은 없소. 준비를 단단히 하시오, 혼령. 내가 내 죽음을 죽일 수 있는지 어디 두고 봅시다. " ~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~그럼 다시 죽을 각오를 하라, 파탄자.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~이것은 네게 도움이 되지 못한다. 너는 네 동료들이 두 번째 죽음을 맞이하게 만들었을 뿐이다.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"내가 죽더라도 난 당신을 죽이러 다시 올 것이오. 맹세하겠소. 얼마나 오래 걸리더라도 반드시 당신을 다시 찾아내고야 말겠소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~나는 네 동료를 구할 생각이 없다. 네... 개는 내 집에서 내게 도전을 했다, 그리고 그의 죽음은 내게 도전하려는 모든 자들에 대한 본보기가 될 것이다.~ */
  IF ~~ THEN REPLY #68453 /* ~"당신은 내 동료들을 소생시킬 수가 없는 거요, 그렇소?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"당신에게 선택의 여지가 있다고는 생각하지 않소. 당신은 내 동료들을 소생시킬 수가 없소."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"아마 당신은 곧 그들 뒤를 따라 저승길로 가게 될 것이오. 나는 다른 알고 싶은 것들이 있소..."~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"그럼 당신도 죽을 것이오. 각오를 하시오, 혼령. 어디 내가 내 죽음을 죽일 수 있는지 한 번 봅시다."~ */ GOTO 141
END
