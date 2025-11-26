// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~빈 오망성이 보인다. 그 안의 공기는 건조하고 차갑다. 이 지역에서는 거대한 악의 힘이 느껴진다.~ */
  IF ~~ THEN REPLY #54185 /* ~그를 그냥 내버려 둔다.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~도나 퀴쇼의 두루마리를 살펴본다.~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~공기가 잠시 어두워진다, 그리고 당신 심장과 머리를 바람이 꿰뚫고 지나가는 것처럼 느껴진다. 다시 시야가 뚜렷해지자, 거대한 마족이 당신 앞에 서 있다!~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END
