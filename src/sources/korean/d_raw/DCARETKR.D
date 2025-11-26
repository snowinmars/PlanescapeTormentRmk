// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~쓰레기 냄새가 나는 더러운 노인이 당신을 큰 소리로 부른다. "이방인이여! 잠깐만 시간을 내주시오! 나는 당신에게 이 곳에서 무슨 일이 일어났는지를 말해야만 하오!"~ */
  IF ~~ THEN REPLY #3197 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"무슨 일이 일어났소?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"아니. 비키시오."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"당신은 재난을 당한 마을로 돌아왔소, 이방인. 디바는 우리를 파멸로 인도하고는 폐허 위에 우뚝 서서 쾌재를 부르고 있소. 돌아갈 방법은 단 하나밖에 없소 - 디바를 쓰러뜨리고 이 도시가 그 기만과 배신 행위를 참회하도록 하는 것뿐이오. 용서에 대한 믿음이 강해질 수록 디바는 약해지오."~ */
  IF ~~ THEN REPLY #60253 /* ~"이 모든 일이 다 트리어스 짓이오?"~ */ JOURNAL #60254 /* ~관리인 카이스에 의하면 트리어스는 자신의 감옥으로부터 나와 커스트를 저주했으며, 그 결과 시는 카케리로 미끄러져 떨어지게 되었다고 한다. 관리인은 또한 내게 트리어스와 싸우는 최선의 방법은 시민들로 하여금 자신들의 선한 면을 되돌아보도록 설득하여 이 도시를 휩쓸고 있는 악과 혼돈의 힘을 약화시키는 것이라고 말해주었다.  ~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"나는 카이스로, 이 도시의 쓰레기 관리인이오. 나는 그들에게 친절과 호의에 대해 가르치려고 했으나, 그들은 거절했소, 그리고 그 결과가 바로 이 꼴이오."~ */
  IF ~~ THEN REPLY #60256 /* ~"무슨 일이 일어났소?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"비키시오. 난 볼일이 있소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"재난이 당신을 기다리고 있소, 이방인 ! 디바를 물리치지 않는 한 이 도시는 파괴될 것이오! 이 도시가 아웃랜즈로 돌아가지 못하면 모든 사람들은 파멸을 맞이하게 될 것이오! 우리는 타이탄족조차 탈출할 수 없는 카케리에 있소! 휴식이 필요하다면, 옛 병영이나 증류소로 가시오. 자, 이걸 받으시오. 도움이 될 거요." 그는 돌아서서 뒤에 있는 혼돈 속으로 사라진다.~ */
  IF ~~ THEN REPLY #60259 /* ~"그건 이상한 일이었소."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"디바는 대지로부터 솟아 나와 이 도시의 죄악에 대한 판결을 내렸소. 건물들이 진동함에 따라 시는 혼란 상태에 빠졌고 - 우리는 이 곳 카케리로 오게 되었소. 트리어스에게 이길 방법은 단 하나밖에 없소 - 그것은 선행을 하고, 이 도시 사람들의 마음을 혼돈과 악에서 선으로 돌림으로서 그를 약하게 하는 것이오. 그렇게 할 수 없다면 그의 승리는 결정적이오." 그는 주위를 둘러본다. "내겐 할 일이 있소. 휴식이 필요하다면, 옛 병영이나 증류소로 가시오. 자, 이걸 받으시오. 도움이 될 거요." ~ */
  IF ~~ THEN REPLY #60261 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"고맙소, 이방인. 내게 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #60263 /* ~"난 치료를 필요로 하오."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"그 불한당들은 무엇을 노렸던 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"나도 모르겠소. 소문에 의하면 내가 엄청난 양의 황금을 발견해 부자가 되었다고 하오, 하지만 그건 사실이 아니오. 내가 가진 부라고는 이 기만의 도시에서 날 지탱해 주는 내 믿음밖에 없소. 나는 내 부를 다른 사람에게도 나누어주려고 했으나, 그것을 받아 들이는 사람은 몇 되지 않소~ */
  IF ~~ THEN REPLY #60269 /* ~"알겠소. 당신에 대해 얘기해 주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"난 치료를 필요로 하오."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"나는 카이스로, 이 도시의 쓰레기 관리인이오. 나는 이 도시의 쓰레기를 관리하오, 그리고 은유적으로 표현하자면, 나는 적지 않은 수의 영혼들이 이 곳으로 오는 것을 보았소. 나는 그들에게 선을 권하는 목소리요, 하지만 불행히도 그들은 나를 무시하고 있소."~ */
  IF ~~ THEN REPLY #60274 /* ~"난 치료를 필요로 하오."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"그 불한당들은 무엇을 노렸던 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"이 곳은 대참사 직전의 상황에 놓여 있는 도시요. 이 곳에서는 온갖 악행이 행해지고 있으며, 모든 것의 겉과 속이 다르오. 모든 것은 정중한 치장 아래에 감추어져 있으나, 그 독은 그것을 숨쉬는 자에게 흉터를 남기오. 이 곳은 악의에 찬 사람들로 가득한 악의의 도시요."~ */
  IF ~~ THEN REPLY #60279 /* ~"난 치료를 필요로 하오."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"그 불한당들은 무엇을 노렸던 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"당신은 내 목숨을 구했소." 그는 커스트에서 이런 일이 있을 수가 있다는 것이 믿어지지 않는 듯 다소 넋이 나간 표정이다. "나는 당신에게 큰 신세를 졌소, 치료가 필요하면 내게 오시오, 최선을 다하리다. 미안하지만 가서 좀 앉아야겠소."~ */
  IF ~~ THEN REPLY #60284 /* ~"그러시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~쓰레기 냄새가 나는 더러운 노인이 보인다. 그는 이 마을의 다른 사람들보다 더 활기가 있는 것 같다. 그는 마치 이 도시에 속하지 않는 사람처럼 느껴진다. 당신이 다가가자, 그는 당신을 올려다보더니 똑바로 선다. "이 카이스를 만나러 오셨소? 지혜와 정의에 대한 이야기는 들어보셨소? 삶의 본보기에 대해서는?"~ */
  IF ~~ THEN REPLY #60286 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"이 곳은 어떤 곳이오?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"나는 당신이 어떤 깡패들 때문에 어려움을 겪고 있다고 들었소."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"계몽을 받으러 오셨소? 아니면 지혜...? 오, 당신이로군." 그는 약간 실망한 듯하다.~ */
  IF ~~ THEN REPLY #60292 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"나는 당신이 어떤 깡패들 때문에 어려움을 겪고 있다고 들었소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"나는 카이스로, 이 도시의 쓰레기 관리인이오. 나는 이 도시의 쓰레기를 관리하오, 그리고 은유적으로 표현하자면, 나는 적지 않은 수의 영혼들이 이 곳으로 오는 것을 보았소. 나는 그들에게 선을 권하는 목소리요, 하지만 불행히도 그들은 나를 무시하고 있소."~ */
  IF ~~ THEN REPLY #60298 /* ~"알겠소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"이 곳은 도시의 쓰레기 하치장이오. 나는 이 곳을 관리하고 쓰레기 사이로 다니는 쥐들을 잡소. 나는 도시가 쓰레기로 넘치는 것을 막고 있소, 그러나 이 곳으로 오는 쓰레기의 양은 나날이 늘고 있소."~ */
  IF ~~ THEN REPLY #60301 /* ~"알겠소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"이 곳은 대참사 직전의 상황에 놓여 있는 도시요. 이 곳에서는 온갖 악행이 행해지고 있으며, 모든 것의 겉과 속이 다르오. 모든 것은 정중한 치장 아래에 감추어져 있으나, 그 독은 그것을 숨쉬는 자에게 흉터를 남기오. 이 곳은 악의에 찬 사람들로 가득한 악의의 도시요."~ */
  IF ~~ THEN REPLY #60304 /* ~"알겠소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"워넷은 인간 쓰레기들의 왕초이자 극악무도한 자요. 그는 내게 돈이 있다고 주장하며 내게 내놓으라고 요구하고 있소. 하지만 내게 있어 부란 내 마음과 믿음 뿐이오, 나는 그에게 이 얘기를 했으나 그는 믿지 않는 것 같소. 가서 그를 설득해 주시오. 그는 커스트 내부 남쪽의 마차 부근에 있소."~ */
  IF ~~ THEN REPLY #60307 /* ~"그러리다. 질문할 것들이 몇 가지 더 있소..."~ */ JOURNAL #60309 /* ~쓰레기 하치장 관리인인 카이스는 내게 워넷이라는 깡패와 애기를 해서 자신에게는 값나가는 것이 아무 것도 없다는 사실을 납득시켜 달라고 내게 부탁했다. 나는 그의 말에 거짓은 없다고 생각한다. 그에 의하면 워넷은 커스트 내부 남쪽의 마차들 부근에 있다고 한다. ~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #60311 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"나는 당신이 깡패들 때문에 어려움을 겪고 있다고 들었소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"이 쓰레기 하치장에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~그는 은밀하게 당신 가까이로 다가온다. "이 곳에는 지하로 통하는 비밀 입구가 있소. 아무도 모르는 비밀 장소요. 지하 도시로 통하는 길이 있소..." 그는 잠시 멈춘다. "하지만 사용한 적은 없소. 만약 내가 내려간다면 다시는 돌아오지 못할 거요. 아래로 내려가는 길을 미끄러우며 내 뒤를 흙과 돌이 무너져 내려 막을 것이오. 나는 죽을 때가 되면 지하로 내려갈 것이며, 몬스터들이 내 뼈를 먹도록 할 생각이오."~ */
  IF ~~ THEN REPLY #68145 /* ~"그 밖에도 질문할 것들이 몇 개 더 있소..."~ */ JOURNAL #68147 /* ~쓰레기 하치장 관리인은 내게 커스트 지하로 통하는 비밀 통로의 입구에 대해 말해주었다. 그는 또한 일단 그 길을 지나가고 나면, 다시는 그 길로 돌아오지 못하게 될 가능성이 높다고 말했다. 이 사실을 명심하도록 해야겠다. ~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"알겠소. 안녕히 계시오."~ */ JOURNAL #68147 /* ~쓰레기 하치장 관리인은 내게 커스트 지하로 통하는 비밀 통로의 입구에 대해 말해주었다. 그는 또한 일단 그 길을 지나가고 나면, 다시는 그 길로 돌아오지 못하게 될 가능성이 높다고 말했다. 이 사실을 명심하도록 해야겠다. ~ */ EXIT
END
