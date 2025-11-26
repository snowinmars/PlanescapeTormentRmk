// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"대장이 여기 오다니 정말 다행이야! 날 여기서 내보내 달라고."~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"자넨 거기서 뭘 하고 있었나?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"왜?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"노력 중이네, 모트, 노력 중이라고."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"그 위어랫 쓰레기들이 날 기습해 여기로 데려왔어! 이봐, 보스... 우린 빨리 여기서 나가야 해! 여긴 정말 위험한 곳이라고!"~ */
  IF ~~ THEN REPLY #28722 /* ~"왜 그냥 내려오지 않나?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"모르겠네, 다른 해골들과 함께 있는 자네 모습이 꽤 편안해 보이는군..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"그럴 수가 없어! 벌써 해봤다! 자, 빨리 날 내려줘..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"농담은 그만둬, 보스... 우린 빨리 여기서 나가..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"아... 안돼." 모트는 당신에게 격렬히 속삭인다. "이 양반을 화나게 하지마, 보스... 그는 눈깜짝할 사이에 대장을 없앨 수 있어."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~모트가 나선다. 그의 목소리로부터 비참함, 경외감, 그리고 두려움이 느껴진다. 모트는 로타라는 자와 절대로 대적해서는 안 된다고 생각하는 듯하다. "그는 내 얘기를 하는 겁니다. 이보십시오, 나으리, 날 그냥 보내 주시고 이 일은 없었던 일로 하는 게 어떻겠습니까? 그냥 지나간 일로 하지요, 네?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~모트가 나선다. "그는 내 얘기를 하는 겁니다. 이보십시오, 나으리, 날 그냥 보내 주시고 이 일은 없었던 일로 하는 게 어떻겠습니까? 그냥 지나간 일로 하지요, 네?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"내가 듣기엔 좋은 조건 같아, 보스, 그리고 여기 갇힌 건 나라고. 그냥 그렇게 하자, 응? 그냥 가서 해골을 찾은 후 나와 바꾸러 돌아오라고."~ */
  IF ~~ THEN REPLY #28724 /* ~"좋네. 로타, 나는 그를 찾으러 다시 오겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"날 상대하기에는 충분하지 않네, 모트. 나는 그를 위해 당신과 싸우겠소, 로타."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"보스, 안돼! 그가 대장을 말살할 거야!" 모트는 완전히 공포에 질린 듯하다. "그는 이 염병할 도시에서도 최고위층에 속하는 인물이라고!"~ */
  IF ~~ THEN REPLY #28726 /* ~"안됐군. 그를 내게 돌려주시오, 로타."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"좋네. 로타, 나는 그를 찾으러 다시 오겠소. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"보스, 그렇게 밀어붙이지마! 관두라고! ~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~이것은 두 싱긋 웃는 해골 사이에 해골 하나 크기의 빈 공간이 있는 먼지 한 점 없는 선반이다.~ */
  IF ~~ THEN REPLY #54292 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~이것은 두 싱긋 웃는 해골 사이에 해골 하나 크기의 빈 공간이 있는 먼지 한 점 없는 선반이다.~ */
  IF ~~ THEN REPLY #54291 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END
