// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~이것은 일종의 일지인 것 같다. 말린 인간의 피부 몇 장이 뼈로 만든 틀 위에 펼쳐져 있으며, 기묘하게도 그것들을 꿰맨 자리는 아물어서 이 간이 책의 등을 형성하고 있다. 바깥 쪽의 피부는 뼈로 만든 틀 안에 잠긴 채로 들어 있는 일련의 피부 몇 장의 커버 구실을 하는 것 같다. ~ */
  IF ~~ THEN REPLY #60403 /* ~바깥 부분을 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~가죽을 살펴본다.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~틀을 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~뼈로 만든 틀을 연다.~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~기묘한 일지를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~피부 바깥쪽에는 일련의 심벌들이 피로 쓰여져 있으나 그 의미는 알 수가 없다. 무슨 종류의 글인 듯하나 거꾸로, 우에서 좌로, 그리고 별난 각도로 쓰여진 탓에 보기에 눈이 아플 지경이다. ~ */
  IF ~~ THEN REPLY #61192 /* ~가죽을 살펴본다.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~틀을 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~뼈로 만든 틀을 연다.~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~기묘한 일지를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~이 피부는 당신 피부만큼이나 창백하다; 상처 자국투성이의 회색 표면은 좀비의 가죽을 연상시킨다. 피부 조각이라기 보다는 보존 처리를 한 가죽이라는 느낌이 든다. ~ */
  IF ~~ THEN REPLY #61197 /* ~바깥 부분을 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~틀을 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~뼈로 만든 틀을 연다.~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~기묘한 일지를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~그것에 쓰여진 글은 조잡하나 뼈로 만든 틀의 디자인 자체는 상당히 복잡하다. 뼈들은 서로 깔끔하게 접힐 수 있도록  조각되었으며, 서로 얽힌 고리를 풀면 책을 열어서 그 내용을 볼 수 있을 것 같다. ~ */
  IF ~~ THEN REPLY #61202 /* ~바깥 부분을 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~가죽을 살펴본다.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~뼈로 만든 틀을 연다.~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~기묘한 일지를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~뼈로 만든 틀을 열자 깔끔한 *찰칵* 소리와 함께 펼쳐진다. 당신은 책을 펼쳐 그 내용을 살펴본다... 그들은 바깥쪽 표지에 있는 것과 같은 기묘한 심벌들로 가득 차 있다, 그러나 그 뜻은 도저히 이해할 수가 없다. ~ */
  IF ~~ THEN REPLY #61207 /* ~기호들을 해독하려고 시도한다.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~뼈로 만든 틀을 다시 잠그고 일지를 그냥 내버려 둔다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~적어도 당신이 보기에 심벌들에는 아무런 패턴도 없는 듯하다. 각도와 표시된 그림들은 완전히 임의적인 것 같다, 하지만 완전히 확신할 수는 없다.  ~ */
  IF ~~ THEN REPLY #61210 /* ~다시 기호들을 해독하려고 시도한다.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~뼈로 만든 틀을 다시 잠그고 일지를 그냥 내버려 둔다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~뼈로 만든 틀을 다시 잠그려고 할 때, 당신 뇌리에 이상한 생각이 떠오른다 - 안쪽의 페이지들의 내용은 애당초 이해할 수 없도록 만들어졌다는. 당신은... 그 당시에는 당신이 어떤 사람이었던 간에... 뼈로 만든 틀 어딘가에 숨겨진 진정한 내용을 찾으려는 사람을 속이기 위해 일부러 적어 넣은 듯하다. ~ */
  IF ~~ THEN REPLY #61213 /* ~뼈로 만든 틀을 살펴본다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~당신은 틀의 테두리를 조사하다가 뼈들 중 하나의 끝에 머리카락 굵기의 가는 금이 나 있는 것을 발견한다. 당신이 뼈의 윗쪽을 잡아서 비틀자, 그 안에 빈 공간이 나타난다. 그 안에는 둘둘 말은 피부 조각이 들어 있다.~ */
  IF ~~ THEN REPLY #61215 /* ~가죽을 꺼내서 읽는다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~이 피부 조각은 글씨로 뒤덮여 있다. 어떤 사람이 거의 읽을 수 없게 될 때까지 쓰고 또 쓴 것 같다. 그럼에도 불구하고 글과 심벌들 중 일부는 알아볼 수가 있다...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"갇혔다 갇혔다 레이디의 의지는 실현 그녀의 시선 피해... 너무 많이 죽였다 목 졸라 질식해 죽게 했다...  나가는 길이 있다 난 안다 칼날 달린 자에게 한 방 먹여야지...~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"...아치들 중 하나가 탈출구다, 그들 중 하나다. 계속 하나씩 들어가 볼 수는 없다, 만약, 만약 한 곳으로 들어갔다가... ...는 일 없이 같은 전이문으로 다시 걸어 들어가면..."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~글은 해독 불가능한 휘갈겨 쓴 글씨로 끝난다... 왠지 당신은 그것이 마지막 글이라는 생각이 든다... 그 화신이 죽었든지, 아니면 어떤 방법으로 미로를 탈출한 것 같다.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~페이지들을 다시 끼워넣고 일지를 치운다.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~나는 레이디의 미로에서 내 일지들 중 하나를 발견했다. 그 안에는 피부 한 조각에 광기어린 글이 두서 없이 적혀 있었다. 이 글을 썼을 때 내가 누구였던 간에 그 때 '나'는 전이문에  도달하지 못했던 모양이다.~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~쪽들을 다시 끼워넣고 일지를 치운다.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~이것은 일종의 일지인 것 같다. 말린 인간의 피부 몇 장이 뼈로 만든 틀 위에 펼쳐져 있으며, 기묘하게도 그것들을 꿰맨 자리는 아물어서 이 간이 책의 등을 형성하고 있다. 바깥 쪽의 피부는 뼈로 만든 틀 안에 잠긴 채로 들어 있는 일련의 피부 몇 장의 커버 구실을 하는 것 같다. ~ */
  IF ~~ THEN REPLY #61225 /* ~뼈로 만든 틀을 열어 그 안에 있는 가죽조각을 읽는다...~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~기묘한 일지를 그냥 내버려 둔다.~ */ EXIT
END
