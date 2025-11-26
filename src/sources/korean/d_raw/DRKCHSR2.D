// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~이 더럽게 생긴 수집자는 허공을 쳐다보고 있다. 그는 자신의 주변에 대해서는 무관심한 듯하다.~ */
  IF ~~ THEN REPLY #15721 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~그는 깜짝 놀라서 생각하던 것을 멈춘다. 당신을 보자 그는 공포에 질린다.~ */
  IF ~~ THEN REPLY #15724 /* ~"우린 얘기를 해야 하오."~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"아... 에... 어떤 것에 대해 얘기하고 싶으시오, 나으리?"~ */
  IF ~~ THEN REPLY #15727 /* ~"변장을 풀어도 좋소. 난 당신이 무엇인지 아니까, 마족."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"당신이 가지고 있는 그 펜던트는 어떻소?"~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"뭐? 아니오, 나으리! 난 당신이 하는..." 그는 당신의 냉혹한 시선 아래서 침묵을 지킨다, 그리고 탄식을 한다. 다시 얘기하기 시작했을 때 그는 침착하고 세련된 목소리로 말한다. "어떻게 그대는 내 비밀을 알게 되었소?"~ */
  IF ~~ THEN REPLY #15731 /* ~"어떤 쥐 사냥꾼이 당신에 대해 얘기해주었소."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"한 쌍의 마족이 내게 말해주었소."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"당신이 상관할 바가 아니오. 질문할 것들이 좀 있소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"쥐 사냥꾼? 정말 이상하오." 그는 잠시 자신의 턱을 긁는다. "흠... 그대는 그의 이름을 혹시 아시오?"~ */
  IF ~~ THEN REPLY #15734 /* ~"그렇소. 랫본이오."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~거짓말: "아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"뭐라고 말할 수가 없소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"알겠소. 고맙소." 그는 그 이름을 기억해 두려는 듯 잠시 멈춘다. "자, 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15742 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"이무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~그는 고개를 슬프게 젓는다. "애석한 일이오. 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15787 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"아무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~그는 고개를 슬프게 젓는다. "이해할 수 있소. 그런 정보의 대가로 그대는 내게 무엇을 원하오? 그들의 정체를 아무런 대가도 없이 폭로할 정도로 그대가 어리석지는 않을 것이오... 만약 당신이 그들을 해치려고 한다면 모를까. 자, 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15796 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"아무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~그는 믿을 수 없다는 표정이다. "뭐라고?! 그런 건 불가능하오! 어떻게... 그들이 감히 어떻게!" 그의 눈에는 사악한 빛이 감돌며, 그가 노호하면서 입을 열자 삐뚤어진 이빨들이 드러난다. "누구요? 그들의 이름은? 그대는 아오?"~ */
  IF ~~ THEN REPLY #15804 /* ~"그렇소. 세 번 저주받은 이더그린과 테가'린."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~거짓말: "아니오."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"뭐라고 말할 수가 없소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~그는 조소한다. "정말 세 번 저주받을 자들이군! 나는 천 년이 걸릴지라도 놈들이 대가를 치르도록 만들겠소!" 그는 마음을 가라앉힌다. "자, 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15807 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"아무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~그는 분노로 주먹을 꽉 쥔다. "악! 난 찾아내고 말겠소...천 년이 걸릴지라도 놈들이 대가를 치르도록 만들겠소!" 그는 마음을 가라앉힌다. "자, 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15811 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"아무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"그렇소? 그럼 그대는 무슨 일로 날 찾아왔소?"~ */
  IF ~~ THEN REPLY #15815 /* ~"당신 펜던트 때문에."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"당신의 죽음..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"아무 것을 위해서도 아니오, 정말이오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"흠?" 그는 당황한 듯하다. "어떤 펜던트 말이오?"~ */
  IF ~~ THEN REPLY #15819 /* ~"내 시간을 낭비하지 마시오. 당신은 내가 무슨 말을 하는지 알고 있소."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"당신에겐 펜던트가 없소? 해골 모양의 펜던트 말이오."~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"내가 한 질문에 대해서는 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"그런 건 내게 없소. 어떻게 해서 그런 생각을 하게 되었소?"~ */
  IF ~~ THEN REPLY #15823 /* ~"내 시간을 낭비하지 마시오. 당신은 내가 무슨 말을 하는지 알고 있소."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"그럼 내가 당신을 수색해도 개의하지 않겠군..."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"당신 펜던트 건은 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"내가 한 질문에 대해서는 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~그는 한숨을 쉰다. "좋소. 내 펜던트에 대해 무엇을 알고자 하오?"~ */
  IF ~~ THEN REPLY #15827 /* ~"나는 그것을 갖고자 할 뿐이오."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"그건 정확하게 어떤 것이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"당신 펜던트 건은 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"하지만..." 그는 당신으로부터 한 걸음 물러선다. "난 그것을 잃을 수가 없소! 그대는 이해하지 못할 것이오... 내가 소멸해 버릴 수도 있소!"~ */
  IF ~~ THEN REPLY #15830 /* ~"그럼 당신은 죽을 거요..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"하지만 왜? 그건 정확하게 어떤 것이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"당신 펜던트 건은 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"그것은 용기에 불과하오. 그 펜던트는 육신을 떠나는 영혼을 그것이 합당한 차원에 도달하기 전에 그 안에 감금할 수가 있소."~ */
  IF ~~ THEN REPLY #15833 /* ~"누가 왜 그런 것을 만든 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"그것이 왜 필요하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"그것은 결코 적지 않은 힘을 지녔던 예메스라는 이름의 인간 요술사에 의해 만들어졌소. 그는 불사신이 되기를 원했으나 리치가 될 생각은 없었소. 그의 일지에 의하면 그는 사령술의 가장 사악한 전승으로부터 영감을 얻어 그 장치를 만들었다고 하오. 그는 그것으로 타인의 영혼을 포박해 그 에너지로 자신의 쇠퇴해 가는 기력을 보충할 생각이었소."~ */
  IF ~~ THEN REPLY #15839 /* ~"리치?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"누가 실제로 펜던트를 만들었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"그럼 그는 어떻게 해서 펜던트를 잃게 되었소?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"그것은 어떤 사람의 능력을 향상시키는 데도 사용될 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"그것이 왜 필요하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"그들의 이름은 시간의 뒤안길로 사라졌소. 오랜 세월 동안 여러 기술자들이 그 장치를 자신이 디자인했다고 주장하곤 했소, 그리고 어떤 자들은 그것이 마족의 정신으로부터 탄생했다고 수근거리기도 하오."~ */
  IF ~~ THEN REPLY #15865 /* ~"어떻게 해서 예메스는 펜던트를 잃게 되었소?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"그것은 어떤 사람의 능력을 향상시키는 데도 사용될 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"그것이 왜 필요하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"그는 천지를 뒤흔들 정도의 치열한 마법 전투의 결과로 완전히 소멸하였소. 아마 그와 필적할 힘을 지닌 라이벌 메이지와의 싸움이었던 것 같소... 그가 소멸한 탓에 펜던트가 에너지를 공급할 대상은 더 이상 남아있지 않았소. 내 손에 들어올 때까지 펜던트의 주인은 오랜 세월 동안 여러 번 바뀌었소."~ */
  IF ~~ THEN REPLY #16006 /* ~"누가 실제로 펜던트를 만들었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"그것은 어떤 사람의 능력을 향상시키는 데도 사용될 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"그것이 왜 필요하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"가능은 하오, 하지만 그 방법은 나도 모르오. 다시 말하지만 펜던트는 단순한 용기요. 그것을 사용하기 위해 필요한 의식과 주문들은 예메스와 함께 사라져 버렸소."~ */
  IF ~~ THEN REPLY #16013 /* ~"누가 실제로 펜던트를 만들었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"그럼 그는 어떻게 해서 펜던트를 잃게 되었소?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"그것이 왜 필요하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~그는 가볍게 한숨을 쉰다. "인간의 마법사나 사제가 강대한 힘을 지닌 언데드가 되는 과정이오. 그 과정은 엄청난 시간과 노력, 그리고 다량의 신비한 시약들을 필요로 하오. 그러나 대개의 경우 실패하고 마오. 성공하면 리치가 탄생하는데, 리치는 뱀파이어처럼 자유 의지를 지닌 언데드로, 생전의 능력과 정신을 그대로 지니게 되오."~ */
  IF ~~ THEN REPLY #16020 /* ~"누가 실제로 펜던트를 만들었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"예메스는 어떻게 해서 펜던트를 잃었소?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"그 펜던트는 사람의 능력을 향상시키는 데 사용될 수가 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"당신에겐 왜 그 펜던트가 필요한 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"그건 긴 얘기요. 만약 그대가 내 사연을 알고자 하면 나는 맨 처음부터 설명을 해야만 하오."~ */
  IF ~~ THEN REPLY #16028 /* ~"좋소. 계속하시오..."~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"아마 다른 기회에. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"아마 다른 기회에. 질문할 것들이 좀 있소."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"당신이 눈치챈 것처럼 나는 마족의 일종인 바테주요. 그 중에서도 나는 사악한 요부인 '이리니즈'요. 내 진정한 모습은 당신이 상상하기 어려울 정도로 아름답소. 의지가 약한 남자들의 피로 욕망을 끓어 오르게 하고, 속좁은 여자들이 질투로 이를 갈게 할 정도로."~ */
  IF ~~ THEN REPLY #16033 /* ~"내가 어떻게 이 이야기를 믿을 수가 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"알겠소. 계속하시오..."~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"장시간에 걸쳐 설명을 하리다. 그대는 내 얘기를 생각이 있소, 아니면 없소?"~ */
  IF ~~ THEN REPLY #16039 /* ~"그렇소. 계속하시오..."~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"다원 우주 전체에 걸쳐 우리 이리니즈는 오백 명밖에 존재하지 않소 -- 그대는 이 사실을 알고 있었소? 우리는 매우 희귀하고 오만한 종족으로, 우리보다 강한 자는 질투하고 약한 자는 멸시하오. 나와 내 자매들은 아름다울 뿐만 아니라 그 야심에 있어 어떤 마족에게도 뒤지지 않소. 우리는 인간을 유혹해 그들의 영혼을 베이터로 끌어옴으로서 우리 바테주의 배타적인 계급 체계 안에서 승진을 하려고 경쟁하오."~ */
  IF ~~ THEN REPLY #16044 /* ~"계속하시오..."~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"이러한 영혼들 중 가장 '값진' 건 스스로를 순수하고 경건하다고 생각하는 자들의 영혼이오. 예를 들어 성직자들 말이오. 나는 내가 그러한 어려운 임무를 완수하면 큰 명예를 얻을 수 있을 것이라는 어리석은 생각에 빠져 무리한 시도를 하게 되었소..."~ */
  IF ~~ THEN REPLY #16049 /* ~계속 듣는다.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"나는 신앙심이 매우 깊은 성자를 유혹하려고 했소. 그는 상당한 영적인 힘을 지닌 고위 사제였소. 내가 그를 유혹하는 데 거의 성공했다고 생각했을 때 그가 나를 공격했소."~ */
  IF ~~ THEN REPLY #16054 /* ~"계속하시오..."~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"그 개자식은 나를 저주하여 그대가 지금 보고 있는 것과 같은 참담한 몰골로 만들었소. 보통 그러한 저주는 악마에게는 사소한 것이나 이 인간의 힘은 참으로 놀라웠소... 틀림없이 그가 섬기는 신의 눈이 날 지켜보고 있었을 것이오!"~ */
  IF ~~ THEN REPLY #16059 /* ~"추악한 남자의 모습이 되도록 저주받았소? 그것 참 얄궂군. 계속하시오..."~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"그대도 짐작은 했듯이 내 자매들은 날 도우려고 하지 않았소. 그들은 내가 이리니즈의 서열에서 최하위로 강등당하고, 그에 따라 자신들의 지위가 상대적으로 올라간 걸 즐거워했소."~ */
  IF ~~ THEN REPLY #16062 /* ~"계속하시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"모든 이리니즈들로부터 보고를 받는 강대한 악마들인 암흑 8인중은 그 일이 매우 재미있다고 생각했으나, 내게 자비를 베풀기로 결정했소. 아니, 그건 자비 때문이 아니라 경험이 풍부한 요부를 잃어서 득이 될 것은 없다고 생각했기 때문일 거요. 어쨌든 내게는 최후의 통첩이 떨어졌소."~ */
  IF ~~ THEN REPLY #16067 /* ~"계속하시오..."~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~진실: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~허풍: "그만 됐소. 내게 펜던트를 주던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"나머지는 다음 기회에 들어야겠소. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"내게는 1년 동안 정확히 열 명의 영혼을 베이터로 보내라는 명령이 주어졌소. 만약 성공한다면 나는 옛 영광을 되찾게 될 것이오. 하지만 만약 실패하면 나는 비참한 코크라콘으로 강등될 것이오. 경우에 따라서는 그보다 한층 심한 바바주나..." 그는 몸서리친다. "...스피나곤으로도 강등 당할 수가 있소..."~ */
  IF ~~ THEN REPLY #16072 /* ~"그럼 이 펜던트는..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"그렇소. 그것은 내 유일한 희망이오. 나는 여러 영혼을 그 안에 가두었으며, 그들을 그들이 영원히 갇혀서 지낼 베이터에 풀어놓을 것이오. 나는 이제 한 사람의 영혼만 더 손에 놓으면 되어. 한 사람의 영혼만 더 있으면 나는 내 명예를 되찾고, 다시 내 사랑스럽고 끔찍한 자매들의 일원이 될 것이오."~ */
  IF ~~ THEN REPLY #16073 /* ~진실: "흥미로운 얘기요. 그 물건을 내놓던지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~허풍: "흥미로운 얘기요. 이제 그 물건을 내놓든지 아니면 죽을 각오를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"알겠소. 하지만 그래도 난 펜던트를 가져가야겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"일단 지금은 펜던트에 대한 일은 접어둡시다. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"그럼 당신이 펜던트를 그대로 지니고 있도록 해주겠소. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~그는 뒤로 한 걸음 더 물러선다. "기다리시오! 그대는 이해지 못하오! 죽는 것은 약간의 불편에 불과하오. 시간만 좀 지나면 나는 베이터에서 재생될 테니까. 하지만 그렇게 되면 내게 주어진 기한을 넘기게 될 것이오... 나는 강등되어 이리니즈의 지위를 여러 세기 동안... 아니, 영원히 잃게 될 것이오. 이해하겠소? 죽음조차 펜던트를 잃는 일보다 끔찍하지는 않소!"~ */
  IF ~~ THEN REPLY #16078 /* ~"이게 나와 왜 상관이 있는 거요?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"두 가지 이유가 있소... 첫 째는 내가 완전히 무력한 건 아니라는 사실이오. 잠시 생각해보시오... 낮에 날 보호한 젊은 전사는 내 지배하에 있소. 그는 영원히 내 마력의 노예요. 당신도 그처럼 되고 싶소?"~ */
  IF ~~ THEN REPLY #16081 /* ~"당신은 날 협박하려는 거요?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"아니, 하지만 두 번째 이유는 뭐요?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"당신은 허풍을 치고 있군, 난 저주가 당신을 약하게 만들었다는 걸 아오."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~그가 더 얘기를 하기 전에 그를 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"아니오, 하지만 내 말을 들으시오!"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~그는 계속한다. "두 번째 이유는 나와는 달리 당신은 그 펜던트로부터 별로 얻을 것이 없소. 그런 걸 가지고 그대가 뭘 하겠소? 이리니즈의 조력을 얻는 편이 훨씬 낫지 않겠소? 생각해보시오..."~ */
  IF ~~ THEN REPLY #16086 /* ~"그럴지도. 난 그걸 가져다주면 강대한 힘을 얻기로 약속받았소."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"그럼 당신은 내게 할 제안을 가지고 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"힘?" 그는 비웃는다? "누가 그대에게 어떤 힘을 약속했소? 나도 그만한 조건을 제시할 수가 있을 것이오."~ */
  IF ~~ THEN REPLY #16090 /* ~"한 쌍의 마족이오, 그리고 어떤 종류의 힘인지는 나도 모르겠소."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"당신과는 상관없는 일이오."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~그는 잠시 조용히 당신을 응시한다. "그 힘의 한계와 기능에 대해 아시오? 그대는 계약서에 서명을 했소?"~ */
  IF ~~ THEN REPLY #16094 /* ~"아니오."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"왜 그것이 중요한 거요?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"아, 그건 정말 중요한 일이오. 내 말을 믿으시오!"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"계약서가 없으면 그 마족들은 그대에게 약속한 힘을 줄 의무가 없소, 그 힘이 어떤 것이든 간에 말이오. 그리고 만약 그 힘이 그대 마음에 들지 않는다면 어떻게 할 것이오?"~ */
  IF ~~ THEN REPLY #16098 /* ~"무슨 뜻이오?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"예를 들어 당신에게 뿔이 나 '별난 뿔의 힘'을 얻게 된다면? 아니면 2주마다 자주색으로 변하는 힘? 무엇 때문에 그대는 그러한 '힘'이 그대에게 도움이 되리라고 생각하오? 야 이 마족들이 얼간이가 아닌 한 그들의 약속은 속임수이거나 공허한 약속에 불과할 것이오."~ */
  IF ~~ THEN REPLY #16101 /* ~"그럼 내게 할 제안이 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"그렇소. 내가 그 펜던트를 계속 지니고 있을 수 있도록 해주시오. 그것의 도움을 받으면 난 옛날의 영광을 되찾을 수 있을 것이오. 내게는 이행해야 할 의무가 많고 갚아야 할 처절한 원한도 있소... 그러나 3년 후에는 당신에게 4개월 동안 하루도 빠지지 않고 봉사하겠다고 약속하겠소. 만약 당신이 동의한다면 이 합법적인 계약서에 서명을 하겠소. 생각해보시오, 마족의 노예와 쓸모없을 지도 모르는 잡동사니 중 어는 것을 선택하겠소?"~ */
  IF ~~ THEN REPLY #16104 /* ~"동의하오. 이 계약서를 봅시다."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"3년은 너무 먼 것 같소."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"나는 8개월을 원하오. 그렇게 오래 봉사할 수 있겠소?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~그는 살며시 웃으며 고개를 젓는다. "쯧쯧! 마음대로 부릴 수 있는 더없이 아름답고 음탕한 여자 악마를 얻기 위해서 그대는 어떤 대가를 치르겠소? 나는 그대에게 오래 사는 비법을 가르쳐 줄 수도 있소. 정확히 얼마나 오래 살 수 있을 지도 나도 모르나 충분할 만큼 오랜 기간 동안 살 살 수 있을 것이오. 너무 근시안적으로 생각하지 않는 것이 좋소. 만약 당신이 꼭 그렇게 성급하게 나와야겠다면 2년 후에 2개월간 그대에게 봉사하겠소."~ */
  IF ~~ THEN REPLY #16109 /* ~"2년 후에 2개월간의 봉사라는 조건에 동의하오."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"3년 후에 4개월간 봉사라는 조건에 동의하겠소."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"나는 8개월을 원하오. 그렇게 오래 봉사할 수 있겠소?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"나는 3년 후에 6개월간 봉사하겠소, 하지만 그 이상은 곤란하오. 이에 동의하오?"~ */
  IF ~~ THEN REPLY #16114 /* ~"동의하오. 이 계약서를 봅시다."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"3년은 너무 긴 것 같소."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~그는 고개를 끄덕인다. "내가 이런 계약을 하는 것은 드문 일이지만, 아마 아직도 그에 필요한 것들이 내게 있을..." 그는 잠시 말을 멈춘다, 그리고 눈살을 찌푸리면서 법복 속을 뒤진다. 얼마 후 그의 눈이 빛나고, 그는 자신의 뒤쪽으로 손을 뻗어 아무 것도 없는 공간으로부터 묶인 두루마리를 꺼낸다. "아! 여기 있소..." 그는 당신에게 계약서와 빨간 깃펜을 준다. ~ */
  IF ~~ THEN REPLY #16118 /* ~계약서에 서명한다.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~계약서를 읽는다.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~계약서를 읽는다.~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~계약서를 읽는다.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~계약서를 읽는다.~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~계약서를 읽는다.~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~계약서는 양피지가 아니라 살가죽 위에 적혀 있다. 글씨는 피부 표면 바로 아래에 피로 세밀하게 쓰여져 있다. 계약서에는 아무런 하자도 없는 듯하다. ~ */
  IF ~~ THEN REPLY #16126 /* ~계약서에 서명한다.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~계약서는 양피지가 아니라 살가죽 위에 적혀 있다. 글씨는 피부 표면 바로 아래에 피로 세밀하게 쓰여져 있다. 의심했던 대로 계약서에는 만족스럽지 않은 항목들이 숨겨져 있다. ~ */
  IF ~~ THEN REPLY #16129 /* ~"세부 사항에 대해 재협상을 해야 할 것 같소..."~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~계약서에 그대로 서명한다.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~계약서는 양피지가 아니라 살가죽 위에 적혀 있다. 글씨는 피부 표면 바로 아래에 피로 세밀하게 쓰여져 있다. 당신이 논리적으로 유추했던 대로 계약서에는 만족스럽지 않은 항목들이 숨겨져 있다. ~ */
  IF ~~ THEN REPLY #16133 /* ~"세부 사항에 대해 재협상을 해야 할 것 같소..."~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~계약서에 그대로 서명한다.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~계약서는 양피지가 아니라 살가죽 위에 적혀 있다. 글씨는 피부 표면 바로 아래에 피로 세밀하게 쓰여져 있다. 당신이 논리적으로 유추했던 대로 계약서에는 만족스럽지 않은 항목들이 숨겨져 있다. 당신은 자신에게 유리하게 이용할 수 있는 계약서 상의 허점을 찾아보나 아무 것도 발견할 수가 없다. ~ */
  IF ~~ THEN REPLY #16137 /* ~"세부 사항에 대해 재협상을 해야 할 것 같소..."~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~계약서에 그대로 서명한다.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~계약서는 양피지가 아니라 살가죽 위에 적혀 있다. 글씨는 피부 표면 바로 아래에 피로 세밀하게 쓰여져 있다. 당신은 계약서에 숨겨져 있는 만족스럽지 않은 항목들을 즉석에서 발견한다. 그들 중 일부는 매우 교활하게 감추어져 있다. 또한 당신은 자신에게 유리하게 이용할 수 있는 계약서 상의 허점을 여러 개 찾아낸다.~ */
  IF ~~ THEN REPLY #16141 /* ~"세부 사항에 대해 재협상을 해야 할 것 같소..."~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~계약서에 그대로 서명한다.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"마음을 바꿨소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"물론이오. 난 당신이 그렇게 나오리라 예상했었소." 당신은 악마와 계약서를 검토하기 시작한다. 그와 논쟁하고 따지며, 타협하고 책략을 꾸미면서 당신에게는 전에도 비슷한 일을 한 적이 있다는 생각이 든다.~ */
  IF ~~ THEN REPLY #16145 /* ~기억을 되살리려고 노력한다.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~기억을 억누른다.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~당신이 계약서에 서명을 하는 일을 마치자, 계약서와 빨간 깃펜은 빨간 연기와 함께 사라진다. "안녕히 가시오, 방랑자... 약속한 때가 오면 다시 그대를 만나 계약서에 약정된 기간 동안 그대에게 봉사할 것이오." 그는 인사를 하고 돌아서서 떠나려고 한다."~ */
  IF ~~ THEN REPLY #16147 /* ~"기다리시오. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~그를 그냥 보내준다.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"그게 뭐요, 나으리? 내게 보석 같은 건 없소..."~ */
  IF ~~ THEN REPLY #16149 /* ~"변장을 풀어도 좋소. 난 당신이 무엇인지 아니까, 마족."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"얘기는 그만 됐소. 당신을 그냥 죽이고 펜던트를 가지고 가도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"그대의 질문에 최선을 다해 답하겠소."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"당신에 대한 이야기를 다시 들려주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"당신 펜던트에 대해 얘기해주시오."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"당신이 매일 따라다니는 그 방탕자는 누구요?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"당신이 매일 따라다니는 그 방탕자는 누구요?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"관두시오. 그냥 내게 펜던트를 넘기시오."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"관두시오. 그냥 내게 펜던트를 넘기시오."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"하지만 왜?"~ */
  IF ~~ THEN REPLY #16160 /* ~"그것을 가져가면 강대한 힘을 받기로 약속했기 때문이오."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"그건 당신이 하는 짓이 잘못된 일이기 때문이오."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"당신과는 상관없는 일이오."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"일단 지금은 펜던트에 대한 일은 접어둡시다. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"그럼 그대는 그것을 가지고 뭘 할 거요? 악인의 손에 들어가는 것을 막을 거요? 아니면 팔거나 물물 교환을 할 거요? 그대는 펜던트의 다음 소유주가 그것을 뭘 할 것이라고 생각하오?"~ */
  IF ~~ THEN REPLY #16166 /* ~"당신이 하고 있는 짓보다 특별히 나쁠 것도 없소."~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"나는 두 마족들에게 그것을 넘기고 대가로 힘을 받기로 했소." ~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"일단 지금은 펜던트에 대한 일은 접어둡시다. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"그건 당신이 펜던트를 아무도 찾지 못할 곳에 감출 수 있어야만 가능할 것이오. 그것은 그 특성상 선한 목적으로는 쓰일 수가 없소. 내가 그것을 지니고 있는 것이 가장 바람직한 데는 그만한 이유가 있소."~ */
  IF ~~ THEN REPLY #16171 /* ~"예를 들어?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"일단 지금은 펜던트에 대한 일은 접어둡시다. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~그는 충격을 받은 듯하다. "어떻게 그런 말을 할 수가 있소? 그대는 야비한 산적처럼 날 약탈하여, 내게서 한 번뿐인 진정한 기회를 훔치고, 내 희망을 산산조각내고 나서 내가 상관할 바가 아니라고 말하겠다는 것이오?"~ */
  IF ~~ THEN REPLY #16175 /* ~"그것을 가져가면 강대한 힘을 받기로 약속했기 때문이오."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"그건 당신이 하는 짓이 잘못된 일이기 때문이오."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"일단 지금은 펜던트에 대한 일은 접어둡시다. 질문할 것들이 좀 있소."~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"당신은 잘못 알고 있소. 그건 내게 있어 중대한 관심사요. 그대가 현재 체결하고 있는 계약의 조건을 모르고 내게 어떻게 카운터오퍼를 할 수 있겠소?"~ */
  IF ~~ THEN REPLY #16180 /* ~"한 쌍의 마족이오, 그리고 어떤 종류의 힘인지는 나도 모르겠소."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"그럼 당신은 내게 할 제안을 가지고 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"얘기는 그만 됐소 -- 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"관두시오. 당신 펜던트는 당신이 그대로 간직하시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"거만한 귀족이자 뛰어난 검객일 뿐이오. 그는 내 지배를 받고 있으나 그것을 깨닫지 못하고 있으며, 그 상태는 내가 그를 해방시키거나 내가 죽을 때까지 계속될 것이오."~ */
  IF ~~ THEN REPLY #16184 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"거만한 귀족이자 뛰어난 검객이었을 뿐이오. 그는 내 지배를 받고 있었으나 그것을 깨닫지 못하고 있었으며, 그는 자신도 모르는 새 내 수호자 역할을 했소."~ */
  IF ~~ THEN REPLY #16186 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~당신은 마침내 계약에 대한 협상을 마친다. "어떻소? 만족했소?"~ */
  IF ~~ THEN REPLY #16188 /* ~"그렇소. 지금 당장 서명하겠소."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"아니... 난 그냥 당신을 죽이고 펜던트를 빼앗도록 하겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"계약에 대해선 잊으시오, 그리고 당신 펜던트는 당신 그냥 가지고 계시오. 안녕히 계시오."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~그것에 대해 숙고하면서 당신은 자신이 전에 이런 일을 해본 적이 있다는 사실을 깨닫는다. 어려운 협상에 대비하여 여러 날 동안 곰팡이가 난 책들과 법률 서류들을 뒤적이던 일, 모호한 뜻을 감춘 신중하게 고려된 구절들, 진실 속에 묻힌 거짓말, 허점 그리고 또 허점, 형체를 알아볼 수 없을 정도로 왜곡된 법과 약속... 이러한 모든 것들과 다른 기억들이 당신에게 갑작스럽게 몰려든다. ~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~계속한다...~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~계속한다...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~계속한다...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~계속한다...~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"질문에 답할 수가 없소. 다음에 만나게 될 때 우리는 얘기를 할 충분한 시간을 가지게 될 것이오. 질문은 그 때 가서 하시오. 안녕히 계시오."~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~방탕자를 따라다니는 자 말릭은 허공을 쳐다보고 있다. '그'는 자신의 주변에 대해서는 무관심한 듯하다.~ */
  IF ~~ THEN REPLY #16195 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~'그'를 그냥 내버려 두고 떠난다.~ */ EXIT
END
