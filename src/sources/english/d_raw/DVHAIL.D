// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Vhailor stands silent and unmoving; were it not for the flickering red lights of his eyes, he would seem but a statue.~ */
  IF ~~ THEN REPLY #2849 /* ~"I'll just come back later when this hulking suit of armor can actually say something, then."~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"Vhailor... yo, c'mon. Shake the dust outta those greaves and let's hustle. There's some injustices to correct."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Vhailor stands silent and unmoving; were it not for the flickering red lights of his eyes, he would seem but a statue.~ */
  IF ~~ THEN REPLY #17003 /* ~"...Vhailor? Did you hear me?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~Vhailor's voice finally echoes forth from his empty helm: *The state of the tree is irrelevant to me. Its death is neither just nor unjust - it simply is.*~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"All right. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"All right. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"All right. Thanks. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"All right. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"All right. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"All right. Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"All right. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"All right. I had some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"Very well, Vhailor. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~As you make a grab for Iannis' throat, there is the rattle of plate armor and Vhailor steps forward, his axe raised to strike. *INJUSTICE.*~ */
  IF ~~ THEN REPLY #30530 /* ~"Dammit...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Vhailor stirs as you confess, and he raises his axe. He does not attack, however, merely *waits.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Vhailor stirs to life as Iannis shouts for the guards. He advances on you, his axe raised. *INJUSTICE.*~ */
  IF ~~ THEN REPLY #30533 /* ~"Dammit...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Vhailor stirs as you confess, and he raises his axe. He does not attack, however, merely *waits.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Vhailor stirs as you confess, and he raises his axe. He does not attack, however, merely *waits.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Vhailor stands silent and unmoving; were it not for the flickering red lights of his eyes, he would seem but a statue.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"Vhailor, I need your aid. Will you travel with me?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"Vhailor, I need your aid. Will you travel with me?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Leave Vhailor in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*I WILL.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"Let's go, then."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Vhailor stands silent and unmoving; were it not for the flickering red lights of his eyes, he would seem but a statue.~ */
  IF ~~ THEN REPLY #34005 /* ~"I wanted to ask you some questions, Vhailor..."~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Leave Vhailor in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*YOU. It is YOU. How LONG have I hunted you, Nameless One? And how long would I stand BESIDE you before the DECEPTION was exposed?* As he hefts his axe into the air, pure *power* begins to course through him... his dedication, his incredible conviction is turning Vhailor into the literal, physical embodiment of justice. *It is FATE that has placed me so close to you, CRIMINAL. JUSTICE shall be served. You shall FALL beneath my blade, immortal, even if I have to stand over your struggling remains for ETERNITY.*~ */
  IF ~~ THEN REPLY #54089 /* ~Defend yourself.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Try and run.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*There is no JUSTICE in your actions, deva. This time you shall NOT imprison me with FALSE words. This time you shall be SENTENCED.* Vhailor advances on Trias, his axe drawn.~ */
  IF ~~ THEN REPLY #54776 /* ~"Vhailor, stop!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Attack Trias.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Justice has LONG sought you, deva. With this CRIME, you shall be SENTENCED.* Vhailor advances on Trias, his axe drawn.~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, stop!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Attack Trias.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*The deva shall NOT walk free. No matter your vow, JUSTICE must be SERVED.*~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, stop!"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Watch.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Attack the deva, despite your vow.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Attack the deva.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~Vhailor answers only with silence; as you turn to look at him, you see his eyes burning into you. They flicker for a moment, as if in thought, then you are suddenly struck by a terrible feeling he's searching your features... as if looking for something... some weakness.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"Uh... Ignus?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"Uh... Fall-from-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"Uh... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"Uh... Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"Uh... Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"Uh... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"Uh... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Before you is a towering, empty suit of armor - but the plates are suspended in space, as if secured over an invisible frame. Red veins run across the length of the metal greaves, and a huge, double-edged executioner's axe rests in its hand. Engravings decorate the surface of the armor, the most prominent of which is a crimson serpent with its wings outspread. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Examine the armor. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Examine the axe.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Examine the helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Leave the suit of armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~The armor is archaic, and the shoulder blades are just that - a great ridge of blades sprouting from the shoulder plates. You almost would have taken the ridged blades as decoration, but they look too heavy and dangerous to be anything more than an additional weapon on an already menacing suit of armor. The armor bears dents and other marks of battle, and its surface has been scarred by age and rust. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Examine the axe.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Examine the helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Take the armor.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Leave the suit of armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~This double-bladed battle-axe is reminiscent of an executioner's axe; the axe head has been forged into the likeness of a blood-red serpent with its wings outspread, the outstretched wings curling to become the edges of the axe. The axe itself is *huge;* even wielded two-handed, it would require tremendous strength to use effectively. Yet it rests in the disembodied gauntlet of the armor, almost casually. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Examine the armor. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Examine the helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Take the axe.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Leave the suit of armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~The helm resembles the skull of some creature; curved metal teeth line the bottom edge of the faceplate, hanging down over empty space. The helm rests in the air, its interior hidden in shadow.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Examine the armor. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Examine the axe.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Take the helm.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Leave the suit of armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~You don't know where the name came from, but you know it *belongs* to the armor. You barely whisper it, but it echoes strangely in the chamber. The air stirs, just enough to send a crawling sensation swimming through your skull and a knot to tighten in your heart. ~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Try and recall the memory, bring it to the surface.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Let the memory resurface...~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Examine the armor. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Examine the axe.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Examine the helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Leave the armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~As you stare upon the suit of armor, the shadows beneath the visor take shape... coalescing into the features of a powerful, ebony-skinned man. His eyes are like fires, and he bears numerous scars... was this 'Vhailor,' when he wore flesh? He seems hauntingly familiar... both as a suit of armor AND as a flesh and blood human.~ */
  IF ~~ THEN REPLY #56087 /* ~"Vhailor... awaken."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Examine the armor. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Examine the axe.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Examine the helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Leave the armor alone.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~There is a flare of brilliant red light from beneath the helm, lancing out to almost blinding; you shield your eyes from the glare - when you uncover them, you see two embers burning within the shadows of the helm. ~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~As you reach out, there is a sudden flare of brilliant red light from beneath the helm, lancing out to almost blinding; you shield your eyes from the glare - when you uncover them, you are confronted with two embers burning within the shadows of the helm. ~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*I have AWAKENED.* ~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~The voice is spectral, hollow, and echoes within the suit of armor. It is not a human voice... it feels more like a *force,* a presence. It doesn't sound like anything *alive*... or like anything that ever lived. ~ */
  IF ~~ THEN REPLY #56096 /* ~"Who are you?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~I encountered a spectral suit of armor in the bottom of the Curst prison... it looks like it's been there for some time. Its name is "Vhailor," and it says it's a Mercykiller, a servitor of justice. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*I am VHAILOR.* ~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~"*What* are you?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~"*What* are you?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~"*What* are you?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~"*What* are you?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*I am a MERCYKILLER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*I am a MERCYKILLER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*I am a MERCYKILLER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*I am a MERCYKILLER.* ~ */
  IF ~~ THEN REPLY #56107 /* ~"Mercykiller?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~As Vhailor pronounces the word 'Mercykiller,' Annah and Morte stiffen.~ */
  IF ~~ THEN REPLY #56109 /* ~"Mercykiller?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~As Vhailor pronounces the word 'Mercykiller,' Annah stiffens and gives a soft, warning hiss.~ */
  IF ~~ THEN REPLY #56111 /* ~"Mercykiller?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~As Vhailor pronounces the word 'Mercykiller,' Morte freezes beside you. ~ */
  IF ~~ THEN REPLY #56113 /* ~"Mercykiller?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Mercykillers serve JUSTICE. Justice PURGES evil. When ALL have been cleansed, the multiverse achieves PERFECTION.*~ */
  IF ~~ THEN REPLY #56115 /* ~"Why are you called 'Mercykillers'?"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"How do you serve justice?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"I had some questions for you, Vhailor..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"I... see, Vhailor. Here is where we must part ways."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*ASK. I shall ANSWER.*~ */
  IF ~~ THEN REPLY #56121 /* ~"What are Mercykillers?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"You say you serve justice, Vhailor. How?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"How long were you imprisoned?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"How long were you imprisoned beneath Curst?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"How did you die?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"You say you can see the hearts of others, Vhailor. How?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"Can you teach me how to use an axe, Vhailor?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Lie: "I seek justice, too, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Lie: "I seek justice, too, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Truth: "I seek justice, too, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Truth: "I seek justice, too, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"Will you travel with me, Vhailor? We could use your help."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"Never mind, Vhailor. Here is where we must part ways."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*Mercy is a shield used by the WEAK. Mercy is WEAKNESS. Mercy is DEATH. NO ONE is innocent. Mercykillers slay mercy and its WHORES wherever their plague has carried them.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Truth: "I see I have found one who believes as *I* do. Mercy subverts justice. Mercy *is* weakness."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Lie: "I see I have found one who believes as *I* do. Mercy subverts justice. Mercy *is* weakness."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Truth: "I disagree. Mercy is strength - and there are times when even justice can be unjust, especially when carried to the extreme."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"I see. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Punishment BREAKS souls. It makes them worthy of service to JUSTICE.*~ */
  IF ~~ THEN REPLY #56143 /* ~"I see. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*MERCY eats at the heart of JUSTICE. NO ONE that lives is INNOCENT.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"What *defines* justice, Vhailor? What IS it, really?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"By your own words, you are not innocent, either. Should *you* be punished?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*JUSTICE is defined by LAW.*~ */
  IF ~~ THEN REPLY #56153 /* ~"And what is law, Vhailor?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*LAW is the tool by which JUSTICE is served.*~ */
  IF ~~ THEN REPLY #56158 /* ~"And what makes the laws, Vhailor?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*LAW is defined by JUSTICE.*~ */
  IF ~~ THEN REPLY #56163 /* ~"That's a circular argument, Vhailor - it's meaningless. You say justice is defined by law, which is defined by justice."~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*LAW -IS- defined by JUSTICE.*~ */
  IF ~~ THEN REPLY #56168 /* ~"Living men and women make laws, Vhailor - are the laws they make 'just'?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*LAWS are JUST.*~ */
  IF ~~ THEN REPLY #56173 /* ~"But if these laws are made by living men and women - who, as *you've* said, are NOT innocent, then haven't the laws been tainted by their hands?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*NOTHING that lives is INNOCENT. Yet LAW rises ABOVE the flesh and blood. FROM IMPERFECTION PERFECTION MAY BE MADE. UNJUST LAWS may be REFINED. BLED OF THEIR EVIL.*~ */
  IF ~~ THEN REPLY #56178 /* ~"Then you admit laws are not always perfect - but if these same laws define justice, then isn't *justice* imperfect as well?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Vhailor is silent. ~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"Vhailor - there is NO justice. All you do in the name of justice is meaningless - your LIFE is meaningless."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~I convinced Vhailor that his quest for justice was meaningless, since he believed justice and laws were so intertwined, that if one were imperfect, the other was imperfect as well. If he had been smarter, he may have been able to argue more effectively, but whatever passions or obsessions changed him into the restless spirit he was, impaired his ability to see beyond his own narrow arguments. When my words finally struck him, his doubt and his hesitation killed him, making him 'give up the ghost.'~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"Vhailor - there is NO justice. All you do in the name of justice is meaningless - your LIFE is meaningless."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"Never mind, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"I will not argue this with you any longer, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Your words seem to echo, gathering power as you speak them. As you do, the embers in Vhailor's eyes flicker - and then gutter out. His armor collapses, the axe and the metal plates clattering to the ground with a *crash.* As they strike the ground, however, they raise clouds of dust - ash and rust particles rising from the metal as the plates and axe age, decay, and disintegrate right before your eyes. All that remains are a few pitted metal plates as gravestones that Vhailor ever existed.~ */
  IF ~~ THEN REPLY #56190 /* ~"Farewell, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~The embers in Vhailor's eyes flicker - and then FLARE. *Your WORDS are NOTHING to me. You seek to SWAY me from the PATH OF JUSTICE.* He raises his axe menacingly. *I shall see you PUNISHED.*~ */
  IF ~~ THEN REPLY #56192 /* ~"Vhailor, wait! Don't do this!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"Very well, Vhailor. If it's a fight you want..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*I SERVE JUSTICE. IF I WERE TO FAIL IN MY SERVICE, I WOULD BE PUNISHED.*~ */
  IF ~~ THEN REPLY #56195 /* ~"So if you had ever let a criminal escape punishment, then you yourself would be punished?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*YES.*~ */
  IF ~~ THEN REPLY #56200 /* ~"Well, while you were imprisoned beneath Curst, thousands... hundreds of thousands... maybe millions of criminals across the planes were born, lived their lives, and died. You *never* had a chance to punish them. Can you really deliver justice to every creature in the multiverse?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Then I shall seek them BEYOND death and punish them.*~ */
  IF ~~ THEN REPLY #56205 /* ~"If you do that, then you will no longer be able to punish the living. Which is it, Vhailor?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*Then I shall continue my quest for JUSTICE upon the plane of the LIVING.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"But there's many more criminals that lie dead than alive... and all that lives dies, does it not? If you die, then you shall have access to them all."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"But there's many more criminals that lie dead than alive... and all that lives dies, does it not? If you die, then you shall have access to them all."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Your words are HOLLOW. They lack CONVICTION. They smell of LIES and DECEPTION. I shall hear you no more.*~ */
  IF ~~ THEN REPLY #56218 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"Then here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Vhailor stands silently, his ember eyes glaring beneath his helm.~ */
  IF ~~ THEN REPLY #56222 /* ~"Seek them beyond death, Vhailor - perhaps one day I shall see you there."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"Forget my words, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Your words seem to echo, gathering power as you speak them. As you do, the embers in Vhailor's eyes flicker - and then gutter out. His armor collapses, the axe and the metal plates clattering to the ground with a *crash.* As they strike the ground, however, they raise clouds of dust - ash and rust particles rising from the metal as the plates and axe age, decay, and disintegrate right before your eyes. All that remains are a few pitted metal plates as gravestones that Vhailor ever existed.~ */
  IF ~~ THEN REPLY #56227 /* ~"Rest now, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~I convinced Vhailor that in order to punish all who had committed crimes, he would need to die so that he could punish them all - my words had a powerful impact - so powerful that he literally died a second death in front of me, his armor and axe disintegrating as he 'gave up the ghost.'~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Time FLED as I lay imprisoned. Time bears no MEANING. Only JUSTICE.*~ */
  IF ~~ THEN REPLY #56230 /* ~"Do you know *why* you came to Curst?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Much is lost of my journey. I traveled in search of BETRAYERS. They found me and imprisoned me. An act of TREACHERY.*~ */
  IF ~~ THEN REPLY #56235 /* ~"What betrayers?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Curst is a CITY of BETRAYERS. It is a city that defies JUSTICE. I came to CLEANSE it.*~ */
  IF ~~ THEN REPLY #56240 /* ~"How were you imprisoned?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Vhailor is silent for a moment. The embers in his eyes flicker. ~ */
  IF ~~ THEN REPLY #56245 /* ~"Vhailor? Do you recall how they imprisoned you?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"Forget my words, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*I do not KNOW.*~ */
  IF ~~ THEN REPLY #56250 /* ~"Very well. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"Then here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"Never mind then, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*There is nothing I can teach you. It is not the HAND that wields a weapon. It is the WILL.*~ */
  IF ~~ THEN REPLY #56254 /* ~"What do you mean?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*When the WILL is strong, the BLADE is strong. When the cause is JUST, the blade strikes TRUE. When MERCY eats at the heart, DOUBT, HESITATION, COMPASSION follow. The blade becomes as DUST.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"My will is strong, Vhailor. My conviction lends my blade strength."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"My will is strong, Vhailor. My conviction lends my blade strength."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~Vhailor's ember eyes fall upon you. There is a heavy silence.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Your WILL is strong. Your DISCIPLINE is strong. Your WILL is the will of LAW.*~ */
  IF ~~ THEN REPLY #56264 /* ~"Then how do -?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*KNOW THIS: There is nothing on ALL the PLANES that can STAY the hand of JUSTICE when it is brought against them. It may unmake ARMIES. It may sunder the thrones of GODS. When your cause is JUSTICE, JUSTICE will lend you its STRENGTH.*~ */
  IF ~~ THEN REPLY #56266 /* ~"I see."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*You do NOT see. NOT yet. Open your eyes to me, and you shall SEE the PLANES through the eyes of JUSTICE.*~ */
  IF ~~ THEN REPLY #56268 /* ~"Very well... show me what you see."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"No, Vhailor... I do not wish to see. I had other questions for you instead..."~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"I don't think I'm ready for what you want to show me, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~You gaze at Vhailor's eyes, the twin fires suddenly FLARE...~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"Wh..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"Wh..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"Wh..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~The flare blinds you for a moment, and when you open your eyes, everything seems to carry an EDGE to it, as if it has gained an extra angle; you feel sharper somehow, as if you could somehow CLEAVE every object you see just by looking at it. ~ */
  IF ~~ THEN REPLY #56276 /* ~"Vhailor... is this...?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*SEE all things. SEE their strength. SEE their WEAKNESS. JUDGE all things. If MERCY has eaten their hearts, they will FALL beneath JUSTICE. Your WILL gives you the RIGHT. Your DISCIPLINE gives you the RIGHT.*~ */
  IF ~~ THEN REPLY #56278 /* ~"Very well... I... had something else I wished to ask you."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"I... see now. Let's... continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Your WILL is strong. But you lack DISCIPLINE. Your WILL is YOUR will, not the will of LAW. There is nothing I may show you that you would SEE or UNDERSTAND.*~ */
  IF ~~ THEN REPLY #56281 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"Never mind, then. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~Vhailor's ember eyes fall upon you. There is a heavy silence.~ */
  IF ~~ THEN REPLY #56284 /* ~"Vhailor? How did you die?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"Forget it, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*I LIVE.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"Well, in a manner of speaking - but what happened to your physical body?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"Well, in a manner of speaking - but what happened to your physical body?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~As you are about to speak, there is a strange crawling sensation through the back of your skull - and you suddenly *know* that Vhailor doesn't realize he's dead. For some reason, you feel that this revelation could prove extremely dangerous.~ */
  IF ~~ THEN REPLY #56295 /* ~"Vhailor? What happened to your physical body?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"Forget it, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*I LIVE. While those CONDEMNED still require PUNISHMENT, I LIVE.*~ */
  IF ~~ THEN REPLY #56300 /* ~"Vhailor, you're not *really* alive... you've become a spirit, a specter - a ghost."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"Do you FEEL alive, Vhailor? Remove your gauntlet, see if your eyes see skin. Touch your axe to your arm - does it draw blood? And your eyes - they burn like fire, but can they shed tears? Your spirit remains, Vhailor, but you no longer *live.*"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~There is a heavy, dangerous silence; Vhailor does not respond.~ */
  IF ~~ THEN REPLY #56306 /* ~"Forget it, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~For a moment... just a moment, Vhailor's eyes flicker. ~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"Do you even RECALL what you once looked like past the armor, Vhailor? You were once a man of flesh and blood, once alive, and once a seeker of justice. But now that man is dead. And only the tormented shell remains."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"Do you even RECALL what you once looked like past the armor, Vhailor? I do. You were once a man of flesh and blood, dark of skin, eyes like fires... numerous scars you bore on your flesh, and many were the justices that were committed in your name. But now that man is dead. And only the tormented shell remains."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"Forget my words, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*I... remember.* Vhailor's eyes flicker, more erratic than before. His axe falls to his side. *The memory is... DIFFICULT to remember. There was a DEATH... and I have CHANGED. I am not that ONE any longer. What AM I?*~ */
  IF ~~ THEN REPLY #56316 /* ~"I don't know, Vhailor. The man that was Vhailor is dead... you are something else, now."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"Forget my words, Vhailor... I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*JUSTICE was my cause. The FLESH... the FLESH could not remain. Yet JUSTICE needed to be SERVED. There was the DEATH of flesh, but the WILL would not let go... there were MORE to be punished. ALWAYS more. JUSTICE... JUSTICE would not have been served by my DEATH.*~ */
  IF ~~ THEN REPLY #56321 /* ~"But you DID die, Vhailor, long ago. And now it's time to let go."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~I convinced Vhailor that he no longer lived. My words had a powerful impact - so powerful that he literally died a second death in front of me, his armor and axe disintegrating as he 'gave up the ghost.' ~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"Then you are only LYING to yourself by thinking you live. You're DEAD, Vhailor. What JUSTICE is served when the servant of justice lies to itself?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~I convinced Vhailor that he was not alive, that he needed to let go and give up his crusade for justice. My words had a powerful impact - so powerful that he literally died a second death in front of me, his armor and axe disintegrating as he 'gave up the ghost.'~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~Vhailor's ember eyes fall upon you. There is a heavy silence.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*I will JOIN you. We shall seek JUSTICE together. Where MERCY hides, we shall SLAY it.*~ */
  IF ~~ THEN REPLY #56329 /* ~"Very well."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~Vhailor's ember eyes fall upon you. There is a heavy silence.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*I will JOIN you. Your WILL is an INCONSTANT thing, but I shall TEACH you of JUSTICE. I shall TEACH you of the SLAYING of MERCY.*~ */
  IF ~~ THEN REPLY #56332 /* ~"Very well."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Does your heart seek JUSTICE? Or is your JOURNEY without PURPOSE?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Truth: "I seek justice, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Truth: "I seek justice, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Lie: "I seek justice, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Lie: "I seek justice, Vhailor. Will you join me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"I seek knowledge of myself, Vhailor, and if there is justice in the knowing of it, then I shall find that as well."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"I seek knowledge of myself, Vhailor, and if there is justice in the knowing of it, then I shall find that as well."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*JUSTICE uses Mercykillers as her EYES. JUSTICE uses Mercykillers to dispense her WILL. When SENTENCE is passed, she LENDS us her STRENGTH.*~ */
  IF ~~ THEN REPLY #56347 /* ~"And how do you know *when* to dispense justice?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"Strength? How?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*The STRENGTH of JUSTICE depends on the harm the INJUSTICE has caused.*~ */
  IF ~~ THEN REPLY #56342 /* ~"So... the greater the injustice - the greater the crime - the more strength 'justice' lends you?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"And how do you know *when* to dispense justice?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*When the INJUSTICE is great enough, JUSTICE will lend me the STRENGTH needed to CORRECT it. NONE may stand against it. It will SHATTER every barrier, SUNDER any shield, TEAR through any ENCHANTMENT, and lend its servant the POWER to PASS SENTENCE.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Vhailor is more than just a restless spirit - he seems to be an embodiment of justice. He told me that justice grants him strength needed to correct injustices - the greater the injustice, the more strength he gains to correct it. Vhailor claims that justice may grant him the strength to unmake armies... even defeat Gods upon their thrones. For some reason, his words kindled a faint memory in me - I know I've heard the words before, and as impossible as they sound, I know them to be true.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~As Vhailor intones the words, a crawling sensation passes through your body - so strong it makes you shiver. You've *heard* these words before, and you know them to be *true.*~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*KNOW THIS: There is nothing on ALL the PLANES that can STAY the hand of JUSTICE when it is brought against them. It may unmake ARMIES. It may sunder the thrones of GODS. Know that for all who BETRAY justice, I am their FATE. And fate carries an EXECUTIONER'S AXE.*~ */
  IF ~~ THEN REPLY #56356 /* ~"I see."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*NO, you do NOT see.* Vhailor's eyes burn like two torches in the shadows of his helm. *PRAY you never WILL.*~ */
  IF ~~ THEN REPLY #56358 /* ~"And how do you know *when* to dispense justice?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*JUSTICE sees through my eyes. The EYES of a MERCYKILLER can see the CRACKS of WEAKNESS, the FRAILTIES, the wounds of MERCY upon the HEART. In SEEING, I KNOW the guilty. I KNOW their FEAR.*~ */
  IF ~~ THEN REPLY #56363 /* ~"What do you see when you look at another?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"When you said justice lends you its 'strength,' what did you mean?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*All I see is JUDGED. I may look at the heart and mind of another and KNOW them. The eye of JUSTICE sees through ME.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"What do you see when you look at Morte?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"What do you see when you look at Annah?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"What do you see when you look at Dak'kon?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"What do you see when you look at Fall-from-Grace?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"What do you see when you look at Fall-from-Grace?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"What do you see when you look at Nordom?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"What do you see when you look at Ignus?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"What do you see when you look at yourself?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"What do you see when you look at yourself?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"What do you see when you look at me?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*ASK.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"What do you see when you look at Morte?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"What do you see when you look at Annah?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"What do you see when you look at Dak'kon?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"What do you see when you look at Fall-from-Grace?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"What do you see when you look at Fall-from-Grace?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"What do you see when you look at Nordom?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"What do you see when you look at Ignus?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"What do you see when you look at yourself?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"What do you see when you look at yourself?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"What do you see when you look at me?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*The skull knows MUCH. Yet it knows NOTHING of justice. Many with hearts like the skull's now lie within PRISONS and GRAVES.*~ */
  IF ~~ THEN REPLY #56397 /* ~"Let me ask you about someone else..."~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*The tiefling is TAINTED by the Lower Planes. Her blood leaves no ROOM for loyalty to JUSTICE. She understands JUSTICE, but she IGNORES it.* Vhailor's eyes flare to torches. *She will not IGNORE ME.*~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"Let me ask you about someone else..."~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Vhailor's eyes flare. *Tiefling, ANSWER me: Have you ever committed an INJUSTICE?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*JUSTICE gives me the RIGHT.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Mercykillers ARE justice. Our actions are ABOVE question, TIEFLING.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*For the LAST time, tiefling, have you ever committed an injustice? REFUSAL to answer is an admission of GUILT.*~ */
  IF ~~ THEN REPLY #56411 /* ~"Vhailor, stop this. Now. I won't have you questioning her."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Wait and see what Annah says.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Wait and see what Annah says.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*You have REFUSED to answer to JUSTICE. I will PUNISH you.*~ */
  IF ~~ THEN REPLY #56415 /* ~"No, Vhailor, you won't. You have no right."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Wait, see what happens.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*JUSTICE gives me the RIGHT. Guilt CLOAKS her like a second skin.*~ */
  IF ~~ THEN REPLY #56419 /* ~"I told you to stop, Vhailor, and I meant it."~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*She has committed INJUSTICES. I will PUNISH her.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*All that stand in the PATH of JUSTICE shall be SENTENCED. You have EARNED your fate, SUCCUBUS.* ~ */
  IF ~~ THEN REPLY #56424 /* ~"No, Vhailor, you won't. You have no right."~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Wait and see what happens.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*So the whore that is MERCY shows itself. WEAKNESS has poisoned your heart.*~ */
  IF ~~ THEN REPLY #56427 /* ~"It is not mercy. It is my *order.* Do you want to test my weakness, Vhailor?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"Mercy is not weakness, Vhailor. You will leave her be, or you will answer to me."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"Has it? Then judge me, Vhailor - if you find me wanting, then pass sentence on *me.*"~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*All that stand in the PATH of JUSTICE shall be SENTENCED.* Vhailor's eyes flare, and he raises his axe. *You have EARNED your fate.* ~ */
  IF ~~ THEN REPLY #56431 /* ~"Prepare to die a second death, Vhailor..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*This githzerai's heart lacks the PREJUDICE that poisons his KIND. Yet he exists in CONFLICT with himself, for his WORD is his WILL and his LAW. Where the githzerai thrive in chaos, this one suffers.*~ */
  IF ~~ THEN REPLY #56433 /* ~"Prejudices? What do you mean?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*The githzerai race burns with PREJUDICE. There is no place for PREJUDICE in JUSTICE'S eyes.*~ */
  IF ~~ THEN REPLY #56439 /* ~"What prejudices?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*By its nature, prejudice TAINTS justice. Githzerai are prejudiced against the githyanki, their racial cousins, and the illithids, who were the OWNERS of the gith peoples. Hatred for BOTH the githyanki and illithids burns in the githzerai heart.*~ */
  IF ~~ THEN REPLY #56445 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"Prejudice taints justice, eh? What about what you said about Annah?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"Prejudice taints justice, eh? What about what you said about Fall-from-Grace?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"Prejudice taints justice, eh? What about what you said about Annah and Fall-from-Grace?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*My words did NOT stem from prejudice. They stem from OBSERVATION and REMEMBRANCE.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"Well, I think your 'observations' speak of prejudice, Vhailor - you're quick to lump all fiends together. Maybe you should examine your observations."~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*My OBSERVATIONS are done through JUSTICE'S EYE. I OBSERVE, then I ACT. You would do well to REMEMBER this, if all else is forgotten to you.*~ */
  IF ~~ THEN REPLY #56473 /* ~"Let me ask you about someone else..."~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*TANAR'RI are BORN from chaos. They care NOTHING for JUSTICE. The SUCCUBUS knows of JUSTICE, but she has TURNED from it. MERCY has POISONED her heart.*~ */
  IF ~~ THEN REPLY #56505 /* ~"Let me ask you about someone el -"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"All right then, Vhailor. I had some other ques-"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"Never mind, Vhailor. Let's -"~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Vhailor's eyes flare. *MERCY eats at the HEART of JUSTICE. MERCY devours all that is PERFECTION. COMPASSION and FORGIVENESS are MERCY'S POISONS.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*You are WEAK, SUCCUBUS. You are as WEAK as all your KIND. Where your KIND seduces with the FLESH, MERCY has SEDUCED you. You are MERCY'S WHORE. You are NOTHING.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Vhailor's eyes flare as he stares at Fall-from-Grace, the two embers burning like torches. Fall-from-Grace meets his gaze steadily, her eyes crystal and determined.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*The ROOTS of WEAKNESS are there. You BELIEVE yourself STRONG, but MERCY will feed upon the roots. It will DEVOUR your WILL." Vhailor pauses for a moment, and his next words fall like a hammer. *Yet... OTHER weaknesses do you HOLD in your HEART, SUCCUBUS. That is what MY eyes see. You CARE. In CARING, you have become WEAK.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*TANAR'RI are BORN from chaos. They care NOTHING for JUSTICE. The SUCCUBUS knows of JUSTICE, but she has TURNED from it. MERCY has laid its ROOTS in her heart. She CARES. In CARING, she has become WEAK."~ */
  IF ~~ THEN REPLY #56513 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*I see JUSTICE'S mark upon the sorcerer.*~ */
  IF ~~ THEN REPLY #56518 /* ~"Are you saying that Ignus has been judged?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*The flames that BURN around him tell of justice. The sorcerer is PUNISHED. He no longer LIVES but has become PART of the PLANES. His body is a CONDUIT. There is no HEART. He has been SENTENCED.*~ */
  IF ~~ THEN REPLY #56524 /* ~"Do you know why Ignus didn't die? Shouldn't those flames have killed him?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*He no longer LIVES. He only EXISTS. It is not the SAME.*~ */
  IF ~~ THEN REPLY #56530 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*The MODRON is of no consequence. It can DEFINE justice, but it does not UNDERSTAND it. It is not satisfactory. But it is ENOUGH.*~ */
  IF ~~ THEN REPLY #56535 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*I am VHAILOR. I am a MERCYKILLER. My ACTIONS speak my heart.*~ */
  IF ~~ THEN REPLY #56540 /* ~"That's not what I asked."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~There is a heavy silence... but Vhailor does not break it. His ember eyes match your gaze without a flicker.~ */
  IF ~~ THEN REPLY #56546 /* ~"I asked what do you see when you look at yourself. What do you see when you judge yourself, Vhailor?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"Forget it, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*I do not JUDGE myself. I am a MERCYKILLER. My ACTIONS speak my HEART. My WILL is JUSTICE'S WILL.*~ */
  IF ~~ THEN REPLY #56552 /* ~"So you're beyond justice?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*I SERVE justice. I am never BEYOND justice. NOTHING is beyond JUSTICE.*~ */
  IF ~~ THEN REPLY #56558 /* ~"Then take a look at yourself, Vhailor. What do the eyes of justice see when it looks at its servant?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"Let me ask you about someone else."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~The embers in Vhailor's eyes suddenly go black, and there is a terrible SILENCE in the air.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Just when you are beginning to wonder if Vhailor's eyes will re-light, there is a FLARE, and you are forced to shield your eyes.~ */
  IF ~~ THEN REPLY #56565 /* ~"Vhailor..."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*I am VHAILOR. I am a MERCYKILLER. My ACTIONS speak my HEART. I am JUSTICE'S SERVANT.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"But... Vhailor, what did you SEE when..."~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"But... Vhailor, what did you SEE when..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"Very well. I wanted to ask you about someone else..."~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Before you can speak, you feel a strange crawling sensation worming through the back of your skull, and the words pause at the edge of your tongue... you know that if you press the issue, you will be awakening something in Vhailor. Something dangerous.~ */
  IF ~~ THEN REPLY #56574 /* ~"But... Vhailor, what did you SEE when you looked inward?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"Never mind, Vhailor. I wanted to ask you about someone else..."~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"All right then, Vhailor. I had other questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*I AM NOT FOUND WANTING. WHERE MERCY LIVES, I SHALL KILL IT. WHERE COMPASSION POISONS THE HEART, I SHALL BLEED IT FROM ITS VICTIM. WHERE LIARS AND BETRAYERS OF TRUTH FOSTER LIES, I SHALL ANSWER THEIR LIES WITH JUSTICE'S BLADE.*~ */
  IF ~~ THEN REPLY #56580 /* ~"But what I *asked* was..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*WHO ARE YOU TO QUESTION A SERVANT OF JUSTICE? YOU ARE NOTHING. YOU ARE A SHELL. I WILL NOW SEARCH YOUR HEART. WE SHALL SEE IF YOU ARE FOUND WANTING.*~ */
  IF ~~ THEN REPLY #56582 /* ~"But..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~As Vhailor's burning red eyes fall upon you, you feel them tearing at your skin, blistering it, then peeling it back - but there is no pain, just a wash of dizziness and a sense of *drowning.* As his eyes burn into you, you feel a memory stir...~ */
  IF ~~ THEN REPLY #56584 /* ~Succumb to the memory.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~The burning red eyes grow brighter, to almost blinding, then you are FACING Vhailor, but where there was hollow space before there is *flesh* - a scarred, ebony-skinned man glares from beneath the helmet, his eyes like fires as he regards you. The armor is gleaming, and his face is locked in fury. He has *come* for you.~ */
  IF ~~ THEN REPLY #56587 /* ~Echo: "You have found me, Vhailor. You have traveled a long way... I imagine it was not easy finding me."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"Justice led me to you. Where you walk, you leave a trail of SUFFERING." The man's voice rumbles, but there is no echo, none of Vhailor's spectral voice, just anger and fury and flesh and blood... he is dangerous, but this is no spectral force, only a man, and you have defeated many such men. "I will see you brought before the Sigilian courts and punished. If you deny it, then SAY it, and I shall judge you."~ */
  IF ~~ THEN REPLY #56590 /* ~Echo: "I deny it. Judge me... then I shall judge you."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"Judge ME?" Vhailor's eyes *burn* and he grips his axe tightly, the muscle cords in his neck and arm tightening as he begins to swing it, slowly, menacingly. "You have no RIGHT to judge me."~ */
  IF ~~ THEN REPLY #56593 /* ~Echo: "Yes, I have, Vhailor, for I know your heart - and my power gives me the right to judge you. But I shall not judge you now: You must rest within this cage until the day I can set you free to walk the planes once more."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~As your incarnation says the word 'cage,' Vhailor's gaze suddenly turns from you to the surrounding walls - it is the walls of the Curst prison cell where you found him - many years in the past. *Many* years, enough for a man to die many deaths. Or perhaps just one. ~ */
  IF ~~ THEN REPLY #56596 /* ~Echo: "I eluded you up to this point, Vhailor... why do you think I agreed to meet you *here?* Did you think I was surrendering? Or wished to fight you? No... this is the gate town of Curst, Vhailor. It borders the *prison* plane of Carceri, where even *Gods* are held prisoner. You are powerful, Vhailor, but the energies of this place allow even the mightiest to be caged here."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Vhailor turns, but some of the fire has died in his eyes. "This is *treachery.*"~ */
  IF ~~ THEN REPLY #56599 /* ~Echo: "Treachery runs through this place like veins, and it is that treachery that lends me the strength for this enchantment - that is why I was forced to meet you here in Curst. I can leave this cell, Vhailor, but until I come for you, you cannot. Your crusade for justice is truly remarkable, but it will be forgotten, and perhaps in time - even justice will forget you."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"You go beyond denying yourself justice, but you are denying my *crusade*..."~ */
  IF ~~ THEN REPLY #56602 /* ~Echo: "I know of your mission. But that will have to wait until I am done with *my* mission, and this is the second time you have found me and attempted to judge me. I will not allow it to happen a third time."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Shake off the memory, try and remain in the present.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Vhailor says nothing - never have you sounded so FINAL. You are pronouncing a terrible judgment on him, a judgment that carries no justice at all.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Echo: "I am immortal, Vhailor - but you are a... strange one. Justice has *touched* you, and that justice may be more powerful than whatever it is that sustains me. Still, take heart: I do not wish you to die... perhaps one day I will have need of someone who has the power to kill me. So here you will remain until I come for you."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~I had a distant memory... a memory of me being the one imprisoning Vhailor beneath Curst. He had come there in search of me, and I had the cell specially prepared to hold him so that he could not cross my path again. Beyond the treachery of the event, the words of my previous incarnation were strange - he said that he believed Vhailor might have the power to *kill* me, as long as justice guided his axe. For some reason, I have a feeling that is true. But why didn't the incarnation just kill him? Was there some purpose to keeping him alive? ~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Echo: "I am immortal, Vhailor - but you are a... strange one. Justice has *touched* you, and that justice may be more powerful than whatever it is that sustains me. Still, take heart: I do not wish you to die... perhaps one day I will have need of someone who has the power to kill me. So here you will remain until I come for you." ~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~The memory blackens, running into darkness, and suddenly, you are facing the spectral Vhailor again, his armored visage empty of flesh - only the burning embers. ~ */
  IF ~~ THEN REPLY #56609 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*You shall be JUDGED.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"Very well..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"Very well..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~As Vhailor's burning gaze falls upon you, you suddenly feel a strange sense of detachment, almost as if you are stepping back outside of your body. There is a faint whisper, a crawling within your skull, and suddenly you know that no matter what Vhailor *claims* to see, he will only see what you WISH him to see. You know that even the simplest of deceptions he must accept - you are a closed book to him.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*Have you ever MURDERED another?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Lie: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Truth: "No."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Truth: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Truth: "Yes... it was my hand, but not my mind, Vhailor. In one of my previous incarnations, I murdered a man named Fin Andlye because of the knowledge he possessed."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Truth: "Vhailor, I think I am responsible for the deaths of thousands... perhaps many thousands... across the planes. The Pillar of Skulls has said that whenever I die, another dies in my place."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"I will not answer your questions, Vhailor, nor will I subject myself to your judgment."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*One who does not ANSWER to JUSTICE shall be PUNISHED.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"Then go ahead, Vhailor - but be prepared to die a second death..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"Then go ahead, Vhailor - but be prepared to die a second death..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"But I have already *been* punished, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"But I have already *been* punished, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Vhailor falls still. *I will HEAR of your punishment.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"Never mind, Vhailor. I'm tired of trying to reason with you; I'd prefer that we settled this with violence."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"Never mind, Vhailor. I'm tired of trying to reason with you; I'd prefer that we settled this with violence."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"Every time I die, Vhailor, I have lost my memories. I have no sense of self, no sense of who I am or WAS, and I bear thousands of scars in the mind and body from wounds I cannot remember. Death rejects me, and I fear I shall never be able to be at peace."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Vhailor stares at you, his eyes burning brightly. You feel the same *stare* as before, the tearing and peeling back of the skin, as Vhailor seems to dissect you. You feel a wave of nausea swim through you, and a sense of *drowning,* deeper this time... until your vision almost fades to black...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*You have been PUNISHED. The mark of JUSTICE is upon you. I SEE it upon your FLESH.*~ */
  IF ~~ THEN REPLY #56636 /* ~"Then..."~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*KNOW THIS: There is MUCH that CANNOT be seen in you. I shall WATCH you. You have been PUNISHED. But it will not save you from FUTURE punishments for CRIMES to come.*~ */
  IF ~~ THEN REPLY #56638 /* ~"Very well, Vhailor, we shall consider this settled... for the moment. I had some questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"Then here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"Understood, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*Have you ever committed INJUSTICE to another?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Lie: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Truth: "No."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Truth: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Truth: "Yes... it was my hand, but not my mind, Vhailor. I was another person inhabiting this body."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Truth: "Vhailor, I think I am responsible for the deaths of thousands... perhaps many thousands... across the planes. The Pillar of Skulls has said that whenever I die, another dies in my place. There is no greater injustice that I know of."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"I will not answer your questions, Vhailor, nor will I subject myself to your judgment."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*Have you ever WRONGED another?*~ */
  IF ~~ THEN REPLY #56649 /* ~Lie: "No, I have not. I have never harmed another in all my lifetimes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Truth: "Yes... many have been wronged my hand, Vhailor. But I was another person inhabiting this body."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Truth: "I defied the Lady of Pain, and she mazed me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Truth: "One of my former incarnations lied to a woman named Deionarra, and said that he loved her when he did not. When he said this thing, she followed him to her death."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Truth: "I believe I was responsible for the death of Deionarra, the only daughter of Iannis the Advocate."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Truth: "I was responsible for the death of Deionarra, the only daughter of Iannis the Advocate."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Truth: "My former incarnation exacted a promise, a vow from a man to serve me until I died, knowing that I was immortal. I stole his life so that he might serve me. His name was Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Truth: "I sold a young woman, Annah, into slavery."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Truth: "I sold my companion, Dak'kon, into slavery."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Truth: "I sold my companion, Nordom, into slavery."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Truth: "One of my previous incarnations taught Ignus the power to harm others. It laid the groundwork for his suffering and that of others."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Truth: "I betrayed Morte and left him in the Pillar of Skulls."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Truth: "I have wronged the multiverse itself... I have let a dangerous creature, Coaxmetal, free from the siege tower."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Truth: "I betrayed Fhjull to the Pillar of Skulls for my own gain."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Truth: "I wronged you, Vhailor - I was the one who imprisoned you beneath Curst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"I will not answer your questions, Vhailor, nor will I subject myself to your judgment."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*You have ADMITTED to the crime.* Vhailor's eyes flare within his helm, and you have a sudden glimpse of the terrible *force* lurking within this spectral armor. *The GUILTY shall be PUNISHED.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"Then go ahead, Vhailor - but be prepared to die a second death..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"Then go ahead, Vhailor - but be prepared to die a second death..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"But I have already *been* punished, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"But I have already *been* punished, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Vhailor stares at you, his eyes burning brightly. You feel the same *stare* as before, the tearing and peeling back of the skin, as Vhailor seems to dissect you. You feel a wave of nausea swim through you, and a sense of *drowning,* deeper this time... until your vision almost fades to black...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*KNOW THIS: There is MUCH that CANNOT be seen in you. I shall WATCH you. You may not HIDE from punishments for CRIMES to come.*~ */
  IF ~~ THEN REPLY #56672 /* ~"Very well, Vhailor, we shall consider this settled... for the moment. I had some questions for you..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"Then here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"Understood, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Your words seem to echo, gathering power as you speak them. As you do, the embers in Vhailor's eyes flicker - and then gutter out. His armor collapses, the axe and the metal plates clattering to the ground with a *crash.* As they strike the ground, however, they raise clouds of dust - ash and rust particles rising from the metal as the plates and axe age, decay, and disintegrate right before your eyes. All that remains are a few pitted metal plates as gravestones that Vhailor ever existed.~ */
  IF ~~ THEN REPLY #56676 /* ~"Rest now, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*Stupidity is a sign of WEAKNESS. There is no INJUSTICE in an advantage-seeker being TAKEN advantage of.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*JUSTICE comes even to the FIENDS.*~ */
  IF ~~ THEN REPLY #56894 /* ~"Yes. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Vhailor suddenly steps forward, eyes blazing. "This is *not* Justice, but a mere, childish *mockery* of it. There shall be *no* execution, 'magistrate'... unless your actions force me to serve Her myself."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"You shall conduct yourself in a more appropriate manner in the future, magistrate. Do not let contrary news reach my ears... or I shall *return* for you, be the journey one thousand, thousand leagues. Strive to keep Justice in your heart, and you shall be safe. Farewell."~ */
  IF ~~ THEN REPLY #57393 /* ~"Thanks, Vhailor. Farewell, magistrate."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~"Justice is *not* blind. *I* am her eyes."~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~The slightest touch of your power seems to set a spark through Vhailor's armored shell - it rises into the air, and refits itself into the semblance of a man. As the armor reattaches, two fires blaze within the helm. ~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"Vhailor?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~ARISE, VHAILOR.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*I have AWAKENED.*~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"Vhailor, listen to me: a great injustice has been done. When I die, someone else across the planes dies in my place. It has happened hundreds, thousands, perhaps hundreds of thousands of times. The multiverse dies so that I might live."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"Vhailor, I need your help - my mortality seeks our deaths."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~As you speak the words, Vhailor seems to *swell,* becoming greater, more a force than an armor. ~ */
  IF ~~ THEN REPLY #68228 /* ~"I know my crime, and I am trying to prevent it from ever happening again, but the one creature that could put an end to this injustice *refuses* to allow it for its own selfish reasons."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*YOU ARE NOW AMONG THE CONDEMNED. AS IS THIS OTHER. I WILL SEE BOTH YOUR SOULS SPLIT UPON JUSTICE'S BLADE.*~ */
  IF ~~ THEN REPLY #68230 /* ~"Very well, Vhailor - but I need to attend to this other one first."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*I SHALL. THEN I SHALL RETURN FOR YOU.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"Very well, Vhailor."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"Very well, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"Very well, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*THEN YOUR MORTALITY SHALL DIE.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"All right then, Vhailor..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~"All right then, Vhailor..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"All right then, Vhailor..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Vhailor's helm turns to you, his eyes pulsing like twin heartbeats.~ */
  IF ~~ THEN REPLY #68400 /* ~VHAILOR, JUSTICE'S HAND IS SWIFT, AND IT IS COMING FOR ME NOW. I SHALL NOT REMAIN HERE MUCH LONGER. I WILL RETURN YOU TO SIGIL, IF YOU WISH.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*What CRIME has brought JUSTICE upon you?*~ */
  IF ~~ THEN REPLY #68402 /* ~MANY DIED SO THAT I MIGHT LIVE VHAILOR. THE CRIME IS GREAT - AND TIME AND FATE COME FOR ME EVEN NOW. ~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*LET my WORDS carry you. JUSTICE is a teacher. IN your PUNISHMENT, find STRENGTH. Through punishment, you will achieve PERFECTION.*~ */
  IF ~~ THEN REPLY #68404 /* ~PERHAPS SO, VHAILOR. I WILL THINK UPON YOUR WORDS.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*KNOW that should you escape your sentence, I shall find you, NAMELESS ONE.*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*The hand of justice shall not be stayed.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~WE SHALL NOT MEET AGAIN, I THINK, VHAILOR. I SHALL DWELL IN JUSTICE'S HALLS FOR A TIME, AND THE TIME SHALL NOT BE MEASURED IN YEARS. FAREWELL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*The hand of justice shall not be stayed.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"Keep up the pressure, Vhailor. Don't give him a chance to concentrate."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Vhailor turns from Trias's corpse to face you squarely. *You are MERCIFUL and WEAK. STEEL your HEART before the disease SPREADS.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"We'll discuss this some other time. Let's move on."~ */ EXIT
END
