// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~이 어깨가 넓은 여자는 거리에 버려져 있는 큰 목재들 사이를 돌아다니고 있다. 그녀는 목재들을 쇠굴레를 단 부츠로 걷어차고 있다. 가끔씩 그녀는 허리를 굽히고 날빤지로부터 맨손으로 못을 뽑아 내곤 한다. 그녀는 손에 쥐고 감정한 후 그것을 가죽 자루에 넣는다.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"안녕하시오..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"안녕하시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~아이언 낼즈는 똑바로 서서 손을 엉덩이에 얹는다. "다시 왔어요? 이번엔 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #13097 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~아이언 낼즈는 똑바로 서서 손을 엉덩이에 얹는다. "다시 왔어요? 이번엔 뭘--?" 그녀는 당신 옆에 있는 안나를 발견한다. "당신 새 친구는 누구죠?"~ */
  IF ~~ THEN REPLY #64412 /* ~"그녀의 이름은 안나요."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"그녀는 안나요, 하지만 과연 그녀를 친구라고 할 수 있을지는 나도 모르겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~아이언 낼즈는 똑바로 서서 손을 엉덩이에 얹는다. "다시 왔어요?" 그녀는 혼란스러운 듯 당신 주의를 살펴본다. "그런데... 당신과 함께 있던 예쁜 아가씨는 어디 갔나요?"~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"그녀는... 죽었소."~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~거짓말: "잘 모르겠소. 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~"잘 모르겠소. 물어볼 것들이 좀 있소..."~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~거짓말: "잘 모르겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"잘 모르겠소. 안녕히 계시오."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~아이언 낼즈는 똑바로 서서 손을 엉덩이에 얹는다. 안나를 보고 그녀는 노골적으로 웃는다 "다시 왔어요. 당신의 아름다운 얼굴울 다시 보게 돼 반갑군요." 그녀는 당신 쪽으로 몸을 돌린다. "뭘 원하죠?"~ */
  IF ~~ THEN REPLY #13105 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"그럼 안녕히 가세요."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~떠난다.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~떠난다.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~그녀는 당신이 다가오는 소리를 듣고 몸을 똑바로 세운다. 그녀는 점잖게 웃고 있지만, 그녀의 자세와 그녀가 손을 무기의 손잡이 가까운 곳에 두고 있는 것으로 미루어 볼 때 그녀는 만일의 사태에 대비하고 있는 것 같다. 당신의 그녀의 한쪽 눈이 유백색의 막으로 덮여 있다는 걸 눈치챈다. "더 이상 다가오지 말아요. 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #13109 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"아무것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~그녀는 당신이 다가오는 소리를 듣고 몸을 똑바로 세운다. 그녀가 무기를 뽑아 들고 있지는 않으나 당신은 그녀가 만일의 사태에 대비하고 있다는 걸 알 수 있다. 당신의 그녀의 한쪽 눈이 유백색의 막으로 덮여 있다는 걸 눈치챈다. 안나를 보자 그녀는 미소를 짓고 인사를 한다, 그리고 나서 당신을 향한다. "더 이상 다가오지 말아요. 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #13111 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"아무것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~그녀는 고개를 끄덕인다. "질문을 하세요."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"나는 목재 더미를 뒤지고 있는 낼즈라는 여자에게 넝마주이 광장에 있는 쓰레기로 가득 찬 아치에 대해 물어보라는 얘기를 들었소. 당신은 날 도와줄 수 있겠소?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~아이언 낼즈이라는 여자가 넝마주이 광장에 있는 쓰레기로 가득 찬 아치 입구가 실제로는 그녀가 우연히 발견한 전이문이라고 내게 말해주었다. 그것의 '열쇠'는 아치 입구에 처음으로 들어서는 사람(이 경우는 나)이 지니고 있어야 하는 한 줌의 고물에 불과하다. 낼은 그것이 지하로 통하는 문이 있는 작고 개방된 공간으로 통한다고 말했으나, 그 곳에 대해서 자세히 언급하지는 않았다. ~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"뭘 하고 있는 거요?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"이 곳에 대해 내게 얘기를 해줄 수 있겠소?"~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"이 곳에 대해 내게 얘기를 해줄 수 있겠소?"~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~그녀는 자루에서 못을 세 개 꺼내서 공중에 던졌다가 손으로 잡는다. "사람들은 날 아이언 낼즈(쇠못)라고 불러요." 그녀가 못들을 다시 자루에 넣자 희미한 *땡그랑* 소리가 들린다. ~ */
  IF ~~ THEN REPLY #13123 /* ~"왜 당신은 못들을 모으는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"당신 눈은 어떻게 된 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"잘 만났소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"적절한 이름이오. 안녕히 계시오, 낼즈."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~낼즈의 얼굴이 굳어진다. "당신이 상관할 바가 아니잖아. 왜? 지금 있는 흉터에 어울리는 새로운 상처라도 입고 싶은 거야?"~ */
  IF ~~ THEN REPLY #13127 /* ~"아니, 별로. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"아니, 그 사람은 정확히 '내'가 아니오."~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"날 협박하는 거요? 그래 어디 해보시오..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"아니오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~그녀는 눈알을 희번덕거린다. "내가 뭘 하고 있는 것처럼 보이나요? 못을 수집하고 있어요." 그녀는 조용히 웃으며 고개를 젓는다.~ */
  IF ~~ THEN REPLY #13131 /* ~"왜?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"이 나무들은 다 어디서 왔소?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"다른 질문이 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"나는 그것들을 마계구에 있는 관 제작자 햄리스에게 팔아요."~ */
  IF ~~ THEN REPLY #13135 /* ~"이 햄리스란 사람애 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"마계구는 어디 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"당신말고 또 못을 모으는 사람이 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"이 나무들은 다 어디서 왔소?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~그녀는 어깨를 으쓱한다. "여기저기서 오는 것 같아요. 때때로 다버스가 떨구고 가요, 그러면 나는 다른 무리들이 오기 전에 와서 필요한 것들을 추려 가죠. 아마 그들이 짓거나 허물고 있는 건물이나 벽에서 나온 파편들일 거예요."~ */
  IF ~~ THEN REPLY #13140 /* ~"다버스?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~"다른 질문이 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"그래요, 다버스. 레이디의 하인들이죠." 그녀는 당신을 미심쩍은 눈으로 본다. "당신은 시길에 온지 얼마 안된 모양이군요."~ */
  IF ~~ THEN REPLY #13143 /* ~"다버스에 대해 더 얘기해주시오."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"레이디?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"그들은 레이디의 뜻에 따라 시 전역에서 일해요. 그들은 항상 뭘 짓거나 다시 짓고 있죠. 무너지거나 부서진 건물의 잔해를 이용해 새로운 것을 만들어요."~ */
  IF ~~ THEN REPLY #13147 /* ~"레이디?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~"다른 질문이 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~낼즈는 당신을 보며 눈살을 찌푸린다. "아니, 안 되요! 난 그녀에 대해 더 이상은 얘기하지 않겠어요..." 그녀는 가슴 위에 손가락으로 반원을 그린다. "내 충고를 들어요.. 돌아다니면서 사람들에게 레이디에 대해서 묻지 말라고요."~ */
  IF ~~ THEN REPLY #13150 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"그럼 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"별로 할 얘기가 없어요... 그는 좀 수다가 심해요... 그대로 내버려 두면 당신이 돌아버릴 때까지 계속 얘기할 거예요. 하지만 거래에 있어서는 공정해요. 어쨌든 그는 못이 필요하고 난 돈이 필요해서 거래하는 것뿐이에요."~ */
  IF ~~ THEN REPLY #13152 /* ~"마계구는 어디 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"당신말고 또 못을 모으는 사람이 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"에... 길을 알기는 했었는데 다버스가 다시 길을 바꿔 버렸어요. 이제는 어떻게 하면 그 곳에 갈 수 있는지 모르겠어요. 새로운 길을 찾아내야 할 듯해요. 하지만 결국에는 다버스가 문제를 해결할 테니까 별로 걱정할 필요는 없어요."~ */
  IF ~~ THEN REPLY #13156 /* ~"다버스?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"햄리스에 대해 더 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"당신말고 또 못을 모으는 사람이 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"흠. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"더 나은 길 안내는 다른 곳에 가서 받아야 할 것 같군. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~그녀는 히죽 웃으며 고개를 젓는다. "아무도 내 이전에 그 일을 할 정도로 똑똑하지도 못했고, 그럴 의지를 지닌 사람도 없었어요. 그리고 내가 시작한 후에 끼어 들려는 놈은 다 쫓아냈어요." 그녀는 옆구리에 찬 긴 날의 대거를 사랑스럽다는 듯 두드린다. ~ */
  IF ~~ THEN REPLY #13161 /* ~"당신 '권리?'"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"햄리스에 대해 더 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"마계구는 어디 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"잘됐소. 그럼 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"그래, 바로 그래요! 벌통에서 정직한 일거리는 찾기가 어려워요, 그리고 어떤 쓰레기가 와서 내 일을 뺏아가게 놔두지는 않을 거예요. 난 이미 여러 명의 얼간이들이 비명을 지르며 도망치도록 만들었고, 그들 중 운이 나쁜 놈들은 수집자에게로 갔죠." 그녀의 죽은 눈은 사악하게 빛난다. "벌통에서는 누구나 다 여기가 내 구역이라는 걸 알아요."~ */
  IF ~~ THEN REPLY #13166 /* ~"당신 눈은 그렇게 해서 다치게 된 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"햄리스에 대해 더 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"마계구는 어디 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"알겠소. 그럼 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~그녀는 실컷 웃는다. "그래요, 나도 당신 몸에 더 이상 흉터를 낼 곳이 있다고는 생각하지 않아요."~ */
  IF ~~ THEN REPLY #13171 /* ~"헤.. 그 밖에도 질문할 것들이 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"당신이 옳을지도 모르오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"이봐요, 난 할 일이 많아요. 당신과 수다나 떨 동안 못들이 알아서 내 자루 속으로 찾아 들어오는 건 아니니까. 어디 얘기할 다른 사람을 찾아보는 게 어때요?"~ */
  IF ~~ THEN REPLY #13175 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"그러리다. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~그녀는 고개를 끄덕인다. "그래요, 그 이름은 들어본 적이 있어요. 한 무리의 수집자들의 왕초라고 하더군요. 하지만 그가 어디 있는지는 몰라요. 이 곳 북서쪽에 있는 넝마주이 광장에 한 번 가보세요. 그 곳에는 수많은 수집자들이 살고 있으니까..."~ */
  IF ~~ THEN REPLY #13173 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"그럼 그를 그 곳에서 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"아니, 본 적이 없어요." 그녀는 잠시 멈춘다. "일지라... 좋은 생각인 것 같아요. 나도 일지를 쓰기 시작하는 것이 좋을 것 같군요."~ */
  IF ~~ THEN REPLY #13177 /* ~"그렇소. 사람이 얼마나 많은 것을 잊어버릴 수 있는가는 가히 놀랍소... 일지는 기억을 보전하는 일을 도울 수가 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"아마 그럴지도... 다른 질문이 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"아마 그럴지도. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~그녀는 당신이 한 말을 골똘히 생각한다. "헤. 당신 말이 맞아요. 정말 맞아요! 그런 아이디어를 주어 고마워요." 그녀는 미소짓는다. ~ */
  IF ~~ THEN REPLY #13180 /* ~"물론이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~낼즈는 순수하게 슬퍼하는 것 같다. "에... 아... 알겠어요. 정말 슬픈 일이군요. 벌통에서는 흔한 일이죠." 그녀는 우울한 기운을 떨치려는 듯 고개를 젓는다. "그건 그렇고, 당신은 뭘 원했죠?" ~ */
  IF ~~ THEN REPLY #13182 /* ~"나는 당신에게 질문할 것이 좀 있다고 했소...~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"오?" 그녀는 마침내 사선을 당신에게로 돌리며 눈살을 찌푸린다. "참 안됐군요. 당신이 필요한 게 뭔지 다시 말해주겠어요?"~ */
  IF ~~ THEN REPLY #13184 /* ~"나는 당신에게 질문할 것이 좀 있다고 했소...~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~그녀는 자루에서 못을 세 개 꺼내서 공중에 던졌다가 손으로 잡는다. "사람들은 날 아이언 낼즈(쇠못)라고 불러요." 그녀가 못들을 다시 자루에 넣자 희미한 *땡그랑* 소리가 들린다. 그녀는 안나가 자신의 묘기를 봤는지 확인하려고 그녀를 흘긋 본다, 그리고 그녀가 이미 시선을 다른 곳으로 돌린 것을 보고는 다시 당신을 쳐다본다. ~ */
  IF ~~ THEN REPLY #13186 /* ~"왜 당신은 못들을 모으는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"어떻게 해서 눈을 잃게 되었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"잘 만났소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"적절한 이름이오. 안녕히 계시오, 낼즈."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~낼즈는 그 말에 풀이 죽은 득하다, 그러나 곧 평정을 되찾는다. 그녀는 당신을 보며 약간 슬프게 미소를 짓는다. "물론이에요. 뭘 찾고 있죠?"~ */
  IF ~~ THEN REPLY #13190 /* ~"나는 일거리를 찾고 있소."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"나는 즐길 곳을 찾고 있소."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"실은 아무 것도 아니오. 다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~낼즈는 머리를 긁는다. "여기 벌통에서는 사실상 두 가지 일밖에 없어요... 뇌 쥐를 잡거나 죽은 자들을 수거하는 일뿐이에요."~ */
  IF ~~ THEN REPLY #13196 /* ~"뇌 쥐를 잡는다?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"사자들을... 수집한다?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"내 자신을 즐길 곳을 찾고 있다면?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"그래요. 시는 놈들의 꼬리를 가져가면 돈을 지불해요. 벌통 지국은 여기서 남쪽에 있어요. 그 안에 있는 남자가 자세히 설명해 줄 거예요."~ */
  IF ~~ THEN REPLY #13203 /* ~"'사자'를 수거한다는 얘기는 대체 뭐요?"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"내 자신을 즐길 곳을 찾고 있다면?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"그럼 가서 그를 만나도록 하겠소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~"더스트맨은 시체를 가져오는 사람에게 돈을 지불해요... 덕분에 거리가 깨끗하게 유지돼요. 그런 일을 해서 먹고 사는 사람들을 수집자라고 불러요... 그들도 나와 같은 청소부인 셈이지만... 적에도 못은 시체처럼 냄새가 나지는 않아요." 그녀는 능글맞게 웃는다. ~ */
  IF ~~ THEN REPLY #13209 /* ~"뇌 쥐를 잡는다다는 얘기는 대체 뭐요?"~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"내 자신을 즐길 곳을 찾고 있다면?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"정말 그렇소. 다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"그건 당신이 뭘 즐기느냐에 달렸어요. 이 부근에서 괜찮은 술집들로는 더스트맨이 모이는 바와 불타는 시체가 있어요. 손님들의 질이 비교적 괜찮은 편이죠. 하지만 말했듯이 당신 기호에 달렸어요." 그녀는 안나를 흘긋 보나 안나는 본 척도 하지 않는다.~ */
  IF ~~ THEN REPLY #13215 /* ~"이런 장소들은 어디 있소?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"이 곳의 일자리 사정은?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"벌통에서는 거의 모든 사람이 곤란을 겪고 있어요... 그리고 당신 눈을 보니 당신도 그들 중 하나로군요! 남들과 얘기를 할 때는 조심하도록 하세요." 그녀는 당신을 다시 한 번 평가한다. "당신은 스스로를 지킬 수 있을 것 같군요. 그리고 당신의 아름다운 친구도 결코 만만치 않은 것 같군요." 낼즈는 기대하는 눈빛으로 안나를 쳐다보나 안나는 못 들은 체한다. ~ */
  IF ~~ THEN REPLY #13221 /* ~"이 곳 일자리 사정은 어떻소?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"내 자신을 즐길 곳을 찾고 있다면?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~그녀는 안나를 보며 고개를 끄덕인다. "당신의 아름다운 동료도 벌통 사람처럼 보이는군요... 그녀에게 그것에 대해 자세히 물어봤나요?" 낼즈는 안나를 보며 미소짓는다, 하지만 낼즈의 망가진 눈 때문에 별로 보기가 좋지 않다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~낼즈는 턱을 긁으며 잠시 생각한다. "더스트맨이 모이는 바는 시체안치소 부근에 있어요. 정문에서 남서쪽으로 가세요. 둘 중에서 내가 더 좋아하는 불타는 시체는 여기서 동쪽에 있어요. 당신과 그 곳에 함께 가서 술이나 한 잔 했으면 좋겠지만, 지금 내게는 할 일이 너무 많아요."~ */
  IF ~~ THEN REPLY #13226 /* ~"이 곳 일자리 사정은 어떻소?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"이 부근에서 내가 조심해야 할 건 없소?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"벌통에서는 거의 모든 사람이 곤란을 겪고 있어요... 그리고 당신 눈을 보니 당신도 그들 중 하나로군요! 들리는 말로는 정말 위험한 자가 돌아다니고 있다는군요. 싸움을 걸어 자신의 칼을 피로 물들이려는 자가. 생긴 건 귀족처럼 생겼다고 하더군요" 그녀는 당신을 다시 한 번 평가한다. "당신이라면 스스로를 지킬 수 있을 것 같군요. 그리고 당신의 아름다운 친구도 결코 만만치 않은 것 같군요." 낼즈는 기대하는 눈빛으로 안나를 쳐다보나 안나는 못 들은 체한다. ~ */
  IF ~~ THEN REPLY #13260 /* ~"이 곳의 일자리 사정은?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"내 자신을 즐길 곳을 찾고 있다면?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~낼즈는 천천히 고개를 끄덕인다. "그건 전이문이에요. 우연히 발견했죠. 거길 지나가려면 한 줌의 고물만 있으면 되요. 전이문 너머에는 작은 개방된 공간이 있고, 지하로 통하는 문이 있었지만, 괜히 말썽을 자초할 필요는 없다는 생각이 들어 방향을 돌려서 나갔죠. 자..." 그녀는 당신에게 한 줌의 고물을 준다. "원한다면 이걸 써요. 어차피 버릴 생각이었으니까."~ */
  IF ~~ THEN REPLY #48401 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"고맙소, 낼즈. 안녕히 계시오."~ */ GOTO 5
END
