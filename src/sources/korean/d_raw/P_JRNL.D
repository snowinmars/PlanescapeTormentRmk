// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~당신의 두 손을 한 데 뭉친 것과 비슷한 크기의 이 무거운 12면체는 왠지 낯이 익다. 그것은 차갑고 매끄러운 질감을 지니고 있으나, 그 재질이 돌인지 아니면 금속인지는 당신으로서는 알 수가 없다. 그 물체의 주위에는 지금 당장이라도 튕겨 나올 듯한 무형의 긴장감이 감돌고 있다. ~ */
  IF ~~ THEN REPLY #45747 /* ~12면체를 세밀히 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~그것을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~12면체를 자세히 살펴본 후 당신은 그것의 각 면이 우측 또는 좌측으로 회전할 수 있는 판이라는 것을 깨닫는다... 그것은 일종의 퍼즐박스나 숫자식 자물쇠인 듯하다. 각 오각형 판은 다섯 가지 위치 중 하나를 취할 수 있다, 따라서 가능한 조합은 모두 244,140,625 개이다. 모든 조합을 다 시험해 보려면 적어도 70년 이상은 걸릴 것이다, 하지만 반대로 운만 좋다면 몇 분 안에 풀 수 있을 지도 모른다... ~ */
  IF ~~ THEN REPLY #46209 /* ~그것을 잠시 만지작거린다.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~그것을 그냥 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~당신이 12면체의 차가운 회색 면들을 체계적으로 돌리고 있을 때, 갑자기 당신 머리의 아래 부분에서 이상한 감각이 느껴진다. 당신의 양손은 스스로의 의지를 지닌 듯 움직여 12면체를 기계처럼 정밀하게 돌리면서 그 면들을 회전시킨다. 당신은 전에 같은 일을 한 적이 있다... 그리고 당신은 12면체의 정확한 조합 역시 한때 알고 있었다... 또한 당신은 그 물체 안에는 *위험*이 도사리고 있다는 사실 또한 알게 되었다. 그것이 단순한 함정인지, 아니면 그보다 더 특이한 무엇인지는 기억해낼 수가 없다.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~12면체를 계속 조작한다.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~당신은 순시간에 처음 네 면들을 제 위치에 고정시킨다. 당신은 12면체의 다섯 번째 면을 돌리다가 그것에는 조작하는 자의 손목과 손가락을 베어버리는 칼날이 튀어나오는 교묘한 함정이 설치되어 있다는 사실을 기억해낸다. 당신은 면을 정해진 회수만큼만 돌림으로서 함정을 회피하고 당신이 그 물체의 비밀에 한 걸음 더 다가갔음을 확신한다. ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~12면체를 계속 조작한다.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~12면체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~12면체의 칼날을 회피한 후에 당신은 그 다음 면들의 위치를 천천히 맞추기 시작한다. 12면체의 아홉 번째 면을 돌리다가 당신은 두 번째 함정을 기억해낸다. 그것은 치명적인 부식성의 가스가 조작자에게 맹렬한 기세로 분출되는 함정이다. 당신은 면을 정해진 회수만큼만 돌림으로서 함정을 회피하고 12면체를 거의 다 풀었음을 자신한다. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~12면체를 계속 조작한다.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~12면체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~당신은 12면체의 독가스 함정을 회피한 후 나머지 면들의 위치를 결정하는 작업에 들어간다. 열두 번째 오각형을 돌리다가 당신은 조심성 없는 조작자를 마법의 번개로 날려보낼 수도 있는 마법의 룬들을 기억해낸다. 당신이 면을 정해진 회수만큼만 돌림으로서 함정을 해제하자 12면체는 *찰칵* 소리와 함께 당신 손 안에서 열리기 시작한다...~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~당신은 순시간에 처음 네 면들을 제 위치에 고정시킨다. 당신이 12면체의 다섯 번째 면을 돌리기 시작하자 날카로운 칼날들이 회전하는 면들의 틈새와 12면체 그 자체에서 튀어나와 당신의 손목을 베고 손가락들을 거의 절단하다시피 한다. 고통 때문에 이를 악물면서도 당신은 떨어뜨린 12면체를 주우려고 허리를 구부린다... 그리고 갑자기 그 특정한 함정을 회피하는 방법을 기억해낸다.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~12면체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~당신은 순시간에 처음 네 면들을 제 위치에 고정시킨다. 당신이 12면체의 다섯 번째 면을 돌리기 시작하자 날카로운 칼날들이 회전하는 면들의 틈새와 12면체 그 자체에서 튀어나와 당신의 손목을 베고 손가락들을 잘라버린다. 당신은 피투성이의 12면체를 떨어뜨린다, 그리고 생명과도 같은 피가 손목에 난 상처로부터 쏟아져 나옴에 따라 당신은 바닥에 쓰러진다... 그리고 갑자기 당신의 시야가 어두워지면서 당신은 그 특정한 함정을 회피하는 방법을 기억해낸다.~ */
  IF ~~ THEN REPLY #46231 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~12면체의 칼날을 회피한 후에 당신은 그 다음 면들의 위치를 천천히 맞추기 시작한다. 당신이 12면체의 아홉 번째 면을 돌리기 시작하자, 독가스가 분출되어 당신 얼굴을 부식성의 구름으로 뒤덮는다. 눈이 반쯤 멀고, 머리도 어지러우며, 고통스럽게 구토를 하는 상황에서 당신은 다소 늦기는 했으나 그 함정을 회피하는 방법도 기억해낸다.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~12면체를 계속 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~12면체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~12면체의 칼날을 회피한 후에 당신은 그 다음 면들의 위치를 천천히 맞추기 시작한다. 당신이 12면체의 아홉 번째 면을 돌리기 시작하자, 독가스가 분출되어 당신 얼굴을 부식성의 구름으로 뒤덮는다. 이미 눈은 거의 보이지 않으며, 당신은 격렬한 두통과 심한 구토에 시달리고 있다. 죽어가면서 당신은 그 함정을 회피하는 방법을 기억해낸다. 당신은 고통으로 뒤틀린 시체가 된다, 하지만 12면체만은 흉터투성이의 가슴에 꼭 낀 채 놓으려 하지 않는다. ~ */
  IF ~~ THEN REPLY #46321 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~당신은 12면체의 독가스 함정을 회피한 후 나머지 면들의 위치를 결정하는 작업에 들어간다. 열두 번째 오각형을 돌리려고 하자 12면체에 감추어져 있던 마법의 룬들은 적은 번개 폭풍을 방출한다. 청색의 섬광이 당신의 팔을 시꺼멓게 태우면서 번개처럼 위로 올라간다.

