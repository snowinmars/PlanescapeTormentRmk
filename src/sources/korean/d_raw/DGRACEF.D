// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"그래, 당신이 모든 것의 원흉이군요."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"내게는 당신만이 대답해줄 수 있는 의문이 여럿 있어요. 이 문제에 있어서의 당신의 목적은 명확하지 않았어요."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"내 마음은 시꺼멓지 않고 목숨을 잃는 것도 두려워하지 않아요."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"내게 소중한 사람이 당신의 요새 안에 있어요. 나는 그를 다시 만나고, 그가 이 문제에 대한 만족할 만한 결론을 얻을 때까지 이 곳을 떠날 생각이 없어요."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"내 마음은 시꺼멓지 않고 목숨을 잃는 것도 두려워하지 않아요."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"내 동료와 친구들이 당신의 요새 안에 있어요. 나는 그들과 다시 만나고, 우리가 따르는 사람이 이 문제에 대한 만족할 만한 결론을 얻을 때까지 이 곳을 떠날 생각이 없어요."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"당신의 제의는 자비로우나, 친구들을 저버릴 수는 없어요."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"그가 당신 손아귀에서 치를 '작은' 대가는 그에게 있어서 죽음이나 마찬가지예요. 나는 이 남자와 오랫동안 함께 여행을 했으며, 나는 그가 그 추억들을 잃는 것을 바라지 않아요."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"그건 *당신* 판단이에요."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"그가 나나, 그가 여기까지 오기 위해 거쳐야 했던 일들을 잊는 것을 내가 바라지 않는다는 것은 여전한 사실이에요~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"그는 많은 고통을 겪었어요, 그리고 나는 지금 내 앞에 서 있는, 적의 손길이 닿지 않는 먼 거리에서 적을 죽이는 것을 즐기는 비열하고 오만한 괴물보다는 그에게 더 공감과 동정이 가는군요."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"당신이 그를 더 이상 괴롭히게 할 수는 없어요."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
