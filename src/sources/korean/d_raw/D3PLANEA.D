// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"나는 세 차원의 결합으로 *알려진* 기스저라이 학자요. 만약 내 강의를 듣고자 한다면 그것은 몇 초 내에 시작할 것이오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~계속 듣는다.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~강의실에서 나간다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~그는 매우 낮고 음침한 목소리로 말한다. "오늘 나는 속성과 신념의 힘, 그리고 그것들이 차원들에 어떤 영향을 미치는지에 대해 이야기하겠소."

"먼저 나는 속성의 개념에 대해 설명하겠소."
~ */
  IF ~~ THEN REPLY #45033 /* ~계속 듣는다.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"속성은 한 개인의 신념과 그가 그러한 신념에 따라 어떻게 행동하는가를 나타내오. 모든 생명체들은 본질적으로 선, 악, 중립 중 한 가지의 내면적 가치관에 따라 행동하오. 그리고 그들은 이러한 가치관을 혼돈스럽게, 질서 정연하게, 또는 중립적인 태도로 표현하오. 따라서 이들의 조합에 의해 아홉 개의 핵심 속성이 존재하오.~ */
  IF ~~ THEN REPLY #45036 /* ~계속 듣는다.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"9대 속성은: 질서-선, 중립-선, 혼돈-선... 질서-중립, 절대(참) 중립, 혼돈-중립... 질서-악, 중립-악, 혼돈-악.

"자, 지금부터 나는 속성과 그것이 야기하는 신념의 힘에 대하여 이야기하겠소... 어떻게 신들이 힘을 얻으며, 신념이 어떻게 주변 환경에 물리적인 영향을 미치는가에 대해 말이오."
~ */
  IF ~~ THEN REPLY #45039 /* ~계속 듣는다.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"신에게는 신자들이 있어야만 하오. 이는 신자들의 신앙이 신에게 힘을 주기 때문이오. 어떤 신을 믿는 신도들의 수와 질이 증가하면, 그 신이 받는 힘 역시 따라서 증가하오."

"반대로 아무도 그 신을 믿지 않게 되면, 그는 점차 약해져 결국에는 애스트럴계를 떠도는 다른 신들의 시체와 합류하게 되오. 따라서 어떤 신에 대한 기억을 완전히 말살함으로서 그를 죽이는 것도 이론적으로는 가능하오." 
~ */
  IF ~~ THEN REPLY #45042 /* ~계속 듣는다.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"하지만 속성과 신념의 힘에 대한 가장 현저한 예는 관문 도시들의 '미끄럼' 현상이오."

"그러나 우선 관문 도시에 대해 정의부터 하겠소."
~ */
  IF ~~ THEN REPLY #45045 /* ~계속 듣는다.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"관문 도시들은 바로 이 시길이 그 중심에 위치한 중립의 차원 아웃랜즈의 외곽에 있는 도시들이오. 그들이 '관문 도시'라 불리는 것은 그러한 도시들에는 특정한 아웃터 플레인으로 통하는 항구적인 관문, 또는 전이문이 존재하기 때문이오."~ */
  IF ~~ THEN REPLY #45048 /* ~계속 듣는다.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"이러한 아웃터 플레인들은 각자 독자적인 속성을 지니고 있소. 어비스는 혼돈-악이며, 베이터는 질서-악이오. 미캐너스는 질서-중립이며, 마운트 실레스쳐는 질서-선이오. 아웃랜즈는 전술했듯이 절대 중립으로, 질선, 혼돈, 선, 악 그 어느 쪽으로도 기울지 않고 있소."

"'미끄럼' 현상은 특정한 신념이 그와 다른 신념을 지닌 지역에서 지나치게 득세를 할 경우 발생하오. 이 현상이 일어나면 그 지역이 새로운 신념에 부합하는 차원으로 이동, 또는 미끄러지게 되오."
~ */
  IF ~~ THEN REPLY #45051 /* ~계속 듣는다.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"자, 관문 도시는 원래부터 전이문으로 연결되는 아웃터 플레인의 차원과 유사한 신념을 강하게 지니고 있소, 하지만 아직 그 신념은 그 도시가 아웃랜즈로부터 전술한 차원으로 미끄러지게 만들 정도로 강하지는 않소. 

"예를 들어 립케이지("흉곽")는 질서-악의 차원이 베이터와 연결되는 전이문을 지니고 있소. 따라서 립케이지의 주민들의 속성은 대부분 질서-악이오, 하지만 도시 전체의 속성과 신념은 아직 베이터로 미끄러질 정도로 강하지는 않소.
~ */
  IF ~~ THEN REPLY #45054 /* ~계속 듣는다.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"예를 들어 립케이지에서 갑자기 질서-악의 교단이 득세를 하여 그들의 사악한 신앙을 전파하고, 많은 사람들을 그들이 숭배하는 질서-악의 속성의 신의 신도로 개종시킨다고 합시다. 그렇게 되면 그 도시가 중립인 아웃랜즈에서 미끄러져 질서-의 차원인 베이터의 일부가 될 가능성은 매우 높아지게 되오."

"차원의 한 층 전체도 이런 방식으로 이동할 수가 있소. 따라서 많은 전쟁들은 필요에 의해 벌어지는 신념과 신앙의 전쟁이오. 그러한 전쟁들은 영토를 확장하고 유지하는 도구들이오."
~ */
  IF ~~ THEN REPLY #45057 /* ~계속 듣는다.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"이것의 바로 차원들을 지배하고 형성하는 속성과 신념의 힘이오. 강의는 이걸로 끝이오."

"신념이 당신의 행동을 인도하고, 당신의 뜻대로 차원들을 움직일 수 있게 하기를. 모두들 안녕히 가시오."~ */
  IF ~~ THEN REPLY #45060 /* ~떠난다.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~마르고 모질게 생겼으며, 노란 피부 전체를 문신으로 뒤덮고 있는 이 남자는 강의실과 그 안의 청중들을 차가운 검은 눈으로 쳐다보고 있다. 그는 강의를 하고 있는 것 같다." ~ */
  IF ~~ THEN REPLY #45063 /* ~남아서 강의를 듣는다.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~떠난다.~ */ EXIT
END
