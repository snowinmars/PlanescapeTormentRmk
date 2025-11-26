// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~이 여자는 뚱뚱한데다가 눈매도 심술궂고 목소리도 콧소리라 듣기 거북하다. 그녀는 시끄럽게 소리지른다. "이게 누구지? 손님? 내 눈에 보이는 게 손님이 맞나?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"죽은 자가 돌아왔어요, 브로카! 죽은 자가 돌아왔다고요!"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~그의 파트너인 시끄러운 목소리를 지닌 작은 여자는 당신을 한 번 흘긋 보더니 대답을 한다: "내가 아까부터 말했던 대로 손님이라고요, 이 얼간이 같으니. 내가 손님이 올 거라고 그렇게 말해도 당신은 믿지 않았지만 이제 손님이 왔다고요! 그... 이 시체처럼 보이는 손님을 맞이할 준비는 되었나요?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"나도 눈이 있으니까 다 보여요! 그가 보이니까 날 그만 좀 귀찮게 해요, 늙어빠진 쭈그렁탱이 영감 같으니!" 그녀는 돌아서서 당신을 보며 어조를 바꾸어 말한다. "이 믹카가 어떻게 도와드릴까요?"~ */
  IF ~~ THEN REPLY #45926 /* ~"거래에 대해 얘기합시다."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"이 지역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"당신 자신에 대해 얘기해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"그가 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"당파들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"내가 계속 그렇다고 얘기했잖아요!" 그녀는 목소리를 낮추고 당신 쪽으로 돌아선다. "무엇을 원하시죠?"~ */
  IF ~~ THEN REPLY #45934 /* ~"거래에 대해 얘기합시다."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"이 지역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"당신 자신에 대해 얘기해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"그가 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"당파들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~"내 남편은 신이 나서 당신에게 시 공회당과 매음굴에 대해서 얘기를 하겠죠..." 그녀는 코를 훌쩍인다. "하지만 내 취향은..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"나요? 나는 이 전당포와 날 소중하게 여기지 않는 남편에게 묶여 있어요..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"저 사람 말이에요? 그는 브로카예요. 나랑 이십 년 이상 함께 산 내 남편이죠. 그의 일관성 없는 성격을 감안할 때 아직까지 바람을 안 핀 건 기적이죠..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"당파? 당파 말인가요? 하! 당파들이 한 일이라고는 이 불쌍한 전당포를 거의 망하게 만들고, 우리를 벌통이나 그 곳만도 못한 곳으로 내몰고, 브로카를 지금보다 더 못난 남자로..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~미카가 끼어든다. "당신이 제일 먼저 입에서 꺼내는 건 매음굴이겠지, 남자들은 위한 매음굴! 늘 매음굴이나 시 공회당이고, 시장에 대해서는 결코..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"그는 그냥 인사치레를 한 것뿐이라고요. 그는 실제로는 아무 관심도 없어요. 어차피 당신에게 유용한 정보 따위는 없으니까. 당신에게는 야심이 부족하기 때문에 전당포 주인이 고작이라고요..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"... 당신 인생에 있어서 최대의 선물, 맞죠? 나는 그를 그의 부모가 그를 위해 마련해 둔 인생 궤도에서 구했고 그는 날 행복하게 해주겠다고 약속했어요. 하지만 지금 내 꼴을 좀 보세요. 누구든지 이런 처지에 놓이면 술을..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"내게도 귀가 있어요. 그가 하는 얘기 정도는 들을 수가 있죠. 그가 당파와 아무런 연관이 없는 건 그가 어떤 신념을 믿을 정도로 그것을 오래 지니고 있지 못하기 때문이죠."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"정말 어리석은 판단이었죠. 당시 말만 듣고 밝은 미래를 포기했는데, 그 결과는 ..."
두 사람은 곧바로 심한 말다툼에 돌입한다. 
~ */
  IF ~~ THEN REPLY #45970 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"결혼을 하면 나아지리라고 생각했는데 헛물켰죠. 흥!"
두 사람은 당신을 무시하고 지리한 언쟁을 다시 벌이기 시작한다. 
~ */
  IF ~~ THEN REPLY #45974 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"물론 농장의 염소들이 당신의 부드러운 손길을 기다리고 있겠죠..." 브로카의 얼굴이 자줏빛이 된다, 그리고 그들 일련의 기나긴 논쟁의 새로운 장에 돌입한다. 그들의 온 신경은 상대방에게 쏠려 있으며, 당신은 완전히 무시하고 있다. 
~ */
  IF ~~ THEN REPLY #45979 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~그녀는 잠시 지리멸렬한 소리를 내뱉은 후 당신 귀가 얼얼해질 정도의 장광설을 늘어놓기 시작한다. 그리고 다시 잠시 후 브로카도 이에 뒤지지 않을 정도로 시끄럽게 고함을 지르기 시작한다. 그들은 당신을 무시한다. ~ */
  IF ~~ THEN REPLY #45983 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~두 사람은 열띤 논쟁을 벌이고 있다. 그들은 당신을 완전히 무시한 채 가게 안을 자신들의 상소리로 채우고 있다. ~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"그럼 나중에 다시 오리다. 안녕히 계시오."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"그럼 나중에 다시 오리다. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"그럼 나중에 다시 오리다. 안녕히 계시오."~ */ EXIT
END
