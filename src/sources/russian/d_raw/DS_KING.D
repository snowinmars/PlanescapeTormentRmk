// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~Этот иссушенный труп выглядит впечатляюще в своих гравированных парадных доспехах, несмотря на покрывающую их пыль и паутину. Очевидно, это и есть могучий Безмолвный Король. Владыка и повелитель Мертвых Народов оказался всего лишь высушенной оболочкой.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Забрать его череп.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Забрать его череп.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Забрать его череп.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Уйти.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~Ты крутишь и дергаешь голову Безмолвного Короля, но бесполезно... она даже не двигается. Наконец, ты упираешься ногой в подлокотник трона и отрываешь череп с резким хрустом.~ */
  IF ~~ THEN REPLY #51428 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Отрывание головы Безмолвного Короля, безусловно, разозлит обитателей тронного зала... сперва тебе придется разобраться с ними.~ */
  IF ~~ THEN REPLY #51430 /* ~Еще раз попробовать забрать череп.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~Ты пытаешься бесшумно вытянуть голову Безмолвного Короля, но она не двигается. Наконец, ты упираешься ногой в подлокотник трона и отрываешь череп с резким хрустом, чем привлекаешь внимание окружающих. Они оборачиваются и видят тебя с оторванной головой их любимого владыки, и кидаются в атаку...~ */
  IF ~~ THEN REPLY #51433 /* ~Защищаться.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~Владыка и повелитель Мертвых Народов оказался всего лишь высушенной оболочкой, к тому же, еще и безголовой, так как ты оторвал ему череп.~ */
  IF ~~ THEN REPLY #51435 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~Владыка и повелитель Мертвых Народов оказался всего лишь высушенной оболочкой. Его голова сидит на плечах немного криво с тех пор, как ты подменил его череп другим.~ */
  IF ~~ THEN REPLY #65525 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Отрывание головы Безмолвного Короля, безусловно, разозлит обитателей тронного зала... сперва тебе придется разобраться с ними. Однако, если бы у тебя был какой-нибудь другой, обычный череп, твои руки могли бы достаточно быстро подменить им череп под шлемом Безмолвного Короля, пока никто тебя не заметил...~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Заменить череп на имеющийся у тебя.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~Еще раз попробовать забрать череп.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~Убедившись, что на тебя не смотрят, ты поднимаешь шлем Безмолвного Короля, суешь его череп в свой инвентарь и заменяешь отсутствующую голову другим имеющимся у тебя черепом. С надетым шлемом никто даже не догадается...~ */
  IF ~~ THEN REPLY #65529 /* ~Уйти.~ */ EXIT
END
