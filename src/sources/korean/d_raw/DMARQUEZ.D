// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~하모니움 사관의 갑옷을 입고 있는 금발의 건장한 사내가 보인다. 그의 얼굴은 술에 취해 빨개졌으며, 그의 미소 뒤로 보이는 두 눈은 신랄함으로 가득 차 있다. 그는 인사치레 없이 즉시 본론으로 들어간다. "자, 이게 내 제안이오. 노예 상인들이 썩은 바스의 딸을 납치했소. 그녀를 되찾는 것이 당신 임무요. 나는 놈들이 어디 있는지 당신에게 말해주겠소. 가서 놈들을 죽이고 내게 돌아와 보고를 하시오, 그러면 당신이 디바를 찾는 일을 도와주겠소. 원한다면 무기를 쓰는 법도 가르쳐 주겠소. 좋소?"~ */
  IF ~~ THEN REPLY #49144 /* ~"좋소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"먼저 이 일에 대해 몇 가지 질문을 하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"먼저 다른 사안에 대해 몇 가지 질문을 하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"아니, 하지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"그들은 이미 모두 죽었소."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"그들은 이미 모두 죽었소. 하지만 그녀 역시 죽었소"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"내가 마지막으로 들은 바로는 노예 상인들은 커스트 내부 지역의 동쪽에 있다고 하오. 놈들은 시 경비대의 허가를 받고 있소. 놈들은 찾으시오, 그리고 썩은 바스의 딸을 무사히 구출한 후, 놈들을 죽이시오. 일을 마치고 돌아오면 당신이 디바를 찾는 데 필요한 열쇠의 첫 번째 부분을 주겠소."~ */
  IF ~~ THEN REPLY #49149 /* ~"좋소. 나를 위해 이 일에 대한 질문에 대답해주시오."~ */ JOURNAL #49153 /* ~나는 시 병영 뒤에 있는 노예 상인들을 찾아내서, 썩은 바스의 딸의 안전을 확보한 후, 그들을 죽이는 임무를 위탁받았다. 나는 이 일을 마퀘즈를 위해 하는 것이며, 그 대가로 그는 내게 갇힌 디바가 있는 곳으로 가는 데 필요한 열쇠의 첫 번째 부분을 주기로 하였다. ~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #49153 /* ~나는 시 병영 뒤에 있는 노예 상인들을 찾아내서, 썩은 바스의 딸의 안전을 확보한 후, 그들을 죽이는 임무를 위탁받았다. 나는 이 일을 마퀘즈를 위해 하는 것이며, 그 대가로 그는 내게 갇힌 디바가 있는 곳으로 가는 데 필요한 열쇠의 첫 번째 부분을 주기로 하였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"몇 가지 질문? 아니, 답은 두 가지뿐이오. 당신은 노예 제도에 찬성하오, 반대하오?~ */
  IF ~~ THEN REPLY #49158 /* ~"반대요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"찬성이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"그럼 당신은 날 도와주겠군, 그렇소? 예스 아니면 노로 대답하시오."~ */
  IF ~~ THEN REPLY #49161 /* ~"돕겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"돕지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~그는 역겹다는 표정으로 당신을 쳐다본다. "그럼 당신은 자신의 이해 관계가 걸려 있음에도 불구하고 날 돕지 않겠다는 거요?"~ */
  IF ~~ THEN REPLY #49174 /* ~"무슨 뜻이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"그렇소. 난 돕지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"아, 돕겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"내 말은 모든 사람이 당신이 디바를 찾고 있다는 사실을 알고 있다는 거요. 썩은 바스는 그를 찾을 수 있는 방법을 알고 있소. 그의 제의를 거절한다면 당신은 바보요."~ */
  IF ~~ THEN REPLY #49179 /* ~"좋소, 그럼. 당신을 돕겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"그래도 난 돕지 않겠소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"그럼 당신이 내가 생각했던 것보다 더 큰 바보요, 그리고 우린 서로 아무 할 말이 없는 것 같소. 안녕히 가시오." 그는 돌아서서 술을 마신다.~ */
  IF ~~ THEN REPLY #49183 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"뭐요?"~ */
  IF ~~ THEN REPLY #49185 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"이 노예 제도와 당신은 어떤 이해 관계가 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"열쇠에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"이 노예 상인들이 어디 있는지 다시 말해주겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"나는 마퀘즈로 얼마 전까지는 하모니움의 3급 사관이었소."~ */
  IF ~~ THEN REPLY #49192 /* ~"왜?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"술을 마시고 있소. 달리 무엇처럼 보이오? 나는 내가 저지른 잘못을 시정해줄 사람을 기다리고 있소. 당신은 그 일을 해낼 수 있는 사람처럼 보이오."~ */
  IF ~~ THEN REPLY #49197 /* ~"어떤 과오 말이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"나는 내가 처음부터 믿고 있었던 조직인 하모니움이 노예를 사고, 사람들을 납치하며, 강제로 사람들을 연행하여 그들의 인생을 망치고 있다는 사실을 알게 되었소. 그 조직은 단지 사상이 다르다는 이유 하나만으로 사람들을 파멸시키고 있었소, 그리고 나는 그것을 더 이상 견딜 수가 없었소. 당신이 싸우게 될 노예 상인들은 내 옛 동료들이오." 그는 바닥에 침을 뱉는다." 얼간이들. 사기꾼들. 더 이상 그 누구도 믿을 수가 없소."~ */
  IF ~~ THEN REPLY #49203 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"다섯 부분으로 구성되는 열쇠요. 각 부분은 우리들의 머릿속에 들어 있는 특정한 문장이오." 그는 이빨을 드러내고 미소를 짓는다. "날 고문을 하더라도 그것을 얻어낼 수는 없소, 그리고 다른 사람들도 결코 호락호락하게 내주지 않을 것이오. 우리는 비밀을 감추고 있으며, 그것이 무엇인지 알아내려면 다섯 부분을 다 모아야 할 거요."~ */
  IF ~~ THEN REPLY #49206 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"돌아왔군." 그는 술을 들이킨다. "바스가 당신을 보냈군. 좋소. 이게 내 제안이오. 노예 상인들이 썩은 바스의 딸을 납치했소. 그녀를 되찾는 것이 당신 임무요. 나는 놈들이 어디 있는지 당신에게 말해주겠소. 가서 놈들을 죽이고 내게 돌아와 보고를 하시오, 그러면 당신이 디바를 찾는 일을 도와주겠소. 원한다면 무기를 쓰는 법도 가르쳐 주겠소. 좋소?"~ */
  IF ~~ THEN REPLY #49209 /* ~"좋소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"먼저 이 일에 대해 몇 가지 질문을 하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"먼저 다른 사안에 대해 몇 가지 질문을 하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"아니, 하지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"그들은 이미 모두 죽었소."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"그들은 이미 모두 죽었소. 하지만 그녀 역시 죽었소"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~당신이 다가가자 마퀘즈는 테이블로부터 고개를 쳐든다. "바스의 딸 자실리아 때문에 왔소?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"그녀는 자유의 몸이오. 아마 곧 이 곳으로 돌아올 거요."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"그녀는 내가 그녀를 구하려고 싸우던 도중 사망했소."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"아니오. 대신 물어볼 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"내게 무기에 대해 가르쳐 주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~그는 당신 어깨를 두드린다. "잘했소. 당신을 커스트 지하로 인도할 열쇠의 첫 번째 부분을 원하시오? 여기 있소: '그들 반항적인 ...을 위해 영원의 정의가 마련한...' 이제 저기 있는 키틀라와 얘기를 하시오. 그녀는 열쇠의 두 번째 부분을 지니고 있소. 아니면 그 전에 당신에게 무기에 대해 가르쳐 줄 수 도 있소."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"고맙소. 안녕히 계시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"정말 슬픈 일이오. 하지만 불가항력이었을 것이라고 생각하오." 그는 당신을 빤히 쳐다보고 있으나, 그가 무슨 생각을 하고 있는지는 읽을 수가 없다. "이것이 열쇠의 첫 번째 부분이오: '그들 반항적인 ...을 위해 영원의 정의가 마련한...' 이제 저기 있는 키틀라와 얘기를 하시오. 그녀는 열쇠의 두 번째 부분을 지니고 있소. 아니면 그 전에 당신에게 무기에 대해 가르쳐 줄 수 도 있소."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"고맙소. 안녕히 계시오."~ */ JOURNAL #66862 /* ~나는 나를 디바에게 데려다 줄 통로를 열 열쇠의 첫 번째 부분을 받았다. 그 구절은 "그들 반항적인 ...을 위해 영원의 정의가 마련한..." 이다. 이제 나는 배신자의 문 여관에 있는 키틀라라는 여자에게 가서 얘기를 해야 한다. ~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"당신은 나와 더 이상 얘기할 필요가 없소. 우리는 서로에게 해야 할 말을 이미 다 했소. 이미 말했듯이 가서 키틀라와 얘기를 하시오. 이 시점부터는 그녀가 당신을 안내할 거요. 내게 무기에 대해 배우려는 것이 아니라면, 내가 조용히 술을 마실 수 있도록 날 그냥 내버려 두시오."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"바스를 돕는 일에 대해 생각을 바꾼 거요, 아니면 내게 할 멍청한 질문이라도 있는 거요?"~ */
  IF ~~ THEN REPLY #49228 /* ~"마음을 바꿨소.당신을 돕겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"나는 마음을 바꾸지 않았소."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~하모니움 사관의 갑옷을 입고 있는 금발의 건장한 사내가 보인다. 그의 얼굴은 술에 취해 빨개졌으며, 그의 미소 뒤로 보이는 두 눈은 신랄함으로 가득 차 있다. 그는 인사치레 없이 즉시 본론으로 들어간다. "바스가 당신을 보냈소? 아니오? 그럼 내 시간을 낭비하지 마시오." 그는 돌아서서 자기 위스키를 마시며 당신을 철저히 무시한다.~ */
  IF ~~ THEN REPLY #49232 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"바스가 당신을 보냈소? 아니오? 그럼 내 시간을 낭비하지 마시오." 그는 돌아서서 당신을 철저히 무시한다.~ */
  IF ~~ THEN REPLY #49234 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"당신은 무기를 가지고 장난만 치는 사람 같지는 않소. 그건 당신 흉터만 봐도 알 수가 있소. 하지만 지금은 무술에 집중하지 않고 있는 것 같소. 현재의 직업을 포기할 각오는 되어 있소? ~ */
  IF ~~ THEN REPLY #66978 /* ~"그렇소."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"아니오."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"난 아직 당신에게 무기를 가르쳐 줄 수가 없소. 우선 썩은 바스와 자실리아의 일부터 해결하시오. 그러면 가르쳐 주리다.  ~ */
  IF ~~ THEN REPLY #66980 /* ~"좋소. 질문할 것이 몇 가지 더 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"당신은 이미 무기에 대해 상당한 지식을 지니고 있는 사람 같소. 그러니 서론은 생략하겠소. 무엇을 배우고 싶으시오?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"나는 모든 무기에 상당히 능숙하오. 내게 더 가르칠 건 없소?"~ */ JOURNAL #66986 /* ~마퀘즈는 만약 내가 무기에 대해 더 배우고 싶다면 마계구에 있는 쿠러를 찾아가라고 했다. 그의 조력을 얻을 수 있도록 그 곳으로 돌아갈 수 있었으면 좋겠다. ~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"지금은 아무 것도 없소. 나중에 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"그럼 왜 날 귀찮게 하는 거요. 그만 가보시오. 나는 술이나 마셔야겠소."~ */
  IF ~~ THEN REPLY #66987 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~그는 당신의 실력을 평가한다, 그리고 놀랬다는 듯 휘파람을 분다. "당신 솜씨는 믿기 힘들 정도요. 당신에게 더 가르칠 수 있는 사람은 내가 아는 한 단 한 사람밖에 없소. 그 사람은 마계구에 있는 코러란 사람이오. 그에게 가보시오." ~ */
  IF ~~ THEN REPLY #66988 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"당신은 아직 더 배울 준비가 되지 않았소, 준비가 되면 돌아오시오."~ */
  IF ~~ THEN REPLY #66989 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"나는 당신이 원하는 무기라면 뭐든지 가르쳐 줄 수 있소... 단 일정 수준까지만. 어떤 무기에 대해 배우고 싶소?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"내게 주먹으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"내게 대거를 쓰는 법을 가르쳐 주시오."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"내게 곤봉을 쓰는 법을 가르쳐 주시오."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"내게 도끼를 쓰는 법을 가르쳐 주시오."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"내게 망치를 쓰는 법을 가르쳐 주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"오늘은 훈련을 받을 생각이 없소. 나중에 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"접근전에 유리한 주먹을 쓰는 법을 원하시오?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"대거? 깡패들 무기지만, 암살하는 데도 유용하오. 그것을 배우고 싶으시오?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"오랜 전통을 자랑하는 곤봉을 배우겠소?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~그는 휘파람을 분다. "적에게 심한 고통을 주고 싶소? 그럼 도끼에 대해 배우겠소?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"신사의 무기- 물론 그 신사가 강철의 근육을 가지고 있다면 말이지만. 망치에 대해 배우고 싶소?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"그럼 좋소! 시작합시다."~ */
  IF ~~ THEN REPLY #67037 /* ~"당신만 좋다면 언제든지..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~당신은 훈련을 한다. 한참이 지난 후 그가 이마에서 땀을 닦는다. "당신은 정말 뛰어나오. 달리 원하는 거라도 있소?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"고맙소. 오늘 배우고 싶었던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~그는 당신의 능력을 살펴본 후 말한다 "당신은 그 무기에 대해 가르쳐 줄 수 있는 한계까지 배웠소. 더 배우고 싶으면 시길의 마계구로 가서 코러라는 사람과 얘기하시오. 그는 거의 모든 무기의 달인이오."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"내게 다른 무기에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"내게 다른 무기에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"내게 다른 무기에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"그럼 좋소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~그는 당신의 능력을 살펴본 후 말한다 "그것이 당신이 배울 수 있는 한계요. 만약 당신이 무기를 연구하는 데 전념하고 있지 않다면 - 당신이 전사의 길을 걷고 있지 않다면, 무기를 공부하는 데 있어 벽에 부딪칠 것이오. 더 배우려면 전문화를 해야 하오."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"내게 다른 무기에 대해 가르쳐 줄 수 있겠소?"~ */ JOURNAL #68288 /* ~나는 전사의 길을 전문적을 밟지 않는 한 무기에 대해 더 이상 배울 수가 없다는 얘기를 들었다. 도둑질이나 마법에 한눈 팔지 않고 전투 기술을 습득하는 일에 보다 엄격하게 전념하면 내 강사가 얘기해준 것과 같은 전문화의 길이 열릴 것이다. ~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"내게 다른 무기에 대해 가르쳐 줄 수 있겠소?"~ */ JOURNAL #68288 /* ~나는 전사의 길을 전문적을 밟지 않는 한 무기에 대해 더 이상 배울 수가 없다는 얘기를 들었다. 도둑질이나 마법에 한눈 팔지 않고 전투 기술을 습득하는 일에 보다 엄격하게 전념하면 내 강사가 얘기해준 것과 같은 전문화의 길이 열릴 것이다. ~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"그럼 좋소. 고맙소. 안녕히 계시오."~ */ JOURNAL #68288 /* ~나는 전사의 길을 전문적을 밟지 않는 한 무기에 대해 더 이상 배울 수가 없다는 얘기를 들었다. 도둑질이나 마법에 한눈 팔지 않고 전투 기술을 습득하는 일에 보다 엄격하게 전념하면 내 강사가 얘기해준 것과 같은 전문화의 길이 열릴 것이다. ~ */ EXIT
END
