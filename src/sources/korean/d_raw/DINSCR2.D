// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~이 비문은 전에 모트가 시체안치소에서 읽어 준 당신 등에 적힌 지시 사항과 동일한 것 같다:

네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.~ */
  IF ~~ THEN REPLY #53675 /* ~계속해서 기억을 되살린다.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~나머지 비문들을 무시하고 패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~계속한다.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~계속한다.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~놀랍게도 한 줄이 더 있다 - 모트가 시체안치소에서 읽어 주지 않은 것이다: '해골을 믿지 마라.'~ */
  IF ~~ THEN REPLY #53683 /* ~패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~패널은 벽으로 밀어넣을 수 있도록 설계되었다.~ */
  IF ~~ THEN REPLY #53686 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~패널은 벽 속으로 쉽게 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53689 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~한 줄이 더 있다: '해골을 믿지 마라.'~ */
  IF ~~ THEN REPLY #53691 /* ~패널을 조사한다.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
