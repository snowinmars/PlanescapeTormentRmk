// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"Thanks to you, all is lost to me! They shall keep coming and coming... oh, the torments I will inflict on you... ackkk... forgive me. My words were spoken in haste."~ */
  IF ~~ THEN REPLY #2914 /* ~"Good. I need some of your supplies. What do you have?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"I hope so. I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"I can smell the taint of your betrayal on you, feel and hear the approach of my brethren as they come to spirit me back to Baator... away with you, oath-breaker! I have given you all I can! I can give you nothing more!"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"Is there really no more to give?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"I just have a few more questions for you..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~The fiend freezes. "Eh... nothing of value. Maybe a trifling charm, a trinket you might have... if you are truly in need of them, then yes, you may have them... otherwise..."~ */
  IF ~~ THEN REPLY #54890 /* ~"What have you got?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"Forget it. Just answer some questions for me."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"Forget it. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"Feh! Thrice-damned be you, mortal! You had best pray that the deva has eternity running through his veins, for if he has not, I shall see to it that you will pay me back in kind, but it will not be magic that I will expect in return... Urkhhhh... ugnnnhhh... no, no, I meant no harm... I withdraw my poorly-worded speech... I meant no harm..."~ */
  IF ~~ THEN REPLY #54896 /* ~"Good. Hand it over. Now."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"If you have no need for them, Forked-Tongue, I could use them."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"Forget it, Forked-Tongue. Answer some questions instead..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"Cursed, advantage-seeking... certainly you may look at my wares. What would you like to see?" ~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"Argh! I can always use these items! I can use them especially against the horde of fiends you have so thoughtlessly led to my door!"~ */
  IF ~~ THEN REPLY #54915 /* ~"That's too bad. Pass them over, then."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"Then I shall allow you to keep them."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"Feh! Your generosity is that of the thrice-accursed devas of Elysium. What more do you want from poor Fhjull?"~ */
  IF ~~ THEN REPLY #54918 /* ~"Come to think of it, let me see your wares."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"Just the answers to some questions..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"Nothing for now. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"Nothing for now. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~He grits his teeth. "How may I serve you further?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"How do I get out of this crater?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Forked-Tongue told me that the portal out of the crater, the one that will return me to Curst, is under the tailbone of the massive skeleton. He expressed delight that I should be traveling through its arse-end. ~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"How do I leave again?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"Tell me about Trias."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"So why are the baatezu chasing you?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"Do you have anything you'd like to... share with me?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"Why are you hiding out in this crater?"~ */ JOURNAL #66807 /* ~Forked-Tongue told me the reason he hides in the crater and lives in the skeleton is because the magic of the bones of Ul-Goris prevents scrying, and thus he can hide from those who would do him harm.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"You can't right now. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"You can't right now. Farewell."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"You can't right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"Ha! What trouble will you bring next time? Your kind always returns... feh!"~ */
  IF ~~ THEN REPLY #54934 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"Feh... does this mean that you shall leave me to my solitude once again? Then I proclaim, with as much delight as possible, that the portal lies under the arse-end of this creature's bones. It will return you to that groveling hovel town of Curst, from whence you came, and I can think of few more befitting ways for you to travel."~ */
  IF ~~ THEN REPLY #54936 /* ~"Thanks. I had a few more questions..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"That skulking pseudo-child of light! That contemptible... aggh... I mean no harm to him and his treacherous, lying, no-respect-for-the-law ways! Feh! He is a deceiver, mortal, and you should trust him in nothing. I mean this, of course, with all due charity and..." Forked-Tongue spits on the ground, "... kindness. His deception has cost me an eternity... unless he should die." His toothy grin is surprisingly hopeful.~ */
  IF ~~ THEN REPLY #54941 /* ~"I had a few more questions..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"Feh... they seek to balance their books, to redress wrongs, to ensure that all is set right. My existence, away from their sight, mars the perfection they seek to levy on the face of evil."~ */
  IF ~~ THEN REPLY #54946 /* ~"I had a few more questions..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"This is the skeleton of Ul-Goris, the father of the goristro. They're living, bearlike siege-towers, juggernauts of chaos, huge, practically unstoppable, highly resistant to magic... and Ul-Goris' bones, in the crater where he fell to his death, radiate much energy that prevents scrying. Feh!"~ */
  IF ~~ THEN REPLY #54951 /* ~"I had a few more questions..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"Farewell, then."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"Feh... that is Hatred's Gift, a fine weapon for one such as yourself." He chuckles to himself. "I don't think you'll want it... there is a curse laid on it. Perhaps you would reconsider..."~ */
  IF ~~ THEN REPLY #54956 /* ~"I'll take it anyway."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"That old thing? Feh! That is the Gordian knot. Cut it, and you become twice the leader you are already, heh heh. And of course it comes with its own price, one I am thankfully powerless to stop."~ */
  IF ~~ THEN REPLY #54968 /* ~"I'll take it anyway."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~He sighs. "An adder's tear, that is. Put it in your mouth and you shall kiss like an adder, full of venom and hatred."~ */
  IF ~~ THEN REPLY #54980 /* ~"I'll take it."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"A memento from my time in Baator - a knife carved from Baatorian green steel, one of the strongest materials I have ever known. Feh! Take my history and be done!"~ */
  IF ~~ THEN REPLY #54992 /* ~"I will take it. I'm not sure I'm done, though."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"That old thing? Feh! It is but a dagger of Baatorian green steel. Holds an edge. It's nothing you would want, to be sure."~ */
  IF ~~ THEN REPLY #55004 /* ~"I'll take it anyway."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"Those? They are *kassegs,* parasites that will lodge in your brain and devour your mental energy with no appreciable benefit... Feh! Cursed contract! They boost your mental power, something you surely could use! Take them! Take them!"~ */
  IF ~~ THEN REPLY #55019 /* ~"I will."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"Feh! Of course you will! Is there anything else you require from your *humble* servant?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Examine the knotted string: "What's this?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"Do you happen to have any spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"None of them. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"None of them. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"Bah! You will strip me of all my possessions! You want spells? Feh! This is what I have, bloodsucker!" He rattles off a list of spells.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"How about a nice Remove Curse?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"Give me another Remove Curse."~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"Globe of Invulnerability sounds useful. Let's have it."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"You have any more Globes of Invulnerability?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"How about that Chain Lightning Storm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"Another Chain Lightning Storm would be good..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"Acid Storm sounds dangerous. Give it to me."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"Acid Storm. Give it to me."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"Bladestorm? Impressive name. I want it."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"Give me another Bladestorm."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"Stygian Ice Storm? That sounds too dangerous for you to have around... I'd best take it from you."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"Stygian Ice Storm? I'd like that."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"That was an empty list you just spoke."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"Forget it. I have some questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"Forget it. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~His hand disappears as he reaches into a strange space/not-space. He pulls out a scroll that feels strangely like supple human skin, and thrusts it at you. "Feh! Take it and be dam... take it!"~ */
  IF ~~ THEN REPLY #55064 /* ~"Thanks... what else have you got in the way of spells?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"Let's take a look at those items again."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"Forget it. I have some questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"Forget it. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~He grimaces toothily. "Deep and profound joy it is to tell you that you have plundered all of my copies of that particular spell. Feh!"~ */
  IF ~~ THEN REPLY #55073 /* ~"What other spells do you have?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"Let's take a look at those items again."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"Forget it. I have some questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"Forget it. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Forked-Tongue snarls at you. "You have ruined, destroyed, eviscerated one of the most unique spell libraries in the multiverse... for all the good it will do you. I have no more spells to give you."~ */
  IF ~~ THEN REPLY #55082 /* ~"Let's take a look at those items again."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"Forget it, then. Answer some questions instead..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"Farewell, then."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"Farewell, then."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"Feh! So you've returned! And what did the Pillar speak of? Did it answer your insipid questions?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"I just had a few questions..."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"Argh! What? WHAT??"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"I just had a few questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"Feh! The fetid stench of a tanar'ri! I can smell it for leagues! Show some respect for my home! Can't you find some fumes or acidic vapors to try and drown your scent? Feh! I'll never get that tanar'ric stench out of the place. It'll draw baatezu from all over the planes."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"Oh, and it's not just any tanar'ri, but a tanar'ri whore who's just walked into my home... things can't get any worse. Come in! Come in! Please, my home is your home!" He waves his hands in the air in despair. "Why don't you invite all the rest of your Abyssal harpies into my home to torment me?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"Feh! The fetid stench of a tanar'ri! I can smell it for leagues! Show some respect for my home! Can't you find some fumes or acidic vapors to try and drown your scent? Feh! I'll never get that tanar'ric stench out of the place. It'll draw baatezu from all over the planes."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"Have you come to kill me?! Torment me? If so, know that I still have much power at my disposal!"~ */
  IF ~~ THEN REPLY #55100 /* ~"I have not come to kill you."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"I have not come to torment you."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"I just want the answers to some questions..."~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"Must you constantly befoul the smell of my home with the rotting stench of a tanar'ri? Ask your questions and begone!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"Tell me of yourself."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"I am so pleased to see you again. I would be equally pleased if you would curl up and die."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"Tell me of yourself."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"What do you want of me, what impositions do you have this time?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"Tell me of yourself."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"Feh! Who goes there?! Have you come to kill me?! Torment me? If so, know I still have much power at my disposal!"~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"Are you Fhjull Forked-Tongue?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"Feh! Of course I am! You must have known that if you came barging into *this* particular monster skull, of all the monster skulls scattering the endless Outlands... or is it just chance that sent an idiot barging in my front door?" A thought seems to strike him. "You must swear to tell NO ONE that you know where I am!"~ */
  IF ~~ THEN REPLY #55554 /* ~Truth: "I swear."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"I will not."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Lie: "I swear."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~He relaxes visibly. "And how did you find this place, heh?"~ */
  IF ~~ THEN REPLY #55558 /* ~"The deva Trias said you could answer some questions for me."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"Then be damned! See if I care! Feh! How did you find this place?!"~ */
  IF ~~ THEN REPLY #55562 /* ~"The deva Trias said you could answer some questions for me."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~He stiffens. "Trias? Trias the *Betrayer* sent you here?" His claws clench and unclench. "This is the final indignity! That self-righteous bastard! Kill him, and I will reward you with all that I have at my disposal! Flay his skin and bring it to me so I might wear it as a cloak... hurkkk!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"I mean... no, no... do not harm the deva. It would be wrong to do so... I was mistaken. Mistaken, I was."~ */
  IF ~~ THEN REPLY #55567 /* ~"What did Trias do to you?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"While that was entertaining, I have some questions I'd like answered."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"Feh! Years of service as an Advocate Infernus! Painstaking detail and organization. I never questioned my superiors. I did ALL that was asked of me. I punished those below me with the cruelest and most inventive punishments when they failed."~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"THEN... one slip, and it all comes crashing down! All due to CHANCE. CHAOS. RANDOMNESS. And the lesser races wonder why the baatezu wish the multiverse to be an orderly construct." He pauses, hissing in anger. "The deva lied. It *lied.* Trias the betrayer tricked me into signing a contract, and I, blinded by the possibility of capturing him, walked straight into his trap."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"If he dies, the contract is over... but I have not been able to find him, and if I did, how would I harm him?! What am I to do? Even these treacherous thoughts make my mind burn in pain. I was *so* sure I had that paragon of self-righteousness. That short-sighted greed cost me the rest of my centuries of glorious conniving and entombed me in this sinkhole of good will. Bleh."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~I have found Fhjull Forked-Tongue, the charitable fiend. It seems he has been contractually bound by an agreement with Trias - whom he calls Trias the Betrayer. He is now cursed to do good deeds, to aid those in need of aid. He's not happy about it, either.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~I have found Fhjull Forked-Tongue, the charitable fiend. It seems he has been contractually bound by an agreement with Trias - whom he calls Trias the Betrayer. He is now cursed to do good deeds, to aid those in need of aid. He's not happy about it, either.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"And now I am cursed to do good deeds, to aid those in need of aid. Feh! An eternity of curses on Trias! A pox on his blessed aid! May all the dung heaps of Maladomini rain down upon his head!"

