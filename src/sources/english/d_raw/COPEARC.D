// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : COPEARC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~COPEARC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46723 /* ~This copper earring looks extremely old. It looks like it was meant to be worn, but there doesn't seem to be a hook or any means of actually attaching it to your ear. There is a series of strange grooves on the inside of the earring, however.~ */
  IF ~~ THEN REPLY #46724 /* ~Examine the grooves. ~ */ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46725 /* ~Insert your fingernail into the notch that matches where the triangle was pointing in the fanged circle you saw on zombie #79's forehead.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46726 /* ~Put the earring away. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46727 /* ~The grooves are evenly spaced along the inside of the earring - upon closer examination, they remind you of small fangs. They are definitely man-made, but you can't figure out what they were intended for. ~ */
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46728 /* ~Insert your fingernail into the notch that matches where the triangle was pointing in the fanged circle you saw on zombie #79's forehead.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46729 /* ~Put the earring away. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46730 /* ~You hook your fingernail into the third groove from the top and press it inwards. As you do, there is a *click* and the top of the earring snaps open. Not only can you wear the earring now, it also looks like there is a secret compartment inside the earring. ~ */
  IF ~~ THEN REPLY #46731 /* ~Shake the earring, see if anything comes out. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46732 /* ~You shake the earring, but nothing comes out. Whatever was hidden in the earring is gone now.

^NNOTE: Discovering the latch to the earring will now allow you to wear it. In addition, the secret compartment may make the earring more valuable to a merchant.^-~ */
  IF ~~ THEN REPLY #46733 /* ~Put the earring away. ~ */ DO ~TransformPartyItem("CopEarC","CopEarO",1,0,0)
~ EXIT
END