근육의 경련이 멎은 후 당신은 정신을 가다듬어 그 함정을 회피하는 방법을 기억해낸다. 열두 번째 면을 최종 조정을 마치자 12면체는 *찰칵* 소리와 함께 당신 손 안에서 열리기 시작한다...~ */
  IF ~~ THEN REPLY #16191 /* ~계속한다...~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~당신은 12면체의 독가스 함정을 회피한 후 나머지 면들의 위치를 결정하는 작업에 들어간다. 열두 번째 오각형을 돌리려고 하자 12면체에 감추어져 있던 마법의 룬들은 적은 번개 폭풍을 방출한다. 청색의 섬광이 당신의 팔을 시꺼멓게 태우면서 번개처럼 위로 올라간다. 당신은 경련하며 바닥에 쓰러지면서 함정을 회피하는 방법을 기억해낸다. 그러니 때는 이미 늦어 당신은 엄청난 쇼크와 신경 계통의 손상 때문에 죽어간다.~ */
  IF ~~ THEN REPLY #46615 /* ~"어떻게 그런..."~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~12면체는 차례로 갈라지며 물리적으로 도저히 가능할 것 같지 않은 과정을 거치면서 펼쳐져, 큰 책 크기의 완벽한 사각형 모양의 서판이 된다. 그 표면에는 일련의 기괴한 심벌들이 새겨져 있다. 그것은 왠지 당신에게 낯익은 부호나 언어 같으나... 알아볼 수는 없다. 당신은 서판을 자세히 살펴본 후 이제는 서판 아래에 위치하게 된 오각형의 면들을 돌림으로서 서판의 표면에 각기 다른 '페이지'를 표시할 수 있다는 사실을 알게 된다. 마침내 당신은 12면체가 일종의 일지란 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #46240 /* ~"흠...내가 이 언어를 읽는 방법을 배울 때까지는 그걸 그냥 치워놓는 것이 좋을 것 같군."~ */ JOURNAL #56754 /* ~나는 덫이 장치된 12면체를 열 수가 있었다, 그리고 그것은 일종의 일지나 책인 것 같다. 하지만 나는 그것이 쓰여진 기묘한 언어를 해독할 수가 없다... 아마 시 공회당에 날 도울 수 있는 학자나 언어학자가 있을지도 모른다. ~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~조심하지 않으면 칼날이 튀어나오는 함정이 작동한다는 사실을 이제는 깨달은 당신은, 회색의 차가운 12면체를 들어 올려 조심스럽게 살펴본다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~12면체를 조금 더 조작한다.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~12면체를 조금 더 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~12면체를 조금 더 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~12면체를 치운다.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~조심하지 않으면 칼날이 튀어나오는 함정과 독가스 함정이 작동한다는 사실을 이제는 깨달은 당신은, 회색의 차가운 12면체를 들어 올려 조심스럽게 살펴본다.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~12면체를 조금 더 조작한다.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~12면체를 조금 더 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~12면체를 조금 더 조작한다.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~12면체를 치운다.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~조심하지 않으면 각종의 위험한 함정들이 작동한다는 사실을 이제는 깨달은 당신은, 회색의 차가운 12면체를 들어 올려 조심스럽게 살펴본다.~ */
  IF ~~ THEN REPLY #46252 /* ~그것을 펼친다.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~12면체를 치운다.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~조심하지 않으면 칼날이 튀어나오는 함정과 독가스 함정이 작동한다는 사실과 그것들을 회피하는 방법을 이제는 깨달은 당신은, 회색의 차가운 12면체를 들어 올려 조심스럽게 살펴본다. 당신은 사어인 우요어를 배웠기 때문에 그 내용을 적어도 해독할 수는 있을 것이다. ~ */
  IF ~~ THEN REPLY #46255 /* ~12면체를 펼처서 그 내용을 읽는다.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~나는 12면체 퍼즐 박스의 마지막 비밀을 푸는 데 마침내 성공했다. 알고 보니 그것은 내 정신이 온전하지 못한 전신들 중 하나가 쓴 일지였다. ~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~12면체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~서판은 일종의 일지로 밝혀졌다... 당신의 전신들 중 하나가 기록한 듯하나 그는 정신이 온전하지 못했던 것 같다. 조리 있게 쓰여진 부분은 얼마되지 않는다.~ */
  IF ~~ THEN REPLY #46258 /* ~그것을 띄엄띄엄 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~일지를 치운다. ~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~당신은 호색의 차가운 12면체를 들어 올린다 - 그것은 당신의 전신들 중 하나가 남긴 암호화되고 3중으로 덫이 놓인 일지이다. ~ */
  IF ~~ THEN REPLY #46261 /* ~12면체를 펼처서 그 내용을 통독한다.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~무엇에 대해 읽고 싶으시오?~ */
  IF ~~ THEN REPLY #46264 /* ~'속삭이는 그림자들'에 대한 항목을 읽는다.~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~여자 유령에 대한 항목을 읽는다.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~당신 몸에 뭔가를 감춘 것에 대해 언급하는 항목을 읽는다.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~편집적인 장광설의 일부를 읽는다.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~'저주받은' 문신에 대한 항목을 읽는다.~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~꿈과 래벌에 대한 항목을 읽는다.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~이름의 위험성에 대한 항목을 읽는다.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~공회당에서의 살인에 대한 항목을 읽는다.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~당신을 도우려 한 사람을 살해한 일에 대한 항목을 읽는다.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~불분명한 출처로부터의 비밀스런 답을 읽는다.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~유증에 대한 부분을 읽는다.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~유증에 대한 부분을 읽는다.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"속삭임은 움직이는 그림자들이 아니다. 그들은 서로 얘기를 하면서 음모를 꾸미고 있다. 나는 그들의 대화 중 일부를 이해할 수 있다. ~ */
  IF ~~ THEN REPLY #46276 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"책은 내게 이런저런 것들을 얘기하고 속삭인다. 그것은 내게 여자 유령을 피하라고 한다. 나는 그녀를 알지도 못하는데 그녀는 나를 괴롭힌다."~ */
  IF ~~ THEN REPLY #46279 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"그래서 나는 그것이 내 창자 속에 걸리기를 바라면서 그것을 삼켰다. 필요하면 다른 사람을 시켜 껴낼 수가 있다. ~ */
  IF ~~ THEN REPLY #46282 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"나는 내 삶이 내 것이 아니라는 사실을 알았다. 네가 내 삶을 가지도록 둘 순 없다...

