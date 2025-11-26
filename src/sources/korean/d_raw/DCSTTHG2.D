// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~갑옷을 입고 칼을 옆에 찬 남자가 보인다. 그는 당신이 다가가자 경계하는 눈초리로 쳐다본다.~ */
  IF ~~ THEN REPLY #9903 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~그는 당신에게 인사한 후 주변을 흘긋 둘러본다. "안녕하시오. 뭘 원하오?"~ */
  IF ~~ THEN REPLY #9906 /* ~"나는 당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"나는 커스트에 온지 오래되지 않소, 따라서 당신 질문에 제대로 답할 수 있을지 모르겠소. 하지만 노력은 하리다."~ */
  IF ~~ THEN REPLY #9909 /* ~"이 도시에 있을지도 모르는 디바에 대해 들은 적이 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"실례가 안된다면 묻겠는데, 당신은 왜 커스트에 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~그는 놀란 표정으로 당신을 바라본다. "디바라... 아니 그런 얘긴 들은 적도 없소. 왜 디바가 이런 곳에 있겠소? 그건 말도 되지 않소."~ */
  IF ~~ THEN REPLY #9913 /* ~"그래 좋소... 당신은 왜 커스트에 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"모르겠소. 이만 실례해야겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"그럼 행운을 빌겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #9916 /* ~"당신에게도 행운이 따르기를."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"내 직업은 용병이오. 나는 커스트에 일거리가 있다고 해서 왔소. 하지만 이 염병할 도시의 대부분이 역병 때문에 폐쇄된 상태라 난 내가 가야할 곳으로 갈 수가 없게 됐소."~ */
  IF ~~ THEN REPLY #9918 /* ~"이 역병에 대해 무엇을 알고 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"당신은 어디로 가야 하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"알겠소. 이만 실례해야겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~그는 어깨를 으쓱한다. "아무 것도 없소. 정말이오. 나는 그것이 갑작스럽게 찾아왔으나, 시의 감염된 지역을 폐쇄함으로서 빠른 시간 내에 그 기세를 꺾을 수 있었다고 들었소." 그는 한숨을 쉰다. 정말 불편해 못 견디겠소. 이제 난 중개인을 만날 수가 없소."~ */
  IF ~~ THEN REPLY #9922 /* ~"당신은 어디로 가야 하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"고맙소. 그만 가봐야겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"사지로 찢어진 사나이. 그 곳은 용병들이 모이는 장소요. 하지만 이제 그 곳이 위치한 시 구역으로는 갈 수가 없소." ~ */
  IF ~~ THEN REPLY #9925 /* ~"알겠소. 이만 실례해야겠소."~ */ GOTO 4
END
