// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS863.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DS863~

IF ~  !HasItem("DRemind","S863")
~ THEN BEGIN 0 // from: 10.0
  SAY #35537 /* ~This skeleton looks like it has seen a great deal of action, either because of combat or by falling down one too many staircases; both its arms and legs have been broken and rebuilt with the aid of leather straps and thin iron rods. The front of its skull bears the number "863"... but the back of the skull has caved in, forming an empty cavity. ~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35538 /* ~"Sorry about taking that parchment, but I doubt you would have delivered it any time soon."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35561 /* ~"Sorry about taking that parchment, but I doubt you would have delivered it any time soon."~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35562 /* ~"I have to ask: Are those broken bones from combat or from falling down?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35563 /* ~"I have to ask: Are those broken bones from combat or from falling down?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35564 /* ~Use your Stories-Bones-Tell power on the skeleton.~ */ GOTO 2
  IF ~~ THEN REPLY #35569 /* ~Examine the skeleton carefully.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35602 /* ~Try and pry out the skeleton's joint bolts.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35603 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35604 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35605 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35606 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35607 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35608 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35609 /* ~"How about this skeleton, Morte? Will it do as a body?"~ */ EXTERN ~DMORTE~ 396
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35610 /* ~Leave the skeleton in peace.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35611 /* ~Leave the skeleton in peace.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35612 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35539 /* ~The skeleton makes no reply.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35540 /* ~"Great talking to you, Bones. Stay healthy."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35559 /* ~"Great talking to you, Bones. Stay healthy."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35560 /* ~"Great talking to you, Bones. Stay healthy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35565 /* ~This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35566 /* ~Leave the skeleton in peace.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35567 /* ~Leave the skeleton in peace.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35568 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35570 /* ~Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to metal bolts punched into the skeleton's joints. This skeleton looks like it has seen a great deal of service: many of its bones are chipped and its numerous fractures are bound with sealant and foul-smelling glues.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35571 /* ~Try and pry out the skeleton's joint bolts.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35593 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35594 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35595 /* ~Try and pry out the skeleton's joint bolts.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35596 /* ~"Mind if I borrow some of those straps and bolts?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35597 /* ~"Mind if I borrow some of those straps and bolts?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35598 /* ~"Mind if I borrow some of those straps and bolts?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35599 /* ~Leave the skeleton in peace.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35600 /* ~Leave the skeleton in peace.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35601 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35576 /* ~You pull at the iron bolts, but you're not strong enough to pull them out. They've been hammered in pretty tight.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35577 /* ~"Maybe if I had the right tool, I could get them out... hmmmm. I may be back, Bones."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35578 /* ~"Maybe if I had the right tool, I could get them out... hmmmm. I may be back, Bones."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35579 /* ~"Maybe if I had the right tool, I could get them out... hmmmm. I may be back, Bones."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35580 /* ~Leave the skeleton in peace.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35581 /* ~Leave the skeleton in peace.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35582 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35584 /* ~You pull at the iron bolts with all your strength, and after a few moments of tugging, you rip the bolts from the joints. The skeleton collapses, some of its bones still twitching.~ */
  IF ~~ THEN REPLY #35585 /* ~"Sorry about that, Bones..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35587 /* ~Using your prybar, you rip the bolts from the skeleton's joints. The skeleton collapses, some of its bones still twitching.~ */
  IF ~~ THEN REPLY #35588 /* ~"Sorry about that, Bones..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35613 /* ~This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END

IF ~  HasItem("DRemind","S863")
~ THEN BEGIN 8 // from:
  SAY #64262 /* ~This skeleton has either seen a great deal of combat or has fallen down one too many staircases; both its arms and legs have been broken and rebuilt with the aid of leather straps and thin iron rods. The front of its skull bears the number "863"... but the back of the skull has caved in, forming an empty cavity. You notice that someone has taken advantage of this and tucked a rolled up piece of parchment inside the skull.~ */
  IF ~~ THEN REPLY #64263 /* ~Take the parchment out of the skeleton's skull.~ */ GOTO 9
  IF ~~ THEN REPLY #64264 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64265 /* ~You slip the parchment out of the worker's skull - oddly enough, it looks as if the skull cavity is *intended* to store messages; a tiny string is attached to the parchment from a hook bolted inside the skull, as if to keep the parchment from accidentally falling out.~ */
  IF ~~ THEN REPLY #64266 /* ~Unhook the string, take the parchment.~ */ DO ~GiveItem("DRemind",Protagonist)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64267 /* ~You unhook the string and glance over the parchment - it looks like a reminder from one of the Mortuary custodians. Judging from the note, this skeleton seems to be a walking messenger of sorts. As you take a second glance at the skeleton, you realize it has stopped in front of the slab because it can't figure out how to move past it.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #64268 /* ~Examine the skeleton again.~ */ GOTO 0
  IF ~~ THEN REPLY #64269 /* ~Leave the skeleton in peace.~ */ EXIT
END