"네가 내 삶을 원한다면 너는 그것을 내 망가진 시체로부터 꺼내야 할 거다..."

"죽는 건 너다, 그리고 내가 삶을 가질 수 없다면 너도 가질 수 없다."

"이 배신자 같은 육신은 다 네 책임이다. 네가 내 삶을 살도록 할 수는 없다."~ */
  IF ~~ THEN REPLY #46285 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"빌어먹을 문신들은 내 피부로부터 떠날 생각을 하지 않는다! 나는 피부를 태워서 그것들을 제거하려고 했으나 실패했다! 나는 망토로 내 전신을 가리기도 해보았다, 하지만 그들은 내 살을 읽고 있다, 내가 무슨 책이나 되는 것처럼. 사람들이 날 쳐다볼 때마다 나는 그들의 눈알을 뽑아서 발로 짓밟아버리고 싶은 충동에 사로잡힌다.~ */
  IF ~~ THEN REPLY #46288 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"왜 나는 꿈을 꿀 수가 없는 것인가?"

"나는 세머의 술잔을 이용하여 깬 채로 꿈을 꾸었다. 나는 어떤 마귀할멈을 보았다. 그녀는 나를 유혹했으며 그림자들로 날 협박했다! 나는 그녀를 본 적이 없다, 하지만 그녀는 내가 꿈을 꿀 때 내게로 왔다. 나는 다시는 꿈을 꾸어서는 안 된다. 나는 항상 깨어 있어야만 한다. 나는 술잔을 부셨다."

