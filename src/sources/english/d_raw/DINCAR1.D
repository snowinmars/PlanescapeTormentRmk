// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*Finally.* I thought I would die again waiting for him to rise."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"Have a care *how* you speak to me, you deranged wreck. He was fortunate to reach here with all those traps *you* scattered throughout the planes. I swear, if I could have crossed the years to put you out of your *misery,* I w-"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"By the hells, he's lost his memories! Damnation! He's useless to us now!"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"I am at the limits of my *patience* with your howling! Be silent, or -"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"Time is no longer in our favor. I will not stand here and squander another moment while our adversary is no doubt hunting for us. We waited long enough for him to awaken - I will speak to him *now.*"~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~The man before you resembles you, but he carries himself more like a force than a man. His eyes are watching you carefully, and as you study him, you feel him studying you. "So... it has come to this." ~ */
  IF ~~ THEN REPLY #62918 /* ~"Who are you?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"I will not surrender my name to you or any man." The man's voice is rough, like yours, and it rings strangely in your ears. "As for 'who I am,' you should be asking yourself that - you are one of *my* incarnations. You made it here, with my clues to guide you."~ */
  IF ~~ THEN REPLY #62920 /* ~"We - we are separate incarnations? How is that possible?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~The incarnation affixes you with a stony gaze as you approach. He looks like he is sizing you up for weaknesses. ~ */
  IF ~~ THEN REPLY #62922 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"If you are a part of me, there are things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~Leave the incarnation alone.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~The incarnation is silent for a moment, then his expression changes to contempt. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"If there is anything I have *hated* about you, it is your countless questions - your desperate fumbling for meaning and answers." The man's voice is like a hatchet, and anger flickers across his features. "The time for questions is past. Now, you will *listen* to me. I was the first to breach this Fortress, and whatever it is that awaits us here was somehow able to defeat me. It will not best me a second time."~ */
  IF ~~ THEN REPLY #62927 /* ~"You... sound as if you intend to fight whatever it is that lurks here."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~The man gives you a strange look, then studies you. "Of course. That's the only reason we're speaking now. I'll need you to be the shell - but your mind must be *my* mind. Do you understand me?"~ */
  IF ~~ THEN REPLY #62929 /* ~"You mean you intend to possess me?"~ */ JOURNAL #68253 /* ~I awoke from touching the crystal and found myself trapped in a room, surrounded by incarnations of myself - one of them, the practical one, told me that only *one* of us could leave this place. He said we would either have to merge, with all of us surrendering our wills to one of the others, or else one of us would have to kill the other three. I'll have to get my bearings and puzzle this out... maybe speaking to the others will yield something.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"Yes." He glances around at the spiked walls, then turns back to face you. "We cannot leave this place in pieces. Only one may leave."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"How are we to become one?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"What are you talking about?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"What are you talking about?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"How do you propose we do that?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"You must surrender your will to me - your knowledge and skills: whatever little you've managed to accumulate in your life may prove useful." He sizes you up again. "It ultimately will be but a fraction of my power, but it might have its uses."~ */
  IF ~~ THEN REPLY #62933 /* ~"And if I choose NOT to surrender my will to you?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"How do I surrender my will?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"You have no choice in the matter. You do not know how to escape this place. I do. If you refuse to surrender with me, I will refuse to surrender to you - and neither of us will ever be able to leave this place. Only one may leave, and it will *not* be you."~ */
  IF ~~ THEN REPLY #62939 /* ~"I could *kill* you."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"How do I surrender my will?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"You could try." The man seems amused. "You do not have the power to best me, nor do you have the will to force me to merge with you. I would prefer *not* to kill you to escape this place, but it is a small price to pay for our freedom. It makes no sense that one of us die, when by merging, I could be strengthened."~ */
  IF ~~ THEN REPLY #62945 /* ~"Why won't you merge with me?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"How do I surrender my will?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"With you?" He gives a short laugh, almost like a bark. "Because there is no gain in such a thing. You have lived a fraction of the life I have. I will not entrust my will to a neophyte such as yourself."~ */
  IF ~~ THEN REPLY #62951 /* ~"How do I surrender my will?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"In simplest terms, we simply lock gazes, and you surrender yourself. You will merge with me, and we shall be as one, with my mind dominating."~ */
  IF ~~ THEN REPLY #62956 /* ~Truth: "Very well... I shall surrender my will."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~Bluff: "Very well... I shall surrender my will."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~The man frowns. "I was taken unawares. And I did not anticipate that my companions would be split from me upon my arrival... what happened after that... is confusing."~ */
  IF ~~ THEN REPLY #62962 /* ~"So even if I were to surrender to you, then we could still fail?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"Let me get my bearings, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"Unlikely. I'm the only one who possesses the knowledge necessary to succeed - this moment is the culmination of centuries of planning. Many have suffered and died for us to be here... their sacrifices must not be in vain." The last sentence unnerves you - it is delivered like a speech, and there is no passion behind the words.~ */
  IF ~~ THEN REPLY #62966 /* ~"I don't believe you, and I won't surrender my will to you."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"Yet you came here previously... and were defeated."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"And why should I let you possess me?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"If you're one of my incarnations, then I've questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"Then we have a dilemma. I will *not* surrender what I know to you. This means you will never escape this prison, and we shall never find and defeat this killer of ours and be free of him." The man's voice becomes gentle. "If you merge with me, however, not only can we escape this place, but we will be armed with all the knowledge I possess. We will come to this adversary, I will defeat him, and at last we will know peace."~ */
  IF ~~ THEN REPLY #62972 /* ~Truth: "Very well, I agree."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~Bluff: "Very well, I agree."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"I'll consider it. There are other things I would know first."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"Let me get my bearings first, and then we'll speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"I will indulge you - but only for a while longer."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"You are the one who saved Dak'kon at Shra'kt'lor. The one who imprisoned Vhailor. And the one who led Deionarra to her death."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"You are the one who saved Dak'kon at Shra'kt'lor. And the one who imprisoned Vhailor."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"You are the one who saved Dak'kon at Shra'kt'lor. And the one who led Deionarra to her death."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"You are the one who imprisoned Vhailor. And the one who led Deionarra to her death."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"You are the one who saved Dak'kon at Shra'kt'lor."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"You are the one who imprisoned Vhailor beneath Curst."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"You are the one who led Deionarra to her death."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"You gave Dak'kon the Unbroken Circle of Zerthimon. Why?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"What was the purpose of saving Dak'kon at Shra'kt'lor?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"You saved Dak'kon at Shra'kt'lor because of his blade. Why?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"What was the purpose of imprisoning Vhailor?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"Why did Deionarra have to die?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"Why did Deionarra have to die?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"Tell me about Xachariah."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"What happened to the archer that traveled here to the Fortress?"~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"Are you the one who taught Ignus the Art?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"You built that tomb beneath Sigil, didn't you? The one with the traps?"~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"You built that tomb beneath Sigil, didn't you? The one with the traps?"~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"Were you the one who pried Morte off the Pillar of Skulls?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"Who are these others?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"Who is that other version of us?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"Who is that other version of us?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"Who were those other versions of us?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"How do I escape this place?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"Do you still intend to fight whatever it is that lurks here?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~Truth: "I intend to merge with you."~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~Bluff: "I intend to merge with you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"I will not merge with you - you will merge with me."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"Were you responsible for the tattoos on my back? The ones I read when I woke up in the Mortuary."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"Were you the one who asked Pharod to get the Bronze Sphere from the catacombs?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"I have nothing more to say for the moment. We'll speak again... later."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~The man's eyes narrow. "What of it? All of it was done with a purpose."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"You gave Dak'kon the Unbroken Circle of Zerthimon. Why?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"What was the purpose of saving Dak'kon at Shra'kt'lor?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"You saved Dak'kon because of his blade. Why?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"What was the purpose of imprisoning Vhailor?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"Why did Deionarra have to die?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"Why did Deionarra have to die?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"The Unbroken Circle? That collection of lies? Yes, it was a week's work to forge such a thing - it was necessary to make it so he would cease doubting himself."~ */
  IF ~~ THEN REPLY #63037 /* ~"You *made* it? But you told him -"~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"There is something else I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"Let me get my bearings, and we shall speak more."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"Perhaps they carry some truth - I know not. I know that they were tedious writings, but the words were enough to give him faith."~ */
  IF ~~ THEN REPLY #63041 /* ~"Why?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"There is something else I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"Let me get my bearings, and we shall speak more."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"Your ignorance astounds me." The man looks incredulous. "Can it be that you do not know what he carries in his hand? That blade he carries is shaped by his *thoughts.* Such a tool, when used properly, could slay the multiverse itself..." The man looks lost in thought, then his face sneers in disgust. "Though obviously, the gith became separated when we arrived in the Fortress, and I was unable to make use of his blade." The man frowns. "Unfortunate."~ */
  IF ~~ THEN REPLY #63045 /* ~"There is something else I would know..."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"Let me get my bearings, and we shall speak more."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~The man shakes his head, as if weary. "Vhailor was becoming... tiresome." He gives a humorless smile. "Those Mercykiller dogs will hunt you across the planes themselves in search of 'justice' - and Vhailor was an especially persistent hound." The incarnation's voice drops slightly. "And he was much too close to justice for my tastes."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"Why was he hunting for us?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"Why was he hunting for us?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"Was he a threat?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"Very well. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"Oh, any of countless reasons, some of which lie with me - and others, which lie in the *hands* of other incarnations." He flicks a glance over at the incarnation who was howling when you first arrived. "There have been many lives that have been blackened by incarnations with damaged minds. Some of us have created... problems. I believe in solutions."~ */
  IF ~~ THEN REPLY #63054 /* ~"Was he a threat?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"Very well. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"Oh, any of countless reasons, some of which lie with me - and others, which lie in the hands of other incarnations. As you probably saw from that deranged wreck that was here with us - there have been many lives that have been blackened by incarnations with damaged minds. Some of us have created... problems. I believe in solutions."~ */
  IF ~~ THEN REPLY #63058 /* ~"Was Vhailor a threat?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"Very well. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"Oh, yes - or else I would have simply killed him." He nods. "There is some link between him and justice itself, and that gives him power even over immortals such as us." The man gives a slight smile. "Especially if our injustices are great... and ours are of the blackest sort."~ */
  IF ~~ THEN REPLY #63062 /* ~"I see... there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"Deionarra? That girl had little sense of the planes in her, and that was what I needed her for. You see, the Dustmen have it right - sometimes when you feel too much passion, you cling too tightly to life to let go. And neither did Deionarra - as I hoped she would."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"Why did Deionarra have to die?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~The incarnation barely even glances at the howling one, and merely sneers. ~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"*You* blaming me for anything is laughable." He turns back to you. "It wasn't out of malice - though she did become tiresome. It's just that when I arrived in the Fortress, I didn't intend to stay. I just wanted to get in, sacrifice her, then get out." ~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"Why did you kill her?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"I needed someone to be my eyes here on the Negative Material Plane, to serve as a scout and try and find out who my killer was. Only the dead can survive here for long - so Deionarra had to be sacrificed so that she could become something other than she was. A tricky business, but it worked - she helped you, didn't she?"~ */
  IF ~~ THEN REPLY #63081 /* ~"You didn't have to kill her."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"Yes, she did. Perhaps it was the right thing to do."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"I don't wish to discuss this any further. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~He looks at you silently for a moment, then his sneer returns. "And that is why you will be defeated if you confront our killer. It is because you are WEAK. And you do not see that some things are NECESSARY."~ */
  IF ~~ THEN REPLY #63086 /* ~"That *wasn't* necessary. It was convenient for you. You should have looked for other solutions."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"You *dare* call *me* weak?! You orchestrated all these 'grand' plans for defeating this invisible enemy, and you got your ass handed to you ANYWAY, and some poor girl was murdered because of it. Maybe if you'd done your job the first time you were here, this wouldn't even be a problem!"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"I don't wish to discuss this any further. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"You DARE *lecture* me?! Women have always walked our path with us - whether Deionarra or Ravel or any other woman, and they have suffered, and it was always their CHOICE. Deionarra would have died for me if I'd asked her to. There was no CRIME."~ */
  IF ~~ THEN REPLY #63091 /* ~"I won't discuss it with you any longer - there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"The archer? Well, old sodden Xachariah could see things with his 'eyes' that I couldn't - and he could hit them with his arrows, too."~ */
  IF ~~ THEN REPLY #63094 /* ~"So?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"Very well. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"Well, I was walking into this Fortress blind in some ways - I didn't know what my killer was, so I needed someone who could see things I couldn't in case the enemy was beyond my visual range." He snorts. "Xachariah ended up dying too fast, though, so he wasn't any use in the end."~ */
  IF ~~ THEN REPLY #63098 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"I'd almost forgotten - yes, what a waste that was." The incarnation seems irritated. "Obviously, *that* didn't work. And it cost a lot of blood and coin, too." He frowns. "It was shortly after the failure of that that I decided to carry the battle to our killer rather than wait for him to show any longer."~ */
  IF ~~ THEN REPLY #63101 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"Is Morte still *alive?*" The incarnation stares for a moment in disbelief, then he starts laughing. "Ha! That piking skull couldn't be trusted farther than I could throw him - claiming he had information when he didn't, *then* I had to go through the torment of prying him off the Pillar of Skulls, then he *feigned ignorance* once he was off of it." The incarnation scoffs. "I humored him, since he'd told me everything I needed from him."~ */
  IF ~~ THEN REPLY #63104 /* ~"Feigned ignorance?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"Hmmm. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"Oh, yes." The man smiles. "Once a liar, always a liar. It takes a stronger mind than the skull's to give me the laugh, though."~ */
  IF ~~ THEN REPLY #63108 /* ~"What was his game? What more did he have to lie about?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"Hmmm. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~The incarnation smirks. "It is of no matter. Let the skull have his secrets - they are worthless to us."~ */
  IF ~~ THEN REPLY #63112 /* ~"Very well. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"Ignus?" The man stares at you, then frowns. "Is that a name? Who in the hells are you talking about?"~ */
  IF ~~ THEN REPLY #63115 /* ~"You have answered my question. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"Other incarnations - reflections of ourselves. I will have them merge with me after I deal with you." He glances at the hunched incarnation, who was howling when you first arrived. "Or kill them if they refuse; it is of no matter. They are not necessary."~ */
  IF ~~ THEN REPLY #63118 /* ~"I see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"He is one of the other incarnations - reflections of my self. I will have him merge with me after I deal with you. Or kill him if he refuses; it is of no matter."~ */
  IF ~~ THEN REPLY #63121 /* ~"There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~The man looks at you, then smiles incredulously. "I surrender to no man. It is you who will be absorbed by me."~ */
  IF ~~ THEN REPLY #63124 /* ~"I doubt it."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"I shall not fight you this day, then. Still, there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"Never mind, then. Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"Do you intend to fight me on this?" The man seems more amused than anything else. "You are no match for me. There's little point in resisting."~ */
  IF ~~ THEN REPLY #63128 /* ~"Try me."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"I shall not fight you this day, then. Still, there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"Never mind, then. Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~You lock gazes with him... his eyes are like stones, and they start to drag you down...~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~Lock gazes with him, try and force him to merge with you.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~Lock gazes with him, try and force him to merge with you.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~Lock gazes with him, try and force him to merge with you.~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~Surrender your will and allow yourself to be absorbed.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"So be it, then." His eyes become gray like mist, and he gives a slight smile, as if in anticipation. "We shall see what your mind has in store..."~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~You feel your mind beginning to peel apart beneath the incarnation's gaze. There is no pain, only the cold chill of oblivion as your personality is stripped away, piece by piece, and blackness fills your vision. And suddenly, you are no more.~ */
  IF ~~ THEN REPLY #63138 /* ~Fall into darkness...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~You feel your mind beginning to peel apart as you lock gazes with him, and you *know* that his will is stronger than yours. If you persist, he will absorb you, and you will be no more -~ */
  IF ~~ THEN REPLY #63140 /* ~Allow the incarnation to absorb you.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~Rip your eyes away from him, turn away.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~Tear away from his gaze and attack him. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~As your mind unravels, there is no pain, only the cold chill of oblivion as your personality is stripped away, piece by piece, and blackness fills your vision. And suddenly, you are no more.~ */
  IF ~~ THEN REPLY #63144 /* ~Fall into darkness...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~You rip your gaze away from his, and you see his face twist in fury. "What are you *doing?!* Are you so weak that you cannot even face our future?! By the hells, what a hollow shell you have become!"~ */
  IF ~~ THEN REPLY #63146 /* ~"Perhaps... so... but I still... have the power to KILL you... prepare to DIE."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"There are... other things... I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"Let me get... my bearings... I shall return."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~As you swim in the corridors of his mind, the first emotion you encounter is surprise - and his eyes widen. He is not absorbing you; your will is stronger, and it is consuming *him.* You feel him desperately trying to pull back, but he cannot - he is too weak, and your will blocks his retreat while drawing him deeper into your sub-conscious.~ */
  IF ~~ THEN REPLY #63150 /* ~"This is the last time we shall ever speak. Return to death, where you *belong.*"~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~He looks incredulous for a moment, then he disintegrates, and you feel a RUSH of knowledge pouring through you, fighting to the surface... it's almost too much to absorb at once, and you find yourself disoriented. So much knowledge - so many experiences, that -~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~...and as quickly as it occurred, the rush subsides, and you steady yourself. The bits of knowledge swirl about in your mind, and you will make sense of them later. For now, only one piece of knowledge is important - that the incarnation did NOT know how to leave this place. He lied, to trick you into surrendering.~ */
  IF ~~ THEN REPLY #63153 /* ~"Dammit..."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"You are wasting your time speaking to that one. His thoughts are all angles and spite and nothing more. Stop wasting time - there is much the two of us must speak of."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"Do not *threaten* me, you fool - I warn you. If anyone is the thief, it is you - you sought to steal our chances to settle this matter by sabotaging all my work!"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"I'd almost forgotten - yes, what a waste that was." The incarnation seems irritated. "Obviously, *that* didn't work. And it cost a lot of blood and coin, too."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~The first incarnation frowns at the second; he looks like he is barely restraining himself from attacking the other. "Yet *another* thing you will answer for..." He turns back to you. "Though I suppose it doesn't matter. It was shortly after the failure of the tomb trap that I decided to carry the battle to our killer rather than wait for him to show any longer."~ */
  IF ~~ THEN REPLY #63158 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"I've heard enough. We shall speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"They were other incarnations - reflections of ourselves. I wanted them to merge with me, but it is no matter. They are unnecessary."~ */
  IF ~~ THEN REPLY #63161 /* ~"I see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"Of *course* it was the right thing to do. I planned it for decades, down to the smallest details." His eyes take on a faraway stare. "Even so, it was a close thing."~ */
  IF ~~ THEN REPLY #63164 /* ~"I imagine. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"The directions?" He nods, irritated. "Of *course* I was responsible - I knew there was a *chance* I might fail here and lose my memories. I wanted future incarnations to benefit from some... guidance. So I had the directions stitched on my back, since such things - like *journals*..." He snarls, as if angry at himself. "Tend to be lost so *easily.*"~ */
  IF ~~ THEN REPLY #63167 /* ~"The directions were kind of vague, though..."~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"Why did you put that warning about Morte on the back?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"Were you the one who asked Pharod to get the Bronze Sphere from the catacombs?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"I see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"Are you a *fool?*" The incarnation looks exasperated. "The directions *needed* to be vague - I couldn't *spell* out exactly what was happening to us, so I left a signpost. What do you think would have happened if a Dustman had read them? Or someone even more barmy? How *quickly* do you think we would have been buried alive or cremated?"~ */
  IF ~~ THEN REPLY #63173 /* ~"Very well. What about me seeking out Pharod, though? Why him?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"Why did you put that warning about Morte on the back?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"Were you the one who asked Pharod to get the Bronze Sphere from the catacombs?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"I see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"Pharod?" The incarnation thinks for a moment. "Oh, yes - the trash king with all the 'tough' bloods that thought I was easy prey..." He smiles slightly, as if recalling a pleasant memory. "After only a little bloodletting, I struck a bargain with him - he would see to it that if his men found me, they would take me safely to the Mortuary - and, of course, I needed the eyes and hands of his men to scour the catacombs beneath Sigil for me." ~ */
  IF ~~ THEN REPLY #63179 /* ~"What for?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"For the Bronze Sphere?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"I see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"A sphere..."~ */
  IF ~~ THEN REPLY #63184 /* ~"...made of bronze. Ugly. Feels like an egg to the touch, and it smells of rotten custard. Right?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"Yes. I told Pharod it was the only thing that would save his miserable life... what a sniveling little dodger he was." The incarnation smiles at you. "You see, the old bastard was destined to end up on the Pillar of Skulls when he died, and he was desperately trying to weasel out of it. So I told him that there was an item beneath Sigil that would 'save' him from his fate, if he could only find it."~ */
  IF ~~ THEN REPLY #63186 /* ~"But it *wouldn't* save him - it was just something you wanted him to find."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"Of *course* it was useless to him. One cannot dodge fate so easily." He looks at you, irritated. "However, nothing motivates a man faster than telling him what he seeks will save his soul from eternal damnation. I intended to take it from him after he found it. It's just that searching for it myself would have taken... too long." He smiles again. "And why should I do it, when I could have someone else hunt for me?"~ */
  IF ~~ THEN REPLY #63188 /* ~"Actually, he ended up tricking *me* into finding it for him. Why was it so important?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"Uh, yeah... very true. I'm sure one of Pharod's men, uh, found it for him. Why was it so important?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"I... see. There are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"Important? Do you not know?" The incarnation becomes silent for a moment. "Do you have it with you?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"No, it died with Pharod. What was it supposed to do?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"No, it died with Pharod. What was it supposed to do?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~Lie: "No, it died with Pharod. Out of curiosity, what did it do?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~Lie: "No, it died with Pharod. Out of curiosity, what did it do?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"Yes, I do. I brought it with me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"It was a dead sensory stone." The incarnation is staring through you, as if seeing something far away. "Do you know what it contained?" He smiles ruefully. "It held the last experiences of the *first* of us. When we were one man, and not a string of incarnations." His voice drops. "If there had been some way of unlocking it, I would have been able to see inside his *mind*..."~ */
  IF ~~ THEN REPLY #63202 /* ~"And see why this all happened?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"Yes..." The incarnation's face has become somber. "It is the answer I have always sought. Why this happened. Why we became immortal." He sighs. "And I fear we shall never know."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"I brought it with me, you know."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"There are other things I would know."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"You *have* it?!" The incarnation's eyes flare. "Then your life had some use after all!" You watch his eyes flicker, as if thinking, calculating. "When we merge, I will see about finding a means to unlock it. Perhaps all is not lost..."~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"What is the sphere? Why is it important?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"I have no intention of merging with *you.*"~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~Truth: "Very well, I am ready to merge with you."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~Bluff: "Very well, I am ready to merge with you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"We shall see... but first, there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"It is a dead sensory stone. Do you know what it contains?!" He smiles eagerly. "It holds the last experiences of the *first* of us. When we were one man, and not a string of incarnations." His voice drops. "If there is some way of unlocking it, I will be able to see inside his *mind*..."~ */
  IF ~~ THEN REPLY #63215 /* ~"And see why this all happened?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"Yes..." The incarnation's face has become somber. "It is the answer I have always sought. Why this happened. Why we became immortal." He studies you. "When we merge, I will see about finding a means to unlock it. Perhaps all is not lost..."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"I have no intention of merging with *you.*"~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~Truth: "Very well, I am ready to merge with you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"We shall see... but first, there are other things I would know."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*I* don't deal in the realms of perhaps and maybe." The first incarnation sneers. "I seek answers. It is what has allowed us to get this far." He looks at the third incarnation with contempt. "If we had left life in *your* hands, we wouldn't have even a fraction of the truth we now possess. And in that truth, lies *power.*" He turns to you. "You will realize that when we merge."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"I brought the sphere with me, you know."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"I brought the sphere with me, you know."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"We shall see... but first, there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*I* don't deal in the realms of perhaps and maybe." The first incarnation sneers. "I seek answers. It is what has allowed us to get this far." He looks at the third incarnation with contempt. "If we had left life in *your* hands, we wouldn't have even a fraction of the truth we now possess. And in that truth, lies *power.*" He turns to you. "You will realize that when we merge."~ */
  IF ~~ THEN REPLY #63227 /* ~"I have no intention of merging with *you.*"~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~Truth: "Very well, I am ready to merge with you."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~Bluff: "Very well, I am ready to merge with you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"We shall see... but first, there are other things I would know."~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"Let me get my bearings, and we shall speak again."~ */ EXIT
END
