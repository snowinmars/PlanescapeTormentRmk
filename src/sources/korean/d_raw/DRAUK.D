// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~청년의 옷은 수수하기는 하나 깨끗하다. 당신이 다가가자 그는 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #49901 /* ~"안녕하시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"가져왔어? 그래?~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"반지를 모두 찾아왔소. 자, 여기 있소."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"그것들을 모두 찾으면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"당신, 친구. 라욱 도와. 좋아.~ */
  IF ~~ THEN REPLY #49907 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"라욱 친구들 잃었어. 하지만 라욱 새 친구 생겼어. ~ */
  IF ~~ THEN REPLY #49909 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"라욱 고민 있어. 당신 도울래?"~ */
  IF ~~ THEN REPLY #49911 /* ~"무슨 일이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"라욱 반지들 텐트들에 두고 왔어. 친구들 그것들로 마법 해야 해. 반지들 없으면 라욱에게 화낼 거야. 한 반지는 돈처럼 갈색, 하나는 거울처럼 반짝여. 마지막은 예쁘고 노래. 라욱에게 가져올래?"~ */
  IF ~~ THEN REPLY #49914 /* ~"당신을 위해 그것들을 찾아오겠소, 라욱."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~라욱은 내게 그의 텐트로부터 반지를 세 개 가져다 달라고 부탁했다. 그의 설명에 의하면 첫 번째는 금으로 만들어졌고, 두 번째는 은, 그리고 세 번째는 청동제라고 한다. 이제 나는 라욱의 텐트를 찾기만 하면 된다. 라욱은 멍청한 듯 했다. 그러니 그의 텐트는 가까운 곳에 있을 것이다. ~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"당신 이제 라욱의 새 친구. 라욱 반지들 받겠어. 라욱 새 친구에게 감사해."~ */
  IF ~~ THEN REPLY #49918 /* ~"안녕히 계시오, 라욱."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~나는 세 반지를 가지고 와서 라욱에게 주었다. 단순한 사람을 위한 단순한 일이었다. ~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"너 라욱 친구 죽였어. 이제 라욱 널 혼내줄 거야."~ */
  IF ~~ THEN REPLY #66368 /* ~라욱을 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