"그녀는 자신이 강대한 마력을 지녔으며, 나를 찾아서 자신의 것으로 만들겠다고 말했다. 꺼져라, 마귀할멈! 내게 다가 오지마!! 날 그냥 내버려 둬! 나는 네 꼴도 보기가 싫어!"~ */
  IF ~~ THEN REPLY #46291 /* ~일지의 현재 항목을 계속해서 읽는다.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"이름을 두려워하라. 이름은 그 정체성에 힘을 지닌다. 이름은 타인에 의해 무기로 쓰일 수가 있다. 이름은 차원을 가로질러 너를 추적할 수 있게 해주는 갈고리와 같다. 이름을 갖지 말라, 그러면 안전할 것이다."~ */
  IF ~~ THEN REPLY #46295 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"나는 내 가짜 자신의 발자취를 찾으려고 시 공회당으로 갔다. 그 곳은 휘황찬란했던지 내가 모르는 자들, 거짓된 자들이 나를 믿고, 나를 친구로 대해주고, 내게 방을 주고, 내게 필요한 것들을 주었다. 나는 그들을 공격하는 것을 자제했다. 그것은 시기 상조였기 때문이다. 먼저 나는 내 정체를 보호하지 않으면 안 된다. 나는 우요의 비밀 언어를 알고 있는 사람을 찾아 배울 만큼 배운 후 그를 죽였다. 그리고 나는 만사를 끝내려고 감각 체험실로 갔다. 곧, 곧..."~ */
  IF ~~ THEN REPLY #46298 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~그는 자신이 할 수 있는 일이 아무 것도 없다고 한다. 내 기억은 사라져 다시는 회복할 수 없다고 한다. 그는 내게 전에도 같은 얘기를 했다고 거짓/말한다. 그는 내 정신이 죽을 때마다 약해진다고 한다! 거짓말! 그는 계속 거기에 앉아 매순간마다 내 신뢰를 배신하고 있다.
