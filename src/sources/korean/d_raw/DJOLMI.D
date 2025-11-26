// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~이 엄하게 생긴 늙은 여자는 누군가를 찾고 있는 듯하다. 당신이 다가가자 그녀의 시선은 당신 얼굴에 고정된다. "거기 당신... 잠시 나와 얘기를 할 수 있나요?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"물론이오..."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"무엇을 원하시오?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"그렇소.. 당신이 졸미요? 나는 당신 심부름꾼과 얘기를 했소."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~졸미라는 이름의 귀부인은 내게 묘한 제안을 했다. 그녀는 날 '살해'할 특권을 얻는 대가로 돈을 지불하겠다고 한다. 잘만 된다면 내 지갑을 돈으로 채울 손쉬운 방법이다...~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"내 이름은 졸미, 시르마 가문의 귀부인이에요. 나는 죽을 수가 없다는 남자를 찾고 있어요... 그는 흉터투성이 사내로 그에게 있어 죽음은 약간 성가신 것 정도에 불과하다고 하는군요. 당신은 내가 들은 그 사람의 인상착의와 일치하는 것 같아요... 당신이 그 사람인가요?~ */
  IF ~~ THEN REPLY #43856 /* ~"그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~졸미라는 이름의 귀부인은 내게 묘한 제안을 했다. 그녀는 날 '살해'할 특권을 얻는 대가로 돈을 지불하겠다고 한다. 잘만 된다면 내 지갑을 돈으로 채울 손쉬운 방법이다...~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~그녀는 고개를 단호히 끄덕인다. "그렇다면 시간을 내주어 고마워요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #43859 /* ~"기다리시오... 질문할 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~졸미는 고개를 젓는다. "나 외에도 당신 질문에 대답해줄 사람들은 많아요. 그러니 그런 사람들을 찾아보도록 하고, 내가 사람 찾는 일을 계속할 수 있도록 날 그냥 내버려 두세요. 안녕히 가세요."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"실은 난 당신이 찾는사람이오."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~졸미라는 이름의 귀부인은 내게 묘한 제안을 했다. 그녀는 날 '살해'할 특권을 얻는 대가로 돈을 지불하겠다고 한다. 잘만 된다면 내 지갑을 돈으로 채울 손쉬운 방법이다...~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"그렇다면 만나서 반갑군요." 그녀는 가볍게 인사한다. "나는 당신에게 기묘한 제안을 하고 싶어요... 하지만 먼저 당신은 자신이 기묘한 사람이라는 걸 인정해야 해요. 만약 내가 당신을 죽이도록 허락한다면 당신에게 동전 천 닢을 주도록 하겠어요. 관심이 있나요?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"물론이오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"물론이오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"물론이오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"하지만... 왜?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~졸미는 눈 하나 깜짝하지 않는다. "하지만 왜죠? 나는 돈을 주고 사람을 죽일 권리를 사는 것은 재미있는 실험일 거라고 생각해 왔어요. 내가 당신의 존재에 대한 소문을 들었을 때 내가 어떻게 참을 수가 있었겠어요? 그래... 당신 대답은 뭐죠? 이 일에 대해 좀더 자세히 논의할까요?~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"잠깐... 당신은 어디서 이런 소문을 들었소?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~졸미는 눈살을 찌푸린다. "시 공회당에서는 온갖 소문을 다 들을 수가 있지요. 어떻게 당신과 같은 사람의 소문이 들리지 않을 수가 있겠어요? 다시 묻겠어요: 내 제안을 고려해 보겠어요?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"좋소. 세부 사항에 대해 논의합시다."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~짧은 토론 끝에 다음과 같은 조건들이 합의된다: 졸미는 당신에게 동전 천 닢을 지불한다. 대신 당신은 그녀가 대거로 당신 심장을 찌르는 것을 허락한다. 그녀는 당신이 깨어나면 그 시점에서 약속된 액수를 지불한다.

"그럼 이 조건에 동의하나요?"
~ */
  IF ~~ THEN REPLY #43883 /* ~"그렇소. 합시다.~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~짧은 토론 끝에 다음과 같은 조건들이 합의된다: 졸미는 당신에게 동전 천 오백 닢을 지불한다. 대신 당신은 그녀가 대거로 당신 심장을 찌르는 것을 허락한다. 그녀는 당신이 깨어나면 그 시점에서 약속된 액수를 지불한다.

"그럼 이 조건에 동의하나요?"
~ */
  IF ~~ THEN REPLY #43886 /* ~"그렇소. 합시다.~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~짧은 토론 끝에 다음과 같은 조건들이 합의된다: 졸미는 당신에게 동전 이천 닢을 지불한다. 대신 당신은 그녀가 대거로 당신 심장을 찌르는 것을 허락한다. 그녀는 당신이 깨어나면 그 시점에서 약속된 액수를 지불한다.

"그럼 이 조건에 동의하나요?"
~ */
  IF ~~ THEN REPLY #43889 /* ~"그렇소. 합시다.~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~일은 몇 초만에 끝난다... 당신이 깨어났을 때 졸미는 이미 대거를 닦아서 치운 후다. 당신이 공회당 바닥에서 일어나 아픈 가슴을 문지르고 있을 때, 졸미는 당신에게 몇 꾸러미의 동전을 건네준다. 

"솔직히 좀 실망스럽군요. 하지만 들인 돈이 아깝지는 않아요. 안녕히 가세요."
~ */
  IF ~~ THEN REPLY #43892 /* ~"안녕히 계시오."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~나는 졸미가 내 심장을 대거로 찌르는 것을 허락하고 대가로 상당한 액수의 돈을 받았다. 그녀는 그 체험에 별로 만족하지 못한 듯했으나 나는 대가로 받은 돈에 충분히 만족하고 있다. ~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~졸미는 그녀의 차가운 시선을 당신에게로 돌린다. "뭐죠?"~ */
  IF ~~ THEN REPLY #43894 /* ~"내가 당신이 찾는 사람이오."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~졸미라는 이름의 귀부인은 내게 묘한 제안을 했다. 그녀는 날 '살해'할 특권을 얻는 대가로 돈을 지불하겠다고 한다. 잘만 된다면 내 지갑을 돈으로 채울 손쉬운 방법이다...~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~당신이 자신의 앞에 오자 졸미의 차가운 눈이 당신을 알아보고는 번득인다. "내 제안을 재고해 보았나요? 당신을 죽이는 것을 허락하는 대가로 동전 천 닢은 어때요?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"좋소, 그 일에 대해 논의 합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"좋소, 그 일에 대해 논의 합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"좋소, 그 일에 대해 논의 합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"우선 당신이 왜 그런 걸 원하는지부터 들어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~졸미는 그녀의 차가운 시선을 당신 쪽으로 돌린다. 당신 얼굴을 훑어보고 그녀는 당신이 누군지 기억해낸 듯하다. "뭐죠?"~ */
  IF ~~ THEN REPLY #43904 /* ~"질문할 것들이 있소, 졸미..."~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"그냥 지나가던 중이었소... 안녕히 계시오."~ */ EXIT
END
