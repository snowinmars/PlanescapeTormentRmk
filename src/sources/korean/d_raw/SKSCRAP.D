// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~SKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~이 피부 조각은 당신의 왼쪽 팔뚝의 뒤쪽에서 벗겨낸 것이다. 상처 자국투성이의 회색 표면은 좀비의 가죽을 연상시킨다. 피부 조각이라기 보다는 보존 처리를 한 가죽이라는 느낌이 든다. ~ */
  IF ~~ THEN REPLY #52403 /* ~왼쪽 집게손가락을 찔러 나오는 피로 피부조각에 후회라고 쓴다.~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~당신은 집게손가락의 끝을 찌른다. 상처가 다 낫기 전에 당신은 여러 방울의 피를 짜낸다. 당신이 당신의 후회를 갈겨 쓰려고 하자, 일련의 이미지들이 당신 정신 속에 떠오른다.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~후회: "내 동료들에게 일어난 일을 후회한다..."~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~후회: "내가 한 행동을 후회한다..."~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~후회: "내 과거를 후회한다..."~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~후회: "이 시점에까지 이르게 만든 사건들을 후화한다..."~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~"내가 이 곳에 오기까지 내 동료들이 겪어야 했던 고통..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~"모트를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~"안나를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~"다콘을 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~"훨-후럼-그레이스를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~"노돔을 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~"모트를 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~"안나를 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~"다콘을 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~"노돔을 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~"모트를 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~"안나를 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~"다콘을 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~"노돔을 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~"다콘을 오랜 세월동안 노예로 만든 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~"이그너스에게 다른 이들을 해칠 마법을 가르친 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~"모트를 배신하여 그를 해골들의 기둥에 남겨 둔 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~"다콘의 죽음..."~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~"안나의 죽음..."~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~"모트의 죽음..."~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~"훨-후럼-그레이스의 죽음..."~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~"이그너스의 죽음..."~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~"노돔의 죽음..."~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~"베일로의 죽음..."~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~다른 후회에 대해 생각한다...~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~"사람들을 더 죽이지 못한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~"코우크스메탈을 공성탑에서 해방시키지 않은 일..."~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~"코우크스메탈을 공성탑에서 해방시키지 않은 일..."~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~"코우크스메탈을 공성탑에서 해방시킨 일..."~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~"래벌을 죽여야만 했던 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~"염병할 전이문이 내가 처음 깨어난 곳 바로 옆에 있었는데도 온갓 차원들을 헤매고 다닌 일..."~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~다른 후회에 대해 생각한다...~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~~ THEN REPLY #53301 /* ~"애초에 불사신으로 만들어 달라고 부탁했던 일..."~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~"휜 앤들리의 살인... 만약 내가 불사신이 되지 않았었다면 내 편집증적 화신이 그를 죽이는 일도 없었을 텐데."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~"내 전신들이 자신들과 다른 이들에게 입힌 피해..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~"이 곳과 다원 우주 전역에 걸쳐 나 때문에 죽은 이들..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~"데이오나라가 나와 동행하도록 그녀에게 거짓말을 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~"후회의 요새에서 데이오나라를 살해한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~"이언니스의 딸을 죽게 만듬으로서 내가 그에게 준 고통..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~다른 후회에 대해 생각한다...~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~~ THEN REPLY #53311 /* ~"내 죽음이 어디 있는지 알아내는 데 이토록 오랜 시간이 걸린 일..."~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~"여기까지 오는 데 많은 목숨이 희생된 일..."~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~"이 순간을 나와 함께 나눌 사람이 아무도 없다는 일..."~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~"이 피부조각에 적을 후회가 없다는 일..."~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~다른 후회에 대해 생각한다...~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~당신은 피부 조각에 후회를 갈겨 쓴다... 하지만 당신의 신속한 회복력 때문에 당신은 때때로 손가락에 난 상처를 쑤셔서 피를 더 짜내야만 한다. 얼마 후 당신은 후회를 쓰는 일을 마친다, 그리고 피부 조각 위에서는 당신의 피가 반짝이고 있다... 그것은 당신의 살, 피, 그리고 후회의 결합이다. ~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~"이거면 되겠지, 그럼..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~"이거면 되겠지, 그럼..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~당신이 잠시 생각할 동안 손가락에 난 상처는 완전히 회복된다. 당신은 어쩔 수 없이 손가락 끝에 다시 상처를 내고 피를 좀더 짜낸다. 당신이 당신의 후회를 갈겨 쓰려고 하자, 일련의 이미지들이 당신 정신 속에 떠오른다.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~후회: "내 동료들에게 일어난 일을 후회한다..."~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~후회: "내가 한 행동을 후회한다..."~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~후회: "내 과거를 후회한다..."~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~후회: "이 시점에까지 이르게 만든 사건들을 후화한다..."~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~피부조각을 치운다...~ */ EXIT
END