그는 세 죽음, 세 삶 뒤에는 내가 기억을 간직할 수 있게 될 것이나, 하지만 나 자신은 죽으면 죽게 된다고 한다. 죽어? 어떻게 불사신이 죽을 수가 있는가?!나는 그에게 어떻게 이런 일이 있을 수 있느냐고 물었으나 그는 대답하지 못했다. 그는 쓸모가 없었다. 나는 내 다른 화신들이 그의 무능함 때문에 고통받지 않도록 그를 죽였다. ~ */
  IF ~~ THEN REPLY #46302 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"기괴하게 생긴 머리들이 말했다."

"너는 여럿으로 나뉘어졌다. 너는 여럿 중 하나이다. 너는 여러 가지 이름을 지니고 있으며, 그것들은 각각 너의 육신에 흉터를 남겼다..."~ */
  IF ~~ THEN REPLY #46304 /* ~일지의 현재 항목을 계속해서 읽는다.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~길 잃은 자
불사신
마지막 화신
천 번 죽은 사나이
안식을 얻지 못하는 자
여럿 중 하나
삶의 죄수
그림자를 부르는 자
상처 입은 자
불행의 원흉~ */
  IF ~~ THEN REPLY #46308 /* ~일지의 현재 항목을 계속해서 읽는다.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"너는 깨어져 그 파편들이 역사상의 여러 시점으로 뿔뿔이 흩어진, 은을 입힌 거울이다."

"하지만 그 중에서 한 조각만 중요하다. 그 파편만 찾으면 너의 삶은 다시 너의 것이 될 것이다. 하지만 대가를 치러야 한다. 그 대가는 너에게 한 번의 기회를 줄 것이다. 그 기회가 없으면 너는 파멸이다...~ */
  IF ~~ THEN REPLY #46312 /* ~일지의 현재 항목을 계속해서 읽는다.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"너는 인간으로부터 결코 분리되어서는 안 될 것을 잃었다. 너는 네 죽음을 빼앗겼다. 잃어버렸다. 그것은 아직 존재한다, 그러나 너는 그것을 네가 정신을 완전히 잃어버리기 전에 찾아야만 한다."~ */
  IF ~~ THEN REPLY #46316 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"그녀의 목소리로부터는 사악의 발톱. 거미 같은 발톱을 느낄 수가 있었다, 그것들은 내 뇌 속으로 파고 들었다, 그래서 나는 그녀를 내 정신으로부터 몰아내야 한다. 나가! 나가, 나가라, 마귀할멈!"

"그녀는 전설적인 존재로 레이디 오브 페인에게 도전한 유일한 존재다! 어떻게 전설 속의 존재와 싸울 수가 있겠는가? 내게는 무기가 없다. 나는 그녀가 날 찾아낼 경우 그녀를 죽일 수 있는 무기가 필요하다. 그녀가 날 잡으러 올 경우 지지 않기 위한 전략이 필요하다. 나는 궁리하고 생각해야 한다. 나는 그녀에게 이길 것이다."~ */
  IF ~~ THEN REPLY #46319 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~일지를 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"쪽지에는 유증에 대해 적혀 있다. '네 유증을 찾는 것을 잊지 말라'라는 말과 함께 51-AA라는 암호가 갈겨써져 있다..."

"내 거짓 화신들 중 또 한 놈에 의한 함정이 틀림없다. 난 그걸 없앨 것이다."~ */
  IF ~~ THEN REPLY #47079 /* ~다른 부분을 읽는다.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~일지를 치운다. ~ */ EXIT
END
