// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"Perhaps... perhaps you will STILL die. NEVER forget I WATCH you THIEVES, you KILLERS - KILLERS ALL, all THREE of you..."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"You are all THIEVES... wearing MY body... MY body, and you will give it BACK!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~The man before you resembles you, but his back is hunched, as if he is perpetually afraid of being struck. He is watching you warily, and he hisses as you approach, his hands clenching, as if wanting to strangle you. His arms are horribly gnarled and scarred, as if they had been dunked into a stream of acid - and his left arm looks like it is holding on by a thread, literally.~ */
  IF ~~ THEN REPLY #63714 /* ~"Who are you?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"KNOW that you will NOT last long in this place, THIEF!" Spittle flies from the man's mouth, and his face twists in a maddening grin. "MAZES AND REGRETS AND DEATH are all that ARE HERE..."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"What do you mean?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"THIEF!" The incarnation's hands twist, as if strangling the other. "I will feel the bones of your neck SNAP beneath my fingers... take my BODY back." He turns to you. "THIEF! You wear my body like a CLOAK, and you SHAME me..."~ */
  IF ~~ THEN REPLY #63719 /* ~"I am no thief. I stole *nothing* from you."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"You are a THIEF!" The incarnation's hands twist, as if wrapped around your neck. "I will feel the bones of your neck SNAP beneath my fingers... take my BODY back. You wear my body like a CLOAK, and you SHAME me..."~ */
  IF ~~ THEN REPLY #63721 /* ~"I am no thief. I stole *nothing* from you."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"YOU STOLE EVERYTHING! I AWOKE ON THE STREETS OF THE RING CITY, AND ALL WHO SAW ME KNEW ME!" ~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~He takes a rasping breath. "All that you had done, all that you had harmed - they were waiting for me, blaming me, hurting me, until I couldn't TAKE the voices anymore..." His fingers grasp at the air. "And had to make them SILENT."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"You were the one who made that dodecahedron journal, the trapped one, aren't you?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"You were the one who left the trap in the Sensory Stone for me, weren't you? And the dodecahedron journal with the traps?"~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"You were the one the Lady mazed, aren't you? I found your journal... and the other one, the dodecahedron covered with traps."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~"You were the one... the one who strangled all those people, weren't you? I found your journal in the Lady's Maze... and I found the other journal, the dodecahedron covered with traps."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"You were the one... the one who strangled all those people, weren't you? And left that trapped journal for me to find, that dodecahedron."~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"You were the one... the one who killed the Linguist, Fin, weren't you? Then wrote the dodecahedron journal in the language of the Uyo."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~This mad incarnation is watching you warily, and he hisses as you approach, his hands clenching, as if wanting to strangle you. His arms are horribly gnarled and scarred, as if they had been dunked into a stream of acid - and his left arm looks like it is holding on by a thread, literally.~ */
  IF ~~ THEN REPLY #63732 /* ~"I had some things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~Ignore the insane incarnation.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~He affixes you with a wary eye - it seems just looking at you is making him uncomfortable.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"In order for me to leave this place, you must again become part of me. Will you do so?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"You're the one who set fire to Iannis' legacies, weren't you? Trying to destroy my legacy?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"The Sensory Stone trap - you're the one who left it for me, weren't you?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"Were you the one who strangled all those people in Sigil?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"You're the incarnation the Lady mazed, aren't you? I found your journal in the Lady's Maze."~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"You're to blame for killing the Linguist Fin, aren't you?"~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"What happened to your arm?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"Do you know how I can leave this place?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"What do you know of the other incarnations?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~Language of the Uyo: (Let us speak in private, just the two of us.)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~Language of the Uyo: (Let us speak in private, just the two of us.)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~Lock your hands around his neck and strangle him.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~Lock your hands around his neck and strangle him.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"Never mind. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"I BURNED the false papers, yes. MORE lies, lies about my FALSE LIVES..." ~ */
  IF ~~ THEN REPLY #63750 /* ~"There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"Yes..." He smiles, low and evil. "Simple trap. Trap for someone who can't die - MIND trap."~ */
  IF ~~ THEN REPLY #63753 /* ~"It was simple to escape, actually."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~The smile freezes on the incarnation's face. "You LIE!"~ */
  IF ~~ THEN REPLY #63757 /* ~"No, it was pathetically easy. I was able to escape it with no effort."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"Perhaps. There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"LYING THIEF!" His eyes blaze like fires, and you watch as he clutches his left arm... then *pulls,* the stitching at the shoulder tearing off, unraveling...~ */
  IF ~~ THEN REPLY #63761 /* ~"What - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~His eyes flicker to the black stones, as if remembering something - something unpleasant. He begins to shake slightly. "They claimed they knew me. Had to SILENCE them, stop their voices. Accusing. Always ACCUSING..."~ */
  IF ~~ THEN REPLY #63763 /* ~"I... see. There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"Simple escape, simple trap, broke her maze with ease, I did. I could have made it tighter, deadlier." He smiles. "She knew nothing of what it takes to trap ME."~ */
  IF ~~ THEN REPLY #63766 /* ~"It seems so. There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"There..." He seems confused for a moment. "There were MANY that I killed. There were many that needed to be silenced."~ */
  IF ~~ THEN REPLY #63769 /* ~"I... see. There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~He glances down at his arm for a moment, then looks up and smiles. "Kept coming OFF... so I had to stitch it up again."~ */
  IF ~~ THEN REPLY #63772 /* ~"There are things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"I would rather DIE."~ */
  IF ~~ THEN REPLY #63775 /* ~"Death will also serve. But I will give you a chance."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"Then prepare to die."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"Then prepare to die."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"There are things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"NEVER." He spits the last word: "THIEF."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"Then prepare to die."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"Then prepare to die."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"There are things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"I will NEVER tell you. And you will NEVER leave..." He smiles. "It is QUIET here. PEACEFUL."~ */
  IF ~~ THEN REPLY #63786 /* ~"All right... there are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"THIEVES. They are THIEVES - all of them. And THIEVES will DIE."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"There are things I would know."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"You are the THIEF! You stole my body and my life! And THIEVES will DIE!"~ */
  IF ~~ THEN REPLY #63792 /* ~"There are other things I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"We will speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~As you speak the language of the Uyo, the incarnation's eyes widen, and he stares at you. After a moment of silence, he replies in the same language. (Only I know the language of the Uyo. How do you know it?)~ */
  IF ~~ THEN REPLY #63795 /* ~(You are correct: you are the only one who knows the language of the Uyo. So if I know the language of the Uyo, I must be you.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(Never mind. We will speak more later. Wait for me to return.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~He is silent, staring at you. ~ */
  IF ~~ THEN REPLY #63798 /* ~(It is these *others* who are not you, for they do not know the language of the Uyo.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~He nods... slowly. (I hear you.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(When I strike, be by my side. We will kill these thieves, then we shall know peace.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(This place confuses one's perceptions - we are both you, and now we must become as one.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(We shall speak again, you and I. Wait for me.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(I will strike when you strike.)~ */
  IF ~~ THEN REPLY #63804 /* ~"There are other things I would know..."~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(We shall speak again, you and I. Wait for me.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~He looks frightened. "I..." To your surprise, he reverts to normal speech... and all the inflections to his voice are gone. It is calm, level, and much like your own. "I... no longer wish to live like this."~ */
  IF ~~ THEN REPLY #63807 /* ~(You no longer have to. All the pain and worry and torment of your existence; I will wipe it away.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(You have suffered much. You were born into a world where nothing made sense, where strangers claimed they knew you, they blamed you for things you knew nothing of, and they tried to hurt you.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(We shall speak again, you and I. Wait for me.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~He looks at you - and you watch as the incarnation loses its mad gleam, and his eyes become more like your own. "Yes..."~ */
  IF ~~ THEN REPLY #63811 /* ~(I will protect you now. You will know peace. For that is all you ever wanted, isn't it?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~The incarnation relaxes at your words, his eyes dimming as he locks gazes with you. There is the faintest of whispers, and he falls to the black stones - with his collapse, you feel a crawling sensation in the back of your skull...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~With lightning-like speed, your hands lash out around his neck - the incarnation gives a startled cry as you *constrict* your hands around his neck. He snarls, then with an evil leer, his hands lash out around your neck and begin to *twist.* ~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"I... will... END... you..."~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"I... will... END... you..."~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"I... will... END... you..."~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~Surrender, let him snap your neck.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~As your hands *squeeze,* the incarnation's eyes suddenly bulge, and he pulls his hands back from your neck, clawing at your hands, trying to force them away, but his struggles are weak, feeble. ~ */
  IF ~~ THEN REPLY #63819 /* ~"I give you a choice. Either die now at my hand, or merge with me, and *pray* that you have a chance of survival inside my mind."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~Language of Uyo: (This is for Fin's death.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"Now we shall put an *end* to your miserable existence..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~As your hands *squeeze,* the incarnation's eyes narrow, and his fingers begin to dig into your neck - your strength is too evenly matched, and neither of you seems to be able to best the other... it looks as if it will come down to who can last the longest... ~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~Endure...~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~Endure...~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~Try to break free of his grasp.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~Surrender, let him snap your neck.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~As your hands *squeeze,* the incarnation gives a low, evil smile, and his fingers begin to dig into your neck - and you realize just how *strong* this incarnation is - you know that within seconds, he will strangle the life from you.~ */
  IF ~~ THEN REPLY #63828 /* ~Try to break free of his grasp.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~Surrender, let him snap your neck.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~His eyes blaze like fires, and you watch as he clutches his left arm... then *pulls,* the stitching at the shoulder tearing off, unraveling...~ */
  IF ~~ THEN REPLY #63831 /* ~"What - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~After what seems like an eternity, you feel the incarnation's hands shaking on your neck, scrabbling at it, as if trying to find some weakness... and failing. You watch as his eyes become fearful, and he pulls his hands back from your neck, clawing at your hands, trying to force them away, but his struggles are weak, feeble. ~ */
  IF ~~ THEN REPLY #63833 /* ~"I give you a choice. Either die now at my hand, or merge with me, and *pray* that you have a chance of survival inside my mind."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~Language of Uyo: (This is for Fin's death.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"Now we shall put an end to you..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~You continue applying pressure, desperately trying to outlast him, and you suddenly realize that whatever insanity has claimed this incarnation, it gives him strength and endurance beyond yours... if you continue to struggle, he will triumph. ~ */
  IF ~~ THEN REPLY #63837 /* ~Try to break free of his grasp.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~Surrender, let him snap your neck.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~You make a sudden lunge to the right, throwing him off balance, and you worm free from his grasp. His eyes are like fires, and you watch as he clutches his left arm... then *pulls,* the stitching at the shoulder tearing off, unraveling...~ */
  IF ~~ THEN REPLY #63840 /* ~"What are you-?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~With lightning-like speed, your hands lash out around his neck - the incarnation gives a startled cry, suddenly silenced as you *constrict* your hands around his neck. He claws at your hands, trying to force them away, but his struggles are weak, feeble. ~ */
  IF ~~ THEN REPLY #63842 /* ~"You have a choice. Either die now at my hand, or merge with me, and pray that you have a chance of survival inside my mind."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~Language of Uyo: (This is for Fin's death.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"Now we shall put an end to you..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~You twist his neck sharply to the left - there is a echoing *crack,* like thousands of necks snapping, and the incarnation falls limp in your arms. You release him, and he falls to the black stones - as he dies, you feel a crawling sensation in the back of your skull, making you shiver, and you know the incarnation is no more.~ */
  IF ~~ THEN REPLY #63846 /* ~"Farewell..."~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~He stares death at you, his teeth clenched, but after a moment, his expression becomes dark, and he relaxes. There is the faintest of whispers, and he falls to the black stones - with his collapse, you feel a crawling sensation in the back of your skull...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~And there is a FLOOD of memories, and strength, and emotions, and - you steady yourself, dizzy for a moment, then your vision clears, and you are yourself once more.~ */
  IF ~~ THEN REPLY #63849 /* ~"Farewell..."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~As your vision darkens from the incarnation's death grip, the pain fades - to be replaced with the slow, crawling chill of oblivion. You can feel your personality falling away, piece by piece, and suddenly - you are no more.~ */
  IF ~~ THEN REPLY #63851 /* ~Fall into darkness...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"That WOMAN - that GHOST?!" The hunched man's eyes well up in fury, and spittle flies from his mouth. "She TORMENTED me for years, pursuing me, hating me, and YOU WERE THE ONE THAT KILLED HER?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"Worthless!" The second incarnation breaks into uneven laughter, but it's more gleeful than mad. "It was EASY to breach that child's trap. I found it... and CHANGED it. To make it HARDER. Changed the WRITINGS."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
