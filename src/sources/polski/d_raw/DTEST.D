// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEST~

IF ~  True()
~ THEN BEGIN 0 // from: 1.3 2.0 3.0 4.0 5.0 8.4 9.3 11.3 18.1 20.0 20.1 21.0 22.0 22.1 22.2 22.3 24.0 25.0
  SAY #2632 /* ~.~ */
  IF ~~ THEN REPLY #41912 /* ~.~ */ DO ~SetNamelessClass(THIEF)
~ GOTO 13
  IF ~  False()
~ THEN REPLY #2633 /* ~.~ */ GOTO 1
  IF ~~ THEN REPLY #2634 /* ~.~ */ GOTO 2
  IF ~~ THEN REPLY #2635 /* ~.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2636 /* ~.~ */ GOTO 4
  IF ~~ THEN REPLY #2674 /* ~.~ */ GOTO 5
  IF ~~ THEN REPLY #2785 /* ~.~ */ GOTO 8
  IF ~~ THEN REPLY #46613 /* ~.~ */ DO ~PlaySound("JRGWav03")
DestroyItemObject("Embalm",Protagonist,FALSE)
DestroyPartyItem("NEEDLE",FALSE)
~ GOTO 18
  IF ~  False()
~ THEN REPLY #49175 /* ~.~ */ GOTO 21
  IF ~~ THEN REPLY #50013 /* ~.~ */ GOTO 22
  IF ~  NearbyDialog("DTESTB")
~ THEN REPLY #54300 /* ~.~ */ EXIT
  IF ~  !NearbyDialog("DTESTB")
~ THEN REPLY #54303 /* ~.~ */ DO ~TakePartyItemNum("Celestia",1)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Polymorph(Trias)
AddexperienceParty(10000)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~~ THEN REPLY #2702 /* ~.~ */ DO ~FloatMessage(Protagonist,9621)
SetGlobal("Morte_Dead","GLOBAL",1)
PlaySound("FFG139")
Recoil()
FloatMessage(Myself,9620)
SetGlobal("Morte_Dead","GLOBAL",0)
Wait(5)
AddexperienceParty(100000000)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 10.1
  SAY #2637 /* ~.~ */
  IF ~~ THEN REPLY #2638 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #2639 /* ~.~ */ GOTO 10
  IF ~~ THEN REPLY #2639 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24208 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #24209 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #2640 /* ~.~ */
  IF ~~ THEN REPLY #2641 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #2642 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 3.1 3.2 3.3
  SAY #2643 /* ~.~ */
  IF ~~ THEN REPLY #2644 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #2645 /* ~.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2646 /* ~.~ */ DO ~SetAnimState(Myself,ANIM_STANCEFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2647 /* ~.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANCEFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2712 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #2675 /* ~.~ */
  IF ~~ THEN REPLY #2676 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #2677 /* ~.~ */ DO ~RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2678 /* ~.~ */ DO ~Enemy()
RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2679 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY #2703 /* ~.~ */
  IF ~~ THEN REPLY #2704 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #2705 /* ~.~ */ GOTO 6
  IF ~~ THEN REPLY #2707 /* ~.~ */ EXTERN ~DMORTE~ 50
  IF ~~ THEN REPLY #2708 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #2706 /* ~.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2710 /* ~.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 51
END

IF ~~ THEN BEGIN 8 // from: 0.6
  SAY #2786 /* ~.~ */
  IF ~~ THEN REPLY #2787 /* ~.~ */ DO ~StartStore("Store1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #2790 /* ~.~ */ DO ~StartStore("Inn1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7032 /* ~.~ */ DO ~StartStore("Tavern1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7037 /* ~.~ */ DO ~StartStore("Temple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7038 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #7039 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 9.0 9.5 9.6 9.7 9.8 9.9 9.10 9.11 9.12 9.13 9.14 9.15 9.16 9.17 9.18 9.19 11.1
  SAY #24210 /* ~.~ */
  IF ~~ THEN REPLY #24211 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24212 /* ~.~ */ GOTO 10
  IF ~~ THEN REPLY #24213 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24214 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #24215 /* ~.~ */ EXIT
  IF ~~ THEN REPLY #24216 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24217 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24218 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24219 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24221 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24222 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24223 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24224 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24225 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24226 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24227 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24228 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24229 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24230 /* ~.~ */ GOTO 9
END

IF ~~ THEN BEGIN 10 // from: 1.1 9.1 10.0 11.2
  SAY #24231 /* ~.~ */
  IF ~~ THEN REPLY #24232 /* ~.~ */ GOTO 10
  IF ~~ THEN REPLY #24233 /* ~.~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 1.2 9.2 11.0 11.5 11.6 11.7 11.8 11.9 11.10 11.11 11.12 11.13 11.14 11.15 11.16 11.17 11.18 11.19
  SAY #24234 /* ~.~ */
  IF ~~ THEN REPLY #24235 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24236 /* ~.~ */ GOTO 9
  IF ~~ THEN REPLY #24237 /* ~.~ */ GOTO 10
  IF ~~ THEN REPLY #24238 /* ~.~ */ GOTO 0
  IF ~~ THEN REPLY #24239 /* ~.~ */ EXIT
  IF ~~ THEN REPLY #24240 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24241 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24242 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24243 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24244 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24245 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24246 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24247 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24248 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24249 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24250 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24251 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24252 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24253 /* ~.~ */ GOTO 11
  IF ~~ THEN REPLY #24254 /* ~.~ */ GOTO 11
END

IF ~~ THEN BEGIN 12 // from:
  SAY #39061 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY #42286 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.0
  SAY #42878 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #42880 /* ~.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #42885 /* ~.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #42886 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.7
  SAY #46614 /* ~Możemy zaczynać. Dziś będziemy testować MORTE_DEAD. Gotów, by kontynuować?~ */
  IF ~~ THEN REPLY #46616 /* ~.~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",0)
SetGlobal("MORTE_DEAD","GLOBAL",1)
SetGlobal("MORTE_DEAD","GLOBAL",0)
~ GOTO 19
  IF ~~ THEN REPLY #46617 /* ~.~ */ GOTO 0
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46618 /* ~.~ */
  IF ~~ THEN REPLY #46619 /* ~.~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46620 /* ~.~ */
  IF ~  Global("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46621 /* ~.~ */ GOTO 0
  IF ~  GlobalGT("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46622 /* ~.~ */ GOTO 0
END

IF ~~ THEN BEGIN 21 // from: 0.8
  SAY #49156 /* ~.~ */
  IF ~~ THEN REPLY #49180 /* ~.~ */ GOTO 0
END

IF ~~ THEN BEGIN 22 // from: 0.9
  SAY #50014 /* ~.~ */
  IF ~  Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50015 /* ~.~ */ DO ~GiveItemCreate("Eviscera",Protagonist,1,0,0)
~ GOTO 0
  IF ~  !Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50016 /* ~.~ */ GOTO 0
  IF ~  Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50017 /* ~.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("JRGVar01","GLOBAL",1)
~ GOTO 0
  IF ~  !Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50017 /* ~.~ */ DO ~SetGlobal("JRGVar01","GLOBAL",0)
~ GOTO 0
END

IF ~~ THEN BEGIN 23 // from:
  SAY #54301 /* ~.~ */
  IF ~~ THEN DO ~SetGlobal("JRGVar01","GLOBAL",1)
~ EXTERN ~DTESTB~ 1
END

IF ~  False()
~ THEN BEGIN 24 // from:
  SAY #54302 /* ~.~ */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 25 // from: 0.11
  SAY #54304 /* ~.~ */
  IF ~~ THEN GOTO 0
END
