// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS863.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DS863~

IF ~  !HasItem("DRemind","S863")
~ THEN BEGIN 0 // from: 10.0
  SAY #35537 /* ~Похоже, этот скелет попал в какой-то серьезный переплет: либо он участвовал в битве, либо упал через несколько лестничных пролетов. Обе руки и ноги переломаны и собраны вновь с помощью кожаных ремней и тонких железных реек. На лбу высечен номер «863»... но сзади череп имеет открытую пустую полость. ~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35538 /* ~«Извини, что забрал пергамент. Все равно ты вряд ли доставил бы его в ближайшее время».~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35561 /* ~«Извини, что забрал пергамент. Все равно ты вряд ли доставил бы его в ближайшее время».~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35562 /* ~«Должен спросить: эти кости сломаны в битве или при падении?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35563 /* ~«Должен спросить: эти кости сломаны в битве или при падении?»~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35564 /* ~Использовать на скелете свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #35569 /* ~Внимательно осмотреть скелет.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35602 /* ~Попробовать вытащить скобы из суставов скелета.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35603 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35604 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35605 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35606 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35607 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35608 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35609 /* ~«Как насчет этого скелета, Морт? Пойдет такое тело?»~ */ EXTERN ~DMORTE~ 396
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35610 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35611 /* ~Оставить скелет в покое.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35612 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35539 /* ~Скелет не отвечает.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35540 /* ~«Приятно было поболтать с тобой, Костяшка. Будь здоров».~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35559 /* ~«Приятно было поболтать с тобой, Костяшка. Будь здоров».~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35560 /* ~«Приятно было поболтать с тобой, Костяшка. Будь здоров».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35565 /* ~Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35566 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35567 /* ~Оставить скелет в покое.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35568 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35570 /* ~Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35571 /* ~Попробовать вытащить скобы из суставов скелета.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35593 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35594 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35595 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35596 /* ~«Не против, если я возьму немного ремешков и скоб?»~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35597 /* ~«Не против, если я возьму немного ремешков и скоб?»~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35598 /* ~«Не против, если я возьму немного ремешков и скоб?»~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35599 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35600 /* ~Оставить скелет в покое.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35601 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35576 /* ~Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35577 /* ~«Если бы у меня был подходящий инструмент, я бы смог вытащить их... хм-м. Я еще вернусь, Костяшка».~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35578 /* ~«Если бы у меня был подходящий инструмент, я бы смог вытащить их... хм-м. Я еще вернусь, Костяшка».~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35579 /* ~«Если бы у меня был подходящий инструмент, я бы смог вытащить их... хм-м. Я еще вернусь, Костяшка».~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35580 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35581 /* ~Оставить скелет в покое.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35582 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35584 /* ~Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.~ */
  IF ~~ THEN REPLY #35585 /* ~«Извини, Костяшка...»~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35587 /* ~С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.~ */
  IF ~~ THEN REPLY #35588 /* ~«Извини, Костяшка...»~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35613 /* ~Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
END

IF ~  HasItem("DRemind","S863")
~ THEN BEGIN 8 // from:
  SAY #64262 /* ~Похоже, этот скелет попал в какой-то серьезный переплет: либо он участвовал в битве, либо упал через несколько лестничных пролетов. Обе руки и ноги переломаны и собраны вновь с помощью кожаных ремней и тонких железных реек. На лбу высечен номер «863»... но сзади череп имеет открытую пустую полость. Ты замечаешь, что кто-то воспользовался этим и поместил внутрь черепа пергаментный свиток.~ */
  IF ~~ THEN REPLY #64263 /* ~Вытащить пергамент из черепа скелета.~ */ GOTO 9
  IF ~~ THEN REPLY #64264 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64265 /* ~Ты ловко вытягиваешь пергамент из черепа рабочего. Довольно странно, но пробоина в череп выглядит так, словно она *предназначена* для хранения сообщений: к пергаменту прикреплена тонкая нитка, которая привязана к черепу изнутри, предотвращая случайное выпадение пергамента.~ */
  IF ~~ THEN REPLY #64266 /* ~Разорвать нитку, взять пергамент.~ */ DO ~GiveItem("DRemind",Protagonist)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64267 /* ~Ты разрываешь нитку и окидываешь взглядом пергамент — похоже на напоминание от одного из смотрителей Морга. Судя по заметке, этот скелет является что-то вроде ходячего курьера. Еще раз взглянув на скелета, ты понимаешь, что он остановился перед плитой лишь потому, что не смог ее обойти.

^NПРИМЕЧАНИЕ: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #64268 /* ~Снова осмотреть скелет.~ */ GOTO 0
  IF ~~ THEN REPLY #64269 /* ~Оставить скелет в покое.~ */ EXIT
END
