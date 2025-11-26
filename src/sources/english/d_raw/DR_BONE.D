// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DR_BONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DR_BONE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~This man is whistling a cheerful tune and playing with a well-kept fighting knife. As you approach him, he stops whistling and gives you a curious look. "Hm? Wot ye want?"~ */
  IF ~~ THEN REPLY #49642 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~This man is still whistling a cheerful tune while he fiddles with his wicked-looking knife. As you approach him, he stops whistling and gives you a bored glance. "Wot now, eh?"~ */
  IF ~~ THEN REPLY #49645 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"Me name's Ratbone, cutter. I'm a thief-fer-hire in the employ o' Sharegrave, the boss o' the Collectors ye see 'round this square. He pays me mostly ta learn his lads ta be real quiet-like, an' how ta fight if they runs inta a spot o' trouble. That's likely the only questions I'll answer fer ye, cutter." He sniffs and shrugs.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"Thief for hire? Could you train me?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"Do you know how to get through that trash-packed archway northwest of here?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~A man named Ratbone told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a man named Creeden about it. He said that Creeden should be in the Hive somewhere, near the Office of Vermin and Disease Control.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"Where's this Sharegrave fellow?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~He nods towards the large, dilapidated house beside him. "Careful though, cutter. He don't like visitors. He's right suspicious o' everyone. Sharegrave's not even his real name... just what me and some o' the others calls him."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"You said you were a thief for hire? Could you train me?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"Do you know how to get through that trash-packed archway northwest of here?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~A man named Ratbone told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a man named Creeden about it. He said that Creeden should be in the Hive somewhere, near the Office of Vermin and Disease Control.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Ratbone shakes his head. "Nay, I don't. Hear he's nearby, though. Some o' his lads come runnin' through at times, makin' fer some hidey-hole that's who-knows-where. Somewhere up around those elevated platforms, I'll bet, but it's none o' me business." He shrugs and spits on the ground. "Live an' let live, says Ratbone."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"You said you were a thief for hire? Could you train me?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"Do you know how to get through that trash-packed archway northwest of here?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~A man named Ratbone told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a man named Creeden about it. He said that Creeden should be in the Hive somewhere, near the Office of Vermin and Disease Control.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"Where's your boss... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"Eh? Nay, I don't. Say... ye could ask Creeden, the Rat-Catcher. Sometimes he goes pokin' about up there an' disappears for an odd while. Creeden's usually in the Hive, right outside the Office o' Vermin and' Disease Control."~ */
  IF ~~ THEN REPLY #49665 /* ~"Office of...? Where's that?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"You said you were a thief for hire? Could you train me?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"Where's your boss... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Ratbone frowns at you. "Back in the Hive, cutter. Find a tout if ye needs to."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"You said you were a thief for hire? Could you train me?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"Where's your boss... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"Sure, fer a spot o' jink. Been trained before?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"Yes, I have."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"No, I haven't."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"That's fine. I'm gonna cuff ye, now, so dodge it." He suddenly swings his open hand at your head.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Dodge the blow.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Dodge the blow.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Despite your ducking, Ratbone cuffs you soundly on the back of the head. "Sorry, cutter; ye're just too slow."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"Do you know how to get through that trash-packed archway northwest of here?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~A man named Ratbone told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a man named Creeden about it. He said that Creeden should be in the Hive somewhere, near the Office of Vermin and Disease Control.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"Where's your boss... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~You avoid Ratbone's blow. "Not bad, cutter. Now about that spot o' jink... fifty commons an' I'll see ye trained right up."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"Sounds good. Here..."~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"I don't have that much..."~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"No thanks."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Ratbone shrugs listlessly.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"Do you know how to get through that trash-packed archway northwest of here?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~A man named Ratbone told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a man named Creeden about it. He said that Creeden should be in the Hive somewhere, near the Office of Vermin and Disease Control.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"I'm looking for a man named Pharod. Do you know where he is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"Where's your boss... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"Ye knows ye gots ta stop doin' whatever ye're doin' now, right? Ye can't be a warrior or whatnot *an'* a thief. Are ye all right with that, cutter?"~ */
  IF ~~ THEN REPLY #49696 /* ~"Yes, I am."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"No, I'd best not. I'll take my copper back... farewell, Ratbone."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"Let's get to it, then. What I'm gonna learn ye here are a thief's six best bloods: sneakin' about, hidin', pickin' locks an' pockets, findin' and removin' traps, and me favorite: stabbin' plucky berks in the back."~ */
  IF ~~ THEN REPLY #49699 /* ~"Go on..."~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"I think I understand the basics, Ratbone. Let's get to training."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"Sneakin' about - hidin' in the shadows an' movin' real quiet-like - is right handy. Better a live git than a dead cutter, eh? Not only do ye stay out o' harm's way, if ye *does* want ta stick someone, ye've got the upper hand right off... but I'll tell ye more o' that, later. Keep in yer mind, though... ye can't go sneakin' if someone's already lookin' at ye."~ */
  IF ~~ THEN REPLY #49702 /* ~"Go on..."~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"I think I understand the basics, Ratbone. Let's get to training."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"Pickin' pockets an' locks is a good thing, too... supplement the old income an' such. Just be ready ta runs if ye gets caught pickin' a pocket, and always check fer traps if ye're pickin' a suspicious lock. If ye're gonna look fer traps, just check the area over nice an' slow... sometimes it'll take ye a moment or two ta see 'em."~ */
  IF ~~ THEN REPLY #49705 /* ~"Go on..."~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"I think I understand the basics, Ratbone. Let's get to training."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"If ye *does* find a trap, use yer skills ta disarm the blighted thing. It's a lot like pickin' a puzzle-lock, really."~ */
  IF ~~ THEN REPLY #49708 /* ~"Go on..."~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"I think I understand the basics, Ratbone. Let's get to training."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"The last thing I'll learn ye is the *backstab.*" Ratbone sighs happily. "If ye manages ta sneak up on a bugger an' ye wants ta start a row, just attack the sod from behind. Ye've got a much better chance o' hittin' him an' when ye do, ye hits harder."~ */
  IF ~~ THEN REPLY #49711 /* ~"All right, then. Let's get to training."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Ratbone nods. "All right, cutter... first off, ye've got ta relax. Ye're too tense. Ye're gonna have ta let yer instinct take over at times, an' trust your hunches..." And so your training as a thief begins.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~I trained to become a thief under a man named Ratbone, whom I met in Ragpicker's Square.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~I trained to become a thief under a man named Ratbone, whom I met in Ragpicker's Square.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~I trained to become a thief under a man named Ratbone, whom I met in Ragpicker's Square.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~I trained to become a thief under a man named Ratbone, whom I met in Ragpicker's Square.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~After a long period of training, Ratbone nods at you in satisfaction. "I must say, cutter - never have I runs across a faster learner. I'd almost say ye've done this all before!"~ */
  IF ~~ THEN REPLY #49719 /* ~"Perhaps I have, Ratbone, and simply forgot. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~After a long period of training, Ratbone nods at you in satisfaction. "I must say, cutter - never have I runs across a faster learner. I'd almost say ye've done this all before!" As Ratbone speaks, you come to realize that you *have* done this before... that at one time you possessed all these skills, and the training has reawakened them.~ */
  IF ~~ THEN REPLY #49721 /* ~"Perhaps I have, Ratbone, and simply forgot. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~After a long period of training, Ratbone nods at you in satisfaction. "I must say, cutter - never have I runs across a faster learner. I'd almost say ye've done this all before!" As Ratbone speaks, you come to realize that you *have* done this before... that at one time you possessed all these skills.~ */
  IF ~~ THEN REPLY #49723 /* ~"Perhaps I have, Ratbone, and simply forgot. Thanks, and farewell."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~As faded memories of lurking in darkened hallways and avoiding deadly traps drift into focus, you manage to recall enough to 'learn' more than Ratbone has taught you.~ */
  IF ~~ THEN REPLY #49725 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"Not sure how much I can learns ye if ye've already been learned, cutter. If ye've been neglecting yer thievin' for another path, though - fightin' or magery or whatnot - I can gets ye up ta speed again."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"I'd like to become a thief again, Ratbone."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"I understand. Farewell, Ratbone."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Ratbone nods. "Now about that spot o' jink... fifty commons an' I'll see ye trained right up."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"Sounds good. Here..."~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"I don't have that much..."~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"No thanks."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"Ye knows ye gots ta stop doin' whatever ye're doin' now, right? Ye can't be a warrior or what-not *an'* a thief. Are ye alright with that, cutter?"~ */
  IF ~~ THEN REPLY #49734 /* ~"Yes, I am."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"No, I'd best not. I'll take my copper back... farewell, Ratbone."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"Ye're a fast learner, cutter - right fast." He regards you curiously for a moment, then shrugs. "That's it; ye're back up ta snuff."~ */
  IF ~~ THEN REPLY #49737 /* ~"Thanks, Ratbone. Farewell."~ */ EXIT
END