He rants for a few more moments, and then turns his attention back to you, and speaks through gritted teeth. "My contract with the deva now bids me ask what I can do for you. Have you come to torment me? Kill me?"~ */
  IF ~~ THEN REPLY #55590 /* ~"I come seeking only knowledge."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"I have not come to torment you."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"I have not come to kill you."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"No. In fact, I was just leaving."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"Oh, WONDERFUL."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"Tell me of yourself."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"Feh! We shall see, we shall see! If you do not intend to kill or inflict pain upon me, I fear that the torment is of a subtler nature... by far, the worse of many such pains."~ */
  IF ~~ THEN REPLY #55615 /* ~"I'd just like the answers to some questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"All right, forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"Feh! Only if you would! Then you could put an end to this shell of an existence!"~ */
  IF ~~ THEN REPLY #55622 /* ~"I'd just like the answers to some questions..."~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"What makes this existence so bad?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"How can MORONS speak so much?" He waves his hand. "Speak. Speak. Feh!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"Tell me of yourself."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"Feh. Speak. Speak your piece."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"Tell me of yourself."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"How did your wings get that way?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"Where is this place?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"I was told that you would know of my mortality. It has been stolen from me."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"What are you doing?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"I'm in need of some aid."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"Tell me of this Pillar and how to reach it again."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~He rolls his eyes. "Had you seen the glories of Baator, walked through its darkened palaces and visited the screaming steel cities hidden beneath the noisome smokes, you would not ask. Feh!"~ */
  IF ~~ THEN REPLY #55672 /* ~"All right. Answer some questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"Oh, yes. Aren't they beautiful...? Feh! They were the first things to be stripped from me before my exile. Before I was forced to flee the burning halls of my people, the wings were taken as trophies by the lowly *abishai,* for banners in the Blood War. My horns were snapped from my skull, and one was hollowed out as a drinking horn for my Lord Bel, accursed be his name across the planes."~ */
  IF ~~ THEN REPLY #55677 /* ~"Why did that happen?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"What can you tell me of the Blood War?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"Answer some other questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"Thanks... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"Feh. A blasted crater in the Outlands that reflects the emptiness and hollowness of my life. Feh. I need little. Marrow from the creature supplies me with food and the peculiar energies of the place prevent scrying fools from finding me... though idiots apparently can still find their way here."~ */
  IF ~~ THEN REPLY #55684 /* ~"What is this creature?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"What makes your life so empty?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"Answer some other questions for me..."~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~He scrutinizes you closely for the first time. "Memories run like hollow canyons through my mind, almost-human. Many creatures have I met in an immortal's time... though I do not believe you were among them."~ */
  IF ~~ THEN REPLY #55695 /* ~"Go on."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"Answer some other questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"Forget it then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"I was simply living my life in pain-numbing and tragic solitude until you appeared without invitation into this crater of my life. The crater, such a metaphor for my life, for my existence, a pale shadow of the dwellings I used to possess."~ */
  IF ~~ THEN REPLY #55701 /* ~"What happened to you?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"Answer some other questions for me..."~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"Oh, good. Self-absorbed ranting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~He emits a strangled croak. "I have some few... very few... items that I have accumulated over the years. They are... precious to me... but if you need them..."~ */
  IF ~~ THEN REPLY #55705 /* ~"I sure do. Let's see what you've got."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"Answer some other questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"Nothing. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"What do you need to know? How to get there? What it is? What? What?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"Tell me what it is."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"Tell me how to get there."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"And how do I return once I have gone?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"How would I return from the Pillar?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"Answer some other questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"Feh! I have said all I intend to say on the matter of the Betrayer. He it was who condemned me to this life, and he whose guts I will see stringing the Gates of Dawn like a celestial harp... no... no... no harm to the deva. Curses!"~ */
  IF ~~ THEN REPLY #55724 /* ~"Answer some other questions for me then..."~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"I see... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"I used to be one of the finest Advocates Infernus in Baator... and then I suffered a setback. An overturning, a reversal of my good fortunes. Such things make me hate chance and the chaos of the multiverse all the more."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"What happened to you?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"What happened to you?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"Why did you have to leave?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"Answer some other questions for me..."~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Forked-Tongue shrugs. "You all look alike to me... and I think I would have remembered the scarred flesh of your body... it is much like the breathing paintings that bedeck Bel's gallery of skins in Baator, except with less grace and more passion in the scar strokes."~ */
  IF ~~ THEN REPLY #55747 /* ~"Let's ignore the scars and start talking about my mortality again, shall we?"~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"Go on..."~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"I had some more questions..."~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"The violence is great, nearing acceptable levels, but the scars are applied with almost tanar'ric crudity, without any care for maximizing the pain of the recipient. A baatezu artist would be much more devoted to following the paths of pain across the body. Some of these wounds look to be clean kills, others look as if a blind butcher were carving up human steaks."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"What...?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"Feh. Human art makes me ill sometimes. Such potential, wasted."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"Feh. Human art makes me ill sometimes. Such potential, wasted."~ */
  IF ~~ THEN REPLY #55755 /* ~"Let's ignore the scars and start talking about my mortality again, shall we?"~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"I had some questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"Feh! To say that tanar'ri are crude is to insult crudity. Any lesser race that revels in chaos, allows itself to be pulled and drowned in its stagnant tides, and calls it 'evil' are not a race at all. They are beasts."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"Feh and double feh! The tanar'ri beasts want to strip law and order from the face of evil! Inexcusable! Intolerable! I cannot-"~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"Feh! You say that simply because you are... what you are." He wags his eyebrows at her. He waves his hand dismissively. "At least I am still allowed to be cynical."~ */
  IF ~~ THEN REPLY #55761 /* ~"Great. Let's get back to discussing my mortality, instead of my scars."~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"I had some other questions I wanted answered..."~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"Very well, very well." He scratches his head. "If I recall correctly - and there is so much I do not, thanks to that accursed deva! - I have heard of a case such as yours. It makes you immortal, does it not?" ~ */
  IF ~~ THEN REPLY #55765 /* ~"Yes."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"If so, then death itself is no longer sacred. Feh. In my day, mortals remained so and knew their place... now everybody and their mother has the disease of eternal boredom. We should have a gathering and invite everyone across the planes and offer them immortal contracts... it would save all of us hard-working baatezu a great deal of effort. Feh."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"You know that if everyone was immortal, this entire petitioner system would be up the famed fecal creek. Feh. Immortality is not a trinket to be given to unruly children such as you."~ */
  IF ~~ THEN REPLY #55768 /* ~"Be that as it may, but tell me what you know of my mortality."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"Feh... as I was saying, I recall hearing somewhere about a place called the Fortress of Regrets." He thinks for a moment. "Yes... yes, that's it."~ */
  IF ~~ THEN REPLY #55770 /* ~"How do I get there?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"What do you know of the place?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~He smiles widely. "I am pleased to inform you that I do NOT know. Not at all! I cannot help you to get there, and that chills my heart in such a delightful way. No. I. Cannot. Help. You. Oh, how I have longed to say those words. How sweet they tas-"~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"Do you know someone who does?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"Do you know someone who does?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"Eh? Enough of your cross examinations! Yes, yes, I know *somebody* who might know... on Baator lies a pillar of betrayers, liars... and sages. Despite their nature, their knowledge is considerable. They might know where you can find this Fortress of Regrets." ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"How do I get to Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Forked-Tongue told me that a pillar made of sages, liars, and traitors might have the answers I seek regarding my missing mortality. There is a portal made under the left arm of the giant skeleton here, through which I can travel to reach Baator.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"How do I get to Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"There is a portal outside my home. It lies in the hand of this giant creature. Go through the arch formed by the left arm of the creature and you will be taken to the Pillar of Skulls. The portal will be active for you now."	~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"And how do I return?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~The fiend also told me how to return from the Pillar - simply find something common to the environment of the plane, and it should bring me back here.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"How would I return from the Pillar?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~The fiend also told me how to return from the Pillar - simply find something common to the environment of the plane, and it should bring me back here.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"How would I return from the Pillar?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"Thanks. I had more questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"Eh? Return? Why, I hadn't thought of that. To return from Baator, you need knowledge and a piece of jagged obsidian to cut your tongue. That knowledge you will gain from the Pillar. But there is no reason for you to return here. And no desire on my part to see you again."~ */
  IF ~~ THEN REPLY #55783 /* ~"Thanks. I had a few more questions..."~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~He snarls. "I entertain no thoughts of strangling you and leaving your corpses for the trelons." ~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"Feh... that is Hatred's Gift, a fine weapon for one such as yourself." He chuckles to himself. "I don't think you'll want it... there is a curse laid on it. Perhaps you would reconsider..."~ */
  IF ~~ THEN REPLY #55796 /* ~"I'll take it anyway."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"That old thing? Feh! That is the Gordian knot. Cut it, and you become twice the leader you are already, heh heh. And of course it comes with its own price, one I am thankfully powerless to stop."~ */
  IF ~~ THEN REPLY #55806 /* ~"I'll take it anyway."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~He sighs. "An adder's tear, that is. Put it in your mouth and you shall kiss like an adder, full of venom and hatred."~ */
  IF ~~ THEN REPLY #55816 /* ~"I'll take it."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"A memento from my time in Baator - a knife carved from Baatorian green steel, one of the strongest materials I have ever known. Feh! Take my history and be done!"~ */
  IF ~~ THEN REPLY #55826 /* ~"I will take it. I'm not sure I'm done, though."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"That old thing? Feh! It is but a dagger of Baatorian green steel. Holds an edge. It's nothing you would want, to be sure."~ */
  IF ~~ THEN REPLY #55852 /* ~"I'll take it anyway."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"Those? They are *kassegs,* parasites that will lodge in your brain and devour your mental energy with no appreciable benefit... Feh! Cursed contract! They boost your mental power, something you surely could use! Take them! Take them!"~ */
  IF ~~ THEN REPLY #55874 /* ~"I will."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"Feh! Of course you will! Is there anything else you require from your *humble* servant?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Examine the cruel-looking axe: "What's this?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Examine the knotted string: "What's this?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Examine the green lozenge: "What's this?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Examine the green-steeled knife: "What's this?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Examine the green-hued dagger: "What's this?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Examine the squirming bugs: "What are these?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"Do you happen to have any spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"Forget it. Answer some questions for me instead."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"Bah! You will strip me of all my possessions! You want spells? Feh! This is what I have, bloodsucker!" He rattles off a list of spells.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"How about a nice Remove Curse?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"How about a nice Remove Curse?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"Globe of Invulnerability sounds useful. Let's have it."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"You have any more Globes of Invulnerability?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"How about that Chain Lightning Storm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"Another Chain Lightning Storm would be good..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"Acid Storm sounds dangerous. Give it to me."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"Acid Storm. Give it to me."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"Bladestorm? Impressive name. I want it."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"Give me another Bladestorm."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"Stygian Ice Storm? That sounds too dangerous for you to have around... I'd best take it from you."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"Stygian Ice Storm? I'd like that."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"That was an empty list you just spoke."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"Forget it. I have some questions."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~His hand disappears as he reaches into a strange space/not-space. He pulls out a scroll that feels strangely like supple human skin, and thrusts it at you. "Feh! Take it and be dam... take it!"~ */
  IF ~~ THEN REPLY #55955 /* ~"Thanks... what else have you got in the way of spells?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"Let's take a look at those items again."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"Forget it. I have some questions."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~He grimaces toothily. "Deep and profound joy it is to tell you that you have plundered all of my copies of that particular spell. Feh!"~ */
  IF ~~ THEN REPLY #55960 /* ~"What other spells do you have?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"Let's take a look at those items again."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"Forget it. I have some questions."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Forked-Tongue snarls at you. "You have ruined, destroyed, eviscerated one of the most unique spell libraries in the multiverse... for all the good it will do you. I have no more spells to give you."~ */
  IF ~~ THEN REPLY #55965 /* ~"Let's take a look at those items again."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"Forget it, then. Answer some questions instead..."~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"Feh! Have you drummed your skull against every rock that falls from the mountain of ignorance? In the Lower Planes rages the Blood War. There is not another plane that is not touched by this conflict. Think of the most hideous war imaginable, magnify it a billion times in time and scope, and you have a fraction of the battlefield for which the Lower Planes are fought. It is a war of ideology, to define one of the most basic concepts of the multiverse!"~ */
  IF ~~ THEN REPLY #55970 /* ~"Go on."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"Forget it. I had more questions."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"This is the skeleton of Ul-Goris, the father of the goristro. They're living, bearlike siege-towers, juggernauts of chaos, huge, practically unstoppable, highly resistant to magic... and Ul-Goris' bones, in the crater where he fell to his death, radiate much enchantment that prevents magic to spy me, keeping this pitiful frame alive for a few more desperate years. Feh!"~ */
  IF ~~ THEN REPLY #55978 /* ~"Got it. I have a few more questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"Had you walked the scalding streets of Dis and smelled the sweet stench of burning of flesh, breathed deep the poisonous vapors of Stygia's ice floes, led armies through the night-lit palaces... you would not ask this question, near-man."~ */
  IF ~~ THEN REPLY #55983 /* ~"So what happened to you?"~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"I had a few more questions..."~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"That accursed deva is what happened to me! So secure I was, so sure... Feh! Stripped of my power like a fledgling. No wonder it is that the hordes of Baator's marshals seek me."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"Tell me of Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"Tell me of Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"I have a few more questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"Feh! Have I not told you of the nature of this cursed contract! I can NOT withhold this information. The Pillar... is your only hope."~ */
  IF ~~ THEN REPLY #55997 /* ~"Morte, why don't you want to go there?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"All right. Answer some other questions for me."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"Feh... what it is, is a massive pile of heads, the spirits of those dead who got there by telling lies that led to the deaths of others. It's a collection of sages and cheats, all rolled together, with some of the most extensive knowledge of the planes."~ */
  IF ~~ THEN REPLY #56003 /* ~"Thanks. I had some other questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"Feh! I shall dispel your ignorance on this matter. Know that there is NO place for a baatezu wrapped in chains of charity where I would WISH to be. Here, at least, may I take shelter from the cruelty of the contract inflicted upon me. That deva has the soul of a fiend, I tell you."~ */
  IF ~~ THEN REPLY #56007 /* ~"Answer some more questions for me, then..."~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"It gives research a prod... more horrific creations have come about because of the Blood War. Why? Because it's pain, and death, and evil. The tanar'ri fight for chaos and evil... evil through brute force and sudden flurries of whim and hate. Their 'evil' is the evil of the horde, a mob mentality of whirling evil. They kill and plunder."~ */
  IF ~~ THEN REPLY #56010 /* ~"And the other side?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"Forget it. I had other questions..."~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"The baatezu wish only strictly regimented evil, promoting the cause of evil in a precise, orderly fashion. The tanar'ri murder. The baatezu exploit. The two are determined to exterminate the other."~ */
  IF ~~ THEN REPLY #56014 /* ~"Continue."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"Forget it. Answer some questions instead."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"That's all I need to hear. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"Part of my assignment... and I was the best, mind you, was drafting new recruits, mostly planar warriors and mages from other worlds to serve as fodder and front-line troops in the war. Word has it that I caught the eye of Lord Bel himself. Even he saw my worth! Feh! Now my humiliation is complete."~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"Do you recognize me?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"Do you recognize me?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"All right. Answer some other questions for me, then."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"I'll say. Farewell."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"I'll say. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"Didn't we already go through this? Feh! Stupid humans!"~ */
  IF ~~ THEN REPLY #56024 /* ~"Answer some other questions for me, then."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"Thanks. Farewell."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~You see a broken-winged fiend, with one tattered wing, covered in scars. His voice is clenched, angry, and despairing, issuing from behind gritting teeth. "A tanar'ri in my home! Of all the indignities! Why don't you invite your whole filthy species in?!"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~You see a broken-winged fiend, with one tattered wing, covered in scars. His voice is clenched, angry, and despairing, issuing from behind gritting teeth. "A tanar'ri in my home! Of all the indignities! Why don't you invite your whole filthy species in?!"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"It seems I will have to BURY myself to avoid company."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"Great. Even more of a stench!"~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"Feh! Accursed one! After all my warnings and swearings, still you bring Baator's legions to my door! Promise-breaker! Betrayer! I... hmmm... so this is how it feels..."~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"What are you doing here?" The fiend turns and spits on the floor.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"WHAT? I must endure your presence even longer? Will this torment never cease? Feh! Fine, then, fine! Spread out across the floor! Raid my larder! Knock over my experiments! I'll just be over here fuming! Feh!" He storms off.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"Thanks."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"Thanks..."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"Thanks..."~ */ EXIT
END
