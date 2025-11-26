// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~You see the dead body of a Dabus. The stench of its decay is overpowering and, from the looks of its rigid, unnatural posture, extreme rigor mortis has long since set in.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~Use your Stories-Bones-Tell on the corpse. ~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~Check the corpse, see if you can determine what killed it.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~Leave.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~Use your Stories-Bones-Tell on the corpse. ~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~Check the corpse, see if you can determine what killed it.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~As you touch the corpse, a sudden shock passes through your body, and there is a stirring in the air, like a wind has found its way into the building and is fighting to get free. You feel a strange, wrenching pain in your skull, as if someone is hammering on it, sharply, desperately.~ */
  IF ~~ THEN REPLY #61690 /* ~Try and focus...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~Shake off the effects, stand away from the corpse. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~As you reach out with your power, there is a faint stirring in the air, and the dabus' body blurs for a moment. You feel a strange, wrenching pain in your skull, as if someone is hammering on it, sharply, desperately. ~ */
  IF ~~ THEN REPLY #61693 /* ~Try and focus...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~Shake off the effects, stand away from the corpse. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~Your vision goes black for a moment, and the hammering pain fades, until it sounds like it is coming from outside your skull - the darkness clears, and you hear the hammering coming from outside the building. The entire building seems hazy somehow, confused, as if you are seeing it through a mist.~ */
  IF ~~ THEN REPLY #61696 /* ~Keep focusing on the vision...~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~Shake off the effects, stand away from the corpse. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~The hammering dies, and you suddenly see a spectral version of the dabus entering the building. As it does, the windows and the doors become like water, suddenly sealing over the entrance the dabus came through. The dabus turns, pauses, and then begins a slow circuit of the room, examining the walls and hammering on each one once, as if testing it.~ */
  IF ~~ THEN REPLY #61699 /* ~Keep focusing on the vision...~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~Shake off the effects, stand away from the corpse. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~The dabus completes its circuit of the room, then pauses by the "door" it once entered. It begins hammering, chipping away the stone, but with every blow, the wall repairs itself. The vision fades to black, and the hammering continues, first at a steady pace, then slower, then slower...~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~Keep focusing on the vision...~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~Keep focusing on the vision...~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~Shake off the effects, stand away from the corpse. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~Your vision clears as the hammering ends, and you are once again standing beside the corpse of the dabus... it looks as if it withered away here, trapped in the building. ~ */
  IF ~~ THEN REPLY #61706 /* ~Leave the corpse of the dabus.~ */ EXIT
END
