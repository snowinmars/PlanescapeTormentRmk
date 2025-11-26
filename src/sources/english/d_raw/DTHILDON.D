// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"Here now! Who's this? GUARDS! HE'S OVER HERE!"~ */
  IF ~~ THEN REPLY #12871 /* ~Done.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"You'll not be sullyin' me with yer talk! Away with you!"~ */
  IF ~~ THEN REPLY #12873 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"What'd Little Lickspittle tell y'now? I'm sure it were all lies."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"I haven't actually spoken to him yet. I had more questions that I wanted you to answer."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"He tells me that it's not a frame. In fact, he says that he personally witnessed you killing the poor sod."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"I'm still looking into this Anarchist angle."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"He says that he planted the awl on the body, but only because he wanted to make sure that you'd be implicated in the death. He says you're a murderer, and he wanted to make sure you got caught."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"He says that he planted the awl on the body, but only because he wanted to make sure that you'd be implicated in the death. He says you're a murderer, and he wanted to make sure you got caught."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"I've made my decision on who to accuse."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"That's not your business just yet. I need you to answer some questions."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"Nothing yet. Farewell."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"Shame about that poor smith Avildon, really it were. Still. He weren't one to keep himself to the grindstone. He weren't *dedicated.* 'Tis the way the planes turn, mark my words... every basher gets his due. Ah, well. What can ol' Thildon do for you?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"Saros - you remember Saros, don't you? - gave me an awl found near the body. Oddly, this awl has your name etched into the handle. How do you explain that?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~I confronted Thildon with the awl Saros gave me. Thildon claims he's being framed by Saros.~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"I'd like to ask you some questions."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"Nothing for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"Don't just take my word for it, berk! You got a dangerous one on your hands there, you do, and you got to make sure he doesn't kill no one else. Get to work!"~ */
  IF ~~ THEN REPLY #12888 /* ~"Thildon, I said I needed some questions answered. Now answer them."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"I'm on the case. Don't you worry. Farewell." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"He WHAT? I tell you that the boy's a thief and a murderer, and you don't believe me? What if I told you the lad's an Anarchist, too, a member of the Revolutionary League?"~ */
  IF ~~ THEN REPLY #12891 /* ~"Why should I believe that?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon claims that Saros is an Anarchist, working in league with the engineer Bedai-Lihn in trying to discredit him.~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~Lie: "If that were true, I'd see to it that he was brought to justice." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon claims that Saros is an Anarchist, working in league with the engineer Bedai-Lihn in trying to discredit him.~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~True: "If that were true, I'd see to it that he was brought to justice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon claims that Saros is an Anarchist, working in league with the engineer Bedai-Lihn in trying to discredit him.~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"Frankly, I don't really care. I think I've heard enough to convince me that you're the culprit."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~A pious look creeps onto his face. "'Cos I say it's so. 'Cos I'm about to say something that'll make a criminal of me, but I'll say it to see justice done." He pauses. "I know he's an Anarchist because he tried to recruit me. Him and that engineer Bedai-Lihn. I told 'em I'd do it so's I could trap 'em, but then I realized I didn't have the stomach to harm poor Saros. I turned 'em down, and now they're trying to cover their tracks. That's why they want me gone. They're the killers. Not me."~ */
  IF ~~ THEN REPLY #12896 /* ~"Assuming I believe this, why shouldn't I have you imprisoned too?"~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"Says you. I'll check that out. Answer some other questions for me, first."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"Right. I'll check that right away. Don't go anywhere, Thildon. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"Well, it's true! I swear it on the sainted eyes of me poor, dead mother. Him and that engineer, Bedai-Lihn, they wanted to recruit me. I told 'em I'd join 'em, 'cos I wanted to catch the turncoats. I do my duty by my faction. But then, well, then I decided it just weren't right for me to do that. That's when they decided they were going to see me swinging from the leafless tree."~ */
  IF ~~ THEN REPLY #12900 /* ~"Interesting. Yet ultimately unbelievable. It just sounds too far-fetched. I think I'll have to just turn you in."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"I see. I'll check that out. Answer some other questions for me, Thildon."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"I'll look into that. Thanks for the hint."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"What? You're accusing ME? But I didn't do anything! Berk, you've got the wrong man! Please! I didn't do it!"~ */
  IF ~~ THEN REPLY #12904 /* ~"I'm just having a little joke with you, Thildon. Relax. Answer some other questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"I'm joking with you, Thildon. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"All the evidence points to you, Thildon. The next time I see you will be at your execution. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"Still looking into it? Not much of an investigator, are you? I don't even know why I bother helping when you don't check out the information I give you..."~ */
  IF ~~ THEN REPLY #12908 /* ~"Enough of the false piety, Thildon. Answer me some questions."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"I've heard all I want to hear from you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~The supervisor's face drains of color. "He... what... he... I... he admitted he's an Anarchist?"~ */
  IF ~~ THEN REPLY #12911 /* ~"Yes. He seems to believe you're dangerous to everyone around you, whether they be Anarchist or Godsmen, and that someone needs to stop you. He's willing to admit to his own crimes in order to ensure that you meet with justice."~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"Yes. And you're a murderer. Your actions betray you."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"He... he did? Then you have to arrest him! Can't you see that he's a menace? How could you possibly trust the thieving, lying child when it's obvious he got no morals? Arrest him and have done with it!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"Well, Thildon, the way I read it is that he's willing to take the fall if it means that you go with him. Everything I've heard about him tells me that he's not a bad child - and if he's willing to take punishment to make sure you receive your just reward, that means you must really deserve it."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"That seems wrong. Why would he do that?"~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"You're not the one who gives the orders around here, Thildon. Remember that. Now answer some questions for me."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"Don't push it, Thildon. You're on dangerous ground as it is. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"To further the Anarchist agenda, berk!" He lowers his voice and stares at you with baleful intensity. "These Anarchists, see, they're all fanatics, they are, and they don't take so kind to people like me who're willing to expose 'em. They'll sacrifice anyone to further their schemes." He straightens up and proclaims, "It's up to honest people like me to keep them berks on the straight and narrow."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~"Really, Thildon. Saros is a young man, and young men make mistakes. I very much doubt that he'd throw himself away to get to you, just in order to protect the people who got him into this mess in the first place. Loyalty is all fine and good, but he's smart enough to know when he's being set up. No, Thildon, I think you're to blame."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"It seems to me that there's something wrong here, but I don't know what it is."~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"Honest? Right. Answer some other questions for me."~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"Such a fine job you do. Farewell, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"What's wrong is that your thick head can't understand the plots these berks weave! Pull your head from the darkness of your fundament, sod, and put the little bastard away!" He looks shocked for a moment as he realizes what he's said, and to whom, and he quickly adds: "'Ey. My apologies. It's the strain on me right now. It ain't easy bein' considered a murderer and Anarchist by everyone."~ */
  IF ~~ THEN REPLY #12924 /* ~"I'm sure it's not. I'll have to consider this carefully. Answer some other questions for me."~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"I'm sure it's not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~His beefy face grows red with apoplexy. "You're accusing ME? But I ain't the murderer! I'm just trying to expose Anarchists, berk! Damn you, you can't do this to me! You can't trust anyone who says they saw me do it, so you can't say I did it!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"Would you say the same thing under oath and under spell? I'm betting Saros would."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"Saros makes a better witness. He's more convincing, and he's not as hated around here as you. I'm betting that his story's the correct one, and that's what I'm going to tell Keldor."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"I'm turning you both in. How's that? Farewell, Thildon. We will not meet again."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"Actually, I can say that if I like. Farewell, Thildon."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"I'll think about this long and hard. In the meantime, enjoy your life, Thildon. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"Bugger. Can I at least take my stuff and give this place the laugh? Ol' Thildon'll make sure you won't regret it."~ */
  IF ~~ THEN REPLY #12933 /* ~"Sure. Get going."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"Only if you can beat it out of here before I make it to Keldor. I don't make much of your chances."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"No. Remain here or suffer even worse consequences. You can rest assured that I can make certain of that. Good day, Thildon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"I'm gone, gone. You'll not hear hide nor hair of me again."~ */
  IF ~~ THEN REPLY #12937 /* ~"Go before I change my mind."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"I changed my mind. You'll be seeing the headsman before too long. Farewell, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"You want answers? Like what?"~ */
  IF ~~ THEN REPLY #12940 /* ~"Who are you?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"Tell me about the Godsmen."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"What were you doing the night of the murder?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"Who'd you pick?" The man seems oddly eager.~ */
  IF ~~ THEN REPLY #12951 /* ~"I'm going to pick Saros as the murderer."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"I'm accusing both you and Saros."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"I'm telling Keldor that you're the murderer."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"No one, yet. I have some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"I'm not telling, yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"Thildon the Grey, supervisor for this yard. My job it is to make sure my laborers get their jobs done - and to make sure people like you don't distract them. They work little enough as it is, the little sods, and they'd manage to lose the rest of the day in idleness if I weren't here. I'm tough... but I'm fair. Ask anyone." ~ */
  IF ~~ THEN REPLY #12957 /* ~"Why do they call you 'the Grey'?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"Then you're the one I need to talk to about getting some iron ore for the forge..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"Perhaps I will. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"Perhaps I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"Because I'm covered in soot most of the time from those blasted furnaces. It's a nickname my laborers have given me... out of affection, no doubt."~ */
  IF ~~ THEN REPLY #12968 /* ~Sarcastic: "No doubt. They really seem to respect your gentle soul."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~Serious: "No doubt."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"Sure. That must be it."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"I see. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"Are you suggesting that I'm not entirely fair to my workers? Because I am! I'm like a father to them!"~ */
  IF ~~ THEN REPLY #12974 /* ~"Unfortunately, most of them probably were beaten regularly as children..."~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"I'm just suggesting that you might be a little TOO fair, if you know what I mean."~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"All right, all right. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"I'm certain. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~His face purples with rage. When he finally gets himself under control, he sputters, "Get out of my sight, or I'll call the guards on you!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"Not while I'm investigating this murder, you won't. Now answer me some other questions."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"Just answer some questions for me..."~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"All right, I'm leaving. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~He bellows for the guards. "GUARDS! Get this sorry carcass out of my sight and make him STAY GONE!"~ */
  IF ~~ THEN REPLY #12983 /* ~"You'll regret that. Prepare to die, pig."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"Very well, then. Farewell."~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"You really think so? You saying I'd better think about how I treat them? Well, I will. Chances are good I'll keep doing it the way I have been, too! Now get out of here."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"You don't give the orders right now. Answer me some other questions."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"Just answer some questions for me..."~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"All right, I'm leaving. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"That's right. They do. They know if they don't they'll get what's coming to them."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"You mean like the smith got what was coming to him?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"I see. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~He pales for a moment. "It was just a figure of speech, it was. I didn't mean anything by it."~ */
  IF ~~ THEN REPLY #12994 /* ~"Right. Answer some other questions for me."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"We'll see about that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"What's that supposed to mean?"~ */
  IF ~~ THEN REPLY #12997 /* ~"It means that I'm agreeing with you."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"It means that I don't believe that they care for you at all."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"It means pike it, berk."~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"Well, good. The multiverse would be a better place if everyone did. Now I have to get back to work."~ */
  IF ~~ THEN REPLY #13001 /* ~"I just had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"You just believe what you want to believe, little man. I know my workers. They need a firm hand to guide them. They respect me for it. Now get out of my sight."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"You don't give the orders right now. Answer me some other questions."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"Just answer some questions for me..."~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"They took me in and trained me to be what I am today, and I got to thank them for that. They took my raw talent and shaped it into skill. I tell you, I'm a favorite of the factol's, and someday he'll show everyone just how important I am to this organization. They tell me that everyone has godliness in them. It's true for me. I think I'm closer than most folks, to tell the truth. That gives me the right to act like a god, and to expect total devotion from my inferiors. I'm learning t' take power and move mountains with belief in myself. When I rule the cosmos, you can bet I'll remember every one of the berks who stood in my way."~ */
  IF ~~ THEN REPLY #13008 /* ~"That's... interesting. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"I suppose y'haven't forged enough for your tastes, eh? Fine, then, take it and be done with it." He rudely snatches a lump of iron from a nearby stack and thrusts it into your hands. "Did y'want anything else, or can I get back to work supervising these unfortunates?"~ */
  IF ~~ THEN REPLY #13011 /* ~"I had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"Get back to work. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~He squints at you. "You got no need for it, far as I can tell. Get mazed, berk."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"Why don't you give it to me and you can walk away a healthy man?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"Why don't you give it to me and you can walk away a healthy man?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"Fine, fine. I had some other questions, then..."~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"If that's the way you want it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~He looks you up and down carefully, considering, and says, "You want to be a smith, eh? Can't say the fire'd do much to skin like that. Take it, then, and don't get in the way of my workers. Good day, sir."~ */
  IF ~~ THEN REPLY #13019 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"Seems like they'll let anyone be a Godsman these days," he grumbles. "Ain't like the old days, when you had to show real potential to be a member. You want this iron for your poncey test? Take it, then, and get mazed." He thrusts a lump of cold ore into your hands.~ */
  IF ~~ THEN REPLY #13021 /* ~"Thanks. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~He looks at the size of your arms, looks at your face, and decides you're serious. "Don't think I won't forget this, berk," he says as he hands over a hunk of iron ore - but he won't meet your eyes as he says it.~ */
  IF ~~ THEN REPLY #13024 /* ~"Thanks. I had more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~He looks at the size of your arms and sneers. "How d'you figure I'm going to be scared of you? Get lost, berk." He turns away from you.~ */
  IF ~~ THEN REPLY #13027 /* ~Attack him.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"What was I doing? Why, I was... I was sitting in my room, with a nice loaf of bread and jug of wine, staying in. Didn't go out that night. Didn't see no need."~ */
  IF ~~ THEN REPLY #13030 /* ~"Do you know anyone who can swear otherwise?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"I see. I have some other questions..."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"I see. Farewell."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"No. Never saw the need to make sure of it. One place you might ask, if you're really looking for leads, is Saros. That little thieving knight goes everywhere, what with his father being such a high-up here. He always was into new experiences - boy's practically a Sensate, if you ask me. Probably wanted to kill someone and see if he could get away with it."~ */
  IF ~~ THEN REPLY #13034 /* ~"Saros, eh? I'll remember that. In the meantime, I had some more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"Saros, eh? I'll go check on that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~He beams broadly, exposing several rotten teeth, and leans forward to shake your hand. "'Tis a good choice you've made, friend, a good choice. I look forward to seeing you again."~ */
  IF ~~ THEN REPLY #13037 /* ~"I'll bet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~The eager look drops from his face like he's been slapped. "Both of us? What'd I do?"~ */
  IF ~~ THEN REPLY #13039 /* ~"It's my belief you murdered the smith, and my belief that you tried to get Saros to take the blame for your crime. It's also my belief that Saros tried to point a finger at you illegally, and that he's guilty of other crimes."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"I'm just having a little joke with you, Thildon. Relax. Answer some other questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"I'm joking with you, Thildon. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"Killed Avildon the smith and tried to lie your way out of it. Farewell."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"What, you again?"~ */
  IF ~~ THEN REPLY #13045 /* ~"Answer some questions for me, Thildon."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"No. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~You see a slab-stomached man with thick arms and a scraggly beard. He smells as if he hasn't washed in ages, and his breath doesn't do much for your breakfast. He's in the process of ordering around subordinates as you approach him, and he deals a quick cuff to the ear of one of them. He turns to face you, hitching up his belt. "What d'you want?" ~ */
  IF ~~ THEN REPLY #13048 /* ~"I had some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~He looks momentarily flustered, and then: "Saros is a thief. Odds are he stole it from me. 'Fact, I been missing my awl for some time now - never mentioned it to anyone 'cause I figured I'd just lost it. Now I know that Saros stole it to frame me. Better go get him before he gives you the laugh." Seeing your expression, he says, "Before he escapes."~ */
  IF ~~ THEN REPLY #13092 /* ~"That sounds a little too pat. I'll ask him about it as soon as I get some more answers from you..."~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"I'll just go find him, then. Farewell."~ */ EXIT
END
