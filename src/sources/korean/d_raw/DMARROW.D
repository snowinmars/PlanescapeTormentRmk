// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~당신은 멀리서도 이 사내로부터 나는 똥과 썩은 고기의 냄새를 맡을 수가 있다. 그는 명백하게 약해 보인다, 하지만 그가 움푹 들어간 들어간 눈을 하고 길고 가는 손가락으로 주변의 쓰레기를 뒤지는 모습은 어쩐지 불길해 보인다. 그가 침을 흘리며 눈알을 희번덕거리는 모습을 보며 당신은 그가 미친 것은 아닌가 생각하게 된다.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"안녕하시오..."~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~그는 당신에게 시선을 집중하려고 하나 그의 시선은 자꾸만 엉뚱한 곳으로 간다. 그의 눈은 움푹 들어간 눈구멍 속에 깊숙이 박혀 있으며, 그의 피부는 끔찍할 정도로 창백할 뿐만 아니라, 피부병 때문에 발진과 지금 당장이라도 떨어져 나갈 것 같은 누렇게 변색된 붕대로 뒤덮여 있다. 그에게서 나는 냄새는 끔찍할 정도다. 당신이 입을 열어 말을 하려고 하자, 그는 입술을 핥고 침을 삼킨다. "너언 죽었어어?"~ */
  IF ~~ THEN REPLY #17231 /* ~"뭐라고 했소?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"괜찮소?"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~그를 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"너어어..." 그는 다시 입술을 핥고, 길고 가는 손가락으로 자신의 피부를 찌르면서 당신을 쳐다본다. "너어 시체?" 그는 당신 옆을 흘긋 본 후, 다시 시선을 당신 쪽으로 돌린다. "죽었어? 주었어? 배고파..." 그는 자신의 거칠거칠한 입술을 핥으며 손을 내밀어 당신을 만지려고 한다."~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~그가 당신을 만지도록 한다.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~그가 당신을 만지도록 한다.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~그가 당신을 만지지 못하도록 한다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~그의 손가락들은 뜯어낼 장소라도 찾는 듯 거미처럼 당신 팔을 헤적인다. 그는 다시 자신의 갈라진 입술을 핥는다, 그리고 그의 입에서 누런 침이 떨어지는 것이 보인다. 그는 울부짖으며 갑자기 손가락으로 당신 팔의 피부를 찔러 살점을 조금 떼어낸다. 상처는 대수로운 것이 아니나, 당신의 현 상태에서는 치명적이다... 당신은 쓰러져 죽는다. ~ */
  IF ~~ THEN REPLY #17237 /* ~완료.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~그의 손가락들은 뜯어낼 장소라도 찾는 듯 거미처럼 당신 팔을 헤적인다. 그는 다시 자신의 갈라진 입술을 핥는다, 그리고 그의 입에서 누런 침이 떨어지는 것이 보인다. 그는 울부짖으며 갑자기 손가락으로 당신 팔의 피부를 찔러 살점을 조금 떼어낸다.~ */
  IF ~~ THEN REPLY #17239 /* ~뒤로 물러선다.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~그의 손은 당신이 전에 있었던 장소에서 헛손질을 한다, 그리고 그는 아픈 개처럼 낑낑거린다. "배고파..."~ */
  IF ~~ THEN REPLY #17242 /* ~뒤로 물러선다.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~그를 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~그가 살점을 집어 입에 쑤셔 넣는 것을 보자 당신 속이 뒤집힐 것 같다. 그는 그것을 천천히 씹은 후 삼킨다. "너어 시체?"~ */
  IF ~~ THEN REPLY #17245 /* ~"아니, 난 죽지 않았소."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"아니, 하지만 당신은 곧 시체가 될 거요…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~그를 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~그는 갑자기 손을 내밀어 근처의 오물 더미에서 꿈틀거리던 살찐 하얀 굼벵이 한 마리를 잡는다. 그가 벌레를 집어 입에 쑤셔 넣는 것을 보자 당신 속이 뒤집힐 것 같다. 그는 그것을 천천히 씹은 후 삼킨다. "너어 시체?"~ */
  IF ~~ THEN REPLY #17249 /* ~"아니, 난 죽지 않았소."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~그를 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"너언 시체 맛이 나아아." 그는 옷을 긁적거린다, 그리고 당신은 그가 손가락 하나를 줄에 매달아 목에 걸고 있다는 사실을 갑자기 눈치챈다. 그 손가락에는 반지가 끼워져 있는 것 같다. "아직도 배고파..."~ */
  IF ~~ THEN REPLY #17252 /* ~"당신은 보통 뭘 먹소?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"그 손가락뼈는 뭐요?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~그를 떠난다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"너언 시체 같아아아." 그는 옷을 긁적거린다, 그리고 당신은 그가 손가락 하나를 줄에 매달아 목에 걸고 있다는 사실을 갑자기 눈치챈다. 그 손가락에는 반지가 끼워져 있는 것 같다. "아직도 배고파..."~ */
  IF ~~ THEN REPLY #17257 /* ~"당신은 보통 뭘 먹소?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"그 손가락뼈는 뭐요?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~그를 그냥 내버려 둔다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~그는 돼지처럼 꿀꿀거린다. "시체."~ */
  IF ~~ THEN REPLY #17260 /* ~"그 손가락뼈는 뭐요?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~그를 떠난다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~그는 아래를 내려다본다. 그는 자신의 병으로 엉망이 된 얼굴을 뒤틀어 뻐드렁니를 드러내며 웃는 시늉을 하는 데 그것은 보기만 해도 소름이 끼친다. "스낵." 그는 당장이라도 그걸 씹을 듯하다.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~그를 저지한다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~그를 떠난다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"그걸 먹지 마시오. 차라리 날 한 입 뜯어먹으시오. 내가 더 신선하오."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~거짓말: "그걸 먹지 마시오. 대신 당신이 먹을 수 있도록 시체 하나를 통째로 가져다 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~그를 그냥 내버려 둔다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~당신은 그의 손을 잡는다, 그러자 그는 당신을 격렬하게 치기 시작한다. 그러면서 그는 당신 팔에서 큰 살점을 물어서 뜯어낸다. 당신은 어쩔 수없이 그를 놓아준다... 상처는 심하지 않다, 하지만 당신의 현재 상태에서는 치명적이다. 당신은 쓰러져 죽는다.~ */
  IF ~~ THEN REPLY #17273 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~당신은 그의 손을 잡는다, 그러자 그는 당신을 격렬하게 치기 시작한다. 그러면서 그는 당신 팔에서 큰 살점을 물어서 뜯어낸다. 당신은 어쩔 수없이 그를 놓아주는데, 이는 고통 때문이 아니라 만약 계속 몸싸움을 할 경우 그가 심하게 다칠 것을 우려했기 때문이다. 그는 잠시 당신 살점을 씹은 후 손가락뼈를 다시 쳐다본다.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~그가 손가락뼈를 먹는 것을 막는다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~그가 손가락뼈를 먹는 것을 막는다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"그걸 먹지 마시오. 차라리 날 한 입 뜯어먹으시오. 내가 더 신선하오."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~거짓말: "그걸 먹지 마시오. 대신 당신이 먹을 수 있도록 시체 하나를 통째로 가져다 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~그를 그냥 내버려 둔다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~그는 웃으며 당신의 쭉 뻗은 손을 향해 손을 내민다.~ */
  IF ~~ THEN REPLY #17281 /* ~"먼저 내게 그 손가락뼈를 주시오, '골수-친구.'"~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~그를 떠난다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 당신은 자신이 몸이 더 이상의 손상을 견뎌 낼 상태가 아니라는 것을 그 때서야 깨닫는다. 그리고 당신은 땅바닥에 쓰러져 죽는다.~ */
  IF ~~ THEN REPLY #17286 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 그 고통은 격렬하다, 하지만 골수-친구는 아무 일도 없었던 것처럼 웅크리고 앉아 뜯어낸 살을 시끄럽게 씹어 먹는다.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"자... 내게 당신 손가락뼈를 주시오."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"에... 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~그를 떠난다.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~그를 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~그는 탐욕스럽게 고개를 끄덕이며 당신이 손가락뼈를 가져가는 것을 허락한다.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~그가 당신을 물어뜯지 못하게 하고 자리를 뜬다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~당신이 그의 손이 닿은 곳에서 벗어나자, 그는 주인에게 걷어채인 개처럼 애처롭게 낑낑거린다...~ */
  IF ~~ THEN REPLY #17294 /* ~떠난다.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~그는 손가락뼈를 가슴을 가슴에 갖다 대고 꽉 쥔다, 그리고 애처롭게 당신을 쳐다보며 고개를 젓는다. "안돼. 배고파!"~ */
  IF ~~ THEN REPLY #17295 /* ~"만약 내게 그 손가락뼈를 준다면 날 한 번 더 물어뜯을 수 있도록 해주겠소."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~그를 그냥 내버려 둔다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~그의 눈이 빛난다, 그리고 그의 주의는 손가락뼈에서 다른 곳으로 향했다. "좋-아."~ */
  IF ~~ THEN REPLY #17298 /* ~"가서 당신을 위해... 고기를 좀 가져오리다. 그 뼈는 먹지 마시오, 아니면 고기는 없으니까. 안녕히 계시오."~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~그는 비참하게 낑낑거린다. "배고파. 너어 시체?" 그는 당신 팔을 쳐다보며 앞으로 허둥지둥 달려간다. "시체? 배고파." 그는 당신을 만지려고 손을 내민다. 누런 침이 그의 턱에서 뚝뚝 떨어진다. ~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~그가 당신을 만지도록 한다.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~그가 당신을 만지도록 한다.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~그가 당신을 만지지 못하도록 한다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~당신이 떠나려 하자 그는 줄에서 손가락뼈를 뜯어내 반지와 함께 통째로 삼킨다. ~ */
  IF ~~ THEN REPLY #17307 /* ~떠난다.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~그는 비참하게 낑낑거린다. "배-배고파."~ */
  IF ~~ THEN REPLY #17308 /* ~"자... 날 한 입 뜯어먹으시오."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"안됐군. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~그는 당신에게 다가와 비참하게 낑낑거린다. "배-배고파.~ */
  IF ~~ THEN REPLY #17313 /* ~"왜 날 따라오는 거요?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~진실: "날 더 이상 따라오지 마시오, 아니면 죽일 테니. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~허풍: "날 더 이상 따라오지 마시오, 아니면 죽일 테니. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"날 더 이상 따라오지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~그는 당신 손을 가리키며 침을 질질 흘린다. "손가라악... 배고파!"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"좋소. "자, 날 한 입 뜯어먹으시오."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"좋소. "자, 날 한 입 뜯어먹으시오."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~진실: "날 더 이상 따라오지 마시오, 아니면 죽일 테니. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~허풍: "날 더 이상 따라오지 마시오, 아니면 죽일 테니. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"날 더 이상 따라오지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 당신은 자신이 몸이 더 이상의 손상을 견뎌 낼 상태가 아니라는 것을 그 때서야 깨닫는다. 그리고 당신은 땅바닥에 쓰러져 죽는다.~ */
  IF ~~ THEN REPLY #17329 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 그 고통은 격렬하다, 하지만 골수-친구는 아무 일도 없었던 것처럼 웅크리고 앉아 뜯어낸 살을 시끄럽게 씹어 먹는다.~ */
  IF ~~ THEN REPLY #17330 /* ~"날 더 이상 따라오지 마시오. 안녕히 계시오."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~그는 비참하게 낑낑거린다. "배-배고파.~ */
  IF ~~ THEN REPLY #17331 /* ~"자... 날 한 입 뜯어먹으시오."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"안됐군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"고... 고기. 더 이상 안 배고파...?" 사내는 당신의 팔을 향해 손을 내민다. 그리고 광기의 미소를 띤 그의 얼굴 한 구석에서는 침이 흘러내리고 있다...~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~그가 당신을 물어뜯도록 내버려 둔다.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~팔을 떼고 그를 떠난다.~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~그는 즐거운 듯 손뼉을 친다. "배고파! 고기 가져왔어?" 그의 거칠거칠한 입술에서 침이 흘러내리고 있다.~ */
  IF ~~ THEN REPLY #17338 /* ~거짓말: "그렇소, 하지만 먼저 그 손가락뼈부터 내게 주시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"아니, 아직 아니오."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~그는 탐욕스럽게 고개를 끄덕이다가 갑자기 멈추고, 당신 주변 공기의 냄새를 맡는다. "너어한테는 고기 없어! 너어언 거짓말... 거짓말했어어!"~ */
  IF ~~ THEN REPLY #17340 /* ~거짓말: "어딘가에 떨군 모양이오. 꼳 돌아오리다."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"자... 대신 내 살점을 뜯어먹으시오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"아니? 너무... 배고파..." 그는 누런 혓바닥으로 입술을 핥으며 손가락뼈를 내려다 본다. ~ */
  IF ~~ THEN REPLY #17343 /* ~"그건 먹지 마시오... 곧 돌아올 테니."~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"자... 대신 내 살점을 뜯어먹으시오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 당신은 자신이 몸이 더 이상의 손상을 견뎌 낼 상태가 아니라는 것을 그 때서야 깨닫는다. 그리고 당신은 땅바닥에 쓰러져 죽는다.~ */
  IF ~~ THEN REPLY #17346 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~그는 당신의 팔뚝을 깨물고, 목을 비틀어 한 덩어리의 살을 뜯어낸다. 그 고통은 격렬하다, 하지만 골수-친구는 아무 일도 없었던 것처럼 웅크리고 앉아 뜯어낸 살을 시끄럽게 씹어 먹는다.~ */
  IF ~~ THEN REPLY #17347 /* ~"그게 도움이 되었기를 바라겠소. 안녕히 계시오."~ */ EXIT
END
