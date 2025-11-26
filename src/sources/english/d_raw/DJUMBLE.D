// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~This short, balding man's orange tunic and rather sizeable gut give him the look of a walking pumpkin. He is absent-mindedly patting his large paunch with a slow rhythm, as if it were a drum. The man's odd, crooked smile and a strange gleam in his eyes make him look a bit mad.~ */
  IF ~~ THEN REPLY #2938 /* ~"Greetings..."~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~The man gives an exaggerated, flourishing bow, and presents a small card which reads only 'Jumble Murdersense - Xaositect Xorceror X-traordinare.' He then snatches the card from your grasp and proceeds to eat it, grinning wildly all the while.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"I had some questions, Jumble..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"You're the man who cursed Reekwind, aren't you?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~I met the man who cursed Reekwind in the Civic Festhall: Jumble Murdersense.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"I'd like you to remove Reekwind's curse."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"I'll take my leave now, Jumble. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Jumble yawns and looks away, drumming on his belly with the palms of his hands.~ */
  IF ~~ THEN REPLY #41932 /* ~"Jumble? My questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"Never mind... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Jumble rolls his eyes. He turns to you, smirks, then bites his thumb.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"At least answer me this: did you curse Reekwind?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~I met the man who cursed Reekwind in the Civic Festhall: Jumble Murdersense.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"Fine. But I'd like you to remove Reekwind's curse."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"Are you mute? Is that why you won't answer me?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~Truth: "I want some answers, and I'll beat them out of you if I have to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~Bluff: "I want some answers, and I'll beat them out of you if I have to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Jumble cocks his head and gives you a stupid grin. Slowly, he shrugs... then shuts his eyes and sticks his tongue out at you.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~Truth: "I want some answers, and I'll beat them out of you if I have to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~Bluff: "I want some answers, and I'll beat them out of you if I have to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Jumble raises one eyebrow and takes a step back. He opens his mouth abruptly, and - though his lips or throat don't move to shape any words or sound - a torrent of incomprehensible babbling begins to pour forth.~ */
  IF ~~ THEN REPLY #41945 /* ~"What the...?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~I've been cursed with perpetual hiccups by a Xaositect mage called Jumble Murdersense. Hopefully someone else in the Festhall will have some idea of how to either remove the annoying curse... or how to get Jumble himself to undo it.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Jumble shuts his mouth, and the babbling ceases... he peers at you through narrowed eyes, a self-satisfied smile on his pudgy face. Suddenly, you hiccup.

And hiccup. And hiccup. And hiccup again.

Jumble Murdersense merely turns his head and waves you away.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"What have you done to me?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"Jumble... please, undo whatever you've done."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"Whatever you've done, undo it - or you'll regret it sorely."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"I'd better find someone who can help me lose this curse. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Jumble ignores you entirely.~ */
  IF ~~ THEN REPLY #41952 /* ~Attack him.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"I'd better find someone who can help me lose this curse. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Jumble pulls an innocent face and shrugs, as if to say 'I don't know.' He then covers his mouth with his hand and giggles like a giddy schoolgirl.~ */
  IF ~~ THEN REPLY #41955 /* ~"I'd like you to remove his curse."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Jumble pretends not to hear you, instead belching loudly and resuming his belly drumming, his eyes wandering around the Festhall.~ */
  IF ~~ THEN REPLY #41959 /* ~"Is there anything I could do so that you'd remove Reekwind's curse?"~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~Truth: "Remove his curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~Bluff: "Remove his curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Jumble won't look at you, but shakes his head.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~Truth: "Remove Reekwind's curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~Bluff: "Remove Reekwind's curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Leave.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Jumble Murdersense gives you his trademark exaggerated, flourishing bow, then cocks his head and looks at you curiously.~ */
  IF ~~ THEN REPLY #41968 /* ~"I had some questions, Jumble..."~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"You're the man who cursed Reekwind, aren't you?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~I met the man who cursed Reekwind in the Civic Festhall: Jumble Murdersense.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"I'd like you to remove Reekwind's curse."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"I was just passing by; farewell."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Jumble frowns at your appearance, biting his thumb in your direction and waving you away.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Throw the curse Salabesh taught you at him.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"Jumble, I need you to remove the curse you put on me."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~He rolls his eyes and yawns pointedly.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Throw the curse Salabesh taught you at him.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~Truth: "Remove the curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~Bluff: "Remove the curse, Jumble, before I'm forced to hurt you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Jumble Murdersense makes a show of examining and cleaning his fingernails.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Throw the curse Salabesh taught you at him.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Attack him.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Jumble stares at you with a somewhat skeptical expression as you speak the arcane syllables of Salabesh's curse. After a moment of awkward silence, the Xaositect mage notes that nothing seems to have happened... and an evil grin spreads across his face.~ */
  IF ~~ THEN REPLY #41986 /* ~Continue...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~He opens his mouth to retaliate with another curse of his own... only to realize he has no voice! Salabesh's curse has removed Jumble's ability to speak, thereby destroying the Xaositect's ability to curse others. He clutches at his throat, panic welling up in his eyes.~ */
  IF ~~ THEN REPLY #41988 /* ~"Looks like the tables are turned, Jumble. What do you think'll happen when anyone - *hiccup!* - you've ever cursed finds out you can't speak - or curse - anymore?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Jumble drops to his knees, a pleading expression in his eyes. He looks ready to burst into tears.~ */
  IF ~~ THEN REPLY #41990 /* ~"Will you - *hiccup!* - remove the curse you placed on me? And swear never to curse another who didn't mean you harm?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Jumble places his hands over his heart and nods vigorously.~ */
  IF ~~ THEN REPLY #41992 /* ~"Very well. I'll remove the curse, then..."~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~I forced Jumble Murdersense to remove the curse he placed on me, all with the help of a hex I learned from Salabesh the Onyx, 'Master of Curses.'~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Jumble sighs with relief as you remove Salabesh's curse from him. He, in turn, removes his own, and your hiccups finally stop. He then bows humbly and casts his eyes to the floor.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"You cursed Reekwind too, didn't you?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~I met the man who cursed Reekwind in the Civic Festhall: Jumble Murdersense.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"I'd like you to take your curse off Reekwind, as well."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~I convinced Jumble Murdersense to remove Reekwind's curse with a little curse of my own.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"Farewell, Jumble."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Jumble nods, pouting, and with a wave of his hand, removes Reekwind's curse.~ */
  IF ~~ THEN REPLY #41997 /* ~"Thanks. Farewell, Jumble."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Jumble gives you an awkward bow and an uneasy look. It's clear he'd rather not have anything more to do with you.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"You cursed Reekwind too, didn't you?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"I'd like for you to take your old curse off Reekwind."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~I convinced Jumble Murdersense to remove Reekwind's curse with a little curse of my own.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"Just passing by, Jumble. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Jumble sighs loudly, rolls his eyes, and nods.~ */
  IF ~~ THEN REPLY #67868 /* ~"I'd like for you to take your old curse off of him."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END
